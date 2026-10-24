# profileYCell_integrand_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e71be358-8e27-d5fa-56ea-d0e8efce7d03",
  "kind": "theorem",
  "lexical_name": "profileYCell_integrand_intervalIntegrable",
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
  "slug": "profileycell-integrand-intervalintegrable--329ce63c0257e066bd88dce4",
  "source": {
    "blob": "f9beaf881c63d8009e207315c825ee679f29fce8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 262,
    "line": 249,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualMixedWorkFubini/Variant7213a35d525ad1f32159fa32e482760a10af279ca74c3c98f3e92ba10b22ce64.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:329ce63c0257e066bd88dce4e5dd3bf1304759b20803d9b8c3ccbf05477177cf",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualMixedWorkFubini/Variant7213a35d525ad1f32159fa32e482760a10af279ca74c3c98f3e92ba10b22ce64.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e71be358-8e27-d5fa-56ea-d0e8efce7d03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 249–262.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem profileYCell_integrand_intervalIntegrable
    (r : ℝ → ℝ) (hc : Continuous r) {k : ℝ} (hk : 0 < k) (v : ℝ) :
    IntervalIntegrable (fun u => r (v + Real.log u) / (u * Real.sqrt u))
      volume k (k + 1) := by
  have hcont : ContinuousOn
      (fun u => r (v + Real.log u) / (u * Real.sqrt u)) (Icc k (k + 1)) := by
    intro u hu
    have hu0 := hk.trans_le hu.1
    have hr := hc.continuousAt.comp ((Real.continuousAt_log hu0.ne').const_add v)
    have hden := continuousAt_id.mul continuousAt_id.sqrt
    have hne := mul_ne_zero hu0.ne' (Real.sqrt_ne_zero'.mpr hu0)
    exact (hr.div hden hne).continuousWithinAt
  exact hcont.intervalIntegrable_of_Icc (le_add_of_nonneg_right (by norm_num))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualMixedWorkFubini/Variant7213a35d525ad1f32159fa32e482760a10af279ca74c3c98f3e92ba10b22ce64.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualMixedWorkFubini/Variant7213a35d525ad1f32159fa32e482760a10af279ca74c3c98f3e92ba10b22ce64.lean#L249).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9beaf881c63d8009e207315c825ee679f29fce8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
