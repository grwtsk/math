# contMDiff_snd_tangentBundle_modelSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aeb6f76f-3063-24fd-38ea-bb5a68351824",
  "kind": "lemma",
  "lexical_name": "contMDiff_snd_tangentBundle_modelSpace",
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
  "slug": "contmdiff-snd-tangentbundle-modelspace--285f219ee77b564c13fc1b47",
  "source": {
    "blob": "02adc43ef1eb313634453d072464da0fb9d6c78a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 454,
    "line": 443,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Tangent/Variant83a177b5091d1891f1317f794700231c9b8883d3cced35095e08e65195f6a218.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:285f219ee77b564c13fc1b47ef6d5736e0de9a0d2e04fe8f82f70254d71a3398",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Tangent/Variant83a177b5091d1891f1317f794700231c9b8883d3cced35095e08e65195f6a218.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aeb6f76f-3063-24fd-38ea-bb5a68351824`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 443–454.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma contMDiff_snd_tangentBundle_modelSpace :
    ContMDiff I.tangent 𝓘(𝕜, E) n (fun (p : TangentBundle I H) ↦ p.2) := by
  change ContMDiff I.tangent 𝓘(𝕜, E) n
    ((id Prod.snd : ModelProd H E → E) ∘ (tangentBundleModelSpaceHomeomorph I))
  apply ContMDiff.comp (I' := I.prod 𝓘(𝕜, E))
  · convert contMDiff_snd
    rw [chartedSpaceSelf_prod]
    rfl
  · exact contMDiff_tangentBundleModelSpaceHomeomorph

/-- A vector field on a vector space is `C^n` in the manifold sense iff it is `C^n` in the vector
space sense. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Tangent/Variant83a177b5091d1891f1317f794700231c9b8883d3cced35095e08e65195f6a218.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Tangent/Variant83a177b5091d1891f1317f794700231c9b8883d3cced35095e08e65195f6a218.lean#L443).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02adc43ef1eb313634453d072464da0fb9d6c78a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
