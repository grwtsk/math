# measurable_multivariateGaussian

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7213b782-7b51-2278-6253-d9fcd987347c",
  "kind": "lemma",
  "lexical_name": "measurable_multivariateGaussian",
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
  "slug": "measurable-multivariategaussian--707cbad475ca1b140021ce6f",
  "source": {
    "blob": "6d5620e6cc69a57ccaf0142a45cbb8da9bed0cf8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 290,
    "line": 277,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Multivariate/Variantab913421bb5cf02838882732884c519c7a17ed1f74af84a0fa218420d02af35f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:707cbad475ca1b140021ce6fb06239e33716ecc8712f2fbd9704bbe19114e51e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Multivariate/Variantab913421bb5cf02838882732884c519c7a17ed1f74af84a0fa218420d02af35f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7213b782-7b51-2278-6253-d9fcd987347c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 277–290.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma measurable_multivariateGaussian : Measurable (multivariateGaussian (ι := ι)).uncurry := by
  rw [Measure.measurable_measure]
  intro s hs
  simp only [Function.uncurry, multivariateGaussian]
  conv =>
    rhs
    intro b
    rw [Measure.map_apply (by fun_prop) hs]
  let A := {((μ, S), x) | μ + toEuclideanCLM (𝕜 := ℝ) (CFC.sqrt S) x ∈ s}
  exact measurable_measure_prodMk_left (s := A) <| hs.preimage (by fun_prop)

end multivariateGaussian

end ProbabilityTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Multivariate/Variantab913421bb5cf02838882732884c519c7a17ed1f74af84a0fa218420d02af35f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Multivariate/Variantab913421bb5cf02838882732884c519c7a17ed1f74af84a0fa218420d02af35f.lean#L277).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d5620e6cc69a57ccaf0142a45cbb8da9bed0cf8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
