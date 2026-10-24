# conductorThreeRieszMeanOne_add_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "61ab8c25c28cfb3e3f66fc30a468866745786f13",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 51,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/91/910b9de095c69a9193dfc927fb1d89592b4843dcb2114b371b35d9bc04857d54.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:89a32ddf-332c-77e9-17b1-b5f18478fee9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:496ac8e1-173c-efb3-19e0-225e4dfc9062",
  "kind": "theorem",
  "lexical_name": "conductorThreeRieszMeanOne_add_sub",
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
  "slug": "conductorthreerieszmeanone-add-sub--8f904af9d5de08ed6e860756",
  "source": {
    "blob": "61ab8c25c28cfb3e3f66fc30a468866745786f13",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 51,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreeRieszExplicitFormula/Variant910b9de095c69a9193dfc927fb1d89592b4843dcb2114b371b35d9bc04857d54.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8f904af9d5de08ed6e8607566809350f90e70e706626b664737d3bd3d0b850fb",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ConductorThreeRieszExplicitFormula/Variant910b9de095c69a9193dfc927fb1d89592b4843dcb2114b371b35d9bc04857d54.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:496ac8e1-173c-efb3-19e0-225e4dfc9062`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem conductorThreeRieszMeanOne_add_sub :
    ∀ x h : ℕ,
      conductorThreeRieszMeanOne (x + h) -
          conductorThreeRieszMeanOne x =
        (h : ℝ) * conductorThreePsi x +
          conductorThreeRieszDifferenceTail x h := by
  intro x h
  unfold conductorThreeRieszMeanOne conductorThreeRieszDifferenceTail
  rw [← Finset.sum_range_add_sum_Ico
    (fun n ↦ twistedVonMangoldtThree n * (((x + h : ℕ) : ℝ) - n))
    (show x + 1 ≤ x + h + 1 by omega)]
  have hMain :
      (∑ n ∈ Finset.range (x + 1),
          twistedVonMangoldtThree n * (((x + h : ℕ) : ℝ) - n)) -
        (∑ n ∈ Finset.range (x + 1),
          twistedVonMangoldtThree n * ((x : ℝ) - n)) =
        (h : ℝ) * conductorThreePsi x := by
    rw [← Finset.sum_sub_distrib]
    simp_rw [show ∀ n : ℕ,
        twistedVonMangoldtThree n * (((x + h : ℕ) : ℝ) - n) -
            twistedVonMangoldtThree n * ((x : ℝ) - n) =
          (h : ℝ) * twistedVonMangoldtThree n by
        intro n
        push_cast
        ring]
    rw [← Finset.mul_sum]
    rfl
  calc
    ((∑ n ∈ Finset.range (x + 1),
        twistedVonMangoldtThree n * (((x + h : ℕ) : ℝ) - n)) +
        ∑ n ∈ Finset.Ico (x + 1) (x + h + 1),
          twistedVonMangoldtThree n * (((x + h : ℕ) : ℝ) - n)) -
        ∑ n ∈ Finset.range (x + 1),
          twistedVonMangoldtThree n * ((x : ℝ) - n) =
      ((∑ n ∈ Finset.range (x + 1),
          twistedVonMangoldtThree n * (((x + h : ℕ) : ℝ) - n)) -
        ∑ n ∈ Finset.range (x + 1),
          twistedVonMangoldtThree n * ((x : ℝ) - n)) +
        ∑ n ∈ Finset.Ico (x + 1) (x + h + 1),
          twistedVonMangoldtThree n * (((x + h : ℕ) : ℝ) - n) := by
        ring
    _ = (h : ℝ) * conductorThreePsi x +
        ∑ n ∈ Finset.Ico (x + 1) (x + h + 1),
          twistedVonMangoldtThree n * (((x + h : ℕ) : ℝ) - n) := by
      rw [hMain]

/-- The forward analytic obligation after smoothing.  The intended proof
uses the completed conductor-three functional equation, zero counting, and a
finite difference of the Riesz explicit formula *before* absolute values are
taken. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ConductorThreeRieszExplicitFormula/Variant910b9de095c69a9193dfc927fb1d89592b4843dcb2114b371b35d9bc04857d54.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreeRieszExplicitFormula/Variant910b9de095c69a9193dfc927fb1d89592b4843dcb2114b371b35d9bc04857d54.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61ab8c25c28cfb3e3f66fc30a468866745786f13` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
