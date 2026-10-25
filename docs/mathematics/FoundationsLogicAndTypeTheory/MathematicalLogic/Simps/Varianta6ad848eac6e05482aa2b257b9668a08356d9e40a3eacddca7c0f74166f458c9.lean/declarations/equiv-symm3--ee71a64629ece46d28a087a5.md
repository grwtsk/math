# Equiv.symm3

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cf58e97ad4cb3633b0f6cd723f6009a6eed4ae1d31197f3a8e46214fb2b0bcff",
  "kind": "def",
  "lexical_name": "Equiv.symm3",
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
  "slug": "equiv-symm3--ee71a64629ece46d28a087a5",
  "source": {
    "blob": "19d240d1d2073c9361940147806e652d899668f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 889,
    "line": 873,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Simps/Varianta6ad848eac6e05482aa2b257b9668a08356d9e40a3eacddca7c0f74166f458c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ee71a64629ece46d28a087a5bc56ffcea2b7b99012083450dd8f48d35e664397",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Simps/Varianta6ad848eac6e05482aa2b257b9668a08356d9e40a3eacddca7c0f74166f458c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cf58e97ad4cb3633b0f6cd723f6009a6eed4ae1d31197f3a8e46214fb2b0bcff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 873–889.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simps (rhsMd := .default) toFun toFun_toFun] def Equiv.symm3 : (α ≃ β) ≃ (β ≃ α) :=
  Equiv.symm2

-- this fails in Lean 4, not sure what is going on
-- example (e : α ≃ β) (y : β) : (Equiv.symm3.toFun e).toFun y = e.invFun y ∧
--   (Equiv.symm3.toFun e).toFun y = e.invFun y := by
--   constructor
--   { dsimp only [Equiv.symm3_toFun]
--     guard_target = e.symm.toFun y = e.invFun y
--     rfl }
--   { dsimp only [Equiv.symm3_toFun_toFun]
--     guard_target = e.invFun y = e.invFun y
--     rfl }

end NestedNonFullyApplied

-- test that type classes which are props work
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Simps/Varianta6ad848eac6e05482aa2b257b9668a08356d9e40a3eacddca7c0f74166f458c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Simps/Varianta6ad848eac6e05482aa2b257b9668a08356d9e40a3eacddca7c0f74166f458c9.lean#L873).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `19d240d1d2073c9361940147806e652d899668f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
