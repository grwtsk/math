# exists_covBy_seq_of_wellFoundedLT_wellFoundedGT

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2c72ad65-9d12-7052-c3af-a02f87ac0038",
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
  "slug": "exists-covby-seq-of-wellfoundedlt-wellfoundedgt--f5b0bcfaa8185bccfcbf1f1b",
  "source": {
    "blob": "319e154518f31d1ef48dc16fe1e54eea784d0478",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 321,
    "line": 305,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIsoNat/Variant3e72fd447a797eefd4e071473f9ff44944c01d295c922b2213f6b23171202118.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f5b0bcfaa8185bccfcbf1f1bb3289b81f4c8079bbadb448d72c2b2eb7fa852e0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIsoNat/Variant3e72fd447a797eefd4e071473f9ff44944c01d295c922b2213f6b23171202118.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c72ad65-9d12-7052-c3af-a02f87ac0038`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 305–321.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_covBy_seq_of_wellFoundedLT_wellFoundedGT (α) [Preorder α]
    [Nonempty α] [wfl : WellFoundedLT α] [wfg : WellFoundedGT α] :
    ∃ a : ℕ → α, IsMin (a 0) ∧ ∃ n, IsMax (a n) ∧ ∀ i < n, a i ⋖ a (i + 1) := by
  choose next hnext using exists_covBy_of_wellFoundedLT (α := α)
  have hα := Set.nonempty_iff_univ_nonempty.mp ‹_›
  classical
  let a : ℕ → α := Nat.rec (wfl.min _ hα) fun _n a ↦ if ha : IsMax a then a else next ha
  refine ⟨a, isMin_iff_forall_not_lt.mpr fun _ ↦ wfl.not_lt_min _ (Set.mem_univ _), ?_⟩
  have cov n (hn : ¬ IsMax (a n)) : a n ⋖ a (n + 1) := by
    change a n ⋖ if ha : IsMax (a n) then a n else _
    rw [dite_eq_right hn]
    exact hnext hn
  have H : ∃ n, IsMax (a n) := by
    by_contra!
    exact (RelEmbedding.natGT a fun n ↦ (cov n (this n)).1).not_wellFounded wfg
  exact ⟨_, wellFounded_lt.min_mem _ H, fun i h ↦ cov _ (wellFounded_lt.not_lt_min _ · h)⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIsoNat/Variant3e72fd447a797eefd4e071473f9ff44944c01d295c922b2213f6b23171202118.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIsoNat/Variant3e72fd447a797eefd4e071473f9ff44944c01d295c922b2213f6b23171202118.lean#L305).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `319e154518f31d1ef48dc16fe1e54eea784d0478` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
