# exponential_firstMoment_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f8a2e29f-7f8d-03c6-65a7-a28bfe6d9bcc",
  "kind": "theorem",
  "lexical_name": "exponential_firstMoment_integrable",
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
  "slug": "exponential-firstmoment-integrable--12a2d826ebb17376848296c2",
  "source": {
    "blob": "388e9adfeb1fee869fc82707ffca61b68dc6859f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 198,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt5/Variante275c4d98f7599c0cbf0a76337d6f36d07a51cf0bbf3c7952ccbd268c036f885.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:12a2d826ebb17376848296c24e376f836409da1cbf0020ecd4f0f57123795fcd",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt5/Variante275c4d98f7599c0cbf0a76337d6f36d07a51cf0bbf3c7952ccbd268c036f885.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8a2e29f-7f8d-03c6-65a7-a28bfe6d9bcc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exponential_firstMoment_integrable {b : ℝ} (hb : 0 < b) :
    IntegrableOn (fun t : ℝ ↦ t * Real.exp (-b * t)) (Ioi 0) := by
  have hbase : IntegrableOn (fun t : ℝ ↦ Real.exp (-t) * t) (Ioi 0) := by
    simpa using Real.GammaIntegral_convergent (s := 2) (by norm_num)
  have hscaled := (integrableOn_Ioi_comp_mul_left_iff
    (fun t : ℝ ↦ Real.exp (-t) * t) 0 hb).mpr (by simpa using hbase)
  have h := hscaled.div_const b
  apply h.congr
  filter_upwards with t
  dsimp
  rw [show -(b * t) = -b * t by ring]
  field_simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt5/Variante275c4d98f7599c0cbf0a76337d6f36d07a51cf0bbf3c7952ccbd268c036f885.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt5/Variante275c4d98f7599c0cbf0a76337d6f36d07a51cf0bbf3c7952ccbd268c036f885.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `388e9adfeb1fee869fc82707ffca61b68dc6859f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
