# exists_insertNth_mem_S

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:36d95824-9ada-8345-d2ca-286adbec1473",
  "kind": "lemma",
  "lexical_name": "exists_insertNth_mem_S",
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
  "slug": "exists-insertnth-mem-s--12355126eda842f2c55ee50f",
  "source": {
    "blob": "369e038c276f1f9c93b827fb10e121845c466086",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 175,
    "path": "GRWTSK/Algebra/LinearAlgebra/Correctness/Variant7d69c6c8358be143900d00d57d4f11284f481cf1cd342b7af3a8021d10ab95cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:12355126eda842f2c55ee50f5b7a514b5675ab4eaf7d1a7505f2f4c181c941e2",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Correctness/Variant7d69c6c8358be143900d00d57d4f11284f481cf1cd342b7af3a8021d10ab95cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:36d95824-9ada-8345-d2ca-286adbec1473`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_insertNth_mem_S {p : ℕ} {i : Fin n} {α : Fin p → Fin n} {k : Fin n}
    (hα : α ∈ S p i) (hik : i < k) (hk : k ∉ Set.range α) :
    ∃ t : Fin (p + 1), t.insertNth k α ∈ S (p + 1) i := by
  set t := ⨅ j ∈ {j | k < α j}, j.castSucc with t_eq
  use t
  simp only [mem_S_iff, Fin.strictMono_cons] at ⊢ hα
  refine ⟨fun j ↦ Fin.succAboveCases t ?_ ?_ j, ?_⟩
  · simp only [t_eq, Set.mem_ofPred_eq, Fin.strictMono_insertNth_iff, hα.2, lt_iInf_iff,
      le_iInf_iff, forall_exists_index, and_imp, iInf_le_iff_forall_lt, iInf_lt_iff,
      exists_prop, true_and]
    refine ⟨fun j x hjx h ↦ ?_, fun j h ↦ ?_⟩
    · contrapose! h
      have k_ne (j : Fin p) : k ≠ α j := fun hj ↦ hk ⟨j, hj.symm⟩
      exact ⟨j, h.lt_of_ne (k_ne _), hjx⟩
    · obtain ⟨q, hkq, hqj⟩ := h j.succ j.castSucc_lt_succ
      exact hkq.trans_le <| hα.2.monotone <| Fin.castSucc_lt_succ_iff.mp hqj
  · simpa
  · simpa using hα.1

variable (p) in
/-- Bird's equation (1) : `x^(p)_ij = (-1)^p ∑ { f[iα, jα] | α ∈ S_p(βᵢ) }`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Correctness/Variant7d69c6c8358be143900d00d57d4f11284f481cf1cd342b7af3a8021d10ab95cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Correctness/Variant7d69c6c8358be143900d00d57d4f11284f481cf1cd342b7af3a8021d10ab95cf.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `369e038c276f1f9c93b827fb10e121845c466086` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
