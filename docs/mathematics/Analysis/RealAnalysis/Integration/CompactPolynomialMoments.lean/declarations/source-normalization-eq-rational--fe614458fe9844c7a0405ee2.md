# source_normalization_eq_rational

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:70dd540e-5833-33c5-ed68-901bca3138fb",
  "kind": "theorem",
  "lexical_name": "source_normalization_eq_rational",
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
  "slug": "source-normalization-eq-rational--fe614458fe9844c7a0405ee2",
  "source": {
    "blob": "e4605d9acb3c48b032ad7d0b444edab2dff01b4f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 90,
    "path": "GRWTSK/Analysis/Integration/CompactPolynomialMoments.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe614458fe9844c7a0405ee28b44d7168adf258f247ed1f8f53bdbffd753a7a2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CompactPolynomialMoments.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:70dd540e-5833-33c5-ed68-901bca3138fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_normalization_eq_rational {A : ℝ} (hA : 0 < A) :
    sourceNormalization A =
      GRWTSK.RiemannHypothesis.SourcePairing.sourceNormalization A := by
  rw [source_normalization_eq_interval hA]
  have formula : (fun x : ℝ ↦ residualPolynomial A x ^ 2) =
      fun x ↦ A⁻¹ *
        (bumpSecondPolynomial (x / A) * (A ^ 2)⁻¹ - bumpPolynomial (x / A) / 4) ^ 2 := by
    funext x
    unfold residualPolynomial bumpSecondPolynomial bumpPolynomial
    rw [mul_pow, source_amplitude_square hA]
    congr 1
    ring
  rw [formula, intervalIntegral.integral_const_mul,
    intervalIntegral.integral_comp_div
      (fun x ↦ (bumpSecondPolynomial x * (A ^ 2)⁻¹ - bumpPolynomial x / 4) ^ 2) hA.ne']
  simp only [neg_div, div_self hA.ne', smul_eq_mul]
  rw [unscaled_square_integral]
  unfold GRWTSK.RiemannHypothesis.SourcePairing.sourceNormalization
  field_simp
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/RealAnalysis/Integration/CompactPolynomialMoments.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Integration/CompactPolynomialMoments.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4605d9acb3c48b032ad7d0b444edab2dff01b4f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
