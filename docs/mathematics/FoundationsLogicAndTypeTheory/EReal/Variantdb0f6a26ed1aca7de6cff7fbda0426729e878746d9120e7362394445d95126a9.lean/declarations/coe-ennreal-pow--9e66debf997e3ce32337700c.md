# coe_ennreal_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:57ad9549-036b-08d1-46de-57f724b39abc",
  "kind": "theorem",
  "lexical_name": "coe_ennreal_pow",
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
  "slug": "coe-ennreal-pow--9e66debf997e3ce32337700c",
  "source": {
    "blob": "22162629622a034cab326979ca4012e9d717b37f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1265,
    "line": 1208,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/EReal/Variantdb0f6a26ed1aca7de6cff7fbda0426729e878746d9120e7362394445d95126a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e66debf997e3ce32337700c700ad5664bf24a7014f3f5b1c8fb001861281f14",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/EReal/Variantdb0f6a26ed1aca7de6cff7fbda0426729e878746d9120e7362394445d95126a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:57ad9549-036b-08d1-46de-57f724b39abc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1208–1265.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coe_ennreal_pow (x : ℝ≥0∞) (n : ℕ) : (↑(x ^ n) : EReal) = (x : EReal) ^ n :=
  map_pow (⟨⟨(↑), coe_ennreal_one⟩, coe_ennreal_mul⟩ : ℝ≥0∞ →* EReal) _ _
#align ereal.coe_ennreal_pow EReal.coe_ennreal_pow

end EReal

-- Porting note(https://github.com/leanprover-community/mathlib4/issues/6038): restore
/-
namespace Tactic

open Positivity

private theorem ereal_coe_ne_zero {r : ℝ} : r ≠ 0 → (r : EReal) ≠ 0 :=
  EReal.coe_ne_zero.2
#align tactic.ereal_coe_ne_zero tactic.ereal_coe_ne_zero

private theorem ereal_coe_nonneg {r : ℝ} : 0 ≤ r → 0 ≤ (r : EReal) :=
  EReal.coe_nonneg.2
#align tactic.ereal_coe_nonneg tactic.ereal_coe_nonneg

private theorem ereal_coe_pos {r : ℝ} : 0 < r → 0 < (r : EReal) :=
  EReal.coe_pos.2
#align tactic.ereal_coe_pos tactic.ereal_coe_pos

private theorem ereal_coe_ennreal_pos {r : ℝ≥0∞} : 0 < r → 0 < (r : EReal) :=
  EReal.coe_ennreal_pos.2
#align tactic.ereal_coe_ennreal_pos tactic.ereal_coe_ennreal_pos

/-- Extension for the `positivity` tactic: cast from `ℝ` to `EReal`. -/
@[positivity]
unsafe def positivity_coe_real_ereal : expr → tactic strictness
  | q(@coe _ _ $(inst) $(a)) => do
    unify inst q(@coeToLift _ _ <| @coeBase _ _ EReal.hasCoe)
    let strictness_a ← core a
    match strictness_a with
      | positive p => positive <$> mk_app `` ereal_coe_pos [p]
      | nonnegative p => nonnegative <$> mk_mapp `` ereal_coe_nonneg [a, p]
      | nonzero p => nonzero <$> mk_mapp `` ereal_coe_ne_zero [a, p]
  | e =>
    pp e >>= fail ∘ format.bracket "The expression " " is not of the form `(r : ereal)` for `r : ℝ`"
#align tactic.positivity_coe_real_ereal tactic.positivity_coe_real_ereal

/-- Extension for the `positivity` tactic: cast from `ℝ≥0∞` to `EReal`. -/
@[positivity]
unsafe def positivity_coe_ennreal_ereal : expr → tactic strictness
  | q(@coe _ _ $(inst) $(a)) => do
    unify inst q(@coeToLift _ _ <| @coeBase _ _ EReal.hasCoeENNReal)
    let strictness_a ← core a
    match strictness_a with
      | positive p => positive <$> mk_app `` ereal_coe_ennreal_pos [p]
      | _ => nonnegative <$> mk_mapp `ereal.coe_ennreal_nonneg [a]
  | e =>
    pp e >>=
      fail ∘ format.bracket "The expression " " is not of the form `(r : ereal)` for `r : ℝ≥0∞`"
#align tactic.positivity_coe_ennreal_ereal tactic.positivity_coe_ennreal_ereal

end Tactic
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/EReal/Variantdb0f6a26ed1aca7de6cff7fbda0426729e878746d9120e7362394445d95126a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/EReal/Variantdb0f6a26ed1aca7de6cff7fbda0426729e878746d9120e7362394445d95126a9.lean#L1208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22162629622a034cab326979ca4012e9d717b37f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
