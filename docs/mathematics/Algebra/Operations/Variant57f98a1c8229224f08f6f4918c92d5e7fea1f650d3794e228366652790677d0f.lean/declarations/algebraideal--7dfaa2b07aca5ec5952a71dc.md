# algebraIdeal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:838de4901b4534964905a898ccb4c34c267978e96eade46796d7b70ed7ec61ee",
  "kind": "instance",
  "lexical_name": "algebraIdeal",
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
  "slug": "algebraideal--7dfaa2b07aca5ec5952a71dc",
  "source": {
    "blob": "98cf31c4dc554e040119c5fea8ecfb3a37c2f9c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1287,
    "line": 1272,
    "path": "GRWTSK/Algebra/Operations/Variant57f98a1c8229224f08f6f4918c92d5e7fea1f650d3794e228366652790677d0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7dfaa2b07aca5ec5952a71dc43e4df3915a5ae7267b6db1e4319a06619e3ec92",
  "verification": {
    "reference": "docs/verification/Algebra/Operations/Variant57f98a1c8229224f08f6f4918c92d5e7fea1f650d3794e228366652790677d0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:838de4901b4534964905a898ccb4c34c267978e96eade46796d7b70ed7ec61ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1272–1287.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance algebraIdeal : Algebra (Ideal R) (Submodule R A) where
  __ := moduleSubmodule
  algebraMap :=
  { toFun := map (Algebra.linearMap R A)
    map_one' := by
      rw [one_eq_span, map_span, Set.image_singleton, Algebra.linearMap_apply, map_one, one_eq_span]
    map_mul' := (Submodule.map_mul · · <| Algebra.ofId R A)
    map_zero' := map_bot _
    map_add' := (map_sup · · _) }
  commutes' I M := mul_comm_of_commute <| by rintro _ ⟨r, _, rfl⟩ a _; apply Algebra.commutes
  smul_def' I M := le_antisymm (smul_le.mpr fun r hr a ha ↦ by
    rw [Algebra.smul_def]; exact Submodule.mul_mem_mul ⟨r, hr, rfl⟩ ha) (Submodule.mul_le.mpr <| by
    rintro _ ⟨r, hr, rfl⟩ a ha; rw [Algebra.linearMap_apply, ← Algebra.smul_def]
    exact Submodule.smul_mem_smul hr ha)

/-- `Submonoid.map` as an `AlgHom`, when applied to an `AlgHom`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Operations/Variant57f98a1c8229224f08f6f4918c92d5e7fea1f650d3794e228366652790677d0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Operations/Variant57f98a1c8229224f08f6f4918c92d5e7fea1f650d3794e228366652790677d0f.lean#L1272).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98cf31c4dc554e040119c5fea8ecfb3a37c2f9c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
