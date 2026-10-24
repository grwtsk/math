# commMonToLaxBraided

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7983cbcb48bff5e847906cc42cee7c5664079a8e944a70bc4cc5388cfca792a4",
  "kind": "def",
  "lexical_name": "commMonToLaxBraided",
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
  "slug": "commmontolaxbraided--54b68458cb57a9337158865d",
  "source": {
    "blob": "19103dd699cb8cc07d30e82dfe23763444d521c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 260,
    "line": 253,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variantcb5d860c4ebfbcd0524184aea33cfa589f57c02fb328bd21c8d055747285d241.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:54b68458cb57a9337158865d978031dfeedd2387b68ebccdfe05364c27e14256",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variantcb5d860c4ebfbcd0524184aea33cfa589f57c02fb328bd21c8d055747285d241.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7983cbcb48bff5e847906cc42cee7c5664079a8e944a70bc4cc5388cfca792a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–260.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def commMonToLaxBraided : CommMon_ C ⥤ LaxBraidedFunctor (Discrete PUnit.{u + 1}) C where
  obj A := LaxBraidedFunctor.of (commMonToLaxBraidedObj A)
  map f :=
    { hom := { app := fun _ => f.hom }
      isMonoidal := { } }

/-- Implementation of `CommMon_.equivLaxBraidedFunctorPUnit`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variantcb5d860c4ebfbcd0524184aea33cfa589f57c02fb328bd21c8d055747285d241.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variantcb5d860c4ebfbcd0524184aea33cfa589f57c02fb328bd21c8d055747285d241.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `19103dd699cb8cc07d30e82dfe23763444d521c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
