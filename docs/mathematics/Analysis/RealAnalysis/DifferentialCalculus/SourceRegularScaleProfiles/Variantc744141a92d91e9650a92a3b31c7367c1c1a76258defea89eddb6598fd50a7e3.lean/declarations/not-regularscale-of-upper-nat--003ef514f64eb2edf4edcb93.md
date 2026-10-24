# not_regularScale_of_upper_nat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ee2e854d-1e5a-dd0b-0688-03c56066e392",
  "kind": "theorem",
  "lexical_name": "not_regularScale_of_upper_nat",
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
  "slug": "not-regularscale-of-upper-nat--003ef514f64eb2edf4edcb93",
  "source": {
    "blob": "c12f2d98c2d9f48c9a0c1589a6eb09d21249c6e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 378,
    "line": 370,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceRegularScaleProfiles/Variantc744141a92d91e9650a92a3b31c7367c1c1a76258defea89eddb6598fd50a7e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:003ef514f64eb2edf4edcb93d1b2b6cadcfb584624b85d28f91ed7688347550a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceRegularScaleProfiles/Variantc744141a92d91e9650a92a3b31c7367c1c1a76258defea89eddb6598fd50a7e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ee2e854d-1e5a-dd0b-0688-03c56066e392`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 370–378.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_regularScale_of_upper_nat {A : ℝ} (n : ℕ)
    (h : Real.exp (2 * A) = (n : ℝ)) : ¬ RegularScale A := by
  intro hA
  have hs := hA.2.2
  unfold sourceKernelCutoff sourceUpper at hs
  rw [h, Nat.floor_natCast] at hs
  exact (lt_irrefl _ hs)

/-- The regularity contract is exactly positive scale plus absence of either natural event. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceRegularScaleProfiles/Variantc744141a92d91e9650a92a3b31c7367c1c1a76258defea89eddb6598fd50a7e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceRegularScaleProfiles/Variantc744141a92d91e9650a92a3b31c7367c1c1a76258defea89eddb6598fd50a7e3.lean#L370).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c12f2d98c2d9f48c9a0c1589a6eb09d21249c6e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
