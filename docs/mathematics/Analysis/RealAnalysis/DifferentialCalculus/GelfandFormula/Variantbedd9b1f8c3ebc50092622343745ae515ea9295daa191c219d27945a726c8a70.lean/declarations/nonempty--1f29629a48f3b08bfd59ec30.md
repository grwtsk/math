# nonempty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:86cdaf23-b23a-f2c9-adfe-d12caa7fb555",
  "kind": "theorem",
  "lexical_name": "nonempty",
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
  "slug": "nonempty--1f29629a48f3b08bfd59ec30",
  "source": {
    "blob": "aa3f919d58eaacd482d12b13f639e79d30bfe6f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 154,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/GelfandFormula/Variantbedd9b1f8c3ebc50092622343745ae515ea9295daa191c219d27945a726c8a70.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f29629a48f3b08bfd59ec30b14f835814fcc615b00dd1cf37ffbc8c99ee2e31",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/GelfandFormula/Variantbedd9b1f8c3ebc50092622343745ae515ea9295daa191c219d27945a726c8a70.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:86cdaf23-b23a-f2c9-adfe-d12caa7fb555`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem nonempty (a : A) : (spectrum ℂ a).Nonempty := by
  /- Suppose `σ a = ∅`, then resolvent set is `ℂ`, any `(z • 1 - a)` is a unit, and `resolvent a`
    is differentiable on `ℂ`. -/
  by_contra! h
  have H₀ : resolventSet ℂ a = Set.univ := by rwa [spectrum, Set.compl_empty_iff] at h
  have H₁ : Differentiable ℂ fun z : ℂ => resolvent a z := fun z =>
    hasDerivAt_resolvent_const_left (H₀.symm ▸ Set.mem_univ z : z ∈ resolventSet ℂ a)
      |>.differentiableAt
  /- Since `resolvent a` tends to zero at infinity, by Liouville's theorem `resolvent a = 0`,
  which contradicts that `resolvent a z` is invertible. -/
  have H₃ := H₁.apply_eq_of_tendsto_cocompact 0 <| by
    simpa [Metric.cobounded_eq_cocompact] using resolvent_tendsto_cobounded a (𝕜 := ℂ)
  exact not_isUnit_zero <| H₃ ▸ (isUnit_resolvent.mp <| H₀.symm ▸ Set.mem_univ 0)

/-- In a complex Banach algebra, the spectral radius is always attained by some element of the
spectrum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/GelfandFormula/Variantbedd9b1f8c3ebc50092622343745ae515ea9295daa191c219d27945a726c8a70.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/GelfandFormula/Variantbedd9b1f8c3ebc50092622343745ae515ea9295daa191c219d27945a726c8a70.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa3f919d58eaacd482d12b13f639e79d30bfe6f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
