# rodgers_tao_local_equilibrium

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:616b3ec5-5dba-2dcc-04f9-defafc7a51df",
  "kind": "theorem",
  "lexical_name": "rodgers_tao_local_equilibrium",
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
  "slug": "rodgers-tao-local-equilibrium--b44dadb9099aba88f52f440f",
  "source": {
    "blob": "d5c87222d167f3be16ab1bb476089cccac3d6dde",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 38,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RodgersTaoHeat/Variant9ed91c348570b9ede4542355c8b60b77f1365b3751f1be442fca7bf402695c14.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b44dadb9099aba88f52f440fd7b10882955efcd0c6f82ab132717d40e94b5373",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RodgersTaoHeat/Variant9ed91c348570b9ede4542355c8b60b77f1365b3751f1be442fca7bf402695c14.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:616b3ec5-5dba-2dcc-04f9-defafc7a51df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rodgers_tao_local_equilibrium
    {F : Folder.ResearchTopos.RodgersTaoHeatFamily}
    (D : Folder.ResearchTopos.RodgersTaoZeroDynamics F) :
    D.localEquilibriumConclusion :=
  Folder.ResearchTopos.rodgers_tao_local_equilibrium D

end RodgersTaoHeat
end ResearchTopos
end Theorem
end Folder
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RodgersTaoHeat/Variant9ed91c348570b9ede4542355c8b60b77f1365b3751f1be442fca7bf402695c14.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RodgersTaoHeat/Variant9ed91c348570b9ede4542355c8b60b77f1365b3751f1be442fca7bf402695c14.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5c87222d167f3be16ab1bb476089cccac3d6dde` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
