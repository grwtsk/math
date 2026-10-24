# explicitCokernel.map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:74e8dd0cf3d7dae10204158cc2a6f58e59e2f6709dd18bc90de4ad43c82e7290",
  "kind": "def",
  "lexical_name": "explicitCokernel.map",
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
  "slug": "explicitcokernel-map--e367368212170ff74ab04445",
  "source": {
    "blob": "8f71cfb96260d98a8a25693c00b06bd60db2b920",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 322,
    "line": 317,
    "path": "GRWTSK/Analysis/Kernels/Variant6d7f85100a47389f78f8a08138ef9280f2b06787848697a25f49cf3a1c278c98.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e367368212170ff74ab044458d04d8fe655cf90d9a3be359c26025306534cfe0",
  "verification": {
    "reference": "docs/verification/Analysis/Kernels/Variant6d7f85100a47389f78f8a08138ef9280f2b06787848697a25f49cf3a1c278c98.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:74e8dd0cf3d7dae10204158cc2a6f58e59e2f6709dd18bc90de4ad43c82e7290`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 317–322.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def explicitCokernel.map {A B C D : SemiNormedGrp.{u}}
    {fab : A ⟶ B} {fbd : B ⟶ D} {fac : A ⟶ C} {fcd : C ⟶ D} (h : fab ≫ fbd = fac ≫ fcd) :
    explicitCokernel fab ⟶ explicitCokernel fcd :=
  @explicitCokernelDesc _ _ _ fab (fbd ≫ explicitCokernelπ _) <| by simp [reassoc_of% h]

/-- A special case of `CategoryTheory.Limits.cokernel.map_desc` adapted to `explicitCokernel`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Kernels/Variant6d7f85100a47389f78f8a08138ef9280f2b06787848697a25f49cf3a1c278c98.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Kernels/Variant6d7f85100a47389f78f8a08138ef9280f2b06787848697a25f49cf3a1c278c98.lean#L317).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f71cfb96260d98a8a25693c00b06bd60db2b920` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
