# sum_mem_foldl_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d3d8275605f9330d9f6c605d3575ae249178b6eb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 394,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e4/e45ec7ceb6c7446fe00e5d31a87134ee45e55fb50a6a578d5d5eeea0600cd891.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d6b965f5-67fd-ea11-3b5a-a1df54bd9613",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fcd396bf-3c5f-097d-ea13-8e422a97ada0",
  "kind": "theorem",
  "lexical_name": "sum_mem_foldl_add",
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
  "slug": "sum-mem-foldl-add--94521d32dd4991bc822b79aa",
  "source": {
    "blob": "d3d8275605f9330d9f6c605d3575ae249178b6eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 434,
    "line": 394,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Integrate/Variante45ec7ceb6c7446fe00e5d31a87134ee45e55fb50a6a578d5d5eeea0600cd891.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:94521d32dd4991bc822b79aa812ec26c8cda12603e78d157e3096b1cb509c2cd",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Integrate/Variante45ec7ceb6c7446fe00e5d31a87134ee45e55fb50a6a578d5d5eeea0600cd891.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fcd396bf-3c5f-097d-ea13-8e422a97ada0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 394–434.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_mem_foldl_add {values : List ℝ} {intervals : List IntervalRat}
    (hlen : values.length = intervals.length)
    (hmem : ∀ i (hi : i < values.length), values[i] ∈ intervals[i]'(hlen ▸ hi)) :
    values.sum ∈ intervals.foldl IntervalRat.add (IntervalRat.singleton 0) := by
  induction intervals generalizing values with
  | nil =>
    simp only [List.length_nil] at hlen
    have hvals : values = [] := List.eq_nil_of_length_eq_zero hlen
    simp only [hvals, List.sum_nil, List.foldl_nil]
    simp only [IntervalRat.mem_def, IntervalRat.singleton]
    simp only [Rat.cast_zero, le_refl, and_self]
  | cons I Is ih =>
    cases values with
    | nil => simp at hlen
    | cons v vs =>
      simp only [List.length_cons, Nat.succ.injEq] at hlen
      simp only [List.foldl_cons, List.sum_cons]
      have h0 : v ∈ I := by
        have := hmem 0 (by simp)
        simp at this
        exact this
      have hrec : ∀ i (hi : i < vs.length), vs[i] ∈ Is[i]'(hlen ▸ hi) := by
        intro i hi
        have := hmem (i + 1) (by simp; omega)
        simp at this
        exact this
      have hsum := ih hlen hrec
      -- Goal: v + vs.sum ∈ foldl add (add (singleton 0) I) Is
      rw [add_singleton_zero_left I]
      -- Goal: v + vs.sum ∈ foldl add I Is
      -- We have: hsum : vs.sum ∈ foldl add (singleton 0) Is
      -- Use: foldl add I Is = add I (foldl add (singleton 0) Is)
      have heq : Is.foldl IntervalRat.add I =
          IntervalRat.add I (Is.foldl IntervalRat.add (IntervalRat.singleton 0)) := by
        conv_lhs => rw [← add_singleton_zero_right I]
        rw [foldl_add_concat I (IntervalRat.singleton 0) Is]
      rw [heq]
      -- Goal: v + vs.sum ∈ add I (foldl add (singleton 0) Is)
      exact IntervalRat.mem_add h0 hsum

/-- Helper: generalized foldl lemma relating sumIntervalBounds-style fold with add fold -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Integrate/Variante45ec7ceb6c7446fe00e5d31a87134ee45e55fb50a6a578d5d5eeea0600cd891.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Integrate/Variante45ec7ceb6c7446fe00e5d31a87134ee45e55fb50a6a578d5d5eeea0600cd891.lean#L394).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3d8275605f9330d9f6c605d3575ae249178b6eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
