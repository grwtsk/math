# extractLsb'_cpopLayer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2f30bb0e-d5fe-5414-fc91-7e8d4e5fc2d1",
  "kind": "theorem",
  "lexical_name": "extractLsb'_cpopLayer",
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
  "slug": "extractlsb-cpoplayer--63e6d438b682660eb1211037",
  "source": {
    "blob": "77050a46ff99d345da672844caf68022db57852a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2569,
    "line": 2531,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variantb9fa500e368b8bd13bf989d8770b5a6329ea6245d7803e3e14a7c114e06667c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:63e6d438b682660eb1211037b4e1fd89a9f2cadf1c03dd17ce79ef29c127bfad",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variantb9fa500e368b8bd13bf989d8770b5a6329ea6245d7803e3e14a7c114e06667c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2f30bb0e-d5fe-5414-fc91-7e8d4e5fc2d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2531–2569.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem extractLsb'_cpopLayer {w iterNum i oldLen : Nat} {oldLayer : BitVec (oldLen * w)}
    {newLayer : BitVec (iterNum * w)} (hold : 2 * (iterNum - 1) < oldLen) :
    (∀ i (_hi: i < iterNum),
      newLayer.extractLsb' (i * w) w =
      oldLayer.extractLsb' ((2 * i) * w) w + (oldLayer.extractLsb' ((2 * i + 1) * w) w)) →
    extractLsb' (i * w) w (oldLayer.cpopLayer newLayer hold) =
      extractLsb' (2 * i * w) w oldLayer + extractLsb' ((2 * i + 1) * w) w oldLayer := by
  intro proof_addition
  rw [cpopLayer]
  split
  · by_cases hi : i < iterNum
    · simp only [extractLsb'_cast]
      apply proof_addition
      exact hi
    · ext j hj
      have : iterNum * w ≤ i * w := by refine mul_le_mul_right w (by omega)
      have : oldLen * w ≤ (2 * i) * w := by refine mul_le_mul_right w (by omega)
      have : oldLen * w ≤ (2 * i + 1) * w := by refine mul_le_mul_right w (by omega)
      have hz : extractLsb' (2 * i * w) w oldLayer = 0#w := by
        ext j hj
        simp [show oldLen * w ≤ 2 * i * w + j by omega]
      have hz' : extractLsb' ((2 * i + 1) * w) w oldLayer = 0#w := by
        ext j hj
        simp [show oldLen * w ≤ (2 * i + 1) * w + j by omega]
      simp [show iterNum * w ≤ i * w + j by omega, hz, hz']
  · generalize hop1 : oldLayer.extractLsb' ((2 * iterNum) * w) w = op1
    generalize hop2 : oldLayer.extractLsb' ((2 * iterNum + 1) * w) w = op2
    have hcast : w + iterNum * w = (iterNum + 1) * w := by simp [Nat.add_mul]; omega
    apply extractLsb'_cpopLayer
    intros i hi
    by_cases hlt : i < iterNum
    · rw [extractLsb'_cast, extractLsb'_append_eq_of_add_le]
      · apply proof_addition
        exact hlt
      · rw [show i * w + w = i * w + 1 * w by omega, ← Nat.add_mul]
        exact mul_le_mul_right w hlt
    · rw [extractLsb'_cast, show i = iterNum by omega, extractLsb'_append_eq_left, hop1, hop2]
termination_by oldLen - 2 * (iterNum + 1 - 1)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variantb9fa500e368b8bd13bf989d8770b5a6329ea6245d7803e3e14a7c114e06667c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variantb9fa500e368b8bd13bf989d8770b5a6329ea6245d7803e3e14a7c114e06667c1.lean#L2531).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77050a46ff99d345da672844caf68022db57852a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
