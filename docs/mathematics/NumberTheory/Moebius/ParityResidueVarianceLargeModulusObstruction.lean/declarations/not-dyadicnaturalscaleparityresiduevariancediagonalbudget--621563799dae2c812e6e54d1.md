# not_dyadicNaturalScaleParityResidueVarianceDiagonalBudget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b082c374-dd3c-bbc4-8d3c-616bf8559ccb",
  "kind": "theorem",
  "lexical_name": "not_dyadicNaturalScaleParityResidueVarianceDiagonalBudget",
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
  "slug": "not-dyadicnaturalscaleparityresiduevariancediagonalbudget--621563799dae2c812e6e54d1",
  "source": {
    "blob": "1d1ec38cf19de026fec5a6303c686037851a750f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 509,
    "line": 483,
    "path": "GRWTSK/NumberTheory/Moebius/ParityResidueVarianceLargeModulusObstruction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:621563799dae2c812e6e54d159df30f26046d84d54b5a33236f7634cda59a2de",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/ParityResidueVarianceLargeModulusObstruction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b082c374-dd3c-bbc4-8d3c-616bf8559ccb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 483–509.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_dyadicNaturalScaleParityResidueVarianceDiagonalBudget
    (hDensity : EventuallyQuarterThreeQuarterSquarefreeMass)
    (hGrowth : DyadicQuarterPowerOutgrowth) :
    ¬ DyadicNaturalScaleParityResidueVarianceDiagonalBudget := by
  intro hBudget
  obtain ⟨C, hC, hscale⟩ :=
    hBudget (1 / 4 : ℝ) (by norm_num)
  obtain ⟨B, hB⟩ := hDensity
  obtain ⟨j, m, hmX, hm20, hmB, hout⟩ :=
    hGrowth C hC B
  have hbmem :
      m * m ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)) := by
    apply Finset.mem_Ico.mpr
    rw [hmX]
    constructor
    · exact le_rfl
    · rw [pow_succ]
      have hp := pow_pos (by omega : (0 : ℕ) < 2) j
      omega
  have hupper := hscale j (m * m) hbmem
  have hlower :=
    parityResidueVarianceDiagonalEndpointMajorant_ge_cubic
      hm20 (hB (m * m) hmB)
  rw [← hmX] at hupper hout
  exact (not_lt_of_ge (hlower.trans hupper)) hout

/-- Named conditional scope disposition. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/ParityResidueVarianceLargeModulusObstruction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/ParityResidueVarianceLargeModulusObstruction.lean#L483).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d1ec38cf19de026fec5a6303c686037851a750f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
