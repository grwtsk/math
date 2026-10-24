# biprod.conePointUniqueUpToIso_hom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a6a09df370065d5ff509dd71e0f87d6c41e4053b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 708,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fb/fbdea4f027b008229592d5c831a8e63a2e2fd8e14b4f9189fed036859177081e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:886b819d-f651-f6b2-548f-d88e19012115",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d9b5938a-0659-236c-b3dc-15bdb6062666",
  "kind": "theorem",
  "lexical_name": "biprod.conePointUniqueUpToIso_hom",
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
  "slug": "biprod-conepointuniqueuptoiso-hom--883924a46133ebc59f8848b3",
  "source": {
    "blob": "a6a09df370065d5ff509dd71e0f87d6c41e4053b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 714,
    "line": 708,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryBiproducts/Variantfbdea4f027b008229592d5c831a8e63a2e2fd8e14b4f9189fed036859177081e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:883924a46133ebc59f8848b3a29e0a034f130eec8099c18d1bb685043a3f5c29",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryBiproducts/Variantfbdea4f027b008229592d5c831a8e63a2e2fd8e14b4f9189fed036859177081e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d9b5938a-0659-236c-b3dc-15bdb6062666`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 708–714.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem biprod.conePointUniqueUpToIso_hom (X Y : C) [HasBinaryBiproduct X Y] {b : BinaryBicone X Y}
    (hb : b.IsBilimit) :
    (hb.isLimit.conePointUniqueUpToIso (BinaryBiproduct.isLimit _ _)).hom =
      biprod.lift b.fst b.snd := rfl

set_option backward.isDefEq.respectTransparency false in
/-- Auxiliary lemma for `biprod.uniqueUpToIso`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryBiproducts/Variantfbdea4f027b008229592d5c831a8e63a2e2fd8e14b4f9189fed036859177081e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryBiproducts/Variantfbdea4f027b008229592d5c831a8e63a2e2fd8e14b4f9189fed036859177081e.lean#L708).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6a09df370065d5ff509dd71e0f87d6c41e4053b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
