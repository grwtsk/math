# fullFrequencyL2Majorant_eq_d_mul_residueL2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0ca81650-9ae1-2101-2e1d-93433726d120",
  "kind": "theorem",
  "lexical_name": "fullFrequencyL2Majorant_eq_d_mul_residueL2",
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
  "slug": "fullfrequencyl2majorant-eq-d-mul-residuel2--5935a4df56bb445f618e090a",
  "source": {
    "blob": "9a83f71e76bcfa1d31635f3a046e15211f8cd8b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 78,
    "path": "GRWTSK/NumberTheory/Moebius/RegularOrbitSignedResidueEnergy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5935a4df56bb445f618e090a35466de79a22d179b30fa533282336eca4c79c38",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/RegularOrbitSignedResidueEnergy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ca81650-9ae1-2101-2e1d-93433726d120`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fullFrequencyL2Majorant_eq_d_mul_residueL2
    (b d : ℕ) [NeZero d] :
    twoNonunitRegularShiftParityFullFrequencyL2Majorant b d =
      (d : ℝ) *
        twoNonunitRegularShiftParityResidueL2Majorant b d := by
  unfold twoNonunitRegularShiftParityFullFrequencyL2Majorant
    twoNonunitRegularShiftParityResidueL2Majorant
  rw [evenHalfShiftFullFrequencyEnergy_eq_residue b d 0,
      oddHalfShiftFullFrequencyEnergy_eq_residue b d 0,
      evenHalfShiftFullFrequencyEnergy_eq_residue b d 1,
      oddHalfShiftFullFrequencyEnergy_eq_residue b d 1]
  rw [sqrt_squareModulus_mul_energy d _ (by
        unfold parityEvenHalfShiftSignedResidueEnergy
        positivity),
      sqrt_squareModulus_mul_energy d _ (by
        unfold parityOddHalfShiftSignedResidueEnergy
        positivity),
      sqrt_squareModulus_mul_energy d _ (by
        unfold parityEvenHalfShiftSignedResidueEnergy
        positivity),
      sqrt_squareModulus_mul_energy d _ (by
        unfold parityOddHalfShiftSignedResidueEnergy
        positivity)]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/RegularOrbitSignedResidueEnergy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/RegularOrbitSignedResidueEnergy.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a83f71e76bcfa1d31635f3a046e15211f8cd8b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
