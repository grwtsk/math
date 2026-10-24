# primeThetaQuadraticKernelCriterion_to_recurrence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:78b6ac1e-96d7-b5bd-0353-5c693e8007e9",
  "kind": "theorem",
  "lexical_name": "primeThetaQuadraticKernelCriterion_to_recurrence",
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
  "slug": "primethetaquadratickernelcriterion-to-recurrence--0afb4e0a5630d3f9320db8b9",
  "source": {
    "blob": "ad7d7b67d02eea6513a45adf610333123db10ed0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 191,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/PrimeThetaQuadraticKernelCriterion.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0afb4e0a5630d3f9320db8b9099ff5ce79d853ca0b83f27a9c875c6ecb426d25",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/PrimeThetaQuadraticKernelCriterion.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:78b6ac1e-96d7-b5bd-0353-5c693e8007e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primeThetaQuadraticKernelCriterion_to_recurrence
    {ρ : ℝ}
    (hcriterion : PrimeThetaQuadraticKernelCriterionAt ρ) :
    QuadraticThetaSourceRecurrenceAt ρ := by
  intro η hη
  obtain ⟨K, hK, R, hR, j₀, hstages⟩ :=
    hcriterion η hη
  refine ⟨K, hK, R, hR, j₀, ?_⟩
  intro j hj A hA henvelope v hv
  obtain ⟨stage, hmass, hresidual, hsource⟩ :=
    hstages j hj
  have hresponse :
      |stage.response v| ≤ K * A^2 := by
    exact
      (stage.abs_response_le_kernelMass_mul_sq
        hA henvelope v).trans
        (mul_le_mul_of_nonneg_right
          (hmass v hv) (sq_nonneg A))
  have hX : (0 : ℝ) < (dyadicScale j : ℝ) := by
    exact_mod_cast (show 0 < dyadicScale j by unfold dyadicScale; positivity)
  have hquadratic :
      |stage.response v| / (dyadicScale j : ℝ) ≤
        K * A^2 / (dyadicScale j : ℝ) :=
    div_le_div_of_nonneg_right hresponse hX.le
  exact
    (hsource v hv).trans
      (add_le_add hquadratic (hresidual v hv))

/-- The kernel criterion immediately supplies the previously typed threshold
descent whenever the target exponent remains in the admitted range. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/PrimeThetaQuadraticKernelCriterion.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/PrimeThetaQuadraticKernelCriterion.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad7d7b67d02eea6513a45adf610333123db10ed0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
