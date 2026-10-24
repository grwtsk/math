# actual_negative_axis_density

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fc80c31724d3f89db753def2e1d9eca4fe3f1d67",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 65,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/36/36e768f798355a9bf7d0d36ce2a8ec6a856bb7b056e34c839cfe8bfa16184b8c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e1493fce-03a7-2180-cfea-4063f7bb8278",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9a38e3ed-893d-1fc0-cff5-75b74e97c74c",
  "kind": "theorem",
  "lexical_name": "actual_negative_axis_density",
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
  "slug": "actual-negative-axis-density--7603f3e3b89ceb6fc7766612",
  "source": {
    "blob": "fc80c31724d3f89db753def2e1d9eca4fe3f1d67",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 65,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScopeFixtures/Variant36e768f798355a9bf7d0d36ce2a8ec6a856bb7b056e34c839cfe8bfa16184b8c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7603f3e3b89ceb6fc7766612cd9c8428929ee763a38a3b3d734351c31c6d1e4d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScopeFixtures/Variant36e768f798355a9bf7d0d36ce2a8ec6a856bb7b056e34c839cfe8bfa16184b8c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a38e3ed-893d-1fc0-cff5-75b74e97c74c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_negative_axis_density : criticalDensity (-2*Real.log 4) = -1 := by
  unfold criticalDensity criticalDecay
  rw [show -(-2*Real.log 4)/2=Real.log 4 by ring, Real.exp_log (by norm_num)]
  norm_num

end FormalResearch.RiemannHypothesis.SourceCriticalDensityScopeFixtures

open FormalResearch.RiemannHypothesis.SourceCriticalDensityScopeFixtures
#check boundary_mass_correction_required
#print axioms boundary_mass_correction_required
#check actual_preprime_mass_not_balanced
#print axioms actual_preprime_mass_not_balanced
#check actual_opposite_signed_source_integrals
#print axioms actual_opposite_signed_source_integrals
#check actual_bounded_density_increases_signed_integral
#print axioms actual_bounded_density_increases_signed_integral
#check actual_negative_axis_density
#print axioms actual_negative_axis_density
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScopeFixtures/Variant36e768f798355a9bf7d0d36ce2a8ec6a856bb7b056e34c839cfe8bfa16184b8c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScopeFixtures/Variant36e768f798355a9bf7d0d36ce2a8ec6a856bb7b056e34c839cfe8bfa16184b8c.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc80c31724d3f89db753def2e1d9eca4fe3f1d67` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
