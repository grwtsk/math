# mem_finMulAntidiag

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fe790ed17edfc5fb85642b444b393262caac3a95",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 60,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a3/a3b200c810fe25c2443bc691cb580d6af1d3fb82d3b2c20fd3e7052ba2dd2283.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:03847fdc-2a05-2b83-050b-0f46732518cb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1907a641-f06e-eabc-39de-cf021d28c573",
  "kind": "theorem",
  "lexical_name": "mem_finMulAntidiag",
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
  "slug": "mem-finmulantidiag--18b896effb16001de2e10b93",
  "source": {
    "blob": "fe790ed17edfc5fb85642b444b393262caac3a95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 60,
    "path": "GRWTSK/Topology/GeneralTopology/Nat/Varianta3b200c810fe25c2443bc691cb580d6af1d3fb82d3b2c20fd3e7052ba2dd2283.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:18b896effb16001de2e10b933ec12b393d86356f0ad44c91a846af2846da4214",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Nat/Varianta3b200c810fe25c2443bc691cb580d6af1d3fb82d3b2c20fd3e7052ba2dd2283.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1907a641-f06e-eabc-39de-cf021d28c573`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_finMulAntidiag {d n : ℕ} {f : Fin d → ℕ} :
    f ∈ finMulAntidiag d n ↔ ∏ i, f i = n ∧ n ≠ 0 := by
  unfold finMulAntidiag
  split_ifs with h
  · simp_rw [mem_map, mem_finAntidiagonal, Function.Embedding.arrowCongrRight_apply,
      Function.comp_def, Function.Embedding.trans_apply, Equiv.coe_toEmbedding,
      Function.Embedding.coeFn_mk, ← Additive.ofMul.symm_apply_eq, Additive.ofMul_symm_eq,
      toMul_sum, (Equiv.piCongrRight fun _=> Additive.ofMul).surjective.exists,
      Equiv.piCongrRight_apply, Pi.map_apply, toMul_ofMul, ← PNat.coe_inj, PNat.mk_coe,
      PNat.coe_prod]
    constructor
    · rintro ⟨a, ha_mem, rfl⟩
      exact ⟨ha_mem, h.ne.symm⟩
    · rintro ⟨rfl, _⟩
      refine ⟨fun i ↦ ⟨f i, ?_⟩, rfl, funext fun _ => rfl⟩
      apply Nat.pos_of_ne_zero
      exact Finset.prod_ne_zero_iff.mp h.ne.symm _ (mem_univ _)
  · simp only [not_lt, nonpos_iff_eq_zero] at h
    simp only [h, notMem_empty, ne_eq, not_true_eq_false, and_false]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Nat/Varianta3b200c810fe25c2443bc691cb580d6af1d3fb82d3b2c20fd3e7052ba2dd2283.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Nat/Varianta3b200c810fe25c2443bc691cb580d6af1d3fb82d3b2c20fd3e7052ba2dd2283.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe790ed17edfc5fb85642b444b393262caac3a95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
