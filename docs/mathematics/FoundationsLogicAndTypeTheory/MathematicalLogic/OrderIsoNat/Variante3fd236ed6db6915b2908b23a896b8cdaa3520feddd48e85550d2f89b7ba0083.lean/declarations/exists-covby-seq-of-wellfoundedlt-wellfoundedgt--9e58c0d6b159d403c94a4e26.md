# exists_covBy_seq_of_wellFoundedLT_wellFoundedGT

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c3cc25fc-95e6-a32a-b5bc-1b75b52807c3",
  "kind": "theorem",
  "lexical_name": "exists_covBy_seq_of_wellFoundedLT_wellFoundedGT",
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
  "slug": "exists-covby-seq-of-wellfoundedlt-wellfoundedgt--9e58c0d6b159d403c94a4e26",
  "source": {
    "blob": "a5b9e4c9dc82a3c09aaf3651a2864bac231602ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 304,
    "line": 288,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variante3fd236ed6db6915b2908b23a896b8cdaa3520feddd48e85550d2f89b7ba0083.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e58c0d6b159d403c94a4e268b8f489800850dc1a0c7559a2ca3f1f6fe7f9004",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variante3fd236ed6db6915b2908b23a896b8cdaa3520feddd48e85550d2f89b7ba0083.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c3cc25fc-95e6-a32a-b5bc-1b75b52807c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 288–304.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_covBy_seq_of_wellFoundedLT_wellFoundedGT (α) [Preorder α]
    [Nonempty α] [wfl : WellFoundedLT α] [wfg : WellFoundedGT α] :
    ∃ a : ℕ → α, IsMin (a 0) ∧ ∃ n, IsMax (a n) ∧ ∀ i < n, a i ⋖ a (i + 1) := by
  choose next hnext using exists_covBy_of_wellFoundedLT (α := α)
  have hα := Set.nonempty_iff_univ_nonempty.mp ‹_›
  classical
  let a : ℕ → α := Nat.rec (wfl.wf.min _ hα) fun _n a ↦ if ha : IsMax a then a else next ha
  refine ⟨a, isMin_iff_forall_not_lt.mpr fun _ ↦ wfl.wf.not_lt_min _ hα trivial, ?_⟩
  have cov n (hn : ¬ IsMax (a n)) : a n ⋖ a (n + 1) := by
    change a n ⋖ if ha : IsMax (a n) then a n else _
    rw [dif_neg hn]
    exact hnext hn
  have H : ∃ n, IsMax (a n) := by
    by_contra!
    exact (RelEmbedding.natGT a fun n ↦ (cov n (this n)).1).not_wellFounded_of_decreasing_seq wfg.wf
  exact ⟨_, wellFounded_lt.min_mem _ H, fun i h ↦ cov _ fun h' ↦ wellFounded_lt.not_lt_min _ H h' h⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variante3fd236ed6db6915b2908b23a896b8cdaa3520feddd48e85550d2f89b7ba0083.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variante3fd236ed6db6915b2908b23a896b8cdaa3520feddd48e85550d2f89b7ba0083.lean#L288).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5b9e4c9dc82a3c09aaf3651a2864bac231602ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
