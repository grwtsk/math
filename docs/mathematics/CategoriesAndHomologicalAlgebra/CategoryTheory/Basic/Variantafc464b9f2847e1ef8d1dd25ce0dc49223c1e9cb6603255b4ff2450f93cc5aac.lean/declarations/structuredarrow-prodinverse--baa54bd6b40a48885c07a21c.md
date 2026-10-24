# StructuredArrow.prodInverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f7f7da44ed9a3908577b3f26eb1643999a192a63da50c42225283d9b64cc7e56",
  "kind": "def",
  "lexical_name": "StructuredArrow.prodInverse",
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
  "slug": "structuredarrow-prodinverse--baa54bd6b40a48885c07a21c",
  "source": {
    "blob": "7fc1155580bc5c4f4b54703d365f28c111a141f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1227,
    "line": 1218,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantafc464b9f2847e1ef8d1dd25ce0dc49223c1e9cb6603255b4ff2450f93cc5aac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:baa54bd6b40a48885c07a21c7b45d5a07e733d3cddeb69c18e222cbf1350f657",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantafc464b9f2847e1ef8d1dd25ce0dc49223c1e9cb6603255b4ff2450f93cc5aac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f7f7da44ed9a3908577b3f26eb1643999a192a63da50c42225283d9b64cc7e56`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1218–1227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def StructuredArrow.prodInverse :
    StructuredArrow S T × StructuredArrow S' T' ⥤ StructuredArrow (S, S') (T.prod T') where
  obj f := .mk (Y := (f.1.right, f.2.right)) ⟨f.1.hom, f.2.hom⟩
  map η := StructuredArrow.homMk ⟨η.1.right, η.2.right⟩ (by simp)

set_option backward.isDefEq.respectTransparency.types false in
set_option backward.defeqAttrib.useBackward true in
/-- The natural equivalence
`StructuredArrow (S, S') (T.prod T') ≌ StructuredArrow S T × StructuredArrow S' T'`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantafc464b9f2847e1ef8d1dd25ce0dc49223c1e9cb6603255b4ff2450f93cc5aac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantafc464b9f2847e1ef8d1dd25ce0dc49223c1e9cb6603255b4ff2450f93cc5aac.lean#L1218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7fc1155580bc5c4f4b54703d365f28c111a141f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
