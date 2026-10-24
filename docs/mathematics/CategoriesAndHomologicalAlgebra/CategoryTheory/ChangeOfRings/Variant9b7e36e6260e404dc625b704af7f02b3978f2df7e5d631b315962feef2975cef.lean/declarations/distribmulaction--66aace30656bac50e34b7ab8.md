# distribMulAction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6d20b601e8d1e7eb82f22d743afd1c613182dcf954d21580e46536d71efd168e",
  "kind": "instance",
  "lexical_name": "distribMulAction",
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
  "slug": "distribmulaction--66aace30656bac50e34b7ab8",
  "source": {
    "blob": "2dde91a9a5977ec7c1d24dfc4a790527c0389114",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 417,
    "line": 410,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ChangeOfRings/Variant9b7e36e6260e404dc625b704af7f02b3978f2df7e5d631b315962feef2975cef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:66aace30656bac50e34b7ab86e55f0904e387890d53609a42e0a0d2b6b062834",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ChangeOfRings/Variant9b7e36e6260e404dc625b704af7f02b3978f2df7e5d631b315962feef2975cef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6d20b601e8d1e7eb82f22d743afd1c613182dcf954d21580e46536d71efd168e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 410–417.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance distribMulAction : DistribMulAction S <| (restrictScalars f).obj (of _ S) →ₗ[R] M :=
  { CoextendScalars.mulAction f _ with
    smul_add := fun s g h => LinearMap.ext fun _ : S => by simp
    smul_zero := fun _ => LinearMap.ext fun _ : S => by simp }

/-- `S` acts on Hom(S, M) by `s • g = x ↦ g (x • s)`, this action defines an `S`-module structure on
Hom(S, M).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ChangeOfRings/Variant9b7e36e6260e404dc625b704af7f02b3978f2df7e5d631b315962feef2975cef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ChangeOfRings/Variant9b7e36e6260e404dc625b704af7f02b3978f2df7e5d631b315962feef2975cef.lean#L410).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2dde91a9a5977ec7c1d24dfc4a790527c0389114` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
