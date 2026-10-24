# csSup_eq_csSup_of_forall_exists_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0c3540bd4678624712daf753bf6ab72283172d1b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 491,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a0/a0e0fac38b53bb7509b03968d1b9bb45a3a58286c7c94e71207ebec8a45d9c18.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:58e089bc-e28b-be6d-1c74-616b9061746a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1ffcf6e6-7c50-e582-4dac-538447d24302",
  "kind": "theorem",
  "lexical_name": "csSup_eq_csSup_of_forall_exists_le",
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
  "slug": "cssup-eq-cssup-of-forall-exists-le--19c2602ca63b21992f122533",
  "source": {
    "blob": "0c3540bd4678624712daf753bf6ab72283172d1b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 523,
    "line": 491,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Varianta0e0fac38b53bb7509b03968d1b9bb45a3a58286c7c94e71207ebec8a45d9c18.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:19c2602ca63b21992f1225331b7ef09236c849210f9e21227b69e5a49240e9aa",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Varianta0e0fac38b53bb7509b03968d1b9bb45a3a58286c7c94e71207ebec8a45d9c18.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1ffcf6e6-7c50-e582-4dac-538447d24302`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 491–523.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem csSup_eq_csSup_of_forall_exists_le {s t : Set α}
    (hs : ∀ x ∈ s, ∃ y ∈ t, x ≤ y) (ht : ∀ y ∈ t, ∃ x ∈ s, y ≤ x) :
    sSup s = sSup t := by
  rcases eq_empty_or_nonempty s with rfl|s_ne
  · have : t = ∅ := eq_empty_of_forall_notMem (fun y yt ↦ by simpa using ht y yt)
    rw [this]
  rcases eq_empty_or_nonempty t with rfl|t_ne
  · have : s = ∅ := eq_empty_of_forall_notMem (fun x xs ↦ by simpa using hs x xs)
    rw [this]
  by_cases B : BddAbove s ∨ BddAbove t
  · have Bs : BddAbove s := by
      rcases B with hB|⟨b, hb⟩
      · exact hB
      · refine ⟨b, fun x hx ↦ ?_⟩
        rcases hs x hx with ⟨y, hy, hxy⟩
        exact hxy.trans (hb hy)
    have Bt : BddAbove t := by
      rcases B with ⟨b, hb⟩|hB
      · refine ⟨b, fun y hy ↦ ?_⟩
        rcases ht y hy with ⟨x, hx, hyx⟩
        exact hyx.trans (hb hx)
      · exact hB
    apply le_antisymm
    · apply csSup_le s_ne (fun x hx ↦ ?_)
      rcases hs x hx with ⟨y, yt, hxy⟩
      exact hxy.trans (le_csSup Bt yt)
    · apply csSup_le t_ne (fun y hy ↦ ?_)
      rcases ht y hy with ⟨x, xs, hyx⟩
      exact hyx.trans (le_csSup Bs xs)
  · simp [csSup_of_not_bddAbove, (not_or.1 B).1, (not_or.1 B).2]

/-- When every element of a set `s` is bounded by an element of a set `t`, and conversely, then
`s` and `t` have the same infimum. This holds even when the sets may be empty or unbounded. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Varianta0e0fac38b53bb7509b03968d1b9bb45a3a58286c7c94e71207ebec8a45d9c18.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Varianta0e0fac38b53bb7509b03968d1b9bb45a3a58286c7c94e71207ebec8a45d9c18.lean#L491).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c3540bd4678624712daf753bf6ab72283172d1b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
