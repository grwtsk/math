# eq_one_of_smul_normalized

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e77acc67-04d9-1fc0-33ec-c0f0f37a0426",
  "kind": "theorem",
  "lexical_name": "eq_one_of_smul_normalized",
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
  "slug": "eq-one-of-smul-normalized--c8bdcf963109ab65128eedd2",
  "source": {
    "blob": "e959329afe5777ba1c5ee22ee787160b8e89729a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 381,
    "line": 342,
    "path": "GRWTSK/Algebra/GroupTheory/PushoutI/Variant8c09e669d928bcc824e7416357879d1184ce7dedf2270e257aaa304f19844ac7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c8bdcf963109ab65128eedd29c41753ab7127087cce7b8aece051f9d4ed99a01",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/PushoutI/Variant8c09e669d928bcc824e7416357879d1184ce7dedf2270e257aaa304f19844ac7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e77acc67-04d9-1fc0-33ec-c0f0f37a0426`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 342–381.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_one_of_smul_normalized (w : CoprodI.Word G) {i : ι} (h : H)
    (hw : ∀ i g, ⟨i, g⟩ ∈ w.toList → g ∈ d.set i)
    (hφw : ∀ j g, ⟨j, g⟩ ∈ (CoprodI.of (φ i h) • w).toList → g ∈ d.set j) :
    h = 1 := by
  simp only [← (d.compl _).equiv_snd_eq_self_iff_mem (one_mem _)] at hw hφw
  have hhead : ((d.compl i).equiv (Word.equivPair i w).head).2 =
      (Word.equivPair i w).head := by
    rw [Word.equivPair_head]
    split_ifs with h
    · rcases h with ⟨_, rfl⟩
      exact hw _ _ (List.head_mem _)
    · rw [equiv_one (d.compl i) (one_mem _) (d.one_mem _)]
  by_contra hh1
  have := hφw i (φ i h * (Word.equivPair i w).head) ?_
  · apply hh1
    rw [equiv_mul_left_of_mem (d.compl i) ⟨_, rfl⟩, hhead] at this
    simpa [((injective_iff_map_eq_one' _).1 (d.injective i))] using this
  · simp only [Word.mem_smul_iff, not_true, false_and, ne_eq, Option.mem_def, mul_right_inj,
      exists_eq_right', mul_eq_left, exists_prop, true_and, false_or]
    constructor
    · intro h
      apply_fun (d.compl i).equiv at h
      simp only [Prod.ext_iff, equiv_one (d.compl i) (one_mem _) (d.one_mem _),
        equiv_mul_left_of_mem (d.compl i) ⟨_, rfl⟩, hhead, Subtype.ext_iff,
        Prod.ext_iff] at h
      rcases h with ⟨h₁, h₂⟩
      rw [h₂, coe_mul, ((d.compl i).coe_equiv_fst_eq_one_iff_mem (one_mem _)).mpr (d.one_mem _),
        mul_one, Subtype.coe_mk, map_eq_one_iff (φ i) (d.injective i)] at h₁
      contradiction
    · rw [Word.equivPair_head]
      dsimp
      split_ifs with hep
      · rcases hep with ⟨hnil, rfl⟩
        rw [head?_eq_some_head hnil]
        simp_all
      · push Not at hep
        by_cases hw : w.toList = []
        · simp [hw, Word.fstIdx]
        · simp [head?_eq_some_head hw, Word.fstIdx, hep hw]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/PushoutI/Variant8c09e669d928bcc824e7416357879d1184ce7dedf2270e257aaa304f19844ac7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/PushoutI/Variant8c09e669d928bcc824e7416357879d1184ce7dedf2270e257aaa304f19844ac7.lean#L342).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e959329afe5777ba1c5ee22ee787160b8e89729a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
