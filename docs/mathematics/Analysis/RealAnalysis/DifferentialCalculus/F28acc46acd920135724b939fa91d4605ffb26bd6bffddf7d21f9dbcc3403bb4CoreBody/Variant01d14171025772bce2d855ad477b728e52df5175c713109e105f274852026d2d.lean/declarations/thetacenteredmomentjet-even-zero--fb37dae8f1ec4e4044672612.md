# thetaCenteredMomentJet_even_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d3e4009e-e11f-fc42-d22c-af6866a24988",
  "kind": "theorem",
  "lexical_name": "thetaCenteredMomentJet_even_zero",
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
  "slug": "thetacenteredmomentjet-even-zero--fb37dae8f1ec4e4044672612",
  "source": {
    "blob": "20f0a8ce5e6a8b0bf43536932365ed26296f1641",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 120,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/F28acc46acd920135724b939fa91d4605ffb26bd6bffddf7d21f9dbcc3403bb4CoreBody/Variant01d14171025772bce2d855ad477b728e52df5175c713109e105f274852026d2d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb37dae8f1ec4e404467261298154fdde1fd39f5735579a7ed2ee2c0bad34fd6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/F28acc46acd920135724b939fa91d4605ffb26bd6bffddf7d21f9dbcc3403bb4CoreBody/Variant01d14171025772bce2d855ad477b728e52df5175c713109e105f274852026d2d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d3e4009e-e11f-fc42-d22c-af6866a24988`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaCenteredMomentJet_even_zero (n : ℕ) :
    thetaCenteredMomentJet (2 * n) 0 =
      (8 : ℂ) * ∫ t in Ioi (0 : ℝ), (thetaPhi t : ℂ) * (2 * (t : ℂ)) ^ (2 * n) := by
  simp only [thetaCenteredMomentJet, thetaPhiExpMoment, thetaPhiExpMomentIntegrand,
    neg_zero, mul_zero, zero_mul, Complex.exp_zero, mul_one, pow_mul]
  norm_num
  ring

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/F28acc46acd920135724b939fa91d4605ffb26bd6bffddf7d21f9dbcc3403bb4CoreBody/Variant01d14171025772bce2d855ad477b728e52df5175c713109e105f274852026d2d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/F28acc46acd920135724b939fa91d4605ffb26bd6bffddf7d21f9dbcc3403bb4CoreBody/Variant01d14171025772bce2d855ad477b728e52df5175c713109e105f274852026d2d.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20f0a8ce5e6a8b0bf43536932365ed26296f1641` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
