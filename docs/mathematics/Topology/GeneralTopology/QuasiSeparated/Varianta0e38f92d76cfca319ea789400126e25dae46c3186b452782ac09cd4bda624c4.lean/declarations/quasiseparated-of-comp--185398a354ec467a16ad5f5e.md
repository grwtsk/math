# QuasiSeparated.of_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c18674bc7337b530e1dfb645a2ccbf9fe508fe34",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 179,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a0/a0e38f92d76cfca319ea789400126e25dae46c3186b452782ac09cd4bda624c4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5d73ad1c-38b0-89c4-061c-895c8b71edec",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e9a67c7e-61e6-0c23-b568-3f6c82967677",
  "kind": "theorem",
  "lexical_name": "QuasiSeparated.of_comp",
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
  "slug": "quasiseparated-of-comp--185398a354ec467a16ad5f5e",
  "source": {
    "blob": "c18674bc7337b530e1dfb645a2ccbf9fe508fe34",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 179,
    "path": "GRWTSK/Topology/GeneralTopology/QuasiSeparated/Varianta0e38f92d76cfca319ea789400126e25dae46c3186b452782ac09cd4bda624c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:185398a354ec467a16ad5f5e1b586156b64ccc33bc3d745ad6cbb88c1e036df1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/QuasiSeparated/Varianta0e38f92d76cfca319ea789400126e25dae46c3186b452782ac09cd4bda624c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e9a67c7e-61e6-0c23-b568-3f6c82967677`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem QuasiSeparated.of_comp {X Y Z : Scheme} (f : X ⟶ Y) (g : Y ⟶ Z) [QuasiSeparated (f ≫ g)] :
    QuasiSeparated f := by
  let 𝒰 := (Z.affineCover.pullbackCover g).bind fun x => Scheme.affineCover _
  have (i) : IsAffine (𝒰.obj i) := by dsimp [𝒰]; infer_instance
  apply HasAffineProperty.of_openCover
    ((Z.affineCover.pullbackCover g).bind fun x => Scheme.affineCover _)
  rintro ⟨i, j⟩; dsimp at i j
  refine @quasiSeparatedSpace_of_quasiSeparated _ _ ?_
    (HasAffineProperty.of_isPullback (.of_hasPullback _ (Z.affineCover.map i)) ‹_›) ?_
  · exact pullback.map _ _ _ _ (𝟙 _) _ _ (by simp) (Category.comp_id _) ≫
      (pullbackRightPullbackFstIso g (Z.affineCover.map i) f).hom
  · exact inferInstance

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/QuasiSeparated/Varianta0e38f92d76cfca319ea789400126e25dae46c3186b452782ac09cd4bda624c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/QuasiSeparated/Varianta0e38f92d76cfca319ea789400126e25dae46c3186b452782ac09cd4bda624c4.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c18674bc7337b530e1dfb645a2ccbf9fe508fe34` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
