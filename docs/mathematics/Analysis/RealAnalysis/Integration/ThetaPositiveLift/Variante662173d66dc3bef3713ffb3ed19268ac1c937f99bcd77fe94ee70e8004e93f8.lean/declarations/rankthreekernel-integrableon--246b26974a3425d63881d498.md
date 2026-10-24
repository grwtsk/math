# rankThreeKernel_integrableOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7a3ca586-2277-1692-18ff-b698d16f1274",
  "kind": "theorem",
  "lexical_name": "rankThreeKernel_integrableOn",
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
  "slug": "rankthreekernel-integrableon--246b26974a3425d63881d498",
  "source": {
    "blob": "12a376070e8d7d4cadde391133d123f3c75677f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 73,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variante662173d66dc3bef3713ffb3ed19268ac1c937f99bcd77fe94ee70e8004e93f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:246b26974a3425d63881d498ab055e92e1d49faa2141812700ddaf851022d4d3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variante662173d66dc3bef3713ffb3ed19268ac1c937f99bcd77fe94ee70e8004e93f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a3ca586-2277-1692-18ff-b698d16f1274`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem rankThreeKernel_integrableOn
    {f0 f1 f2 : ℝ → ℝ} {S T U : Set ℝ}
    (h0S : IntegrableOn f0 S) (h0T : IntegrableOn f0 T) (h0U : IntegrableOn f0 U)
    (h1S : IntegrableOn f1 S) (h1T : IntegrableOn f1 T) (h1U : IntegrableOn f1 U)
    (h2S : IntegrableOn f2 S) (h2T : IntegrableOn f2 T) (h2U : IntegrableOn f2 U) :
    IntegrableOn (rankThreeKernel f0 f1 f2)
      ((S ×ˢ T) ×ˢ U) ((volume.prod volume).prod volume) := by
  have h012 := triple_mul_integrableOn h0S h1T h2U
  have h021 := triple_mul_integrableOn h0S h2T h1U
  have h102 := triple_mul_integrableOn h1S h0T h2U
  have h120 := triple_mul_integrableOn h1S h2T h0U
  have h201 := triple_mul_integrableOn h2S h0T h1U
  have h210 := triple_mul_integrableOn h2S h1T h0U
  have h := ((((h012.sub h021).sub h102).add h120).add h201).sub h210
  apply h.congr
  filter_upwards [] with p
  simp only [Pi.sub_apply, Pi.add_apply]
  unfold rankThreeKernel
  ring

/-- Multilinearity of the 3-by-3 determinant through three independent set integrals. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variante662173d66dc3bef3713ffb3ed19268ac1c937f99bcd77fe94ee70e8004e93f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variante662173d66dc3bef3713ffb3ed19268ac1c937f99bcd77fe94ee70e8004e93f8.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12a376070e8d7d4cadde391133d123f3c75677f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
