# closure_sUnion_irreducibleComponents_sdiff_singleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:26c0104e-6b74-1c32-e152-06ccc0fc5f3c",
  "kind": "theorem",
  "lexical_name": "closure_sUnion_irreducibleComponents_sdiff_singleton",
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
  "slug": "closure-sunion-irreduciblecomponents-sdiff-singleton--466722ebfc5eaabef3fa3a9a",
  "source": {
    "blob": "5d240464803fa57793a1ed4004749ce28e34ecf6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 391,
    "line": 374,
    "path": "GRWTSK/Topology/GeneralTopology/Irreducible/Variant00c6a114c80e83a47ccc16c870905d1b5e9aedafe8efe277b2ff8c5f684ce1f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:466722ebfc5eaabef3fa3a9a81baafb5979d7d21c96d99fd0c31657ae06a24e9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Irreducible/Variant00c6a114c80e83a47ccc16c870905d1b5e9aedafe8efe277b2ff8c5f684ce1f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:26c0104e-6b74-1c32-e152-06ccc0fc5f3c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 374–391.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closure_sUnion_irreducibleComponents_sdiff_singleton
    (hX : (irreducibleComponents X).Finite) (Z : Set X) (hZ : Z ∈ irreducibleComponents X) :
    closure (⋃₀ (irreducibleComponents X \ {Z}))ᶜ = Z := by
  have h : (⋃₀ (irreducibleComponents X \ {Z}))ᶜ ⊆ Z := by
    rw [Set.compl_subset_iff_union, ← Set.sUnion_singleton Z, ← Set.sUnion_union,
      Set.sUnion_singleton, Set.sdiff_union_of_subset, sUnion_irreducibleComponents]
    rwa [Set.singleton_subset_iff]
  apply Set.Subset.antisymm
  · rwa [(isClosed_of_mem_irreducibleComponents Z hZ).closure_subset_iff]
  · rw [← Set.inter_eq_right.mpr h]
    apply subset_closure_inter_of_isPreirreducible_of_isOpen hZ.1.2
    · rw [Set.sUnion_eq_biUnion, isOpen_compl_iff]
      exact hX.sdiff.isClosed_biUnion fun W hW ↦ isClosed_of_mem_irreducibleComponents W hW.1
    · rw [Set.inter_compl_nonempty_iff]
      exact mt (mem_of_subset_sUnion_irreducibleComponents Z hZ _ hX.sdiff Set.sdiff_subset)
        (Set.notMem_sdiff_of_mem (Set.mem_singleton Z))

/-- If `∅ ≠ U ⊆ S ⊆ t` such that `U` is open and `t` is preirreducible, then `S` is irreducible. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Irreducible/Variant00c6a114c80e83a47ccc16c870905d1b5e9aedafe8efe277b2ff8c5f684ce1f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Irreducible/Variant00c6a114c80e83a47ccc16c870905d1b5e9aedafe8efe277b2ff8c5f684ce1f7.lean#L374).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d240464803fa57793a1ed4004749ce28e34ecf6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
