# List.support_sum_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d6c94438-43cb-91eb-ea36-2e98866d7000",
  "kind": "theorem",
  "lexical_name": "List.support_sum_eq",
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
  "slug": "list-support-sum-eq--d1b1d9a39e24455fae8e67f6",
  "source": {
    "blob": "18d2172b2ffc0bb133d9baeded645324f9e2428d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 83,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant7e5d420ecb0345621b5de47af012d7f27b81f937cfbb047a58b4a65e9aba3293.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d1b1d9a39e24455fae8e67f6fc6b42ef77e4c146ad7a24f198b18ee2530fe5ce",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant7e5d420ecb0345621b5de47af012d7f27b81f937cfbb047a58b4a65e9aba3293.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d6c94438-43cb-91eb-ea36-2e98866d7000`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem List.support_sum_eq [AddZeroClass M] (l : List (ι →₀ M))
    (hl : l.Pairwise (_root_.Disjoint on Finsupp.support)) :
    l.sum.support = l.foldr (Finsupp.support · ⊔ ·) ∅ := by
  induction' l with hd tl IH
  · simp
  · simp only [List.pairwise_cons] at hl
    simp only [List.sum_cons, List.foldr_cons, Function.comp_apply]
    rw [Finsupp.support_add_eq, IH hl.right, Finset.sup_eq_union]
    suffices _root_.Disjoint hd.support (tl.foldr (fun x y ↦ (Finsupp.support x ⊔ y)) ∅) by
      exact Finset.disjoint_of_subset_right (List.support_sum_subset _) this
    rw [← List.foldr_map, ← Finset.bot_eq_empty, List.foldr_sup_eq_sup_toFinset,
      Finset.disjoint_sup_right]
    intro f hf
    simp only [List.mem_toFinset, List.mem_map] at hf
    obtain ⟨f, hf, rfl⟩ := hf
    exact hl.left _ hf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant7e5d420ecb0345621b5de47af012d7f27b81f937cfbb047a58b4a65e9aba3293.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant7e5d420ecb0345621b5de47af012d7f27b81f937cfbb047a58b4a65e9aba3293.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18d2172b2ffc0bb133d9baeded645324f9e2428d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
