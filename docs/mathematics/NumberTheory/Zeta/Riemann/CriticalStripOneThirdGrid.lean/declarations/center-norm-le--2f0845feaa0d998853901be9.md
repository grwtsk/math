# center_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9b50ee22-81be-f317-3bc9-f7f9f5e013ff",
  "kind": "lemma",
  "lexical_name": "center_norm_le",
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
  "slug": "center-norm-le--2f0845feaa0d998853901be9",
  "source": {
    "blob": "5bfda65dc0a88e25786cb6a388e3dbcb7d04e169",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 115,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripOneThirdGrid.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f0845feaa0d998853901be9bfa11127ac3e0723d1863c3f50ffada9b9509a03",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripOneThirdGrid.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b50ee22-81be-f317-3bc9-f7f9f5e013ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma center_norm_le (k : Fin 393216) : ‖(disks k).center‖ ≤ (17 / 16 : ℝ) := by
  have hc := center_mem_seed k
  have hre0 : 0 ≤ (disks k).center.re := by linarith [hc.1]
  have hre2 : (disks k).center.re ^ 2 ≤ (1 : ℝ) := by
    have hprod := mul_le_mul hc.2.1 hc.2.1 hre0 (by norm_num : (0 : ℝ) ≤ 1)
    nlinarith
  have him2 : (disks k).center.im ^ 2 ≤ (1 / 9 : ℝ) := by
    have hprod := mul_le_mul hc.2.2 hc.2.2 (abs_nonneg _)
      (by norm_num : (0 : ℝ) ≤ 1 / 3)
    nlinarith [sq_abs (disks k).center.im]
  have hsq : ‖(disks k).center‖ ^ 2 ≤ (10 / 9 : ℝ) := by
    rw [Complex.sq_norm, Complex.normSq_apply]
    nlinarith
  apply (sq_le_sq₀ (norm_nonneg _) (by norm_num : (0 : ℝ) ≤ 17 / 16)).mp
  exact hsq.trans (by norm_num)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripOneThirdGrid.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripOneThirdGrid.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5bfda65dc0a88e25786cb6a388e3dbcb7d04e169` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
