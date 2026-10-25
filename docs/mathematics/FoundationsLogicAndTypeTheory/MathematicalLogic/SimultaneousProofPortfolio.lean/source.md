# Complete source: GRWTSK.Logic.SimultaneousProofPortfolio

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bd62fb7a826e8871e29bdbc14aece0a14721443e` · SHA-256 `d1796cfe983cf38b575954d78821e08190347178a638ce596df97856d32a247d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Logic.SimultaneousProofArchitecture

namespace GRWTSK.Logic.SimultaneousProofPortfolio

open GRWTSK.Logic.SimultaneousProofArchitecture

universe u v

/-- Exact disposition of one local mathematical claim. -/
abbrev ClaimDisposition (P : Prop) := TargetDisposition P

namespace ClaimDisposition

/-- Transport a claim disposition through an exact logical equivalence.

Unlike a one-way implication, an equivalence transports proofs, refutations, and conditional
proofs without weakening their status. -/
def transport {P Q : Prop} (h : P ↔ Q) :
    ClaimDisposition P → ClaimDisposition Q
  | .proved hp => .proved (h.mp hp)
  | .refuted hnp => .refuted (fun hq => hnp (h.mpr hq))
  | .conditional Premise name hp =>
      .conditional Premise name (fun premise => h.mp (hp premise))
  | .unresolved obligation => .unresolved obligation

end ClaimDisposition

/-- A theorem portfolio assigns an exact disposition to every indexed local claim. -/
structure Portfolio (I : Type u) (Claim : I → Prop) where
  disposition : ∀ i, ClaimDisposition (Claim i)

namespace Portfolio

variable {I : Type u} {Claim : I → Prop}

/-- Extract a lifted local proof only when the selected disposition is proved. -/
def proof? (P : Portfolio I Claim) (i : I) : Option (PLift (Claim i)) :=
  (P.disposition i).proof?

/-- Extract a lifted local refutation only when the selected disposition is refuted. -/
def refutation? (P : Portfolio I Claim) (i : I) : Option (PLift (¬ Claim i)) :=
  (P.disposition i).refutation?

/-- Transport a complete portfolio through pointwise exact logical equivalences. -/
def transportClaims {Other : I → Prop}
    (P : Portfolio I Claim) (h : ∀ i, Claim i ↔ Other i) :
    Portfolio I Other where
  disposition i := ClaimDisposition.transport (h i) (P.disposition i)

/-- Combine two independent theorem portfolios without identifying their index or claim types. -/
def combine {J : Type v} {Other : J → Prop}
    (P : Portfolio I Claim) (Q : Portfolio J Other) :
    Portfolio (Sum I J)
      (fun s => match s with
        | .inl i => Claim i
        | .inr j => Other j) where
  disposition
    | .inl i => P.disposition i
    | .inr j => Q.disposition j

/-- Replace exactly one local disposition. Every other branch is preserved by its inequality. -/
def update [DecidableEq I]
    (P : Portfolio I Claim) (i : I)
    (d : ClaimDisposition (Claim i)) : Portfolio I Claim where
  disposition := fun j =>
    if h : j = i then h.symm ▸ d else P.disposition j

@[simp]
theorem update_at [DecidableEq I]
    (P : Portfolio I Claim) (i : I)
    (d : ClaimDisposition (Claim i)) :
    (P.update i d).disposition i = d := by
  simp [update]

@[simp]
theorem update_of_ne [DecidableEq I]
    (P : Portfolio I Claim) (i j : I)
    (d : ClaimDisposition (Claim i)) (h : j ≠ i) :
    (P.update i d).disposition j = P.disposition j := by
  simp [update, h]

/-- Every branch is explicitly proved in this portfolio. -/
def AllProved (P : Portfolio I Claim) : Prop :=
  ∀ i, ∃ h : Claim i, P.disposition i = .proved h

