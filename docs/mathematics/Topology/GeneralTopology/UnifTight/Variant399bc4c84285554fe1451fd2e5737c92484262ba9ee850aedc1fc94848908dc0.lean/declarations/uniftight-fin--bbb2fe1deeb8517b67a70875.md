# unifTight_fin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6e891a5aed639042759ae1e0754704392cd00f26",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 163,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/39/399bc4c84285554fe1451fd2e5737c92484262ba9ee850aedc1fc94848908dc0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:092f453c-da06-42bc-fda1-7a53b38ce5f1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7474cf09-30b6-6083-9091-0c45b602b831",
  "kind": "theorem",
  "lexical_name": "unifTight_fin",
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
  "slug": "uniftight-fin--bbb2fe1deeb8517b67a70875",
  "source": {
    "blob": "6e891a5aed639042759ae1e0754704392cd00f26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 163,
    "path": "GRWTSK/Topology/GeneralTopology/UnifTight/Variant399bc4c84285554fe1451fd2e5737c92484262ba9ee850aedc1fc94848908dc0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bbb2fe1deeb8517b67a708751976cd45be7f5bfb1511906bcbbdaca590f7425e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UnifTight/Variant399bc4c84285554fe1451fd2e5737c92484262ba9ee850aedc1fc94848908dc0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7474cf09-30b6-6083-9091-0c45b602b831`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem unifTight_fin (hp_top : p ≠ ∞) {n : ℕ} {f : Fin n → α → β}
    (hf : ∀ i, MemLp (f i) p μ) : UnifTight f p μ := by
  revert f
  induction n with
  | zero => exact fun {f} hf ↦ unifTight_of_subsingleton hp_top hf
  | succ n h =>
    intro f hfLp ε hε
    by_cases hε_top : ε = ∞
    · exact ⟨∅, (by measurability), fun _ => hε_top.symm ▸ le_top⟩
    let g : Fin n → α → β := fun k => f k
    have hgLp : ∀ i, MemLp (g i) p μ := fun i => hfLp i
    obtain ⟨S, hμS, hFε⟩ := h hgLp hε
    obtain ⟨s, _, hμs, hfε⟩ :=
      (hfLp n).exists_eLpNorm_indicator_compl_lt hp_top (coe_ne_zero.2 hε.ne')
    refine ⟨s ∪ S, (by measurability), fun i => ?_⟩
    by_cases hi : i.val < n
    · rw [(_ : f i = g ⟨i.val, hi⟩)]
      · rw [compl_union, ← indicator_indicator]
        apply (eLpNorm_indicator_le _).trans
        exact hFε (Fin.castLT i hi)
      · simp only [Fin.coe_eq_castSucc, Fin.castSucc_mk, g]
    · rw [(_ : i = n)]
      · rw [compl_union, inter_comm, ← indicator_indicator]
        exact (eLpNorm_indicator_le _).trans hfε.le
      · have hi' := Fin.is_lt i
        rw [Nat.lt_succ_iff] at hi'
        rw [not_lt] at hi
        simp [← le_antisymm hi' hi]

/-- A finite sequence of Lp functions is uniformly tight. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UnifTight/Variant399bc4c84285554fe1451fd2e5737c92484262ba9ee850aedc1fc94848908dc0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UnifTight/Variant399bc4c84285554fe1451fd2e5737c92484262ba9ee850aedc1fc94848908dc0.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e891a5aed639042759ae1e0754704392cd00f26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
