# iSup_succ_eq_sup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "566c66a8c4a9766999291f456377c6f8b9f0ab90",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 478,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e3/e374d80d29410c755b77d58f410fa0899fae82a9ea9368fead8edf3d3d1266f2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:36b61d11-285d-aaf9-3c94-678ab855a130",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d63497d4-d0ac-423b-3825-6d905ea8a55b",
  "kind": "theorem",
  "lexical_name": "iSup_succ_eq_sup",
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
  "slug": "isup-succ-eq-sup--a9b6a5187bcdd7763ec657f2",
  "source": {
    "blob": "566c66a8c4a9766999291f456377c6f8b9f0ab90",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 497,
    "line": 478,
    "path": "GRWTSK/Analysis/MeasureTheory/Lebesgue/Variante374d80d29410c755b77d58f410fa0899fae82a9ea9368fead8edf3d3d1266f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a9b6a5187bcdd7763ec657f2afc2b08b21511f42859c5b9b5378ff65593d82cd",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Lebesgue/Variante374d80d29410c755b77d58f410fa0899fae82a9ea9368fead8edf3d3d1266f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d63497d4-d0ac-423b-3825-6d905ea8a55b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 478–497.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iSup_succ_eq_sup {α} (f : ℕ → α → ℝ≥0∞) (m : ℕ) (a : α) :
    ⨆ (k : ℕ) (_ : k ≤ m + 1), f k a = f m.succ a ⊔ ⨆ (k : ℕ) (_ : k ≤ m), f k a := by
  refine Option.ext fun x => ?_
  simp only [Option.mem_def, ENNReal.some_eq_coe]
  constructor <;> intro h <;> rw [← h]; symm
  all_goals
    set c := ⨆ (k : ℕ) (_ : k ≤ m + 1), f k a with hc
    set d := f m.succ a ⊔ ⨆ (k : ℕ) (_ : k ≤ m), f k a with hd
    rw [@le_antisymm_iff ℝ≥0∞, hc, hd]
    -- Specifying the type is weirdly necessary
    refine' ⟨_, _⟩
    · refine' iSup₂_le fun n hn => _
      rcases Nat.of_le_succ hn with (h | h)
      · exact le_sup_of_le_right (le_iSup₂ (f := fun k (_ : k ≤ m) => f k a) n h)
      · exact h ▸ le_sup_left
    · refine' sup_le _ (biSup_mono fun n hn => hn.trans m.le_succ)
      convert @le_iSup₂ ℝ≥0∞ ℕ (fun i => i ≤ m + 1) _ _ m.succ le_rfl
      rfl
#align measure_theory.measure.lebesgue_decomposition.supr_succ_eq_sup MeasureTheory.Measure.LebesgueDecomposition.iSup_succ_eq_sup

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Lebesgue/Variante374d80d29410c755b77d58f410fa0899fae82a9ea9368fead8edf3d3d1266f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Lebesgue/Variante374d80d29410c755b77d58f410fa0899fae82a9ea9368fead8edf3d3d1266f2.lean#L478).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `566c66a8c4a9766999291f456377c6f8b9f0ab90` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
