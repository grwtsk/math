# actual_first_derivative_hasDerivAt_off_endpoints

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8042823e-f66c-90dd-c51e-e14542c2f40a",
  "kind": "theorem",
  "lexical_name": "actual_first_derivative_hasDerivAt_off_endpoints",
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
  "slug": "actual-first-derivative-hasderivat-off-endpoints--813a4ff05097ed5806b65acf",
  "source": {
    "blob": "522b2da6562fc2afa49f5518ddddb0d62e52012c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 73,
    "path": "GRWTSK/Analysis/BranchCorrelationHigher/Variant812b05a278bfdf6458ab53b50a12295914713d6ee4d4c7e67525482a1bd38f46.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:813a4ff05097ed5806b65acfd5a95c07f3d68bf91583047f5721b82180bbb0a5",
  "verification": {
    "reference": "docs/verification/Analysis/BranchCorrelationHigher/Variant812b05a278bfdf6458ab53b50a12295914713d6ee4d4c7e67525482a1bd38f46.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8042823e-f66c-90dd-c51e-e14542c2f40a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_first_derivative_hasDerivAt_off_endpoints {A x : ℝ} (hA : 0 < A)
    (hleft : x ≠ -A) (hright : x ≠ A) :
    HasDerivAt (deriv (normalizedTest explicitSecondDerivative A))
      (secondRepresentative A x) x := by
  rw [actual_first_derivative_eq_indicator hA]
  have hx : x ∉ frontier (Icc (-A) A) := by
    rw [frontier_Icc (by linarith : -A ≤ A), mem_insert_iff, mem_singleton_iff]
    exact not_or.mpr ⟨hleft, hright⟩
  have hdich : x ∈ interior (Icc (-A) A) ∨ x ∈ interior (Icc (-A) A)ᶜ := by
    simpa only [← mem_compl_iff, compl_frontier_eq_union_interior, mem_union] using hx
  rcases hdich with hi | hi
  · have heq : (Icc (-A) A).indicator (normalizedInteriorDerivative A) =ᶠ[𝓝 x]
        normalizedInteriorDerivative A := by
      filter_upwards [isOpen_interior.mem_nhds hi] with y hy
      exact indicator_of_mem (interior_subset hy) _
    rw [secondRepresentative, indicator_of_mem (interior_subset hi)]
    exact (normalizedInteriorDerivative_hasDerivAt A x).congr_of_eventuallyEq heq
  · have heq : (Icc (-A) A).indicator (normalizedInteriorDerivative A) =ᶠ[𝓝 x]
        fun _ ↦ 0 := by
      filter_upwards [isOpen_interior.mem_nhds hi] with y hy
      exact indicator_of_notMem (interior_subset hy) _
    rw [secondRepresentative, indicator_of_notMem (interior_subset hi)]
    exact (hasDerivAt_const x (0 : ℝ)).congr_of_eventuallyEq heq

/-- The piecewise second derivative is measurable and integrable on the full line. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/BranchCorrelationHigher/Variant812b05a278bfdf6458ab53b50a12295914713d6ee4d4c7e67525482a1bd38f46.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/BranchCorrelationHigher/Variant812b05a278bfdf6458ab53b50a12295914713d6ee4d4c7e67525482a1bd38f46.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `522b2da6562fc2afa49f5518ddddb0d62e52012c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
