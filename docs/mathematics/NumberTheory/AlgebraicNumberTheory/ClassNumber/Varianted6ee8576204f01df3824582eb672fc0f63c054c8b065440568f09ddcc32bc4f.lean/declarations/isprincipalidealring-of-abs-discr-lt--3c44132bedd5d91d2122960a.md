# isPrincipalIdealRing_of_abs_discr_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:30cc4dd1-81d3-f795-ea67-29155859ad29",
  "kind": "theorem",
  "lexical_name": "isPrincipalIdealRing_of_abs_discr_lt",
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
  "slug": "isprincipalidealring-of-abs-discr-lt--3c44132bedd5d91d2122960a",
  "source": {
    "blob": "43e996299010e5a798bcaa8df6bffa60c3b3a8a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 166,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/ClassNumber/Varianted6ee8576204f01df3824582eb672fc0f63c054c8b065440568f09ddcc32bc4f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3c44132bedd5d91d2122960ab4b48387f0b50373ba59dc97a999c308c816d7db",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/ClassNumber/Varianted6ee8576204f01df3824582eb672fc0f63c054c8b065440568f09ddcc32bc4f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30cc4dd1-81d3-f795-ea67-29155859ad29`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isPrincipalIdealRing_of_abs_discr_lt
    (h : |discr K| < (2 * (π / 4) ^ nrComplexPlaces K *
      ((finrank ℚ K) ^ (finrank ℚ K) / (finrank ℚ K)!)) ^ 2) :
    IsPrincipalIdealRing (𝓞 K) := by
  have : 0 < finrank ℚ K := finrank_pos -- Lean needs to know this for `positivity` to succeed
  rw [← Real.sqrt_lt (by positivity) (by positivity), mul_assoc, ← inv_mul_lt_iff₀' (by positivity),
    mul_inv, ← inv_pow, inv_div, inv_div, mul_assoc, Int.cast_abs] at h
  refine isPrincipalIdealRing_of_isPrincipal_of_norm_le (fun I hI ↦ ?_)
  rw [absNorm_eq_one_iff.mp <| le_antisymm (lt_succ.mp (cast_lt.mp
    (lt_of_le_of_lt hI h))) <| one_le_iff_ne_zero.mpr (absNorm_ne_zero_of_nonZeroDivisors I)]
  exact top_isPrincipal

end RingOfIntegers

namespace Rat

open NumberField

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/ClassNumber/Varianted6ee8576204f01df3824582eb672fc0f63c054c8b065440568f09ddcc32bc4f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/ClassNumber/Varianted6ee8576204f01df3824582eb672fc0f63c054c8b065440568f09ddcc32bc4f.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43e996299010e5a798bcaa8df6bffa60c3b3a8a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