/-- An all-proved portfolio supplies every indexed claim. -/
theorem claim_of_allProved (P : Portfolio I Claim)
    (h : P.AllProved) (i : I) : Claim i :=
  (h i).choose

end Portfolio

/-- Local theorem dispositions and the terminal target disposition are independent fields. -/
structure Architecture (I : Type u) (Claim : I → Prop) (Target : Prop) where
  local : Portfolio I Claim
  target : TargetDisposition Target

namespace Architecture

variable {I : Type u} {Claim : I → Prop} {Target Target' : Prop}

/-- Change only the terminal target disposition. -/
def retarget (A : Architecture I Claim Target)
    (d : TargetDisposition Target') : Architecture I Claim Target' where
  local := A.local
  target := d

/-- Change one local branch while retaining the terminal target exactly. -/
def updateLocal [DecidableEq I]
    (A : Architecture I Claim Target) (i : I)
    (d : ClaimDisposition (Claim i)) : Architecture I Claim Target where
  local := A.local.update i d
  target := A.target

@[simp]
theorem retarget_local (A : Architecture I Claim Target)
    (d : TargetDisposition Target') (i : I) :
    (A.retarget d).local.disposition i = A.local.disposition i :=
  rfl

@[simp]
theorem updateLocal_target [DecidableEq I]
    (A : Architecture I Claim Target) (i : I)
    (d : ClaimDisposition (Claim i)) :
    (A.updateLocal i d).target = A.target :=
  rfl

@[simp]
theorem updateLocal_of_ne [DecidableEq I]
    (A : Architecture I Claim Target) (i j : I)
    (d : ClaimDisposition (Claim i)) (h : j ≠ i) :
    (A.updateLocal i d).local.disposition j = A.local.disposition j := by
  exact A.local.update_of_ne i j d h

/-- Add an independent local theorem portfolio while retaining the same terminal target. -/
def combineLocal {J : Type v} {Other : J → Prop}
    (A : Architecture I Claim Target) (Q : Portfolio J Other) :
    Architecture (Sum I J)
      (fun s => match s with
        | .inl i => Claim i
        | .inr j => Other j)
      Target where
  local := A.local.combine Q
  target := A.target

end Architecture

namespace Fixtures

/-- Four independent local theorem slots. -/
inductive LocalIndex
  | algebra
  | topology
  | rejected
  | pending
  deriving DecidableEq, Repr

/-- The pending proposition is supplied externally rather than invented by the fixture. -/
def localClaim (Pending : Prop) : LocalIndex → Prop
  | .algebra => True
  | .topology => True
  | .rejected => False
  | .pending => Pending

/-- A mixed portfolio simultaneously retains proved, refuted, and unresolved branches. -/
def portfolio (Pending : Prop) : Portfolio LocalIndex (localClaim Pending) where
  disposition
    | .algebra => .proved trivial
    | .topology => .proved trivial
    | .rejected => .refuted (fun h => h)
    | .pending => .unresolved "fixture branch intentionally unresolved"

/-- A terminal target can remain unresolved independently of every local branch status. -/
def architecture (Pending Target : Prop) :
    Architecture LocalIndex (localClaim Pending) Target where
  local := portfolio Pending
  target := .unresolved "fixture terminal target intentionally unresolved"

/-- Resolving or rejecting the pending branch leaves a proved algebra branch unchanged. -/
theorem update_pending_preserves_algebra
    (Pending : Prop) (d : ClaimDisposition Pending) :
    ((portfolio Pending).update .pending d).disposition .algebra =
      (portfolio Pending).disposition .algebra := by
  simp [Portfolio.update]

/-- Even a supplied terminal refutation cannot erase the independent local portfolio. -/
theorem target_refutation_preserves_local
    (Pending Target : Prop) (h : ¬ Target) (i : LocalIndex) :
    ((architecture Pending Target).retarget (.refuted h)).local.disposition i =
      (architecture Pending Target).local.disposition i :=
  rfl

end Fixtures

end GRWTSK.Logic.SimultaneousProofPortfolio
```
