# inr_XIsoBiprod_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "14c963e746778d71f0c87be08db807068f06e09a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 170,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/97/9710483ee19eb36fea72285cc50f7d5cb8e4184fe7cd1537660a906d5ae8b9e3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1e14fd55-780c-af3d-745a-649a3ebe7478",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4de6c467-6db0-1241-7766-8de8cfaa5df4",
  "kind": "lemma",
  "lexical_name": "inr_XIsoBiprod_inv",
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
  "slug": "inr-xisobiprod-inv--a9dcdaf7b26ba1ca590942a5",
  "source": {
    "blob": "14c963e746778d71f0c87be08db807068f06e09a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 170,
    "path": "GRWTSK/Topology/AlgebraicTopology/HomotopyCofiber/Variant9710483ee19eb36fea72285cc50f7d5cb8e4184fe7cd1537660a906d5ae8b9e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a9dcdaf7b26ba1ca590942a535808aa85792d91b584c583818ff73e970828023",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/HomotopyCofiber/Variant9710483ee19eb36fea72285cc50f7d5cb8e4184fe7cd1537660a906d5ae8b9e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4de6c467-6db0-1241-7766-8de8cfaa5df4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma inr_XIsoBiprod_inv (i j : ι) (hij : c.Rel j i) :
    haveI := HasHomotopyCofiber.hasBinaryBiproduct φ _ _ hij
    biprod.inr ≫ (XIsoBiprod φ j i hij).inv = inrX φ j := by
  rw [← inrX_XIsoBiprod_hom φ i j hij, Category.assoc, Iso.hom_inv_id, Category.comp_id]

/-- The `d` field of the homological complex `homotopyCofiber φ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/HomotopyCofiber/Variant9710483ee19eb36fea72285cc50f7d5cb8e4184fe7cd1537660a906d5ae8b9e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/HomotopyCofiber/Variant9710483ee19eb36fea72285cc50f7d5cb8e4184fe7cd1537660a906d5ae8b9e3.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14c963e746778d71f0c87be08db807068f06e09a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
