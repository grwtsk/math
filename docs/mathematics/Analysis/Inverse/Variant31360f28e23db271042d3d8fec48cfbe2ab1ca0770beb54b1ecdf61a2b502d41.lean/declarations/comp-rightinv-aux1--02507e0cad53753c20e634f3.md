# comp_rightInv_aux1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bb9bba9211dc66f732b3570dcddecc878f80c76e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 200,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/31/31360f28e23db271042d3d8fec48cfbe2ab1ca0770beb54b1ecdf61a2b502d41.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:824d87d1-e2d8-97d3-c48a-2379fc132618",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:364e87ca-db83-8c4a-2df1-96f358277319",
  "kind": "theorem",
  "lexical_name": "comp_rightInv_aux1",
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
  "slug": "comp-rightinv-aux1--02507e0cad53753c20e634f3",
  "source": {
    "blob": "bb9bba9211dc66f732b3570dcddecc878f80c76e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 200,
    "path": "GRWTSK/Analysis/Inverse/Variant31360f28e23db271042d3d8fec48cfbe2ab1ca0770beb54b1ecdf61a2b502d41.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:02507e0cad53753c20e634f32b9d8172337879abb841c51dfc568b8668568626",
  "verification": {
    "reference": "docs/verification/Analysis/Inverse/Variant31360f28e23db271042d3d8fec48cfbe2ab1ca0770beb54b1ecdf61a2b502d41.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:364e87ca-db83-8c4a-2df1-96f358277319`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comp_rightInv_aux1 {n : ℕ} (hn : 0 < n) (p : FormalMultilinearSeries 𝕜 E F)
    (q : FormalMultilinearSeries 𝕜 F E) (v : Fin n → F) :
    p.comp q n v =
      ∑ c ∈ {c : Composition n | 1 < c.length}.toFinset,
          p c.length (q.applyComposition c v) + p 1 fun _ => q n v := by
  classical
  have A :
    (Finset.univ : Finset (Composition n)) =
      {c | 1 < Composition.length c}.toFinset ∪ {Composition.single n hn} := by
    refine Subset.antisymm (fun c _ => ?_) (subset_univ _)
    by_cases h : 1 < c.length
    · simp [h, Set.mem_toFinset (s := {c | 1 < Composition.length c})]
    · have : c.length = 1 := by
        refine (eq_iff_le_not_lt.2 ⟨?_, h⟩).symm; exact c.length_pos_of_pos hn
      rw [← Composition.eq_single_iff_length hn] at this
      simp [this]
  have B :
    Disjoint ({c | 1 < Composition.length c} : Set (Composition n)).toFinset
      {Composition.single n hn} := by
    simp [Set.mem_toFinset (s := {c | 1 < Composition.length c})]
  have C :
    p (Composition.single n hn).length (q.applyComposition (Composition.single n hn) v) =
      p 1 fun _ : Fin 1 => q n v := by
    apply p.congr (Composition.single_length hn) fun j hj1 _ => ?_
    simp [applyComposition_single]
  simp [FormalMultilinearSeries.comp, A, Finset.sum_union B, C, -Set.toFinset_setOf,
    -add_right_inj, -Composition.single_length]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Inverse/Variant31360f28e23db271042d3d8fec48cfbe2ab1ca0770beb54b1ecdf61a2b502d41.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Inverse/Variant31360f28e23db271042d3d8fec48cfbe2ab1ca0770beb54b1ecdf61a2b502d41.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb9bba9211dc66f732b3570dcddecc878f80c76e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
