# goursatFst_prod_goursatSnd_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5eded4413b4deaae92bd2dc733131bd7ffbca446",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 62,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/35/3593dc3c17362e752ab2c8402fa94ce60cf593de7c3140479d54ef8c76b9d227.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5bf2ca3b-aacc-94fe-ec36-0e88f808bb8b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:570a3ddf-33e6-d5b1-c87d-e4f020dfa7ed",
  "kind": "lemma",
  "lexical_name": "goursatFst_prod_goursatSnd_le",
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
  "slug": "goursatfst-prod-goursatsnd-le--986b930470c5f7225844f096",
  "source": {
    "blob": "5eded4413b4deaae92bd2dc733131bd7ffbca446",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 62,
    "path": "GRWTSK/Algebra/LinearAlgebra/Goursat/Variant3593dc3c17362e752ab2c8402fa94ce60cf593de7c3140479d54ef8c76b9d227.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:986b930470c5f7225844f096a9fb06a7da78ca98636eeeeedba7336a34736471",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Goursat/Variant3593dc3c17362e752ab2c8402fa94ce60cf593de7c3140479d54ef8c76b9d227.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:570a3ddf-33e6-d5b1-c87d-e4f020dfa7ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma goursatFst_prod_goursatSnd_le : L.goursatFst.prod L.goursatSnd ≤ L := by
  simpa only [← toAddSubgroup_le, goursatFst_toAddSubgroup, goursatSnd_toAddSubgroup]
    using! L.toAddSubgroup.goursatFst_prod_goursatSnd_le

set_option backward.isDefEq.respectTransparency false in
include hL₁ hL₂ in
/-- **Goursat's lemma** for a submodule of a product with surjective projections.

If `L` is a submodule of `M × N` which projects fully on both factors, then there exist submodules
`M' ≤ M` and `N' ≤ N` such that `M' × N' ≤ L` and the image of `L` in `(M ⧸ M') × (N ⧸ N')` is the
graph of an isomorphism of `R`-modules `(M ⧸ M') ≃ (N ⧸ N')`.

`M` and `N` can be explicitly constructed as `L.goursatFst` and `L.goursatSnd` respectively. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Goursat/Variant3593dc3c17362e752ab2c8402fa94ce60cf593de7c3140479d54ef8c76b9d227.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Goursat/Variant3593dc3c17362e752ab2c8402fa94ce60cf593de7c3140479d54ef8c76b9d227.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5eded4413b4deaae92bd2dc733131bd7ffbca446` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
