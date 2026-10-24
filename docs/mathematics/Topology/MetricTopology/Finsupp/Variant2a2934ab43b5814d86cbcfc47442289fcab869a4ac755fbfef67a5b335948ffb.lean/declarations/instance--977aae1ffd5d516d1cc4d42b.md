# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8e9f24ca3d3c472e0243e1726434bd83d79522515400100fb7fa16e25447547f",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--977aae1ffd5d516d1cc4d42b",
  "source": {
    "blob": "f93f3a965688abee426b1ac5f5568edec62efc39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 72,
    "path": "GRWTSK/Topology/MetricTopology/Finsupp/Variant2a2934ab43b5814d86cbcfc47442289fcab869a4ac755fbfef67a5b335948ffb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:977aae1ffd5d516d1cc4d42b1ac3997bf268c2036491aabfa35fd16c1118823c",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Finsupp/Variant2a2934ab43b5814d86cbcfc47442289fcab869a4ac755fbfef67a5b335948ffb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8e9f24ca3d3c472e0243e1726434bd83d79522515400100fb7fa16e25447547f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance [PseudoMetricSpace X] : PseudoMetricSpace (WithLp p <| ι →₀ X) :=
  PseudoEMetricSpace.toPseudoMetricSpaceOfDist
    (fun f g ↦ ((f.ofLp.zipWith dist (dist_self _) g.ofLp).sum fun i r ↦ r ^ (p : ℝ)) ^ (p⁻¹ : ℝ))
    (fun f g ↦ by dsimp [sum]; positivity) fun f g ↦ by
      simp only [edist_def, sum, zipWith_apply, ← coe_nnreal_ennreal_nndist, NNReal.zero_le_coe,
        ← ENNReal.coe_rpow_of_nonneg, ← ENNReal.ofNNReal_finsetSum, inv_nonneg, ← coe_nndist,
        ← NNReal.coe_rpow, ← NNReal.coe_sum, ENNReal.ofReal_coe_nnreal, ENNReal.coe_inj]
      congr! 2
      ext i
      simp [← coe_nndist, ← coe_nnreal_ennreal_nndist]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Finsupp/Variant2a2934ab43b5814d86cbcfc47442289fcab869a4ac755fbfef67a5b335948ffb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Finsupp/Variant2a2934ab43b5814d86cbcfc47442289fcab869a4ac755fbfef67a5b335948ffb.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f93f3a965688abee426b1ac5f5568edec62efc39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
