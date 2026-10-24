# topologicalClosure_subgroupClosure_toSubmonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:785a63a7-12fb-acfd-1ebf-421fad859965",
  "kind": "theorem",
  "lexical_name": "topologicalClosure_subgroupClosure_toSubmonoid",
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
  "slug": "topologicalclosure-subgroupclosure-tosubmonoid--56eb771a4f9fe245b0b004a5",
  "source": {
    "blob": "03753395540e26a78dc2ac7abfb27f8feb23e433",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 106,
    "path": "GRWTSK/Algebra/GroupTheory/SubmonoidClosure/Variant4eb7b5502262a01126e000f6263c5c280d3c6f5e58f6f45c6f2c3b4acf76f1d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:56eb771a4f9fe245b0b004a5fb6409cb1530955ce756ae9a6674fead5102ca41",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/SubmonoidClosure/Variant4eb7b5502262a01126e000f6263c5c280d3c6f5e58f6f45c6f2c3b4acf76f1d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:785a63a7-12fb-acfd-1ebf-421fad859965`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem topologicalClosure_subgroupClosure_toSubmonoid (s : Set G) :
    (Subgroup.closure s).toSubmonoid.topologicalClosure =
      (Submonoid.closure s).topologicalClosure := by
  refine le_antisymm ?_ (closure_mono <| Subgroup.le_closure_toSubmonoid _)
  refine Submonoid.topologicalClosure_minimal _ ?_ isClosed_closure
  rw [Subgroup.closure_toSubmonoid, Submonoid.closure_le]
  refine union_subset (Submonoid.subset_closure.trans subset_closure) fun x hx ↦ ?_
  refine closure_mono (Submonoid.powers_le.2 (Submonoid.subset_closure <| Set.mem_inv.1 hx)) ?_
  rw [Submonoid.coe_powers, ← closure_range_zpow_eq_pow, ← Subgroup.coe_zpowers,
    ← Subgroup.topologicalClosure_coe, SetLike.mem_coe, ← inv_mem_iff]
  exact subset_closure <| Subgroup.mem_zpowers _

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/SubmonoidClosure/Variant4eb7b5502262a01126e000f6263c5c280d3c6f5e58f6f45c6f2c3b4acf76f1d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/SubmonoidClosure/Variant4eb7b5502262a01126e000f6263c5c280d3c6f5e58f6f45c6f2c3b4acf76f1d7.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03753395540e26a78dc2ac7abfb27f8feb23e433` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
