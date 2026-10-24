# csSup_eq_csSup_of_forall_exists_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e24c0270-f985-d6cb-27bd-9f0b9da63f9a",
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
  "slug": "cssup-eq-cssup-of-forall-exists-le--ee88775f05b31b1a1a743972",
  "source": {
    "blob": "5a5c107b2de7a74cce403dbaa08551ee6a860495",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 531,
    "line": 499,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant4bed6db8557537e8ecfe5c8c0a7659c93316f2747f0b6dabd9211d57e8749305.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee88775f05b31b1a1a74397277370084139992380936a451e18bf444212ebf4b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant4bed6db8557537e8ecfe5c8c0a7659c93316f2747f0b6dabd9211d57e8749305.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e24c0270-f985-d6cb-27bd-9f0b9da63f9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 499–531.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant4bed6db8557537e8ecfe5c8c0a7659c93316f2747f0b6dabd9211d57e8749305.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant4bed6db8557537e8ecfe5c8c0a7659c93316f2747f0b6dabd9211d57e8749305.lean#L499).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a5c107b2de7a74cce403dbaa08551ee6a860495` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
