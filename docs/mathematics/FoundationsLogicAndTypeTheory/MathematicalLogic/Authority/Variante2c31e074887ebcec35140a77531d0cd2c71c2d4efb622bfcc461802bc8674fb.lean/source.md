# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Authority.Variante2c31e074887ebcec35140a77531d0cd2c71c2d4efb622bfcc461802bc8674fb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `729e2bac0bf424246ecfb068e57b2abe73b9e91b` · SHA-256 `e2c31e074887ebcec35140a77531d0cd2c71c2d4efb622bfcc461802bc8674fb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import DAF.Universe.Id
import Surface.ContinuousAssurance.Authority

/-!
# DAF universe authority vocabulary

Repository authority remains the five-way Continuous Assurance classification.
Response authority is a separate, finer vocabulary used only for located
language clauses.  The two are not silently coerced into one another.
-/

namespace DAF.Universe

abbrev SourceAuthority := Surface.ContinuousAssurance.AuthorityClass

/-- Authority that a response clause may request from its evidence. -/
inductive ResponseAuthority
  | illustrative
  | proposal
  | imported
  | executable
  | conditional
  | kernelChecked
  deriving DecidableEq, Repr, Inhabited

/-- A conservative numerical rank used by the fail-closed response checker. -/
def ResponseAuthority.rank : ResponseAuthority → Nat
  | .illustrative => 0
  | .proposal => 1
  | .imported => 2
  | .executable => 3
  | .conditional => 4
  | .kernelChecked => 5

/-- Evidence may satisfy only an equal-or-weaker authority request. -/
def ResponseAuthority.Supports
    (available requested : ResponseAuthority) : Prop :=
  requested.rank ≤ available.rank

instance (available requested : ResponseAuthority) :
    Decidable (available.Supports requested) :=
  inferInstanceAs (Decidable (requested.rank ≤ available.rank))

theorem ResponseAuthority.supports_refl (authority : ResponseAuthority) :
    authority.Supports authority := by
  simp [Supports]

theorem ResponseAuthority.supports_trans
    {low middle high : ResponseAuthority}
    (hm : high.Supports middle)
    (hl : middle.Supports low) :
    high.Supports low :=
  Nat.le_trans hl hm

/-- Status values deliberately distinguish absence from non-establishment. -/
inductive EstablishmentStatus
  | unknown
  | notApplicable
  | notEstablished
  | established
  deriving DecidableEq, Repr, Inhabited

end DAF.Universe
```
