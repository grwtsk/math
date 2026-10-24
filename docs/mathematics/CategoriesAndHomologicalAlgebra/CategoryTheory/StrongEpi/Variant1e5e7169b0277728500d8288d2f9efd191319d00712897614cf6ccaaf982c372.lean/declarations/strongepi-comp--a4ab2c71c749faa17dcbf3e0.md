# strongEpi_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:797016993b7236946b19472eb77a0c8419b511fc24a4d37e6bdf2dc91486e4d3",
  "kind": "instance",
  "lexical_name": "strongEpi_comp",
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
  "slug": "strongepi-comp--a4ab2c71c749faa17dcbf3e0",
  "source": {
    "blob": "4f40a361a54c60cab989af62767080fa8666b165",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 90,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StrongEpi/Variant1e5e7169b0277728500d8288d2f9efd191319d00712897614cf6ccaaf982c372.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a4ab2c71c749faa17dcbf3e04e7cc4c74bb06e5cc46a931f33361da301b5cb14",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/StrongEpi/Variant1e5e7169b0277728500d8288d2f9efd191319d00712897614cf6ccaaf982c372.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:797016993b7236946b19472eb77a0c8419b511fc24a4d37e6bdf2dc91486e4d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance strongEpi_comp [StrongEpi f] [StrongEpi g] : StrongEpi (f ≫ g) :=
  { epi := epi_comp _ _
    llp := by
      intros
      infer_instance }

/-- If `f ≫ g` is a strong epimorphism, then so is `g`. -/
@[to_dual (reorder := f g) (rename := f ↔ g, P ↔ R)
/-- If `f ≫ g` is a strong monomorphism, then so is `f`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/StrongEpi/Variant1e5e7169b0277728500d8288d2f9efd191319d00712897614cf6ccaaf982c372.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StrongEpi/Variant1e5e7169b0277728500d8288d2f9efd191319d00712897614cf6ccaaf982c372.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f40a361a54c60cab989af62767080fa8666b165` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
