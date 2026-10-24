# pairedTailTest_integrated_green_readout

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:645b88e9-787b-f71e-f4b4-34b9a89be3f8",
  "kind": "theorem",
  "lexical_name": "pairedTailTest_integrated_green_readout",
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
  "slug": "pairedtailtest-integrated-green-readout--779cfc96e5e0b77d55486129",
  "source": {
    "blob": "8b14b13bc540a641ddcf51ffc961725050816b85",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 109,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceCriticalGreenReadout/Variant5f5015d3eb0a5d6045a9742de51f2ae86946d520facb0f6824248d234e956656.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:779cfc96e5e0b77d55486129f4dfdce9bc08af9e18216e035a04d88f9a280b57",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceCriticalGreenReadout/Variant5f5015d3eb0a5d6045a9742de51f2ae86946d520facb0f6824248d234e956656.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:645b88e9-787b-f71e-f4b4-34b9a89be3f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pairedTailTest_integrated_green_readout {A s : ℝ} (hA : 1 ≤ A)
    (hs : s ∈ Icc 0 (2 * A)) :
    (∫ u in 0..2 * A,
      criticalDirichletTent (2 * A) u s * deriv (deriv (pairedTailTest A)) u) =
        -pairedTailTest A s := by
  have hi := dirichletTent_integral_second_deriv_eq_endpoint_interpolation
    (show 0 < 2 * A by linarith) hs (pairedTailTest_contDiff hA)
    (pairedTailTest_deriv_absolutelyContinuous hA)
  simpa only [pairedTailTest_at_zero hA, pairedTailTest_at_upper hA,
    mul_zero, zero_add, zero_sub] using hi

/-- The actual paired derivative at zero is `-1/2`, not the normalized source bump. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceCriticalGreenReadout/Variant5f5015d3eb0a5d6045a9742de51f2ae86946d520facb0f6824248d234e956656.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceCriticalGreenReadout/Variant5f5015d3eb0a5d6045a9742de51f2ae86946d520facb0f6824248d234e956656.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b14b13bc540a641ddcf51ffc961725050816b85` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
