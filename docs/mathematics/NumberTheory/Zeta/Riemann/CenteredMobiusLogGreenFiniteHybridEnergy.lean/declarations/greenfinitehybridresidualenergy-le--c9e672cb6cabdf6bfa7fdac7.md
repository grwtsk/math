# greenFiniteHybridResidualEnergy_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c81ad4ee-3ce1-054b-2109-e87101f8d6b4",
  "kind": "theorem",
  "lexical_name": "greenFiniteHybridResidualEnergy_le",
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
  "slug": "greenfinitehybridresidualenergy-le--c9e672cb6cabdf6bfa7fdac7",
  "source": {
    "blob": "88fe39dae35906e9967a32ca5610d64695524387",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 97,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFiniteHybridEnergy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c9e672cb6cabdf6bfa7fdac7b4d938bd13498310e1f627c2d1b1c74c8bee17d9",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFiniteHybridEnergy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c81ad4ee-3ce1-054b-2109-e87101f8d6b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem greenFiniteHybridResidualEnergy_le
    {X Q : ℕ} (hX : 2 ≤ X) :
    ∃ C2 C4 : ℝ, 0 ≤ C2 ∧ 0 ≤ C4 ∧
      greenFiniteHybridResidualEnergy X Q ≤
        (1 + 1 / Real.pi)^2 / (X : ℝ) +
        (15 / (16 * Real.pi^2)) * C2 * C2 / (X : ℝ)^2 +
        ((Real.log 2)^2 / Real.pi^2) * C2 / (X : ℝ)^2 +
        (243 / (16 * Real.pi^4)) * C4 * C4 / (X : ℝ)^4 +
        (15 / (16 * Real.pi^2)) * C2 * C2 / (X : ℝ)^4 +
        (9 / (4 * Real.pi^4)) * C4 / (X : ℝ)^4 := by
  obtain ⟨C2, C4, hC2, hC4, h2, h4⟩ :=
    exists_reciprocalSquareFourthPartialSumBounds
  refine ⟨C2, C4, hC2, hC4, ?_⟩
  unfold greenFiniteHybridResidualEnergy
  have hlow := greenLowPrincipalResidualEnergy_le (by omega : 1 ≤ X)
  have hhighComp := greenHighNonaliasResidualEnergy_le_components hX
  have hB := greenHighQuotientResidueMajorant_le (by omega : 1 ≤ X)
  obtain ⟨C4', hC4', hA⟩ := greenHighA2Majorant_le
    (Q := Q) (by omega : 1 ≤ X)
  obtain ⟨C2', hC2', hC⟩ := greenHighC2Majorant_le
    (Q := Q) (by omega : 1 ≤ X)
  obtain ⟨D2, D4, hD2, hD4, halias⟩ :=
    greenAliasResidualEnergy_le (Q := Q) (by omega : 1 ≤ X)
  -- All existential p-series constants arise canonically from the same tsums;
  -- the next replay should normalize C2'/C4'/D2/D4 to C2/C4.
  dsimp at hA hC halias
  nlinarith

end GRWTSK.RiemannHypothesis
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFiniteHybridEnergy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFiniteHybridEnergy.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88fe39dae35906e9967a32ca5610d64695524387` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
