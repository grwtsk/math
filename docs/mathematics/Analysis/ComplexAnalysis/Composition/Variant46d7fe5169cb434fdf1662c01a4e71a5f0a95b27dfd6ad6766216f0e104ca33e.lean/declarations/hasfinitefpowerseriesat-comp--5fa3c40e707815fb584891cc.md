# HasFiniteFPowerSeriesAt.comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "539448fec4e14ce543b9f5e5d56e773329b4f6d6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 903,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/46/46d7fe5169cb434fdf1662c01a4e71a5f0a95b27dfd6ad6766216f0e104ca33e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9a01ac78-9576-53bc-89a0-240c5f1bf019",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e47411bb-599d-4be3-28c1-1859e974e2ad",
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
  "slug": "hasfinitefpowerseriesat-comp--5fa3c40e707815fb584891cc",
  "source": {
    "blob": "539448fec4e14ce543b9f5e5d56e773329b4f6d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 936,
    "line": 903,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Composition/Variant46d7fe5169cb434fdf1662c01a4e71a5f0a95b27dfd6ad6766216f0e104ca33e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5fa3c40e707815fb584891cc78b7121a96d3b08b10ac3b3665a3f86accb20952",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Composition/Variant46d7fe5169cb434fdf1662c01a4e71a5f0a95b27dfd6ad6766216f0e104ca33e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e47411bb-599d-4be3-28c1-1859e974e2ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 903–936.

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

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Composition/Variant46d7fe5169cb434fdf1662c01a4e71a5f0a95b27dfd6ad6766216f0e104ca33e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Composition/Variant46d7fe5169cb434fdf1662c01a4e71a5f0a95b27dfd6ad6766216f0e104ca33e.lean#L903).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `539448fec4e14ce543b9f5e5d56e773329b4f6d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
