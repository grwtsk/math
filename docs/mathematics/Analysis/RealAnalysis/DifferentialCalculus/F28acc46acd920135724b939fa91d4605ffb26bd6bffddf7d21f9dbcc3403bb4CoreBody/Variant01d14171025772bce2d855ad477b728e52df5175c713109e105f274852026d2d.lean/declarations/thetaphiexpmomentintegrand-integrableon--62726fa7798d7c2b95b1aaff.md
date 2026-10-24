# thetaPhiExpMomentIntegrand_integrableOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:335f912c-b9fb-33e7-9322-33e459bf5555",
  "kind": "theorem",
  "lexical_name": "thetaPhiExpMomentIntegrand_integrableOn",
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
  "slug": "thetaphiexpmomentintegrand-integrableon--62726fa7798d7c2b95b1aaff",
  "source": {
    "blob": "20f0a8ce5e6a8b0bf43536932365ed26296f1641",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 53,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/F28acc46acd920135724b939fa91d4605ffb26bd6bffddf7d21f9dbcc3403bb4CoreBody/Variant01d14171025772bce2d855ad477b728e52df5175c713109e105f274852026d2d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:62726fa7798d7c2b95b1aaffecc7252efa5733da85f6f2ac7c21aa296e390c4f",
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

Occurrence: `result:335f912c-b9fb-33e7-9322-33e459bf5555`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhiExpMomentIntegrand_integrableOn (m : ℕ) (u : ℂ) :
    IntegrableOn (thetaPhiExpMomentIntegrand m u) (Ioi (0 : ℝ)) := by
  have hmajor := (thetaPhi_poly_exp_integrableOn m (2 * ‖u‖)).const_mul ((2 : ℝ) ^ m)
  apply hmajor.mono' (continuous_thetaPhiExpMomentIntegrand m u).aestronglyMeasurable
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
  exact thetaPhiExpMomentIntegrand_norm_le m u _ le_rfl (le_of_lt ht)

/-- Differentiation of the literal exponential kernel adds exactly one `2t` factor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/F28acc46acd920135724b939fa91d4605ffb26bd6bffddf7d21f9dbcc3403bb4CoreBody/Variant01d14171025772bce2d855ad477b728e52df5175c713109e105f274852026d2d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/F28acc46acd920135724b939fa91d4605ffb26bd6bffddf7d21f9dbcc3403bb4CoreBody/Variant01d14171025772bce2d855ad477b728e52df5175c713109e105f274852026d2d.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20f0a8ce5e6a8b0bf43536932365ed26296f1641` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
