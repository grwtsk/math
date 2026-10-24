# sourceMeasure_power_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5ce99ede775e5c4726064fac107c1d878c51c659",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 58,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/50/50c8a1f09208b7e0d9c3b56194e36bc21bbc17ba97e98459e2dd332b98bb5f2e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3b4c6a2b-b65e-755a-7719-0475db6adeeb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ba1944a1-2edb-b404-67a1-fad2232985a9",
  "kind": "theorem",
  "lexical_name": "sourceMeasure_power_integrable",
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
  "slug": "sourcemeasure-power-integrable--1cdc997a2953a5c05f5fd323",
  "source": {
    "blob": "5ce99ede775e5c4726064fac107c1d878c51c659",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 58,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaMomentMeasureAudit/Variant50c8a1f09208b7e0d9c3b56194e36bc21bbc17ba97e98459e2dd332b98bb5f2e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1cdc997a2953a5c05f5fd323d7c64a8b76c239d25bffe4ba1f5a50068dd8f6ed",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ThetaMomentMeasureAudit/Variant50c8a1f09208b7e0d9c3b56194e36bc21bbc17ba97e98459e2dd332b98bb5f2e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba1944a1-2edb-b404-67a1-fad2232985a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceMeasure_power_integrable (n : ℕ) {t : ℝ} (ht : 0 ≤ t) :
    Integrable (fun u : ℝ => (u - t) ^ n) (sourceMeasure t) := by
  rw [sourceMeasure, integrable_withDensity_iff_integrable_smul' density_measurable
    (Filter.Eventually.of_forall (fun _ => ENNReal.ofReal_lt_top))]
  apply (source_power_integrable n ht).congr
  filter_upwards [phi_nonnegative_ae ht] with u hu
  simp [ENNReal.toReal_ofReal hu, smul_eq_mul]

/-- The pushforward preserves integrability of every exact power moment. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ThetaMomentMeasureAudit/Variant50c8a1f09208b7e0d9c3b56194e36bc21bbc17ba97e98459e2dd332b98bb5f2e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ThetaMomentMeasureAudit/Variant50c8a1f09208b7e0d9c3b56194e36bc21bbc17ba97e98459e2dd332b98bb5f2e.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ce99ede775e5c4726064fac107c1d878c51c659` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
