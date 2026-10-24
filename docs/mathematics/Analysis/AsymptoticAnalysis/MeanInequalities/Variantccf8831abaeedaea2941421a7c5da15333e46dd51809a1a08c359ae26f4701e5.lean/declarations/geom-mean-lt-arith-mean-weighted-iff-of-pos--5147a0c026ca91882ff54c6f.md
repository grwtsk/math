# geom_mean_lt_arith_mean_weighted_iff_of_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8a3e0ee2-3bf9-ca40-1402-e58eca7f3686",
  "kind": "theorem",
  "lexical_name": "geom_mean_lt_arith_mean_weighted_iff_of_pos",
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
  "slug": "geom-mean-lt-arith-mean-weighted-iff-of-pos--5147a0c026ca91882ff54c6f",
  "source": {
    "blob": "bfb8dec0cd98bcfafac05da9fafea42ae61f1c94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 349,
    "line": 328,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/MeanInequalities/Variantccf8831abaeedaea2941421a7c5da15333e46dd51809a1a08c359ae26f4701e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5147a0c026ca91882ff54c6fec1a461d794f6c5304c62c8f60d8f08337fb9ce2",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/MeanInequalities/Variantccf8831abaeedaea2941421a7c5da15333e46dd51809a1a08c359ae26f4701e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a3e0ee2-3bf9-ca40-1402-e58eca7f3686`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 328–349.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem geom_mean_lt_arith_mean_weighted_iff_of_pos (w z : ι → ℝ) (hw : ∀ i ∈ s, 0 < w i)
    (hw' : ∑ i ∈ s, w i = 1) (hz : ∀ i ∈ s, 0 ≤ z i) :
    ∏ i ∈ s, z i ^ w i < ∑ i ∈ s, w i * z i ↔ ∃ j ∈ s, ∃ k ∈ s, z j ≠ z k := by
  constructor
  · intro h
    by_contra! h_contra
    rw [(geom_mean_eq_arith_mean_weighted_iff_of_pos' s w z hw hw' hz).mpr ?_] at h
    · exact (lt_self_iff_false _).mp h
    · intro j hjs
      rw [← arith_mean_weighted_of_constant s w (fun _ => z j) (z j) hw' fun _ _ => congrFun rfl]
      apply sum_congr rfl (fun x a => congrArg (HMul.hMul (w x)) (h_contra j hjs x a))
  · rintro ⟨j, hjs, k, hks, hzjk⟩
    have := geom_mean_le_arith_mean_weighted s w z (fun i a => le_of_lt (hw i a)) hw' hz
    by_contra! h
    apply le_antisymm this at h
    apply (geom_mean_eq_arith_mean_weighted_iff_of_pos' s w z hw hw' hz).mp at h
    simp only [h j hjs, h k hks, ne_eq, not_true_eq_false] at hzjk

/-- **AM-GM inequality - strict inequality condition**.
The condition is that not all elements of `z` with a nonzero weight are equal to each other;
see `geom_mean_lt_arith_mean_weighted_iff_of_nonneg'` for a version that compares the elements to
their center of mass `∑ i ∈ s, w i * z i` instead. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/MeanInequalities/Variantccf8831abaeedaea2941421a7c5da15333e46dd51809a1a08c359ae26f4701e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/MeanInequalities/Variantccf8831abaeedaea2941421a7c5da15333e46dd51809a1a08c359ae26f4701e5.lean#L328).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bfb8dec0cd98bcfafac05da9fafea42ae61f1c94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
