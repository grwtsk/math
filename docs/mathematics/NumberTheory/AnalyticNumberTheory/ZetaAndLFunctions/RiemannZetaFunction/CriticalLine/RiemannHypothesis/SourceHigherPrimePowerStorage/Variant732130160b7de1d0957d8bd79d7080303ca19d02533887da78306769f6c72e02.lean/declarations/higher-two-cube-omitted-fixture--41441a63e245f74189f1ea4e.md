# higher_two_cube_omitted_fixture

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
      "line": 347,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/73/732130160b7de1d0957d8bd79d7080303ca19d02533887da78306769f6c72e02.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7114cee9-57a9-421c-3c08-35075ee2bd1b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ce6810da-50f1-f0bd-942f-b315e5e3cc8b",
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
  "slug": "higher-two-cube-omitted-fixture--41441a63e245f74189f1ea4e",
  "source": {
    "blob": "da884a0a6777106064e259188e484450c8593e92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 372,
    "line": 347,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHigherPrimePowerStorage/Variant732130160b7de1d0957d8bd79d7080303ca19d02533887da78306769f6c72e02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:41441a63e245f74189f1ea4e1b86e7fcb6702862a8d809af25ad52ec567da09b",
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

Occurrence: `result:ce6810da-50f1-f0bd-942f-b315e5e3cc8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 347–372.

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
    apply (Real.lt_log_iff_exp_lt (by norm_num : (0 : ℝ) < 8)).1
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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHigherPrimePowerStorage/Variant732130160b7de1d0957d8bd79d7080303ca19d02533887da78306769f6c72e02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHigherPrimePowerStorage/Variant732130160b7de1d0957d8bd79d7080303ca19d02533887da78306769f6c72e02.lean#L347).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da884a0a6777106064e259188e484450c8593e92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
