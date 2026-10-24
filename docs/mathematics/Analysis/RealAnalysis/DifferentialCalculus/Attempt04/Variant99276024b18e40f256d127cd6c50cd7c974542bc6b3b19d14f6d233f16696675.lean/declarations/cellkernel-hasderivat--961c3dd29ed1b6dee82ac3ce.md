# cellKernel_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3e80ae9f-194e-870f-2861-a1a591649d65",
  "kind": "theorem",
  "lexical_name": "cellKernel_hasDerivAt",
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
  "slug": "cellkernel-hasderivat--961c3dd29ed1b6dee82ac3ce",
  "source": {
    "blob": "0a95a61731336c20a77673a50b63556ebf9ad04d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 46,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant99276024b18e40f256d127cd6c50cd7c974542bc6b3b19d14f6d233f16696675.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:961c3dd29ed1b6dee82ac3ce6d5ad14bd178510f215d43326becf1785ca88a53",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant99276024b18e40f256d127cd6c50cd7c974542bc6b3b19d14f6d233f16696675.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3e80ae9f-194e-870f-2861-a1a591649d65`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cellKernel_hasDerivAt (n : ℕ) (s : ℝ) {x : ℝ} (hx : 0 < x) :
    HasDerivAt (fun u : ℝ => cellKernel n u x) (cellDerivative n s x) s := by
  have h := ((((hasDerivAt_id s).add_const 1).mul_const (Real.log x)).exp).inv
    (Real.exp_pos ((s+1)*Real.log x)).ne'
  have hm := h.const_mul (x-n)
  have he : (fun u : ℝ => cellKernel n u x) =
      (fun u : ℝ => (x-n)*(Real.exp ((u+1)*Real.log x))⁻¹) := by
    funext u
    simp only [cellKernel,Real.rpow_def_of_pos hx,div_eq_mul_inv,mul_comm]
  rw [he]
  apply hm.congr_deriv
  simp only [cellDerivative,Real.rpow_def_of_pos hx,id_eq,one_mul]
  rw [mul_comm (Real.log x) (s+1)]
  field_simp [(Real.exp_pos ((s+1)*Real.log x)).ne']

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant99276024b18e40f256d127cd6c50cd7c974542bc6b3b19d14f6d233f16696675.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant99276024b18e40f256d127cd6c50cd7c974542bc6b3b19d14f6d233f16696675.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a95a61731336c20a77673a50b63556ebf9ad04d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
