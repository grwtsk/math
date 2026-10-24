# thetaError_eq_integerPsiResponse_div_add_signedResidual

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8742d897-1ea0-ffa0-fa81-99a086d6005a",
  "kind": "theorem",
  "lexical_name": "thetaError_eq_integerPsiResponse_div_add_signedResidual",
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
  "slug": "thetaerror-eq-integerpsiresponse-div-add-signedresidual--0af8ed02331fd7e33cf62703",
  "source": {
    "blob": "8b38b9d6436983921e3687a4d154a8b90c700bec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 66,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightIntegerizedPsiSourceRule.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0af8ed02331fd7e33cf62703e4dd62ae9fb5a7c59473e753a49447f0a86f06fe",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/PinnedPrimeWeightIntegerizedPsiSourceRule.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8742d897-1ea0-ffa0-fa81-99a086d6005a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaError_eq_integerPsiResponse_div_add_signedResidual
    (j : ℕ) (v : ℝ) :
    thetaError v =
      pinnedPrimeWeightIntegerPsiResponse j v / (dyadicScale j : ℝ) +
        pinnedPrimeWeightIntegerPsiSignedResidual j v := by
  have hX : (dyadicScale j : ℝ) ≠ 0 := by
    exact_mod_cast Nat.ne_of_gt (GRWTSK.NumberTheory.VonMangoldt.DyadicMellinConvergence.dyadicScale_pos j)
  have hpsi := psi_eq_psi_gridIndex v
  unfold pinnedPrimeWeightIntegerPsiResponse
    pinnedPrimeWeightIntegerPsiSignedResidual thetaError psiError
  rw [hpsi]
  field_simp [hX]
  ring

/-- Immutable signed rule with the unit-cell sawtooth in the residual. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/PinnedPrimeWeightIntegerizedPsiSourceRule.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightIntegerizedPsiSourceRule.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b38b9d6436983921e3687a4d154a8b90c700bec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
