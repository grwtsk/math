# algebraMap_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:af1a187e-59ce-f9f8-f284-e72931f9750b",
  "kind": "theorem",
  "lexical_name": "algebraMap_injective",
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
  "slug": "algebramap-injective--07716c827fe7df38c6e479d3",
  "source": {
    "blob": "b9fac5fabef357ae41de8293703fed3ca2013414",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 91,
    "path": "GRWTSK/Algebra/FunctionField/Variant3f218f5ab5f1cc02159da92cd881c9021d0ba244912f25e43b36b8c6f0bc55b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:07716c827fe7df38c6e479d328695d498e70753cff5d02c93328ccb6811bf9ce",
  "verification": {
    "reference": "docs/verification/Algebra/FunctionField/Variant3f218f5ab5f1cc02159da92cd881c9021d0ba244912f25e43b36b8c6f0bc55b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af1a187e-59ce-f9f8-f284-e72931f9750b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem algebraMap_injective [Algebra F[X] K] [Algebra F⟮X⟯ K]
    [IsScalarTower F[X] F⟮X⟯ K] : Function.Injective (algebraMap F[X] K) := by
  rw [IsScalarTower.algebraMap_eq F[X] F⟮X⟯ K]
  exact (algebraMap F⟮X⟯ K).injective.comp (IsFractionRing.injective F[X] F⟮X⟯)

/-- The function field analogue of `NumberField.ringOfIntegers`:
`FunctionField.ringOfIntegers F K` is the integral closure of `F[X]` in `K`.

We don't actually assume `K` is a function field over `F` in the definition,
only when proving its properties.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FunctionField/Variant3f218f5ab5f1cc02159da92cd881c9021d0ba244912f25e43b36b8c6f0bc55b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FunctionField/Variant3f218f5ab5f1cc02159da92cd881c9021d0ba244912f25e43b36b8c6f0bc55b5.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9fac5fabef357ae41de8293703fed3ca2013414` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
