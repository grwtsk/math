# actual_bridge_abs_le_chord

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:be07996d-4d7a-d3f9-c124-1faa9fd5c0d2",
  "kind": "theorem",
  "lexical_name": "actual_bridge_abs_le_chord",
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
  "slug": "actual-bridge-abs-le-chord--1b28e8e55fb3f42673d11469",
  "source": {
    "blob": "39d646f0accaaf75948fd2c353f23eec5f17b17f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 91,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/BridgeEnvelope/Variant410e61b2be616e4ece754ec47f7ba19b15ee00a83447e78a31cc3ab9c96d98c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b28e8e55fb3f42673d114695cf80de39153845cf16836427966b91d7c0c8365",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/BridgeEnvelope/Variant410e61b2be616e4ece754ec47f7ba19b15ee00a83447e78a31cc3ab9c96d98c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be07996d-4d7a-d3f9-c124-1faa9fd5c0d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_bridge_abs_le_chord {A u : ℝ} (hA : 0<A)
    (hu : 0≤u) (huA : u≤2*A) :
    |criticalDiscrepancyBridge A u|≤(389/40:ℝ)*u*(2*A-u)/(2*A) := by
  rw [actual_bridge_eq]
  have hh := integralBridge_abs_le (a:=-(133/40:ℝ)) (b:=(32/5:ℝ))
    (by linarith : 0<2*A) hu huA
    criticalCumulativeDiscrepancy_intervalIntegrable
    (fun t ht=>actual_discrepancy_bounds ht.1)
  norm_num only [show (32/5:ℝ)-(-(133/40:ℝ))=389/40 by norm_num] at hh
  exact hh

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/BridgeEnvelope/Variant410e61b2be616e4ece754ec47f7ba19b15ee00a83447e78a31cc3ab9c96d98c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/BridgeEnvelope/Variant410e61b2be616e4ece754ec47f7ba19b15ee00a83447e78a31cc3ab9c96d98c9.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39d646f0accaaf75948fd2c353f23eec5f17b17f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
