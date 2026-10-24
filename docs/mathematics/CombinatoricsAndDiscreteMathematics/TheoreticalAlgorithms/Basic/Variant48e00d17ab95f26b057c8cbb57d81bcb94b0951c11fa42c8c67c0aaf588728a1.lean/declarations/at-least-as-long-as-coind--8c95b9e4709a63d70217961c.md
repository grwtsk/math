# at_least_as_long_as_coind

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "590f8d1b96a021da3414c501f01d0c9c564748a6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 909,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/48/48e00d17ab95f26b057c8cbb57d81bcb94b0951c11fa42c8c67c0aaf588728a1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ffc4cad7-2022-a601-5aac-cca52b2e4b1a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a43fe412-040b-54f9-db80-b180a1b25cd9",
  "kind": "theorem",
  "lexical_name": "at_least_as_long_as_coind",
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
  "slug": "at-least-as-long-as-coind--8c95b9e4709a63d70217961c",
  "source": {
    "blob": "590f8d1b96a021da3414c501f01d0c9c564748a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 946,
    "line": 909,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant48e00d17ab95f26b057c8cbb57d81bcb94b0951c11fa42c8c67c0aaf588728a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c95b9e4709a63d70217961c0f90561f278f51f36d7333451fa84f8d31215b27",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant48e00d17ab95f26b057c8cbb57d81bcb94b0951c11fa42c8c67c0aaf588728a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a43fe412-040b-54f9-db80-b180a1b25cd9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 909–946.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem at_least_as_long_as_coind {a : Seq α} {b : Seq β}
    (motive : Seq α → Seq β → Prop) (base : motive a b)
    (step : ∀ a b, motive a b →
      (∀ b_hd b_tl, (b = .cons b_hd b_tl) → ∃ a_hd a_tl, a = .cons a_hd a_tl ∧ motive a_tl b_tl)) :
    b.length' ≤ a.length' := by
  have (n) (hb : b.drop n ≠ .nil) : motive (a.drop n) (b.drop n) := by
    induction n with
    | zero => simpa
    | succ m ih =>
      simp only [drop] at hb ⊢
      generalize b.drop m = tb at *
      cases tb with
      | nil => simp at hb
      | cons tb_hd tb_tl =>
        simp only [ne_eq, cons_ne_nil, not_false_eq_true, forall_const] at ih
        obtain ⟨a_hd, a_tl, ha, h_tail⟩ := step (a.drop m) (.cons tb_hd tb_tl) ih _ _ rfl
        simpa [ha]
  by_cases ha : a.Terminates; swap
  · simp [length'_of_not_terminates ha]
  simp only [length'_of_terminates ha, length'_le_iff]
  by_contra hb
  have hb_cons : b.drop (a.length ha) ≠ .nil := by
    intro hb'
    simp only [← length'_eq_zero_iff_nil, drop_length', tsub_eq_zero_iff_le, length'_le_iff] at hb'
    contradiction
  specialize this (a.length ha) hb_cons
  generalize b.drop (a.length ha) = b' at *
  cases b' with
  | nil =>
    contradiction
  | cons b_hd b_tl =>
    obtain ⟨a_hd, a_tl, ha', _⟩ := step _ _ this _ _ rfl
    apply_fun length' at ha'
    simp only [drop_length', length'_of_terminates ha, tsub_self, length'_cons] at ha'
    generalize a_tl.length' = u at ha'
    enat_to_nat
    lia

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant48e00d17ab95f26b057c8cbb57d81bcb94b0951c11fa42c8c67c0aaf588728a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant48e00d17ab95f26b057c8cbb57d81bcb94b0951c11fa42c8c67c0aaf588728a1.lean#L909).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `590f8d1b96a021da3414c501f01d0c9c564748a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
