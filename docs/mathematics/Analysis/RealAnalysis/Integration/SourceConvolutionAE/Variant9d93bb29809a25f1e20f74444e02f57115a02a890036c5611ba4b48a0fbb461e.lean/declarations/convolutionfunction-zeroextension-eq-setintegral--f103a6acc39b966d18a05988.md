# convolutionFunction_zeroExtension_eq_setIntegral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0bae3c02-dc58-656c-1a52-54ab6e6b89a4",
  "kind": "theorem",
  "lexical_name": "convolutionFunction_zeroExtension_eq_setIntegral",
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
  "slug": "convolutionfunction-zeroextension-eq-setintegral--f103a6acc39b966d18a05988",
  "source": {
    "blob": "a454a3d6527e5664d5d15346ddfbe4479215ed80",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 129,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceConvolutionAE/Variant9d93bb29809a25f1e20f74444e02f57115a02a890036c5611ba4b48a0fbb461e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f103a6acc39b966d18a059883f58993a66b4053a56d01f7178a2c9dee45a36b8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceConvolutionAE/Variant9d93bb29809a25f1e20f74444e02f57115a02a890036c5611ba4b48a0fbb461e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0bae3c02-dc58-656c-1a52-54ab6e6b89a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem convolutionFunction_zeroExtension_eq_setIntegral (f : H) (t : ℝ) :
    convolutionFunction (zeroExtension f) t =
      ∫ a in Ioc 0 t, fixedKernel (t - a) • f a := by
  rw [convolutionFunction_commuted, ← integral_indicator measurableSet_Ioc]
  apply integral_congr_ae
  filter_upwards [zeroExtension_ae f] with a ha
  rw [ha, causal_integrand_identity]


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceConvolutionAE/Variant9d93bb29809a25f1e20f74444e02f57115a02a890036c5611ba4b48a0fbb461e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceConvolutionAE/Variant9d93bb29809a25f1e20f74444e02f57115a02a890036c5611ba4b48a0fbb461e.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a454a3d6527e5664d5d15346ddfbe4479215ed80` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
