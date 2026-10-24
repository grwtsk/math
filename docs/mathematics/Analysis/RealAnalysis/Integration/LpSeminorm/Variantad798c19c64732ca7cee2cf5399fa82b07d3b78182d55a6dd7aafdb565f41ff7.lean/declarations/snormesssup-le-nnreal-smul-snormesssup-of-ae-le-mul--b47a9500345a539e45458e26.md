# snormEssSup_le_nnreal_smul_snormEssSup_of_ae_le_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:917501c8-7fc1-5110-50ba-60f9485de365",
  "kind": "theorem",
  "lexical_name": "snormEssSup_le_nnreal_smul_snormEssSup_of_ae_le_mul",
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
  "slug": "snormesssup-le-nnreal-smul-snormesssup-of-ae-le-mul--b47a9500345a539e45458e26",
  "source": {
    "blob": "a628aac6b054467a684f1afb2f7cb9d4406c69d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1294,
    "line": 1286,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LpSeminorm/Variantad798c19c64732ca7cee2cf5399fa82b07d3b78182d55a6dd7aafdb565f41ff7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b47a9500345a539e45458e26f0bf33d0458e42b8978dd3c1eddc6fe4e953562b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LpSeminorm/Variantad798c19c64732ca7cee2cf5399fa82b07d3b78182d55a6dd7aafdb565f41ff7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:917501c8-7fc1-5110-50ba-60f9485de365`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1286–1294.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem snormEssSup_le_nnreal_smul_snormEssSup_of_ae_le_mul {f : α → F} {g : α → G} {c : ℝ≥0}
    (h : ∀ᵐ x ∂μ, ‖f x‖₊ ≤ c * ‖g x‖₊) : snormEssSup f μ ≤ c • snormEssSup g μ :=
  calc
    essSup (fun x => (‖f x‖₊ : ℝ≥0∞)) μ ≤ essSup (fun x => (↑(c * ‖g x‖₊) : ℝ≥0∞)) μ :=
      essSup_mono_ae <| h.mono fun x hx => ENNReal.coe_le_coe.mpr hx
    _ = essSup (fun x => (c * ‖g x‖₊ : ℝ≥0∞)) μ := by simp_rw [ENNReal.coe_mul]
    _ = c • essSup (fun x => (‖g x‖₊ : ℝ≥0∞)) μ := ENNReal.essSup_const_mul
#align measure_theory.snorm_ess_sup_le_nnreal_smul_snorm_ess_sup_of_ae_le_mul MeasureTheory.snormEssSup_le_nnreal_smul_snormEssSup_of_ae_le_mul

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LpSeminorm/Variantad798c19c64732ca7cee2cf5399fa82b07d3b78182d55a6dd7aafdb565f41ff7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LpSeminorm/Variantad798c19c64732ca7cee2cf5399fa82b07d3b78182d55a6dd7aafdb565f41ff7.lean#L1286).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a628aac6b054467a684f1afb2f7cb9d4406c69d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
