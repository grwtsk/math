# first_atom_birth_fixture

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3050a915223d066bf5179b9e27c58dc70a45b9c2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 221,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/09/091901d82385a749eaf44870df9420bedadc7df9cdbcbc691aed22c219399131.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7b4e8f10-9c95-be3f-d135-312794406339",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:88a1f39a-eda8-8f2a-c54d-d58504680cb8",
  "kind": "theorem",
  "lexical_name": "first_atom_birth_fixture",
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
  "slug": "first-atom-birth-fixture--ea28a489cf9205b097cb267b",
  "source": {
    "blob": "3050a915223d066bf5179b9e27c58dc70a45b9c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 221,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StorageFixtureV1Source/Variant091901d82385a749eaf44870df9420bedadc7df9cdbcbc691aed22c219399131.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea28a489cf9205b097cb267b895af31f32bacac8da9e1f52e5d67978238261de",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StorageFixtureV1Source/Variant091901d82385a749eaf44870df9420bedadc7df9cdbcbc691aed22c219399131.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:88a1f39a-eda8-8f2a-c54d-d58504680cb8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem first_atom_birth_fixture :
    let A : ℝ := Real.log 2 / 2
    0 < mangoldtBaseline A ∧ 0 < mangoldtStorage A ∧ closedPrimeMoment A = 0 := by
  dsimp only
  have hA : 0 < Real.log 2 / 2 := by positivity
  have he : Real.exp (2 * (Real.log 2 / 2)) = (2 : ℝ) := by
    convert Real.exp_log (by norm_num : (0 : ℝ) < 2) using 1 <;> ring
  have hi : primePowerInventory (2 * (Real.log 2 / 2)) = {2} := by
    simp [primePowerInventory, he]
  have hb : mangoldtBaseline (Real.log 2 / 2) = mangoldtCoefficient 2 := by
    simp [mangoldtBaseline, finiteMangoldtBaseline, hi]
  have hs : translationStorage (Real.log 2) (originalSourceState (Real.log 2 / 2)) = 1 := by
    have h := sourceSquareStorage_at_boundary hA
    simpa only [sourceSquareStorage, show 2 * (Real.log 2 / 2) = Real.log 2 by ring] using h
  have hq : mangoldtStorage (Real.log 2 / 2) = mangoldtCoefficient 2 := by
    simp [mangoldtStorage, finiteMangoldtStorage, hi, hs]
  refine ⟨hb ▸ mangoldtCoefficient_two_pos, hq ▸ mangoldtCoefficient_two_pos, ?_⟩
  rw [closedPrimeMoment_eq_baseline_sub_storage hA, hb, hq, sub_self]

/-- Independently specified relative first-prime storage retains the square counterterm. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StorageFixtureV1Source/Variant091901d82385a749eaf44870df9420bedadc7df9cdbcbc691aed22c219399131.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StorageFixtureV1Source/Variant091901d82385a749eaf44870df9420bedadc7df9cdbcbc691aed22c219399131.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3050a915223d066bf5179b9e27c58dc70a45b9c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
