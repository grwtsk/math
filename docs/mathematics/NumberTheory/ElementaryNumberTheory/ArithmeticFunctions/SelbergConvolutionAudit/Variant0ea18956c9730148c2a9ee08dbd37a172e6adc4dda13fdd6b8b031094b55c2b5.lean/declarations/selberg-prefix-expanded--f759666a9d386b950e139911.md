# selberg_prefix_expanded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8bb7c8297dc0eb7ea8e2a7d751659bdae1efc841",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 150,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0e/0ea18956c9730148c2a9ee08dbd37a172e6adc4dda13fdd6b8b031094b55c2b5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:143382b0-681e-9844-c22c-4841a1a96c1a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3a638a27-08e8-0094-dd1c-96405b1c9fde",
  "kind": "theorem",
  "lexical_name": "selberg_prefix_expanded",
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
  "slug": "selberg-prefix-expanded--f759666a9d386b950e139911",
  "source": {
    "blob": "8bb7c8297dc0eb7ea8e2a7d751659bdae1efc841",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 150,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionAudit/Variant0ea18956c9730148c2a9ee08dbd37a172e6adc4dda13fdd6b8b031094b55c2b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f759666a9d386b950e1399117fd3d9be316e7718c4937a588afa81cd1406b81f",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionAudit/Variant0ea18956c9730148c2a9ee08dbd37a172e6adc4dda13fdd6b8b031094b55c2b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3a638a27-08e8-0094-dd1c-96405b1c9fde`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem selberg_prefix_expanded (x : ℝ) :
    (∑ d ∈ Icc 1 ⌊x⌋₊, (ArithmeticFunction.moebius d : ℝ) *
      ∑ m ∈ Icc 1 ⌊x / (d : ℝ)⌋₊, Real.log (m : ℝ) ^ 2) =
      ∑ n ∈ Icc 1 ⌊x⌋₊,
        (ArithmeticFunction.vonMangoldt n * Real.log (n : ℝ) +
          ∑ d ∈ n.divisors,
            ArithmeticFunction.vonMangoldt d * ArithmeticFunction.vonMangoldt (n / d)) :=
  selberg_prefix_identity x

end
end SelbergConvolutionScratch

set_option pp.proofs false

#print SelbergConvolutionScratch.log_pmul_convolution
#print axioms SelbergConvolutionScratch.log_pmul_convolution
#print SelbergConvolutionScratch.log_pmul_zeta
#print axioms SelbergConvolutionScratch.log_pmul_zeta
#print SelbergConvolutionScratch.selberg_dirichlet_identity
#print axioms SelbergConvolutionScratch.selberg_dirichlet_identity
#print SelbergConvolutionScratch.selbergCoefficient
#print axioms SelbergConvolutionScratch.selbergCoefficient
#print SelbergConvolutionScratch.selberg_coefficient_identity
#print axioms SelbergConvolutionScratch.selberg_coefficient_identity
#print SelbergConvolutionScratch.selbergCoefficient_nonneg
#print axioms SelbergConvolutionScratch.selbergCoefficient_nonneg
#print SelbergConvolutionScratch.selbergCoefficient_zero
#print axioms SelbergConvolutionScratch.selbergCoefficient_zero
#print SelbergConvolutionScratch.selbergCoefficient_one
#print axioms SelbergConvolutionScratch.selbergCoefficient_one
#print SelbergConvolutionScratch.selberg_antidiagonal_identity
#print axioms SelbergConvolutionScratch.selberg_antidiagonal_identity
#print SelbergConvolutionScratch.closed_factor_cutoff_eq
#print axioms SelbergConvolutionScratch.closed_factor_cutoff_eq
#print SelbergConvolutionScratch.selbergPrefix
#print axioms SelbergConvolutionScratch.selbergPrefix
#print SelbergConvolutionScratch.selberg_prefix_identity
#print axioms SelbergConvolutionScratch.selberg_prefix_identity
#print SelbergConvolutionScratch.selbergPrefix_nonneg
#print axioms SelbergConvolutionScratch.selbergPrefix_nonneg
#print SelbergConvolutionScratch.selbergPrefix_zero
#print axioms SelbergConvolutionScratch.selbergPrefix_zero
#print SelbergConvolutionScratch.selbergPrefix_one
#print axioms SelbergConvolutionScratch.selbergPrefix_one
#print SelbergConvolutionScratch.selberg_prefix_expanded
#print axioms SelbergConvolutionScratch.selberg_prefix_expanded
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionAudit/Variant0ea18956c9730148c2a9ee08dbd37a172e6adc4dda13fdd6b8b031094b55c2b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionAudit/Variant0ea18956c9730148c2a9ee08dbd37a172e6adc4dda13fdd6b8b031094b55c2b5.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8bb7c8297dc0eb7ea8e2a7d751659bdae1efc841` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
