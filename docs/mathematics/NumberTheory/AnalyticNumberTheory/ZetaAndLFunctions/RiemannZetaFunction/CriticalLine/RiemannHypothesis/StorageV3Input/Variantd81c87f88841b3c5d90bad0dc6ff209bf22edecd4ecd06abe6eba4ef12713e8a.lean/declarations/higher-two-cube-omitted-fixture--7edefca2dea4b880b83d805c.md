# higher_two_cube_omitted_fixture

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5b6ab7b1-a357-39ec-4717-290ea8759503",
  "kind": "theorem",
  "lexical_name": "higher_two_cube_omitted_fixture",
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
  "slug": "higher-two-cube-omitted-fixture--7edefca2dea4b880b83d805c",
  "source": {
    "blob": "8b548660ab70d7f3c6251db4a8e35a265eaefa88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 380,
    "line": 355,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StorageV3Input/Variantd81c87f88841b3c5d90bad0dc6ff209bf22edecd4ecd06abe6eba4ef12713e8a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7edefca2dea4b880b83d805cca75ed53f0ed68b3f32a7b97d5934df0b4f7615b",
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

Occurrence: `result:5b6ab7b1-a357-39ec-4717-290ea8759503`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 355–380.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem higher_two_cube_omitted_fixture :
    let i : HigherPrimePowerIndex := (⟨2, Nat.prime_two⟩, 0)
    let A : ℝ := Real.log 8 / 4
    i ∉ higherAtomInventory A ∧
      higherAtomWeight i * translationStorage (higherAtomShift i) (originalSourceState A) =
        higherAtomWeight i ∧ 0 < higherAtomWeight i := by
  dsimp only
  let i : HigherPrimePowerIndex := (⟨2, Nat.prime_two⟩, 0)
  let A : ℝ := Real.log 8 / 4
  have hlog : 0 < Real.log 8 := Real.log_pos (by norm_num)
  have hA : 0 < A := by dsimp [A]; linarith
  have hn : higherAtomNatural i = 8 := by norm_num [i, higherAtomNatural, higherAtomExponent]
  have he : Real.exp (2 * A) < (8 : ℝ) := by
    apply (Real.exp_lt_iff_lt_log (by norm_num : (0 : ℝ) < 8)).2
    dsimp [A]
    linarith
  have hi : i ∉ higherAtomInventory A := by
    intro hi
    have hb := (mem_higherAtomInventory_iff A i).1 hi
    rw [hn] at hb
    have hl := (Nat.le_floor_iff (Real.exp_pos (2 * A)).le).1 hb
    norm_num at hl
    linarith
  exact ⟨hi, higher_storage_atom_outside hA hi, higherAtomWeight_pos i⟩

end FormalResearch.RiemannHypothesis.SourceHigherPrimePowerStorage
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StorageV3Input/Variantd81c87f88841b3c5d90bad0dc6ff209bf22edecd4ecd06abe6eba4ef12713e8a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StorageV3Input/Variantd81c87f88841b3c5d90bad0dc6ff209bf22edecd4ecd06abe6eba4ef12713e8a.lean#L355).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b548660ab70d7f3c6251db4a8e35a265eaefa88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
