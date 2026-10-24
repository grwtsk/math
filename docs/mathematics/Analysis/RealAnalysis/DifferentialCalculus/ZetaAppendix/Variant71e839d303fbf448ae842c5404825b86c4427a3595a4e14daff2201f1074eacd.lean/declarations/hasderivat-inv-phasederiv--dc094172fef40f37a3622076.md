# hasDerivAt_inv_phaseDeriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ab29cec1-9ee4-f45e-a358-61bccd89b25d",
  "kind": "lemma",
  "lexical_name": "hasDerivAt_inv_phaseDeriv",
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
  "slug": "hasderivat-inv-phasederiv--dc094172fef40f37a3622076",
  "source": {
    "blob": "31f0e965c048f04d42843bf51db7ae3d45f32361",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 175,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variant71e839d303fbf448ae842c5404825b86c4427a3595a4e14daff2201f1074eacd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc094172fef40f37a3622076fec494ef9d137e4a331b7f1d2edb1e4ef9604447",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variant71e839d303fbf448ae842c5404825b86c4427a3595a4e14daff2201f1074eacd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab29cec1-9ee4-f45e-a358-61bccd89b25d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma hasDerivAt_inv_phaseDeriv (φ : ℝ → ℝ) (t : ℝ)
    (hdiff2 : DifferentiableAt ℝ (deriv φ) t) (hne : deriv φ t ≠ 0) :
    HasDerivAt (fun x ↦ (1 : ℂ) / (2 * π * I * ↑(deriv φ x)))
      (-↑(deriv (deriv φ) t) / (2 * π * I * ↑(deriv φ t) ^ 2)) t := by
  have hne' : (↑(deriv φ t) : ℂ) ≠ 0 := ofReal_ne_zero.mpr hne
  have hderiv_phi : HasDerivAt (fun x ↦ (↑(deriv φ x) : ℂ)) (↑(deriv (deriv φ) t)) t :=
    hdiff2.hasDerivAt.ofReal_comp
  have h_2piI_phi' : HasDerivAt (fun x ↦ 2 * π * I * ↑(deriv φ x))
      (2 * π * I * ↑(deriv (deriv φ) t)) t := hderiv_phi.const_mul (2 * π * I)
  have hinv : HasDerivAt (fun x ↦ (2 * π * I * ↑(deriv φ x))⁻¹)
      (-(2 * π * I * ↑(deriv (deriv φ) t)) / (2 * π * I * ↑(deriv φ t)) ^ 2) t := by
    have h2piI_phi'_ne : 2 * π * I * ↑(deriv φ t) ≠ 0 :=
      mul_ne_zero h2piI_ne_zero hne'
    have hinv_at : HasDerivAt (Inv.inv : ℂ → ℂ)
        (-((2 * π * I * ↑(deriv φ t)) ^ 2)⁻¹) (2 * π * I * ↑(deriv φ t)) :=
      hasDerivAt_inv h2piI_phi'_ne
    have hcomp := hinv_at.comp t h_2piI_phi'
    convert hcomp using 1
    field_simp
  convert hinv using 1
  · funext x; simp [div_eq_mul_inv]
  · field_simp [hne']

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variant71e839d303fbf448ae842c5404825b86c4427a3595a4e14daff2201f1074eacd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variant71e839d303fbf448ae842c5404825b86c4427a3595a4e14daff2201f1074eacd.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31f0e965c048f04d42843bf51db7ae3d45f32361` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
