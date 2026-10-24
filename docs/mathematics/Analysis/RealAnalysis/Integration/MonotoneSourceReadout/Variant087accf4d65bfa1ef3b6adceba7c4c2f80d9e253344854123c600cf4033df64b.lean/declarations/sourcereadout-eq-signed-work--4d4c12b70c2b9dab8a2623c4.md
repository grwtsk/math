# sourceReadout_eq_signed_work

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b4da1627-b67c-21ea-8c50-8931cb70a6e4",
  "kind": "theorem",
  "lexical_name": "sourceReadout_eq_signed_work",
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
  "slug": "sourcereadout-eq-signed-work--4d4c12b70c2b9dab8a2623c4",
  "source": {
    "blob": "215116a4f085f8f2ac0371fd10ed775ab0e1312c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 354,
    "line": 295,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MonotoneSourceReadout/Variant087accf4d65bfa1ef3b6adceba7c4c2f80d9e253344854123c600cf4033df64b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d4c12b70c2b9dab8a2623c40a69682a8180b45145a002ea1510a2d94af7f27b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MonotoneSourceReadout/Variant087accf4d65bfa1ef3b6adceba7c4c2f80d9e253344854123c600cf4033df64b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b4da1627-b67c-21ea-8c50-8931cb70a6e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 295–354.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceReadout_eq_signed_work (A : ℝ) (hA : 1 ≤ A) :
    sourceReadout A = -(∫ t : ℝ, discrepancy t * deriv (criticalPrimeTest A) t) := by
  rw [source_signed_work_whole A hA]
  exact sourceReadout_parts A hA

#check sourceMode
#print axioms sourceMode
#check sourceModeMoment
#print axioms sourceModeMoment
#check headKernel
#print axioms headKernel
#check headRemainder
#print axioms headRemainder
#check sourceReadout
#print axioms sourceReadout
#check headEnvelope
#print axioms headEnvelope
#check sourceMode_continuous
#print axioms sourceMode_continuous
#check headKernel_continuous
#print axioms headKernel_continuous
#check sourceMode_intervalIntegrable
#print axioms sourceMode_intervalIntegrable
#check source_product_integrable
#print axioms source_product_integrable
#check sourceReadout_integrable
#print axioms sourceReadout_integrable
#check sourceReadout_density
#print axioms sourceReadout_density
#check sourceReadout_tail
#print axioms sourceReadout_tail
#check source_test_whole_zero
#print axioms source_test_whole_zero
#check sourceReadout_exact
#print axioms sourceReadout_exact
#check headEnvelope_continuous
#print axioms headEnvelope_continuous
#check headEnvelope_nonneg
#print axioms headEnvelope_nonneg
#check headKernel_abs_le
#print axioms headKernel_abs_le
#check headEnvelope_integral
#print axioms headEnvelope_integral
#check headRemainder_abs_le
#print axioms headRemainder_abs_le
#check headRemainder_abs_lt_three
#print axioms headRemainder_abs_lt_three
#check sourceReadout_window
#print axioms sourceReadout_window
#check sourceReadout_parts
#print axioms sourceReadout_parts
#check source_signed_work_integrable
#print axioms source_signed_work_integrable
#check source_signed_work_whole
#print axioms source_signed_work_whole
#check sourceReadout_eq_signed_work
#print axioms sourceReadout_eq_signed_work

end
end ContinuousResearch.MonotoneSourceReadout
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MonotoneSourceReadout/Variant087accf4d65bfa1ef3b6adceba7c4c2f80d9e253344854123c600cf4033df64b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MonotoneSourceReadout/Variant087accf4d65bfa1ef3b6adceba7c4c2f80d9e253344854123c600cf4033df64b.lean#L295).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `215116a4f085f8f2ac0371fd10ed775ab0e1312c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
