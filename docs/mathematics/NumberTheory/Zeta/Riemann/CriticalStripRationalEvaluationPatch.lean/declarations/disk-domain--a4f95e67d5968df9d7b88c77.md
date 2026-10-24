# disk_domain

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:be4419bd-c0af-261d-6774-45fed06f63d8",
  "kind": "lemma",
  "lexical_name": "disk_domain",
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
  "slug": "disk-domain--a4f95e67d5968df9d7b88c77",
  "source": {
    "blob": "6ac747272516cb6b30f360a0d5fd837945e2a91f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 128,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripRationalEvaluationPatch.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a4f95e67d5968df9d7b88c77af378c92d06a1102097ce7597833c3a3a373fb19",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripRationalEvaluationPatch.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be4419bd-c0af-261d-6774-45fed06f63d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma disk_domain {W : Data} (hc : W.check=true) {z : ℂ} (hz : z ∈ W.disk.carrier) :
    (W.sigma : ℝ) ≤ z.re ∧ ‖z‖ ≤ (W.normBound : ℝ) := by
  obtain ⟨he,hx,hx1,hr,ha,has,hB,hleft,hnorm,hm,hsq,hgap⟩ := W.check_iff.mp hc
  have hd := (W.mem_disk_iff z).mp hz
  have hre := (Complex.abs_re_le_norm (z-W.point.value)).trans hd
  simp only [Complex.sub_re,Gaussian.value] at hre
  have hl : (W.sigma : ℝ) ≤ (W.point.re : ℝ)-(W.radius : ℝ) := by exact_mod_cast hleft
  have hn : (W.point.l1 : ℝ)+(W.radius : ℝ) ≤ (W.normBound : ℝ) := by exact_mod_cast hnorm
  constructor
  · linarith [(abs_le.mp hre).1]
  · calc
      ‖z‖ = ‖(z-W.point.value)+W.point.value‖ := by rw [sub_add_cancel]
      _ ≤ ‖z-W.point.value‖+‖W.point.value‖ := norm_add_le _ _
      _ ≤ (W.radius : ℝ)+(W.point.l1 : ℝ) := add_le_add hd (Gaussian.norm_value_le_l1 _)
      _ ≤ (W.normBound : ℝ) := by linarith

/-- This is an actual Mellin derivative bound, not differentiation of sample error. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripRationalEvaluationPatch.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripRationalEvaluationPatch.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ac747272516cb6b30f360a0d5fd837945e2a91f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
