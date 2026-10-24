# isPrincipalIdealRing_of_abs_discr_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8fe91845-28d2-ff2d-1b98-29ba551231d5",
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
  "slug": "isprincipalidealring-of-abs-discr-lt--2fd8d586c8483e9701ff89d1",
  "source": {
    "blob": "2f97a5744f9c449d617bbdd6a0cf09d83c275af9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 208,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/ClassNumber/Varianta2b1eb9191f6919045164a6fad4ffcd2d5b6e5f20f3ab1c68fde48ab8d25ef01.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2fd8d586c8483e9701ff89d1f6d3b98e28a0dbafb6adcfca6bd118e536ecd6cb",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/ClassNumber/Varianta2b1eb9191f6919045164a6fad4ffcd2d5b6e5f20f3ab1c68fde48ab8d25ef01.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8fe91845-28d2-ff2d-1b98-29ba551231d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–225.

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
  rw [absNorm_eq_one_iff.mp <| le_antisymm (Nat.lt_succ_iff.mp (cast_lt.mp
    (lt_of_le_of_lt hI h))) <| one_le_iff_ne_zero.mpr (absNorm_ne_zero_of_nonZeroDivisors I)]
  exact top_isPrincipal

end RingOfIntegers

namespace Rat

open NumberField

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/ClassNumber/Varianta2b1eb9191f6919045164a6fad4ffcd2d5b6e5f20f3ab1c68fde48ab8d25ef01.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/ClassNumber/Varianta2b1eb9191f6919045164a6fad4ffcd2d5b6e5f20f3ab1c68fde48ab8d25ef01.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f97a5744f9c449d617bbdd6a0cf09d83c275af9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
