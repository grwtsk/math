# AnalyticOnNhd.circleAverage_log_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3dd78e234df51703431c913f5bc6081233542e97",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 375,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/13/134ef11b120a7f07fb4286c24071369ea6e67f80f68a72a5cd69c72adfba0f35.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3ccb0c13-f3b8-5dae-e1c7-cecbf2d9c4fa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1620ff59-3da3-6e18-8963-9f331bfddfcc",
  "kind": "theorem",
  "lexical_name": "AnalyticOnNhd.circleAverage_log_norm",
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
  "slug": "analyticonnhd-circleaverage-log-norm--4c79662a06a68ea1af0b66e4",
  "source": {
    "blob": "3dd78e234df51703431c913f5bc6081233542e97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 388,
    "line": 375,
    "path": "GRWTSK/Topology/GeneralTopology/JensenFormula/Variant134ef11b120a7f07fb4286c24071369ea6e67f80f68a72a5cd69c72adfba0f35.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c79662a06a68ea1af0b66e4046ee08fb9e7429893448e86402dc8e343aa2c86",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/JensenFormula/Variant134ef11b120a7f07fb4286c24071369ea6e67f80f68a72a5cd69c72adfba0f35.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1620ff59-3da3-6e18-8963-9f331bfddfcc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 375–388.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AnalyticOnNhd.circleAverage_log_norm {c : ℂ} {R : ℝ} {f : ℂ → ℂ} (hR : R ≠ 0)
    (h₁f : AnalyticOnNhd ℂ f (closedBall c |R|))
    (h₂f : f c ≠ 0) :
    circleAverage (Real.log ‖f ·‖) c R
      = ∑ᶠ u, divisor f (closedBall c |R|) u * Real.log (R * ‖c - u‖⁻¹) + Real.log ‖f c‖ := by
  rw [h₁f.meromorphicOn.circleAverage_log_norm hR, h₁f.divisor_apply (by simp),
    (h₁f c (by simp)).analyticOrderAt_eq_zero.mpr h₂f,
    (h₁f c (by simp)).meromorphicTrailingCoeffAt_of_ne_zero h₂f]
  simp

/--
**Jensen's Inequality**: Estimates the number of zeros of `f` in a ball of radius `r`
given that `f` is analytic and bounded by `M` on a larger ball of radius `R`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/JensenFormula/Variant134ef11b120a7f07fb4286c24071369ea6e67f80f68a72a5cd69c72adfba0f35.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/JensenFormula/Variant134ef11b120a7f07fb4286c24071369ea6e67f80f68a72a5cd69c72adfba0f35.lean#L375).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3dd78e234df51703431c913f5bc6081233542e97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
