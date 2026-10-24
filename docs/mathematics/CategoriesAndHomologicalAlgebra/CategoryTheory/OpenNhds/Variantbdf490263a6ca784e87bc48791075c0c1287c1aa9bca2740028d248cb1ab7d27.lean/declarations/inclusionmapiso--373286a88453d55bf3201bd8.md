# inclusionMapIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3d96acb533d595cd65f83ee4b71e3a7bb5ddd8f3ec0e111904ba75479672c311",
  "kind": "def",
  "lexical_name": "inclusionMapIso",
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
  "slug": "inclusionmapiso--373286a88453d55bf3201bd8",
  "source": {
    "blob": "53ac4adf632fa1df4dddab7b5206b2516780c02f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 138,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OpenNhds/Variantbdf490263a6ca784e87bc48791075c0c1287c1aa9bca2740028d248cb1ab7d27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:373286a88453d55bf3201bd8211764cc03d5d12605f8671bd3aa51c3ff858348",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OpenNhds/Variantbdf490263a6ca784e87bc48791075c0c1287c1aa9bca2740028d248cb1ab7d27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3d96acb533d595cd65f83ee4b71e3a7bb5ddd8f3ec0e111904ba75479672c311`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def inclusionMapIso (x : X) : inclusion (f x) ⋙ Opens.map f ≅ map f x ⋙ inclusion x :=
  NatIso.ofComponents fun U => { hom := 𝟙 _, inv := 𝟙 _ }

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OpenNhds/Variantbdf490263a6ca784e87bc48791075c0c1287c1aa9bca2740028d248cb1ab7d27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OpenNhds/Variantbdf490263a6ca784e87bc48791075c0c1287c1aa9bca2740028d248cb1ab7d27.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53ac4adf632fa1df4dddab7b5206b2516780c02f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
