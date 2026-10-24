# reconstructed_support

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:10748525-8ba8-970d-cdbd-8fcfbee2a41b",
  "kind": "theorem",
  "lexical_name": "reconstructed_support",
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
  "slug": "reconstructed-support--f0347494da25c8efe5acb316",
  "source": {
    "blob": "0ee95e6e658b40a51ad18c5529c0c435cb4f9fad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 148,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/FiveModeSourceAudit/Variant41dbbee368adb9b365a365519ea2778e930ac29022095dd34af81d384429f7f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f0347494da25c8efe5acb3162c1112f3ab74aa0dc397875c93345f551a2f3e6a",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/FiveModeSourceAudit/Variant41dbbee368adb9b365a365519ea2778e930ac29022095dd34af81d384429f7f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:10748525-8ba8-970d-cdbd-8fcfbee2a41b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reconstructed_support (A x : ℝ) (hA : 1 ≤ A) (hx : A ≤ |x|) :
    (∑ i : Fin 5, alpha A i * normalizedMode A i x) = 0 := by
  rw [← actual_source_reconstruction A hA]
  exact normalizedTest_zero_of_le_abs A x (by linarith) hx

end CommonMeanScratch

set_option pp.proofs false
#print CommonMeanScratch.legendre
#print axioms CommonMeanScratch.legendre
#print CommonMeanScratch.mode
#print axioms CommonMeanScratch.mode
#print CommonMeanScratch.bumpCoefficient
#print axioms CommonMeanScratch.bumpCoefficient
#print CommonMeanScratch.secondCoefficient
#print axioms CommonMeanScratch.secondCoefficient
#print CommonMeanScratch.modeWeight
#print axioms CommonMeanScratch.modeWeight
#print CommonMeanScratch.sourceCoefficient
#print axioms CommonMeanScratch.sourceCoefficient
#print CommonMeanScratch.mode_zero
#print axioms CommonMeanScratch.mode_zero
#print CommonMeanScratch.mode_two
#print axioms CommonMeanScratch.mode_two
#print CommonMeanScratch.mode_four
#print axioms CommonMeanScratch.mode_four
#print CommonMeanScratch.mode_six
#print axioms CommonMeanScratch.mode_six
#print CommonMeanScratch.mode_eight
#print axioms CommonMeanScratch.mode_eight
#print CommonMeanScratch.mode_even
#print axioms CommonMeanScratch.mode_even
#print CommonMeanScratch.bump_expansion
#print axioms CommonMeanScratch.bump_expansion
#print CommonMeanScratch.second_expansion
#print axioms CommonMeanScratch.second_expansion
#print CommonMeanScratch.source_polynomial_expansion
#print axioms CommonMeanScratch.source_polynomial_expansion
#print CommonMeanScratch.exact_weighted_normalization
#print axioms CommonMeanScratch.exact_weighted_normalization
#print CommonMeanScratch.alpha
#print axioms CommonMeanScratch.alpha
#print CommonMeanScratch.normalizedMode
#print axioms CommonMeanScratch.normalizedMode
#print CommonMeanScratch.modeWeight_pos
#print axioms CommonMeanScratch.modeWeight_pos
#print CommonMeanScratch.alpha_square
#print axioms CommonMeanScratch.alpha_square
#print CommonMeanScratch.alpha_normalization
#print axioms CommonMeanScratch.alpha_normalization
#print CommonMeanScratch.sqrt_mode_product
#print axioms CommonMeanScratch.sqrt_mode_product
#print CommonMeanScratch.actual_source_reconstruction
#print axioms CommonMeanScratch.actual_source_reconstruction
#print CommonMeanScratch.actual_source_norm
#print axioms CommonMeanScratch.actual_source_norm
#print CommonMeanScratch.reconstructed_support
#print axioms CommonMeanScratch.reconstructed_support
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/FiveModeSourceAudit/Variant41dbbee368adb9b365a365519ea2778e930ac29022095dd34af81d384429f7f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/FiveModeSourceAudit/Variant41dbbee368adb9b365a365519ea2778e930ac29022095dd34af81d384429f7f1.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ee95e6e658b40a51ad18c5529c0c435cb4f9fad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
