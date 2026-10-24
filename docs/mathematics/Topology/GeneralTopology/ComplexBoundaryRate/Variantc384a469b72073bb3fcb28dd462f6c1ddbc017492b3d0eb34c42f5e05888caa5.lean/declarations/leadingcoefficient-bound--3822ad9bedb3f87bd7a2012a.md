# leadingCoefficient_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e7d15c86-b75e-996e-34cb-8d1d9bc0d1fe",
  "kind": "theorem",
  "lexical_name": "leadingCoefficient_bound",
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
  "slug": "leadingcoefficient-bound--3822ad9bedb3f87bd7a2012a",
  "source": {
    "blob": "0e7681b2a0d26b51028dfdd514925a6a039bdd8f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 351,
    "line": 336,
    "path": "GRWTSK/Topology/GeneralTopology/ComplexBoundaryRate/Variantc384a469b72073bb3fcb28dd462f6c1ddbc017492b3d0eb34c42f5e05888caa5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3822ad9bedb3f87bd7a2012a53184f9f9127bfff69580b466b4172409fb9913f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ComplexBoundaryRate/Variantc384a469b72073bb3fcb28dd462f6c1ddbc017492b3d0eb34c42f5e05888caa5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e7d15c86-b75e-996e-34cb-8d1d9bc0d1fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 336–351.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem leadingCoefficient_bound {delta M : ℝ} (hdelta : 0 < delta)
    {z : ℂ} (hz : delta ≤ z.re) (hM : ‖z‖ ≤ M) :
    ‖leadingCoefficient z‖ ≤ coefficientBound delta M := by
  have hzN : delta ≤ ‖z‖ := hz.trans (Complex.re_le_norm z)
  have hs : 0 < Real.sqrt (4096/109395 : ℝ) := Real.sqrt_pos.mpr (by norm_num)
  have hnum : ‖z^2-(1/4 : ℂ)‖ ≤ M^2+1/4 := by
    calc
      _ ≤ ‖z^2‖+‖(1/4 : ℂ)‖ := norm_sub_le _ _
      _ = ‖z‖^2+1/4 := by norm_num [norm_pow]
      _ ≤ _ := by gcongr
  unfold leadingCoefficient coefficientBound
  rw [norm_div,norm_mul,norm_mul,norm_pow,Complex.norm_real,
    Real.norm_eq_abs,abs_of_pos hs]
  norm_num
  gcongr

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ComplexBoundaryRate/Variantc384a469b72073bb3fcb28dd462f6c1ddbc017492b3d0eb34c42f5e05888caa5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ComplexBoundaryRate/Variantc384a469b72073bb3fcb28dd462f6c1ddbc017492b3d0eb34c42f5e05888caa5.lean#L336).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e7681b2a0d26b51028dfdd514925a6a039bdd8f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
