# source_laplace_scaled_eventually_ge_half

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "484576590b124a5e7e22ea5c1c4af2cb3a97e415",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 33,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9d/9d2975379d83224038d4aebf7c952ec222ba066c1e10350b48a1c0128b83192f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5eaf5794-00b7-14da-6f47-ec3984e37954",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1a7c4ede-7c16-214a-3a99-0c7da96207b5",
  "kind": "theorem",
  "lexical_name": "source_laplace_scaled_eventually_ge_half",
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
  "slug": "source-laplace-scaled-eventually-ge-half--1297a3426085ae4a4445dbcb",
  "source": {
    "blob": "484576590b124a5e7e22ea5c1c4af2cb3a97e415",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 33,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PoleSourceSensitivity/Variant9d2975379d83224038d4aebf7c952ec222ba066c1e10350b48a1c0128b83192f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1297a3426085ae4a4445dbcbd3f2da4ab97a95eb5ad2c28b97ab6416d6bb16e3",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PoleSourceSensitivity/Variant9d2975379d83224038d4aebf7c952ec222ba066c1e10350b48a1c0128b83192f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1a7c4ede-7c16-214a-3a99-0c7da96207b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_laplace_scaled_eventually_ge_half (z : ℂ) (hz : 0 < z.re)
    (hpole : z ^ 2 ≠ 1 / 4) :
    ∀ᶠ A : ℝ in atTop, ‖leadingCoefficient z‖ / 2 ≤
      A ^ 9 * Real.exp (-2 * A * z.re) * ‖sourceLaplace A z‖ := by
  have hpos : 0 < ‖leadingCoefficient z‖ := norm_pos_iff.mpr
    (leading_coefficient_ne_zero z hz hpole)
  have hlimit : Tendsto (fun A : ℝ ↦ A ^ 9 * Real.exp (-2 * A * z.re) *
      ‖sourceLaplace A z‖) atTop (nhds ‖leadingCoefficient z‖) :=
    source_laplace_norm_scaled_tendsto z hz
  have h := (tendsto_const_nhds : Tendsto (fun _ : ℝ ↦ ‖leadingCoefficient z‖ / 2)
      atTop (nhds (‖leadingCoefficient z‖ / 2))).eventually_lt hlimit (by linarith)
  exact h.mono (fun _ hA ↦ hA.le)

/-- The actual source has positive exponential lower sensitivity at every fixed right-half-plane
parameter away from its exact pole zeros. No uniformity in the complex parameter is asserted. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PoleSourceSensitivity/Variant9d2975379d83224038d4aebf7c952ec222ba066c1e10350b48a1c0128b83192f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PoleSourceSensitivity/Variant9d2975379d83224038d4aebf7c952ec222ba066c1e10350b48a1c0128b83192f.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `484576590b124a5e7e22ea5c1c4af2cb3a97e415` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
