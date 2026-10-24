# Group.preimage_smul_setₛₗ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9a305ecab8bbfacdf9314f95616d931c04c2d218",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 125,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3f/3f63af84603f21da4affd2179acbac0725881f59b98f7e8d52184e5357640cf3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4076f555-da2e-4088-b0f9-39d0ad1e199e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9dee6278-90ac-ba91-63b4-0d8ff5077e3a",
  "kind": "theorem",
  "lexical_name": "Group.preimage_smul_setₛₗ",
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
  "slug": "group-preimage-smul-set--0472af39de3d6d147a9f9917",
  "source": {
    "blob": "9a305ecab8bbfacdf9314f95616d931c04c2d218",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 125,
    "path": "GRWTSK/Algebra/GroupTheory/Pointwise/Variant3f63af84603f21da4affd2179acbac0725881f59b98f7e8d52184e5357640cf3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0472af39de3d6d147a9f99178e089d35df7387c8c442f2acbeaf53b2f1ad28f9",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Pointwise/Variant3f63af84603f21da4affd2179acbac0725881f59b98f7e8d52184e5357640cf3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9dee6278-90ac-ba91-63b4-0d8ff5077e3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Group.preimage_smul_setₛₗ {G H α β : Type*} [Group G] [Group H] (σ : G → H)
    [MulAction G α] [MulAction H β]
    {F : Type*} [FunLike F α β] [MulActionSemiHomClass F σ α β] (f : F) (c : G) (t : Set β) :
    f ⁻¹' (σ c • t) = c • f ⁻¹' t :=
  preimage_smul_setₛₗ_of_isUnit_isUnit _ (Group.isUnit _) (Group.isUnit _) _

end MulActionSemiHomClass

section MulActionHomClass

section SMul

variable {M α β F : Type*} [SMul M α] [SMul M β] [FunLike F α β] [MulActionHomClass F M α β]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Pointwise/Variant3f63af84603f21da4affd2179acbac0725881f59b98f7e8d52184e5357640cf3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Pointwise/Variant3f63af84603f21da4affd2179acbac0725881f59b98f7e8d52184e5357640cf3.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a305ecab8bbfacdf9314f95616d931c04c2d218` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
