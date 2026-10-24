# hasFTaylorSeriesUpToOn_top_iff_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9e427b24dfd5c0a28a45b1423b4ea47793ea3a2b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 345,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b7/b72f7fe68cec3e6aa4df06640759561d82a6220ca48523eb7c4229477fbed72e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:53fb8fde-a4ca-05ba-f7c1-cfd9741083e0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cf01bed5-9fda-9e77-ddcd-4a9539dd840e",
  "kind": "theorem",
  "lexical_name": "hasFTaylorSeriesUpToOn_top_iff_right",
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
  "slug": "hasftaylorseriesuptoon-top-iff-right--bf3bd643a1a68568b6ebd137",
  "source": {
    "blob": "9e427b24dfd5c0a28a45b1423b4ea47793ea3a2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 362,
    "line": 345,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FTaylorSeries/Variantb72f7fe68cec3e6aa4df06640759561d82a6220ca48523eb7c4229477fbed72e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf3bd643a1a68568b6ebd137a447e6a5f3887aaf498cb13235f2f7f696df7447",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FTaylorSeries/Variantb72f7fe68cec3e6aa4df06640759561d82a6220ca48523eb7c4229477fbed72e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf01bed5-9fda-9e77-ddcd-4a9539dd840e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 345–362.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasFTaylorSeriesUpToOn_top_iff_right (hN : ∞ ≤ N) :
    HasFTaylorSeriesUpToOn N f p s ↔
      (∀ x ∈ s, (p x 0).curry0 = f x) ∧
        (∀ x ∈ s, HasFDerivWithinAt (fun y => p y 0) (p x 1).curryLeft s x) ∧
          HasFTaylorSeriesUpToOn N (fun x => continuousMultilinearCurryFin1 𝕜 E F (p x 1))
            (fun x => (p x).shift) s := by
  refine ⟨fun h ↦ ?_, fun h ↦ ?_⟩
  · rw [hasFTaylorSeriesUpToOn_top_iff_add hN 1] at h
    rw [hasFTaylorSeriesUpToOn_top_iff hN]
    exact ⟨(hasFTaylorSeriesUpToOn_succ_nat_iff_right.1 (h 1)).1,
      (hasFTaylorSeriesUpToOn_succ_nat_iff_right.1 (h 1)).2.1,
      fun n ↦ (hasFTaylorSeriesUpToOn_succ_nat_iff_right.1 (h n)).2.2⟩
  · apply (hasFTaylorSeriesUpToOn_top_iff_add hN 1).2 (fun n ↦ ?_)
    rw [hasFTaylorSeriesUpToOn_succ_nat_iff_right]
    exact ⟨h.1, h.2.1, (h.2.2).of_le (m := n) (natCast_le_of_coe_top_le_withTop hN n)⟩

/-- `p` is a Taylor series of `f` up to `n+1` if and only if `p.shift` is a Taylor series up to `n`
for `p 1`, which is a derivative of `f`. Version for `n : WithTop ℕ∞`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FTaylorSeries/Variantb72f7fe68cec3e6aa4df06640759561d82a6220ca48523eb7c4229477fbed72e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FTaylorSeries/Variantb72f7fe68cec3e6aa4df06640759561d82a6220ca48523eb7c4229477fbed72e.lean#L345).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e427b24dfd5c0a28a45b1423b4ea47793ea3a2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
