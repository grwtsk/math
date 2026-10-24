# logResidual_positive_integral_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b5195dec-695a-174f-1e4b-3d1ccf0642bd",
  "kind": "theorem",
  "lexical_name": "logResidual_positive_integral_le",
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
  "slug": "logresidual-positive-integral-le--be585eb3012c7c87f9d6fda8",
  "source": {
    "blob": "efb4474a026a077ec2f3c3c4de68776a11b3f6e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 143,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LogarithmicResidualTailAudit/Variantd09da905daee56c58b88442bc9cd391365a3d647231c4dfb672d653386330fa0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be585eb3012c7c87f9d6fda8d432467a7e0c629fb5073324d7a34a81a4143bfb",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LogarithmicResidualTailAudit/Variantd09da905daee56c58b88442bc9cd391365a3d647231c4dfb672d653386330fa0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b5195dec-695a-174f-1e4b-3d1ccf0642bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logResidual_positive_integral_le (X : ℕ) (ε : ℝ) (hX : 1 ≤ X)
    (Y : ℝ) (hY : 1 ≤ Y) :
    (∫ u : ℝ in Ioi (Real.log Y), ‖logResidual X ε u‖ ^ 2) ≤
      (1 + ∑ d ∈ Finset.Icc 1 X, |dampedCoefficient X ε d|) ^ 2 / Y := by
  have hm := logResidual_memLp X ε hX
  have hi := (memLp_two_iff_integrable_sq_norm hm.aestronglyMeasurable).mp hm
  calc
    _ ≤ ∫ u : ℝ in Ioi (Real.log Y), Real.exp (-u) *
        (1 + ∑ d ∈ Finset.Icc 1 X, |dampedCoefficient X ε d|) ^ 2 := by
      apply integral_mono_ae hi.integrableOn ((integrableOn_exp_neg_Ioi _).mul_const _)
      filter_upwards [] with u
      exact logResidual_sq_le X ε u
    _ = _ := by
      rw [integral_mul_const, integral_exp_neg_Ioi, Real.exp_neg,
        Real.exp_log (lt_of_lt_of_le zero_lt_one hY)]
      ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LogarithmicResidualTailAudit/Variantd09da905daee56c58b88442bc9cd391365a3d647231c4dfb672d653386330fa0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LogarithmicResidualTailAudit/Variantd09da905daee56c58b88442bc9cd391365a3d647231c4dfb672d653386330fa0.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `efb4474a026a077ec2f3c3c4de68776a11b3f6e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
