# pushforwardFamily_def

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:caf37742-bc04-75d7-242b-a965db0dccea",
  "kind": "theorem",
  "lexical_name": "pushforwardFamily_def",
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
  "slug": "pushforwardfamily-def--5ae259ad42cea6634f9942e2",
  "source": {
    "blob": "2c57abdb7f0afcf62a5be016bc7845b4366895f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 170,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variant0e8f4ea64c7e14d26337c869e1f6b3f233766ce1028477d4f59b31eb17baa831.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ae259ad42cea6634f9942e2d5bb1cb3caaf05b748ec782cf93889544f86bc7a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variant0e8f4ea64c7e14d26337c869e1f6b3f233766ce1028477d4f59b31eb17baa831.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:caf37742-bc04-75d7-242b-a965db0dccea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem pushforwardFamily_def {X} (x : ℱ.obj (op X)) :
    pushforwardFamily α x = fun _ _ hf =>
  ℱ'.val.map hf.some.lift.op <| α.app (op _) (ℱ.map hf.some.map.op x : _) := rfl

/-- (Implementation). The `pushforwardFamily` defined is compatible. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variant0e8f4ea64c7e14d26337c869e1f6b3f233766ce1028477d4f59b31eb17baa831.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variant0e8f4ea64c7e14d26337c869e1f6b3f233766ce1028477d4f59b31eb17baa831.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c57abdb7f0afcf62a5be016bc7845b4366895f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
