# HasFiniteFPowerSeriesAt.comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c8838790-e83a-b4d4-2333-39d7bce6548a",
  "kind": "theorem",
  "lexical_name": "HasFiniteFPowerSeriesAt.comp",
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
  "slug": "hasfinitefpowerseriesat-comp--0fd83409bf77ddd3fb15c033",
  "source": {
    "blob": "f388cfd9353f6f9184359ea4859d0e85e95fe225",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 944,
    "line": 911,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Composition/Variantccf497429bbbe807ab39c2550347b928ed2aa8e168bf00f01a8a46600b8776dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0fd83409bf77ddd3fb15c033d32a70d6760de0a0068842948927170a0eec96f4",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Composition/Variantccf497429bbbe807ab39c2550347b928ed2aa8e168bf00f01a8a46600b8776dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c8838790-e83a-b4d4-2333-39d7bce6548a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 911–944.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasFiniteFPowerSeriesAt.comp {m n : ℕ} {g : F → G} {f : E → F}
    {q : FormalMultilinearSeries 𝕜 F G} {p : FormalMultilinearSeries 𝕜 E F} {x : E}
    (hg : HasFiniteFPowerSeriesAt g q (f x) m) (hf : HasFiniteFPowerSeriesAt f p x n) (hn : 0 < n) :
    HasFiniteFPowerSeriesAt (g ∘ f) (q.comp p) x (m * n) := by
  rcases hg.hasFPowerSeriesAt.comp hf.hasFPowerSeriesAt with ⟨r, hr⟩
  refine ⟨r, hr, fun i hi ↦ ?_⟩
  apply Finset.sum_eq_zero
  rintro c -
  ext v
  simp only [compAlongComposition_apply, _root_.zero_apply]
  rcases le_or_gt m c.length with hc | hc
  · simp [hg.finite _ hc]
  obtain ⟨j, hj⟩ : ∃ j, n ≤ c.blocksFun j := by
    contrapose! hi
    rw [← c.sum_blocksFun]
    rcases eq_zero_or_pos c.length with h'c | h'c
    · have : ∑ j : Fin c.length, c.blocksFun j = 0 := by
        apply Finset.sum_eq_zero (fun j hj ↦ ?_)
        have := j.2
        grind
      rw [this]
      exact mul_pos (by grind) hn
    · calc ∑ j : Fin c.length, c.blocksFun j
      _ < ∑ j : Fin c.length, n := by
        apply Finset.sum_lt_sum (fun j hj ↦ (hi j).le)
        exact ⟨⟨0, h'c⟩, Finset.mem_univ _, hi _⟩
      _ = c.length * n := by simp
      _ ≤ m * n := by gcongr
  apply ContinuousMultilinearMap.map_coord_zero _ j
  simp [applyComposition, hf.finite _ hj]

/-- If two functions `g` and `f` are continuously polynomial respectively at `f x` and `x`,
then `g ∘ f` is continuously polynomial at `x`. -/
@[to_fun]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Composition/Variantccf497429bbbe807ab39c2550347b928ed2aa8e168bf00f01a8a46600b8776dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Composition/Variantccf497429bbbe807ab39c2550347b928ed2aa8e168bf00f01a8a46600b8776dc.lean#L911).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f388cfd9353f6f9184359ea4859d0e85e95fe225` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
