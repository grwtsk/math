# add_le_union

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4d28797699551140f9f7b377513cb20df5c6f1bb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 359,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6c/6ccd20ce0d87c6e982ae9294ec1f2523919dc7ab9124f462b9f59e1169e2cb15.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dbe422cb-8708-ca8f-1737-799d5612c6d2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8862b0f0-cca2-488f-f2ac-b902d54ff469",
  "kind": "theorem",
  "lexical_name": "add_le_union",
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
  "slug": "add-le-union--8be24ab069b21b285c16b0a2",
  "source": {
    "blob": "4d28797699551140f9f7b377513cb20df5c6f1bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 428,
    "line": 359,
    "path": "GRWTSK/Topology/MetricTopology/BoundedVariation/Variant6ccd20ce0d87c6e982ae9294ec1f2523919dc7ab9124f462b9f59e1169e2cb15.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8be24ab069b21b285c16b0a2661302cd38541430c419c06ec026e9365f99f33f",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/BoundedVariation/Variant6ccd20ce0d87c6e982ae9294ec1f2523919dc7ab9124f462b9f59e1169e2cb15.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8862b0f0-cca2-488f-f2ac-b902d54ff469`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 359–428.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem add_le_union (f : α → E) {s t : Set α} (h : ∀ x ∈ s, ∀ y ∈ t, x ≤ y) :
    eVariationOn f s + eVariationOn f t ≤ eVariationOn f (s ∪ t) := by
  by_cases hs : s = ∅
  · simp [hs]
  have : Nonempty { u // Monotone u ∧ ∀ i : ℕ, u i ∈ s } :=
    nonempty_monotone_mem (nonempty_iff_ne_empty.2 hs)
  by_cases ht : t = ∅
  · simp [ht]
  have : Nonempty { u // Monotone u ∧ ∀ i : ℕ, u i ∈ t } :=
    nonempty_monotone_mem (nonempty_iff_ne_empty.2 ht)
  refine ENNReal.iSup_add_iSup_le ?_
  /- We start from two sequences `u` and `v` along `s` and `t` respectively, and we build a new
    sequence `w` along `s ∪ t` by juxtaposing them. Its variation is larger than the sum of the
    variations. -/
  rintro ⟨n, ⟨u, hu, us⟩⟩ ⟨m, ⟨v, hv, vt⟩⟩
  let w i := if i ≤ n then u i else v (i - (n + 1))
  have wst : ∀ i, w i ∈ s ∪ t := by
    intro i
    by_cases hi : i ≤ n
    · simp [w, hi, us]
    · simp [w, hi, vt]
  have hw : Monotone w := by
    intro i j hij
    dsimp only [w]
    split_ifs with h_1 h_2 h_2
    · exact hu hij
    · apply h _ (us _) _ (vt _)
    · exfalso; exact h_1 (hij.trans h_2)
    · apply hv (tsub_le_tsub hij le_rfl)
  calc
    ((∑ i ∈ Finset.range n, edist (f (u (i + 1))) (f (u i))) +
          ∑ i ∈ Finset.range m, edist (f (v (i + 1))) (f (v i))) =
        (∑ i ∈ Finset.range n, edist (f (w (i + 1))) (f (w i))) +
          ∑ i ∈ Finset.range m, edist (f (w (n + 1 + i + 1))) (f (w (n + 1 + i))) := by
      dsimp only [w]
      congr 1
      · refine Finset.sum_congr rfl fun i hi => ?_
        simp only [Finset.mem_range] at hi
        have : i + 1 ≤ n := Nat.succ_le_of_lt hi
        simp [hi.le, this]
      · refine Finset.sum_congr rfl fun i hi => ?_
        simp only [Finset.mem_range] at hi
        have B : ¬n + 1 + i ≤ n := by omega
        have A : ¬n + 1 + i + 1 ≤ n := fun h => B ((n + 1 + i).le_succ.trans h)
        have C : n + 1 + i - n = i + 1 := by
          rw [tsub_eq_iff_eq_add_of_le]
          · abel
          · exact n.le_succ.trans (n.succ.le_add_right i)
        simp only [A, B, C, Nat.succ_sub_succ_eq_sub, if_false, add_tsub_cancel_left]
    _ = (∑ i ∈ Finset.range n, edist (f (w (i + 1))) (f (w i))) +
          ∑ i ∈ Finset.Ico (n + 1) (n + 1 + m), edist (f (w (i + 1))) (f (w i)) := by
      congr 1
      rw [Finset.range_eq_Ico]
      convert Finset.sum_Ico_add (fun i : ℕ => edist (f (w (i + 1))) (f (w i))) 0 m (n + 1)
        using 3 <;> abel
    _ ≤ ∑ i ∈ Finset.range (n + 1 + m), edist (f (w (i + 1))) (f (w i)) := by
      rw [← Finset.sum_union]
      · gcongr
        rintro i hi
        simp only [Finset.mem_union, Finset.mem_range, Finset.mem_Ico] at hi ⊢
        rcases hi with hi | hi
        · exact lt_of_lt_of_le hi (n.le_succ.trans (n.succ.le_add_right m))
        · exact hi.2
      · refine Finset.disjoint_left.2 fun i hi h'i => ?_
        simp only [Finset.mem_Ico, Finset.mem_range] at hi h'i
        exact hi.not_lt (Nat.lt_of_succ_le h'i.left)
    _ ≤ eVariationOn f (s ∪ t) := sum_le f _ hw wst

/-- If a set `s` is to the left of a set `t`, and both contain the boundary point `x`, then
the variation of `f` along `s ∪ t` is the sum of the variations. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/BoundedVariation/Variant6ccd20ce0d87c6e982ae9294ec1f2523919dc7ab9124f462b9f59e1169e2cb15.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/BoundedVariation/Variant6ccd20ce0d87c6e982ae9294ec1f2523919dc7ab9124f462b9f59e1169e2cb15.lean#L359).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d28797699551140f9f7b377513cb20df5c6f1bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
