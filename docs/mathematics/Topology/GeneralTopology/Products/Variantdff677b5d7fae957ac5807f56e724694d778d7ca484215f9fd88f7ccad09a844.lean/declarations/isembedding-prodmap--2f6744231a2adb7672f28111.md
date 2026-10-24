# isEmbedding_prodMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "eaf1991b18d2fbb4988777d1b78dd86c9c5ac88d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 222,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/df/dff677b5d7fae957ac5807f56e724694d778d7ca484215f9fd88f7ccad09a844.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6f3d8f03-8467-02cc-d2da-7fa036c09418",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4ff56ecd-39c4-9c43-fd7e-250570f401c5",
  "kind": "theorem",
  "lexical_name": "isEmbedding_prodMap",
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
  "slug": "isembedding-prodmap--2f6744231a2adb7672f28111",
  "source": {
    "blob": "eaf1991b18d2fbb4988777d1b78dd86c9c5ac88d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 222,
    "path": "GRWTSK/Topology/GeneralTopology/Products/Variantdff677b5d7fae957ac5807f56e724694d778d7ca484215f9fd88f7ccad09a844.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f6744231a2adb7672f28111fedf8905b84833bea68ab75ce997b6d6deb07e51",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Products/Variantdff677b5d7fae957ac5807f56e724694d778d7ca484215f9fd88f7ccad09a844.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4ff56ecd-39c4-9c43-fd7e-250570f401c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isEmbedding_prodMap {W X Y Z : TopCat.{u}} {f : W ⟶ X} {g : Y ⟶ Z} (hf : IsEmbedding f)
    (hg : IsEmbedding g) : IsEmbedding (Limits.prod.map f g) :=
  ⟨isInducing_prodMap hf.isInducing hg.isInducing, by
    haveI := (TopCat.mono_iff_injective _).mpr hf.injective
    haveI := (TopCat.mono_iff_injective _).mpr hg.injective
    exact (TopCat.mono_iff_injective _).mp inferInstance⟩

@[deprecated (since := "2024-10-26")]
alias embedding_prod_map := isEmbedding_prodMap

end Prod

/-- The binary coproduct cofan in `TopCat`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Products/Variantdff677b5d7fae957ac5807f56e724694d778d7ca484215f9fd88f7ccad09a844.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Products/Variantdff677b5d7fae957ac5807f56e724694d778d7ca484215f9fd88f7ccad09a844.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eaf1991b18d2fbb4988777d1b78dd86c9c5ac88d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
