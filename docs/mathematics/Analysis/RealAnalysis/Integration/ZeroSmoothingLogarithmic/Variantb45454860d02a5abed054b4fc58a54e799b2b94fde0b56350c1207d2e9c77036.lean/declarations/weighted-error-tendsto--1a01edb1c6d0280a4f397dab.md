# weighted_error_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d22fe14c9169496ed06f05f19616e857d9c9fc39",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 141,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b4/b45454860d02a5abed054b4fc58a54e799b2b94fde0b56350c1207d2e9c77036.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:94207916-59ea-f235-42d6-102b9da4840d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e5c6a90d-6b06-ba13-7020-d5323fa722bf",
  "kind": "theorem",
  "lexical_name": "weighted_error_tendsto",
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
  "slug": "weighted-error-tendsto--1a01edb1c6d0280a4f397dab",
  "source": {
    "blob": "d22fe14c9169496ed06f05f19616e857d9c9fc39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 141,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variantb45454860d02a5abed054b4fc58a54e799b2b94fde0b56350c1207d2e9c77036.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a01edb1c6d0280a4f397dab033a6e088a7d7b423304bd9c03ac47ecab18747d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variantb45454860d02a5abed054b4fc58a54e799b2b94fde0b56350c1207d2e9c77036.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e5c6a90d-6b06-ba13-7020-d5323fa722bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem weighted_error_tendsto {ι : Type*} {l : Filter ι}
    (A : ℝ) (hA : 1 ≤ A) (ε : ι → ℝ) (hε : ∀ i, 0 < ε i)
    (hlim : Tendsto ε l (𝓝 0)) (ξ : ℝ) :
    Tendsto (fun i ↦ logarithmicWeight ξ *
      Complex.normSq
        (sourceFourier (smoothedTest A (ε i) (hε i)) ξ -
          sourceFourier (actualTest A) ξ)) l (𝓝 0) := by
  have ht := smoothed_fourier_tendsto A hA ε hε hlim ξ
  have hs := ht.sub_const (sourceFourier (actualTest A) ξ)
  have hn := Complex.continuous_normSq.continuousAt.tendsto.comp hs
  simpa using hn.const_mul (logarithmicWeight ξ)

/-- Z2.5: the source H¹ approximation and the exact normalized logarithmic
Fourier-form approximation hold on the same positive-scale filter.  Every
weighted error is genuinely integrable, and all radii at most one retain the
fixed support window `[-A-1,A+1]`.  This is convergence only; it does not
assert the smooth explicit formula or the zero-side identity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variantb45454860d02a5abed054b4fc58a54e799b2b94fde0b56350c1207d2e9c77036.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variantb45454860d02a5abed054b4fc58a54e799b2b94fde0b56350c1207d2e9c77036.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d22fe14c9169496ed06f05f19616e857d9c9fc39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
