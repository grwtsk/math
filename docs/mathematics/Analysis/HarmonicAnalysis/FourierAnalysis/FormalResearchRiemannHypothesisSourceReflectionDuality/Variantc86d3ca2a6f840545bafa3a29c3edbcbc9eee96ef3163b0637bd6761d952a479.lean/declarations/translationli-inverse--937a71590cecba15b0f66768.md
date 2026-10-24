# translationLI_inverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2b6f0be3-edd1-9407-6faf-c4636c7c5cc1",
  "kind": "theorem",
  "lexical_name": "translationLI_inverse",
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
  "slug": "translationli-inverse--937a71590cecba15b0f66768",
  "source": {
    "blob": "3ffb3db52b0a1a7dde6fff645905da675127f908",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 231,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FormalResearchRiemannHypothesisSourceReflectionDuality/Variantc86d3ca2a6f840545bafa3a29c3edbcbc9eee96ef3163b0637bd6761d952a479.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:937a71590cecba15b0f66768355163cd37b0e316134d189df5d84c5b0a9bf738",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/FormalResearchRiemannHypothesisSourceReflectionDuality/Variantc86d3ca2a6f840545bafa3a29c3edbcbc9eee96ef3163b0637bd6761d952a479.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b6f0be3-edd1-9407-6faf-c4636c7c5cc1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem translationLI_inverse (u : ℝ) (f : ComplexL2) :
    translationLI u (translationLI (-u) f) = f := by
  apply Lp.ext
  filter_upwards [translationLI_coe_ae u (translationLI (-u) f),
    (measurePreserving_sub_right volume u).quasiMeasurePreserving.ae
      (translationLI_coe_ae (-u) f)] with x h1 h2
  change (translationLI (-u) f) (x-u) = f ((x-u)-(-u)) at h2
  rw [h1,h2]
  congr 1
  ring

/-- The unitary right translation `f(x-u)` on the whole complex L² space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/FormalResearchRiemannHypothesisSourceReflectionDuality/Variantc86d3ca2a6f840545bafa3a29c3edbcbc9eee96ef3163b0637bd6761d952a479.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FormalResearchRiemannHypothesisSourceReflectionDuality/Variantc86d3ca2a6f840545bafa3a29c3edbcbc9eee96ef3163b0637bd6761d952a479.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ffb3db52b0a1a7dde6fff645905da675127f908` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
