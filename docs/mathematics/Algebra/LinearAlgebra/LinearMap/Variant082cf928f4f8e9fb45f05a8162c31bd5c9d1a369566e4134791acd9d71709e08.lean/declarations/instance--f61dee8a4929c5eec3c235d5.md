# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b96af886afc22201258d7a671e2d9d634a9b54a3d2428ce677e95681a819cef5",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--f61dee8a4929c5eec3c235d5",
  "source": {
    "blob": "228502941109329435282b9aad1f8aa47da946ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 949,
    "line": 943,
    "path": "GRWTSK/Algebra/LinearAlgebra/LinearMap/Variant082cf928f4f8e9fb45f05a8162c31bd5c9d1a369566e4134791acd9d71709e08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f61dee8a4929c5eec3c235d57b8675db162926ed0ea074f49d3e16c48e98378b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LinearMap/Variant082cf928f4f8e9fb45f05a8162c31bd5c9d1a369566e4134791acd9d71709e08.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b96af886afc22201258d7a671e2d9d634a9b54a3d2428ce677e95681a819cef5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 943–949.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : Sub (M →ₛₗ[σ₁₂] N₂) :=
  ⟨fun f g ↦
    { toFun := f - g
      map_add' := fun x y ↦ by simp only [Pi.sub_apply, map_add, add_sub_add_comm]
      map_smul' := fun r x ↦ by simp [Pi.sub_apply, map_smul, smul_sub] }⟩

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LinearMap/Variant082cf928f4f8e9fb45f05a8162c31bd5c9d1a369566e4134791acd9d71709e08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LinearMap/Variant082cf928f4f8e9fb45f05a8162c31bd5c9d1a369566e4134791acd9d71709e08.lean#L943).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `228502941109329435282b9aad1f8aa47da946ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
