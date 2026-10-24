# sigmaConstAdj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:25d21ded9c360cc26173a65c63f75ba7d10bfc426e40bfdced11b9ea73bb146b",
  "kind": "def",
  "lexical_name": "sigmaConstAdj",
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
  "slug": "sigmaconstadj--8b516241eb32c024cad17883",
  "source": {
    "blob": "7fc68ad1cd44a9e31166371073f80e6f2f493b0c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 539,
    "line": 525,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantb9651ff9397cf58446f5c98353449254018c6d4b69bf83ced693ce1df3e2d541.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8b516241eb32c024cad178831b8258943a95a47699c1a01d35d1edafa06a46aa",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantb9651ff9397cf58446f5c98353449254018c6d4b69bf83ced693ce1df3e2d541.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:25d21ded9c360cc26173a65c63f75ba7d10bfc426e40bfdced11b9ea73bb146b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 525–539.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sigmaConstAdj [Limits.HasCoproducts.{v} C] (X : C) :
    sigmaConst.obj X ⊣ coyoneda.obj (Opposite.op X) where
  unit := { app n := ↾fun i ↦ Limits.Sigma.ι (fun _ : n ↦ X) i }
  counit := { app Y := Limits.Sigma.desc id }

/-!
(Co)products over a type with a unique term.
-/


section Unique

/-- The limit cone for the product over an index type with exactly one term. -/
@[to_dual (attr := simps)
/-- The colimit cocone for the coproduct over an index type with exactly one term. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantb9651ff9397cf58446f5c98353449254018c6d4b69bf83ced693ce1df3e2d541.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantb9651ff9397cf58446f5c98353449254018c6d4b69bf83ced693ce1df3e2d541.lean#L525).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7fc68ad1cd44a9e31166371073f80e6f2f493b0c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
