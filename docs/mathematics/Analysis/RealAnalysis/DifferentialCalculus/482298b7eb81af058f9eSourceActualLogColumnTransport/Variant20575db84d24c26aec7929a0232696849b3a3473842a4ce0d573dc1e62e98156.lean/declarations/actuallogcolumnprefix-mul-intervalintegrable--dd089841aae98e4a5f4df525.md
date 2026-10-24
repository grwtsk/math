# actualLogColumnPrefix_mul_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:573f0735-e96d-5585-84a9-275d1a6c75b0",
  "kind": "theorem",
  "lexical_name": "actualLogColumnPrefix_mul_intervalIntegrable",
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
  "slug": "actuallogcolumnprefix-mul-intervalintegrable--dd089841aae98e4a5f4df525",
  "source": {
    "blob": "2e07caa79af822ac0c96df4b132a6dcc58929e1b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 136,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/482298b7eb81af058f9eSourceActualLogColumnTransport/Variant20575db84d24c26aec7929a0232696849b3a3473842a4ce0d573dc1e62e98156.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd089841aae98e4a5f4df5254eb2c28fde1be705267da7823ea40213bf85ccb6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/482298b7eb81af058f9eSourceActualLogColumnTransport/Variant20575db84d24c26aec7929a0232696849b3a3473842a4ce0d573dc1e62e98156.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:573f0735-e96d-5585-84a9-275d1a6c75b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualLogColumnPrefix_mul_intervalIntegrable (A : ℝ) (K : ℕ)
    (hK : vaughanCutoff A + 1 ≤ K) (F : ℝ → ℝ) (hF : Continuous F) :
    IntervalIntegrable (fun s => actualLogColumnPrefix A s * F s) volume
      (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)) (Real.log (K : ℝ)) := by
  apply IntervalIntegrable.trans_iterate_Ico (a := fun k : ℕ => Real.log (k : ℝ)) hK
  intro k hk
  have hk1 : 1 ≤ k := by have := hk.1; omega
  simpa only [Nat.cast_add, Nat.cast_one] using prefix_F_cell_integrable A hk1 F hF

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/482298b7eb81af058f9eSourceActualLogColumnTransport/Variant20575db84d24c26aec7929a0232696849b3a3473842a4ce0d573dc1e62e98156.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/482298b7eb81af058f9eSourceActualLogColumnTransport/Variant20575db84d24c26aec7929a0232696849b3a3473842a4ce0d573dc1e62e98156.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e07caa79af822ac0c96df4b132a6dcc58929e1b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
