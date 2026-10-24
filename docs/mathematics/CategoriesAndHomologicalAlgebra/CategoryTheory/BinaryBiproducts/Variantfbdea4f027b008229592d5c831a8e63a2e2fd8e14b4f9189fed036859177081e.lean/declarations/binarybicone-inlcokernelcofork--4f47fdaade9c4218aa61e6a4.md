# BinaryBicone.inlCokernelCofork

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9ccd20db22a3be40deaf82a33cbdb481b404beaeec5ba81d4013064b4858d477",
  "kind": "def",
  "lexical_name": "BinaryBicone.inlCokernelCofork",
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
  "slug": "binarybicone-inlcokernelcofork--4f47fdaade9c4218aa61e6a4",
  "source": {
    "blob": "a6a09df370065d5ff509dd71e0f87d6c41e4053b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 807,
    "line": 804,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryBiproducts/Variantfbdea4f027b008229592d5c831a8e63a2e2fd8e14b4f9189fed036859177081e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4f47fdaade9c4218aa61e6a4c76f3a8e931fb47413d4ca047316bd439cb68eef",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryBiproducts/Variantfbdea4f027b008229592d5c831a8e63a2e2fd8e14b4f9189fed036859177081e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9ccd20db22a3be40deaf82a33cbdb481b404beaeec5ba81d4013064b4858d477`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 804–807.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def BinaryBicone.inlCokernelCofork : CokernelCofork c.inl :=
  CokernelCofork.ofπ c.snd c.inl_snd

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryBiproducts/Variantfbdea4f027b008229592d5c831a8e63a2e2fd8e14b4f9189fed036859177081e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryBiproducts/Variantfbdea4f027b008229592d5c831a8e63a2e2fd8e14b4f9189fed036859177081e.lean#L804).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6a09df370065d5ff509dd71e0f87d6c41e4053b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
