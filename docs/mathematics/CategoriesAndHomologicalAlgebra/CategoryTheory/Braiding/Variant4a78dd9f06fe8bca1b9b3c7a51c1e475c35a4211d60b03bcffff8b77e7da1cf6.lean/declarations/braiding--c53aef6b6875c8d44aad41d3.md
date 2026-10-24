# braiding

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:50f503447499c1a8ad9676c8a43a0c5c69b2532e2813952aaac31e50f5cbfc8d",
  "kind": "def",
  "lexical_name": "braiding",
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
  "slug": "braiding--c53aef6b6875c8d44aad41d3",
  "source": {
    "blob": "b3e8f4b487f20496fc9f6d10c53b1feb85c0236e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 43,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Braiding/Variant4a78dd9f06fe8bca1b9b3c7a51c1e475c35a4211d60b03bcffff8b77e7da1cf6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c53aef6b6875c8d44aad41d3566d1dc310cc437a83ac177b9aa709c92c6867d4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Braiding/Variant4a78dd9f06fe8bca1b9b3c7a51c1e475c35a4211d60b03bcffff8b77e7da1cf6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:50f503447499c1a8ad9676c8a43a0c5c69b2532e2813952aaac31e50f5cbfc8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def braiding [HasTensor X Y] [HasTensor Y X] : tensorObj X Y ≅ tensorObj Y X where
  hom k := tensorObjDesc (fun i j hij => (β_ _ _).hom ≫
    ιTensorObj Y X j i k (by simpa only [add_comm j i] using hij))
  inv k := tensorObjDesc (fun i j hij => (β_ _ _).inv ≫
    ιTensorObj X Y j i k (by simpa only [add_comm j i] using hij))

variable {Y Z} in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Braiding/Variant4a78dd9f06fe8bca1b9b3c7a51c1e475c35a4211d60b03bcffff8b77e7da1cf6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Braiding/Variant4a78dd9f06fe8bca1b9b3c7a51c1e475c35a4211d60b03bcffff8b77e7da1cf6.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3e8f4b487f20496fc9f6d10c53b1feb85c0236e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
