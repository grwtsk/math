# criticalDensity_mem_Icc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:41b06729-7663-c1d5-8a45-b0d5b1f863bf",
  "kind": "theorem",
  "lexical_name": "criticalDensity_mem_Icc",
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
  "slug": "criticaldensity-mem-icc--09ab7bd4544ab4704a495dde",
  "source": {
    "blob": "4968baea57173e2848b77736111e16f07843b550",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 58,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant9c8ac023d2ea561f657763a0763854824f7fc430fb7804b496a5d692218c28d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09ab7bd4544ab4704a495ddebce11521be1c36a368a44cc47f06be48c1a688c0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant9c8ac023d2ea561f657763a0763854824f7fc430fb7804b496a5d692218c28d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:41b06729-7663-c1d5-8a45-b0d5b1f863bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem criticalDensity_mem_Icc (u : ℝ) (hu : 0 ≤ u) :
    (1/2 : ℝ) ≤ criticalDensity u ∧ criticalDensity u ≤ 1 := by
  have hp : 0 ≤ criticalDecay u := (Real.exp_pos _).le
  have hh : criticalDecay u ≤ 1 := by
    unfold criticalDecay
    rw [Real.exp_le_one_iff]
    linarith
  unfold criticalDensity
  constructor <;> linarith

/-- Oriented calculus retains the lower endpoint compensation and the upper decay. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant9c8ac023d2ea561f657763a0763854824f7fc430fb7804b496a5d692218c28d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Variant9c8ac023d2ea561f657763a0763854824f7fc430fb7804b496a5d692218c28d8.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4968baea57173e2848b77736111e16f07843b550` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
