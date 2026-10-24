# higher_two_cube_touching_fixture

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:73d44b33-220c-b8b9-c00f-ac5c535f0ab5",
  "kind": "theorem",
  "lexical_name": "higher_two_cube_touching_fixture",
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
  "slug": "higher-two-cube-touching-fixture--df46f943aa08b5d3751c34a8",
  "source": {
    "blob": "8b548660ab70d7f3c6251db4a8e35a265eaefa88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 354,
    "line": 317,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StorageV3Input/Variantd81c87f88841b3c5d90bad0dc6ff209bf22edecd4ecd06abe6eba4ef12713e8a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df46f943aa08b5d3751c34a88b66560b159d19f53419568ec5a781ee4395e012",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StorageV3Input/Variantd81c87f88841b3c5d90bad0dc6ff209bf22edecd4ecd06abe6eba4ef12713e8a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:73d44b33-220c-b8b9-c00f-ac5c535f0ab5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 317–354.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem higher_two_cube_touching_fixture :
    let i : HigherPrimePowerIndex := (⟨2, Nat.prime_two⟩, 0)
    let A : ℝ := Real.log 8 / 2
    i ∈ higherAtomInventory A ∧
      higherAtomWeight i * (⟪originalSourceState A,
        translation (higherAtomShift i) (originalSourceState A)⟫_ℂ).re = 0 ∧
      higherAtomWeight i * translationStorage (higherAtomShift i) (originalSourceState A) =
        higherAtomWeight i ∧ 0 < higherAtomWeight i := by
  dsimp only
  let i : HigherPrimePowerIndex := (⟨2, Nat.prime_two⟩, 0)
  let A : ℝ := Real.log 8 / 2
  have hlog : 0 < Real.log 8 := Real.log_pos (by norm_num)
  have hA : 0 < A := by dsimp [A]; linarith
  have hn : higherAtomNatural i = 8 := by norm_num [i, higherAtomNatural, higherAtomExponent]
  have hshift : higherAtomShift i = 2 * A := by
    rw [higherAtomShift_eq_log, hn]
    dsimp [A]
    ring
  have hi : i ∈ higherAtomInventory A := by
    rw [mem_higherAtomInventory_iff, hn]
    have he : Real.exp (2 * A) = (8 : ℝ) := by
      dsimp [A]
      rw [show 2 * (Real.log 8 / 2) = Real.log 8 by ring, Real.exp_log (by norm_num)]
    rw [he]
    norm_num
  have hs : translationStorage (higherAtomShift i) (originalSourceState A) = 1 := by
    rw [hshift]
    exact sourceSquareStorage_at_boundary hA
  have he := translationStorage_eq (higherAtomShift i) (originalSourceState A)
  rw [hs, originalSourceState_norm hA] at he
  have hc : (⟪originalSourceState A,
      translation (higherAtomShift i) (originalSourceState A)⟫_ℂ).re = 0 := by
    norm_num at he
    linarith
  exact ⟨hi, by rw [hc, mul_zero], by rw [hs, mul_one], higherAtomWeight_pos i⟩

/-- An actually omitted prime-cube atom still has nonzero square storage.
Dropping it without its matching baseline correction changes the signed readout. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StorageV3Input/Variantd81c87f88841b3c5d90bad0dc6ff209bf22edecd4ecd06abe6eba4ef12713e8a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StorageV3Input/Variantd81c87f88841b3c5d90bad0dc6ff209bf22edecd4ecd06abe6eba4ef12713e8a.lean#L317).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b548660ab70d7f3c6251db4a8e35a265eaefa88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
