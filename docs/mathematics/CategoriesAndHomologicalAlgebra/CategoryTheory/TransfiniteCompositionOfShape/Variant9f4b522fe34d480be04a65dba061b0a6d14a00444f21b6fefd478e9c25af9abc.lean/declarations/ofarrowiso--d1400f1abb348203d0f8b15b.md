# ofArrowIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c24153026058f67bf79e6db7ad68b1c3b2289f0a94b7e15cd75edbc1f535a74c",
  "kind": "def",
  "lexical_name": "ofArrowIso",
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
  "slug": "ofarrowiso--d1400f1abb348203d0f8b15b",
  "source": {
    "blob": "aea63dda7ca269caa286550aae14999f105dd854",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 82,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionOfShape/Variant9f4b522fe34d480be04a65dba061b0a6d14a00444f21b6fefd478e9c25af9abc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d1400f1abb348203d0f8b15bab39e24633118e1a85b7602269b458e8e41aa5aa",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionOfShape/Variant9f4b522fe34d480be04a65dba061b0a6d14a00444f21b6fefd478e9c25af9abc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c24153026058f67bf79e6db7ad68b1c3b2289f0a94b7e15cd75edbc1f535a74c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofArrowIso {X' Y' : C} {f' : X' ⟶ Y'} (e : Arrow.mk f ≅ Arrow.mk f') :
    TransfiniteCompositionOfShape J f' where
  F := c.F
  isoBot := c.isoBot ≪≫ Arrow.leftFunc.mapIso e
  incl := c.incl ≫ (Functor.const J).map e.hom.right
  isColimit := IsColimit.ofIsoColimit c.isColimit
    (Cocone.ext (Arrow.rightFunc.mapIso e))

/-- If `G : ComposableArrows C n`, then `G.hom : G.left ⟶ G.right` is a
transfinite composition of shape `Fin (n + 1)`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionOfShape/Variant9f4b522fe34d480be04a65dba061b0a6d14a00444f21b6fefd478e9c25af9abc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionOfShape/Variant9f4b522fe34d480be04a65dba061b0a6d14a00444f21b6fefd478e9c25af9abc.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aea63dda7ca269caa286550aae14999f105dd854` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
