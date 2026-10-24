# IsBase.mem_fundCocircuit_iff_mem_fundCircuit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:38c3190e-b72b-af2c-51f2-4d4758bc8bb6",
  "kind": "lemma",
  "lexical_name": "IsBase.mem_fundCocircuit_iff_mem_fundCircuit",
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
  "slug": "isbase-mem-fundcocircuit-iff-mem-fundcircuit--98d0da76810694671113675b",
  "source": {
    "blob": "d3901a8675ad7f7c3c93f4af2b41779145649b03",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 757,
    "line": 723,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Circuit/Variantce9f8f009711dc16a7d60bc5430800733709d2c7e55a939b5bc0e1fffb8306fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98d0da76810694671113675b994a3e17edd97824c86a5115ba1c7d1906f9876d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Circuit/Variantce9f8f009711dc16a7d60bc5430800733709d2c7e55a939b5bc0e1fffb8306fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:38c3190e-b72b-af2c-51f2-4d4758bc8bb6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 723–757.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsBase.mem_fundCocircuit_iff_mem_fundCircuit {e f : α} (hB : M.IsBase B) :
    e ∈ M.fundCocircuit f B ↔ f ∈ M.fundCircuit e B := by
  -- By symmetry and duality, it suffices to show the implication in one direction.
  suffices aux : ∀ {N : Matroid α} {B' : Set α} (hB' : N.IsBase B') {e f},
      e ∈ N.fundCocircuit f B' → f ∈ N.fundCircuit e B' from
    ⟨fun h ↦ aux hB h , fun h ↦ aux hB.compl_isBase_dual <| by
      simpa [fundCocircuit, inter_eq_self_of_subset_right hB.subset_ground]⟩
  clear! B M e f
  intro M B hB e f he
  -- discharge the various degenerate cases.
  obtain rfl | hne := eq_or_ne e f
  · simp [mem_fundCircuit]
  have hB' : M✶.IsBase (M✶.E \ B) := hB.compl_isBase_dual
  obtain hfE | hfE := em' <| f ∈ M.E
  · rw [fundCocircuit, fundCircuit_eq_of_notMem_ground (by simpa)] at he
    contradiction
  obtain hfB | hfB := em' <| f ∈ B
  · rw [fundCocircuit, fundCircuit_eq_of_mem (by simp [hfE, hfB])] at he
    contradiction
  obtain ⟨heE, heB⟩ : e ∈ M.E \ B :=
    by simpa [hne] using (M.fundCocircuit_subset_insert_compl f B) he
  -- Use basis exchange to argue the equivalence.
  rw [fundCocircuit, hB'.indep.mem_fundCircuit_iff (by rwa [hB'.closure_eq]) (by simp [hfB])] at he
  rw [hB.indep.mem_fundCircuit_iff (by rwa [hB.closure_eq]) heB]
  have hB' : M.IsBase (M.E \ (insert f (M✶.E \ B) \ {e})) :=
    (hB'.exchange_isBase_of_indep' ⟨heE, heB⟩ (by simp [hfE, hfB]) he).compl_isBase_of_dual
  refine hB'.indep.subset ?_
  simp only [dual_ground, diff_singleton_subset_iff]
  rw [diff_diff_right, inter_eq_self_of_subset_right (by simpa), union_singleton, insert_comm,
    ← union_singleton (s := M.E \ B), ← diff_diff, diff_diff_cancel_left hB.subset_ground]
  simp [hfB]

end IsCocircuit

end Matroid
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Circuit/Variantce9f8f009711dc16a7d60bc5430800733709d2c7e55a939b5bc0e1fffb8306fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Circuit/Variantce9f8f009711dc16a7d60bc5430800733709d2c7e55a939b5bc0e1fffb8306fb.lean#L723).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3901a8675ad7f7c3c93f4af2b41779145649b03` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
