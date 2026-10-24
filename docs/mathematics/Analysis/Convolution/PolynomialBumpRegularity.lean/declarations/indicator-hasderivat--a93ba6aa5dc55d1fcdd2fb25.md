# indicator_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5809da4b-db44-f500-1bbe-c197926c2df8",
  "kind": "theorem",
  "lexical_name": "indicator_hasDerivAt",
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
  "slug": "indicator-hasderivat--a93ba6aa5dc55d1fcdd2fb25",
  "source": {
    "blob": "e69ce777a982e13ffb069e3c91a184b40b4f139d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 27,
    "path": "GRWTSK/Analysis/Convolution/PolynomialBumpRegularity.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a93ba6aa5dc55d1fcdd2fb25ed9596f04ef245385a15fd6fb4511bcf0a02c772",
  "verification": {
    "reference": "docs/verification/Analysis/Convolution/PolynomialBumpRegularity.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5809da4b-db44-f500-1bbe-c197926c2df8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem indicator_hasDerivAt {s : Set ℝ} {f f' : ℝ → ℝ}
    (hf : ∀ x, HasDerivAt f (f' x) x)
    (hzero : ∀ x ∈ frontier s, f x = 0 ∧ f' x = 0) (x : ℝ) :
    HasDerivAt (s.indicator f) (s.indicator f' x) x := by
  classical
  by_cases hx : x ∈ frontier s
  · obtain ⟨hfx, hdx⟩ := hzero x hx
    have hv : s.indicator f x = 0 := by simp [indicator_apply, hfx]
    have hd : s.indicator f' x = 0 := by simp [indicator_apply, hdx]
    rw [hd]
    have hs : HasDerivWithinAt (s.indicator f) 0 s x := by
      have h := (hf x).hasDerivWithinAt (s := s)
      rw [hdx] at h
      exact h.congr (fun y hy ↦ indicator_of_mem hy f) (by rw [hv, hfx])
    have hc : HasDerivWithinAt (s.indicator f) 0 sᶜ x := by
      exact (hasDerivWithinAt_const x sᶜ (0 : ℝ)).congr
        (fun y hy ↦ indicator_of_notMem hy f) hv
    have hu := hs.union hc
    simpa only [union_compl_self, hasDerivWithinAt_univ] using hu
  · have hdich : x ∈ interior s ∨ x ∈ interior sᶜ := by
      simpa only [← mem_compl_iff, compl_frontier_eq_union_interior, mem_union] using hx
    rcases hdich with hi | hi
    · have heq : s.indicator f =ᶠ[𝓝 x] f := by
        filter_upwards [isOpen_interior.mem_nhds hi] with y hy
        exact indicator_of_mem (interior_subset hy) f
      rw [indicator_of_mem (interior_subset hi) f']
      exact (hf x).congr_of_eventuallyEq heq
    · have heq : s.indicator f =ᶠ[𝓝 x] fun _ ↦ 0 := by
        filter_upwards [isOpen_interior.mem_nhds hi] with y hy
        exact indicator_of_notMem (interior_subset hy) f
      rw [indicator_of_notMem (interior_subset hi) f']
      exact (hasDerivAt_const x (0 : ℝ)).congr_of_eventuallyEq heq

/-- The exact polynomial derivative of the concrete second interior derivative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Convolution/PolynomialBumpRegularity.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Convolution/PolynomialBumpRegularity.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e69ce777a982e13ffb069e3c91a184b40b4f139d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
