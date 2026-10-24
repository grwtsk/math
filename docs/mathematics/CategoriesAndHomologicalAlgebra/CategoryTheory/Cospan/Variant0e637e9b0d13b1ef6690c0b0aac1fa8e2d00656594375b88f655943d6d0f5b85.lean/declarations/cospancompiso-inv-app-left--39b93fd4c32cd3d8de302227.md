# cospanCompIso_inv_app_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d279f85f-abec-ea32-b0e9-9729ce14a6bc",
  "kind": "theorem",
  "lexical_name": "cospanCompIso_inv_app_left",
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
  "slug": "cospancompiso-inv-app-left--39b93fd4c32cd3d8de302227",
  "source": {
    "blob": "5a3ddcfcaeba2dbaa56cc34e76140684f487068d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 281,
    "line": 278,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cospan/Variant0e637e9b0d13b1ef6690c0b0aac1fa8e2d00656594375b88f655943d6d0f5b85.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:39b93fd4c32cd3d8de302227cb41d7c4fac0632a0b7b893d5ea199bb09d41554",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Cospan/Variant0e637e9b0d13b1ef6690c0b0aac1fa8e2d00656594375b88f655943d6d0f5b85.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d279f85f-abec-ea32-b0e9-9729ce14a6bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 278–281.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cospanCompIso_inv_app_left : (cospanCompIso F f g).inv.app WalkingCospan.left = 𝟙 _ :=
  rfl

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Cospan/Variant0e637e9b0d13b1ef6690c0b0aac1fa8e2d00656594375b88f655943d6d0f5b85.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cospan/Variant0e637e9b0d13b1ef6690c0b0aac1fa8e2d00656594375b88f655943d6d0f5b85.lean#L278).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a3ddcfcaeba2dbaa56cc34e76140684f487068d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
