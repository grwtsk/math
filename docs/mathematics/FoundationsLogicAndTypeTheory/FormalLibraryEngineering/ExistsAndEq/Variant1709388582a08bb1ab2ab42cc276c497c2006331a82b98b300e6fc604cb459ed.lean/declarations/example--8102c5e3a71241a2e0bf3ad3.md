# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d131e03517822a30d1b45142302c60b1eb85ecc74205d4a1fc6a03f13ff7da06",
  "kind": "example",
  "lexical_name": null,
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "example--8102c5e3a71241a2e0bf3ad3",
  "source": {
    "blob": "d66e76f85e1b42808f0976ba96379a7763874403",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 76,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExistsAndEq/Variant1709388582a08bb1ab2ab42cc276c497c2006331a82b98b300e6fc604cb459ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8102c5e3a71241a2e0bf3ad3ea5e8da50ec301574626af71a40377148c9a7993",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExistsAndEq/Variant1709388582a08bb1ab2ab42cc276c497c2006331a82b98b300e6fc604cb459ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d131e03517822a30d1b45142302c60b1eb85ecc74205d4a1fc6a03f13ff7da06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (P Q : α × β → Prop) (a : α × β) :
    (∃ b : (α × β), (P b ∧ b = a) ∧ Q b) ↔ P a ∧ Q a := by
  simp

-- # Metavariables in goals

-- The simproc must return a closed proof even when the goal contains metavariables, which is what
-- `aesop` presents to it: here the goal is `∃ a : Nat, a = Nat.succ ?b ∧ 0 < ?b`.
open Lean Meta Qq in
#eval show MetaM Unit from do
  let b : Q(Nat) ← mkFreshExprMVarQ q(Nat)
  let e : Q(Prop) := q(∃ a : Nat, a = Nat.succ $b ∧ 0 < $b)
  let simprocs ← ({} : Simprocs).add ``ExistsAndEq.existsAndEq (post := false)
  let (r, _) ← Simp.main e (← Simp.mkContext) (methods := Simp.mkDefaultMethodsCore #[simprocs])
  let some pf := r.proof? | throwError "the simproc did not fire"
  let pf ← instantiateMVars pf
  let leftover := (← getMVars pf).filter (· != b.mvarId!)
  unless leftover.isEmpty do
    throwError "metavariables left in the proof: {leftover.map mkMVar}\n{pf}"

-- Metavariables may depend on each other: here `?f : Nat → ?β`, and `?β` occurs in the goal too
-- (as it arises when `simpa using` simplifies the type of a term whose implicit arguments are not
-- determined yet). They have to be handled consistently.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExistsAndEq/Variant1709388582a08bb1ab2ab42cc276c497c2006331a82b98b300e6fc604cb459ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExistsAndEq/Variant1709388582a08bb1ab2ab42cc276c497c2006331a82b98b300e6fc604cb459ed.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d66e76f85e1b42808f0976ba96379a7763874403` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
