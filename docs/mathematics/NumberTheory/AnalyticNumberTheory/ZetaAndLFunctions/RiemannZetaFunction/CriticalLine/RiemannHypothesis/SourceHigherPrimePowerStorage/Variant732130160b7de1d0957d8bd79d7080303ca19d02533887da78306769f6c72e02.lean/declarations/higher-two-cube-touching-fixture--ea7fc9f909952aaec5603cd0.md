# higher_two_cube_touching_fixture

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "da884a0a6777106064e259188e484450c8593e92",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 309,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/73/732130160b7de1d0957d8bd79d7080303ca19d02533887da78306769f6c72e02.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d5099f97-08d3-9b85-28ab-ee4ecf48ee55",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5e983774-d901-96ca-2671-d86c2ccad73b",
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
  "slug": "higher-two-cube-touching-fixture--ea7fc9f909952aaec5603cd0",
  "source": {
    "blob": "da884a0a6777106064e259188e484450c8593e92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 346,
    "line": 309,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHigherPrimePowerStorage/Variant732130160b7de1d0957d8bd79d7080303ca19d02533887da78306769f6c72e02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea7fc9f909952aaec5603cd021f98613fc1ae5db0926ca8e33e93c0640e811b5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHigherPrimePowerStorage/Variant732130160b7de1d0957d8bd79d7080303ca19d02533887da78306769f6c72e02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5e983774-d901-96ca-2671-d86c2ccad73b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 309–346.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHigherPrimePowerStorage/Variant732130160b7de1d0957d8bd79d7080303ca19d02533887da78306769f6c72e02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHigherPrimePowerStorage/Variant732130160b7de1d0957d8bd79d7080303ca19d02533887da78306769f6c72e02.lean#L309).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da884a0a6777106064e259188e484450c8593e92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
