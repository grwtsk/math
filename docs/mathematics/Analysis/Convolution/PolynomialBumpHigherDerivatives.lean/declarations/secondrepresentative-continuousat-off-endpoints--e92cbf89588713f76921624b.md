# secondRepresentative_continuousAt_off_endpoints

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ee252f3e-f383-2e81-b4fd-7429f9330289",
  "kind": "theorem",
  "lexical_name": "secondRepresentative_continuousAt_off_endpoints",
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
  "slug": "secondrepresentative-continuousat-off-endpoints--e92cbf89588713f76921624b",
  "source": {
    "blob": "fcca4fcb8056a094690ebd5632fc2f2ac635db8a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 364,
    "line": 343,
    "path": "GRWTSK/Analysis/Convolution/PolynomialBumpHigherDerivatives.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e92cbf89588713f76921624b50265d96a4b9407631fc7af03d190a4d37dc474f",
  "verification": {
    "reference": "docs/verification/Analysis/Convolution/PolynomialBumpHigherDerivatives.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ee252f3e-f383-2e81-b4fd-7429f9330289`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 343–364.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem secondRepresentative_continuousAt_off_endpoints {A x : ℝ} (hA : 0 < A)
    (hleft : x ≠ -A) (hright : x ≠ A) : ContinuousAt (secondRepresentative A) x := by
  have hc : Continuous (normalizedSecondInterior A) := by
    change Continuous (fun y : ℝ ↦ normalizedSecondInterior A y)
    dsimp [normalizedSecondInterior, fourthInterior, unitFourth, secondInterior]
    fun_prop
  have hx : x ∉ frontier (Icc (-A) A) := by
    rw [frontier_Icc (by linarith : -A ≤ A), mem_insert_iff, mem_singleton_iff]
    exact not_or.mpr ⟨hleft, hright⟩
  have hdich : x ∈ interior (Icc (-A) A) ∨ x ∈ interior (Icc (-A) A)ᶜ := by
    simpa only [← mem_compl_iff, compl_frontier_eq_union_interior, mem_union] using hx
  rcases hdich with hi | hi
  · have heq : secondRepresentative A =ᶠ[𝓝 x] normalizedSecondInterior A := by
      filter_upwards [isOpen_interior.mem_nhds hi] with y hy
      exact indicator_of_mem (interior_subset hy) _
    exact hc.continuousAt.congr heq.symm
  · have heq : secondRepresentative A =ᶠ[𝓝 x] fun _ ↦ 0 := by
      filter_upwards [isOpen_interior.mem_nhds hi] with y hy
      exact indicator_of_notMem (interior_subset hy) _
    exact continuousAt_const.congr heq.symm

/-- Dominated convergence gives continuity of the q'' autocorrelation at every moving seam. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Convolution/PolynomialBumpHigherDerivatives.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Convolution/PolynomialBumpHigherDerivatives.lean#L343).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fcca4fcb8056a094690ebd5632fc2f2ac635db8a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
