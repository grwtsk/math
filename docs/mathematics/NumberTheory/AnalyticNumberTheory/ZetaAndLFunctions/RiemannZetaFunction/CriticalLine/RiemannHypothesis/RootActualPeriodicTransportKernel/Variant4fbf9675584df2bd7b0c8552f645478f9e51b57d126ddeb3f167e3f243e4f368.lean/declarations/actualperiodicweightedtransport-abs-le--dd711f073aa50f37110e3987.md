# actualPeriodicWeightedTransport_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d34df0af-87c0-1805-076c-cedcaadb3420",
  "kind": "theorem",
  "lexical_name": "actualPeriodicWeightedTransport_abs_le",
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
  "slug": "actualperiodicweightedtransport-abs-le--dd711f073aa50f37110e3987",
  "source": {
    "blob": "647dd88bb21b857cccbb57afebb9d5c3e3bebc3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 101,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualPeriodicTransportKernel/Variant4fbf9675584df2bd7b0c8552f645478f9e51b57d126ddeb3f167e3f243e4f368.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd711f073aa50f37110e3987405f90c146e6812e2ec6c1cb788e18d63c799b3b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualPeriodicTransportKernel/Variant4fbf9675584df2bd7b0c8552f645478f9e51b57d126ddeb3f167e3f243e4f368.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d34df0af-87c0-1805-076c-cedcaadb3420`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualPeriodicWeightedTransport_abs_le {A t s : ℝ} (hA : 91 ≤ A)
    (hz : 0 ≤ t + s) :
    |Real.exp (-s) * (covariantMixedDerivative (actualLogMixedDensity A) t s -
      (3 / 2 : ℝ) * actualTwistedTimeDensity A t s)| ≤
        Real.exp (t / 2) * Real.exp (-3 * s / 2) * (4 / A) := by
  rw [actualPeriodicTransportKernel_eq (by linarith : 0 < A) t s]
  rw [abs_mul, abs_mul, abs_of_pos (Real.exp_pos _),
    abs_of_pos (by positivity : 0 < Real.exp (t / 2) * Real.exp (-s / 2))]
  calc
    _ ≤ Real.exp (-s) * (Real.exp (t / 2) * Real.exp (-s / 2) * (4 / A)) :=
      mul_le_mul_of_nonneg_left
        (mul_le_mul_of_nonneg_left (actualPeriodicTransportJet_abs_le hA hz) (by positivity))
        (Real.exp_pos _).le
    _ = _ := by
      rw [show Real.exp (-3 * s / 2) = Real.exp (-s) * Real.exp (-s / 2) by
        rw [← Real.exp_add]; congr 1; ring]
      ring

end
end FormalResearch.RiemannHypothesis.RootActualPeriodicTransportKernel
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualPeriodicTransportKernel/Variant4fbf9675584df2bd7b0c8552f645478f9e51b57d126ddeb3f167e3f243e4f368.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualPeriodicTransportKernel/Variant4fbf9675584df2bd7b0c8552f645478f9e51b57d126ddeb3f167e3f243e4f368.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `647dd88bb21b857cccbb57afebb9d5c3e3bebc3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
