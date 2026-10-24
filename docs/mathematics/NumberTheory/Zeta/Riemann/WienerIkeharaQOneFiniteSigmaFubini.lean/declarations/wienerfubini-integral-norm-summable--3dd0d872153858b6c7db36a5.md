# wienerFubini_integral_norm_summable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d258081c-ab4f-6f47-ac65-32eef7ff4745",
  "kind": "theorem",
  "lexical_name": "wienerFubini_integral_norm_summable",
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
  "slug": "wienerfubini-integral-norm-summable--3dd0d872153858b6c7db36a5",
  "source": {
    "blob": "9f4327711f96a9694c056af8cf7b244296e8acf2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 137,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaQOneFiniteSigmaFubini.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3dd0d872153858b6c7db36a5f72eb01f3069d28c64edae5cab8321af6bc08fe4",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/WienerIkeharaQOneFiniteSigmaFubini.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d258081c-ab4f-6f47-ac65-32eef7ff4745`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wienerFubini_integral_norm_summable
    (f : ℕ → ℂ) (sigma T : ℝ)
    (psi : ℝ → ℂ)
    (hpsiInt : Integrable psi)
    (hL : LSeriesSummable f (sigma : ℂ)) :
    Summable
      (fun n : ℕ =>
        ∫ t : ℝ,
          ‖wienerFubiniIntegrand f sigma T psi n t‖) := by
  have heq (n : ℕ) :
      (∫ t : ℝ,
          ‖wienerFubiniIntegrand f sigma T psi n t‖) =
        ‖LSeries.term f (sigma : ℂ) n‖ *
          (∫ t : ℝ, ‖psi t‖) := by
    simp_rw [wienerFubiniIntegrand_norm]
    rw [integral_const_mul]
  have hpsiNorm : Integrable (fun t : ℝ => ‖psi t‖) := hpsiInt.norm
  simp_rw [heq]
  exact Summable.mul_right _ hL.norm

/-- Actual Lebesgue tsum-integral exchange, justified by term
integrability AND a summable sequence of integrated norms. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/WienerIkeharaQOneFiniteSigmaFubini.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaQOneFiniteSigmaFubini.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f4327711f96a9694c056af8cf7b244296e8acf2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
