# pinnedPrimeWeightPsiSourceRule_signedResidual_threeQuarters

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:57271e6c-b71d-c25d-f996-5b4bf0aa13fd",
  "kind": "theorem",
  "lexical_name": "pinnedPrimeWeightPsiSourceRule_signedResidual_threeQuarters",
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
  "slug": "pinnedprimeweightpsisourcerule-signedresidual-threequarters--c24174b340f87b4d863d9906",
  "source": {
    "blob": "af64c7e1f8ffecceda8ec392a3027fdff8e943c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 352,
    "line": 336,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightPsiSourceRule.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c24174b340f87b4d863d9906451b407a5fbde3e12002c5f99529913b1ebda015",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/PinnedPrimeWeightPsiSourceRule.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:57271e6c-b71d-c25d-f996-5b4bf0aa13fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 336–352.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pinnedPrimeWeightPsiSourceRule_signedResidual_threeQuarters
    {η : ℝ} (hη : 0 < η) :
    ∃ R : ℝ, 0 ≤ R ∧
      ∀ j : ℕ, ∀ v ∈ pinnedPrimeWeightNextOctave j,
        |pinnedPrimeWeightPsiSourceRule.signedResidual j v| + 1 ≤
          R * Real.rpow (dyadicScale j : ℝ)
            ((1 : ℝ) / 2 + η / 2) := by
  obtain ⟨R, hR, hbound⟩ :=
    pinnedPrimeWeightPsiSourceRule_signedResidual_stageEnvelope
      (ρ := (3 : ℝ) / 4) (η := η) (by norm_num) hη
  refine ⟨R, hR, ?_⟩
  intro j v hv
  simpa [pinnedPrimeWeightStageErrorEnvelope] using
    hbound j v hv

/-- The exact remaining psi-response capacity, together with the unconditional
higher-prime-power residual bound, supplies the fixed signed-source criterion. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/PinnedPrimeWeightPsiSourceRule.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightPsiSourceRule.lean#L336).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af64c7e1f8ffecceda8ec392a3027fdff8e943c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
