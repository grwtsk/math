# contMDiff_snd_tangentBundle_modelSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "04032c452b9ab100e527882c7e8c5c111fdf32f6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 435,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/80/8007251719575e92201bcd81a265489644b383eaf4489d5876d734ac7693c71b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a7591ac4-1753-c43b-7643-76beaf444838",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:780fc3cd-9d0f-24d9-ab84-dbe76949e077",
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
  "slug": "contmdiff-snd-tangentbundle-modelspace--a6d7cf80c68932c211e9cf68",
  "source": {
    "blob": "04032c452b9ab100e527882c7e8c5c111fdf32f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 446,
    "line": 435,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Tangent/Variant8007251719575e92201bcd81a265489644b383eaf4489d5876d734ac7693c71b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6d7cf80c68932c211e9cf68c61cfdc660c254ecb2c9a9fbebfe5710001762bb",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Tangent/Variant8007251719575e92201bcd81a265489644b383eaf4489d5876d734ac7693c71b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:780fc3cd-9d0f-24d9-ab84-dbe76949e077`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 435–446.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Tangent/Variant8007251719575e92201bcd81a265489644b383eaf4489d5876d734ac7693c71b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Tangent/Variant8007251719575e92201bcd81a265489644b383eaf4489d5876d734ac7693c71b.lean#L435).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04032c452b9ab100e527882c7e8c5c111fdf32f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
