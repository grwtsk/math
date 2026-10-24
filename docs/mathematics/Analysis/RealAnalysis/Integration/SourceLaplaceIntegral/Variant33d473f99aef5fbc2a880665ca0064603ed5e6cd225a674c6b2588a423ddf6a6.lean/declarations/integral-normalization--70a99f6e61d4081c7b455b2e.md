# integral_normalization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7a0f64cb-7033-42b9-e63d-0fb841b9d534",
  "kind": "lemma",
  "lexical_name": "integral_normalization",
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
  "slug": "integral-normalization--70a99f6e61d4081c7b455b2e",
  "source": {
    "blob": "148e2294d2771674d145ee0b0313dae42a47d61c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 157,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceLaplaceIntegral/Variant33d473f99aef5fbc2a880665ca0064603ed5e6cd225a674c6b2588a423ddf6a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70a99f6e61d4081c7b455b2e08d75c7bd938a42fae762cd52b92f8da74a33f3f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceLaplaceIntegral/Variant33d473f99aef5fbc2a880665ca0064603ed5e6cd225a674c6b2588a423ddf6a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a0f64cb-7033-42b9-e63d-0fb841b9d534`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma integral_normalization (s : ℂ) (hs : 0 < s.re) :
    (∫ A in Ioi (1 : ℝ), Complex.exp (-s * A) * (normalizationPolynomial A : ℂ)) =
      normalizationKernel s := by
  have h17 := (kernelIntegrand_integrable 17 s hs).const_mul ((65536 / 109395 : ℂ) / 16)
  have h15 := (kernelIntegrand_integrable 15 s hs).const_mul ((131072 / 45045 : ℂ) / 2)
  have h13 := (kernelIntegrand_integrable 13 s hs).const_mul (196608 / 5005 : ℂ)
  have hsum : IntegrableOn (fun A ↦
      (65536 / 109395 : ℂ) / 16 * kernelIntegrand 17 s A +
      (131072 / 45045 : ℂ) / 2 * kernelIntegrand 15 s A) (Ioi 1) := h17.add h15
  simp_rw [weighted_normalization_eq]
  rw [integral_add hsum h13, integral_add h17 h15]
  simp_rw [integral_const_mul, integral_eq_laplaceKernel _ s hs]
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceLaplaceIntegral/Variant33d473f99aef5fbc2a880665ca0064603ed5e6cd225a674c6b2588a423ddf6a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceLaplaceIntegral/Variant33d473f99aef5fbc2a880665ca0064603ed5e6cd225a674c6b2588a423ddf6a6.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `148e2294d2771674d145ee0b0313dae42a47d61c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
