# discarded_weighted_arithmetic_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b2c58951-16c3-e427-215c-02ec596f1ad8",
  "kind": "theorem",
  "lexical_name": "discarded_weighted_arithmetic_tail",
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
  "slug": "discarded-weighted-arithmetic-tail--6fc08ac1312eb1a836179222",
  "source": {
    "blob": "e4d4ca25b9536ae71d52e5273dd64b7d42682cd7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 95,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedSourceAngularTail/Variantbcd2d7e038c8a295860e1b7f65d436efb5852e4d2f66f273e9fe140db16a31fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6fc08ac1312eb1a83617922217c8e5628272d5ac55ca03fc92be796c52b7100e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedSourceAngularTail/Variantbcd2d7e038c8a295860e1b7f65d436efb5852e4d2f66f273e9fe140db16a31fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b2c58951-16c3-e427-215c-02ec596f1ad8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem discarded_weighted_arithmetic_tail {A : ℝ} (hA : 1 ≤ A) (t H : ℝ) :
    ‖weightedSourceState A t hA - sourceCutoff H (weightedSourceState A t hA)‖ ^ 2 =
      (2 * Real.pi)⁻¹ * ∫ ξ in angularTailSet H,
        Complex.normSq (negativeAngularTransform (prescribedSource A) ξ) *
          Complex.normSq (arithmeticSpectrum A t ξ) := by
  rw [discarded_angular_energy hA]
  congr 1
  apply setIntegral_congr_fun (angularTailSet_measurable H)
  intro ξ _
  exact exact_weighted_spectral_square hA t ξ

/-- Any supplied bound on this actual tail pays the discarded scalar signal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedSourceAngularTail/Variantbcd2d7e038c8a295860e1b7f65d436efb5852e4d2f66f273e9fe140db16a31fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedSourceAngularTail/Variantbcd2d7e038c8a295860e1b7f65d436efb5852e4d2f66f273e9fe140db16a31fb.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4d4ca25b9536ae71d52e5273dd64b7d42682cd7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
