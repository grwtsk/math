# conductorThreeRieszMeanOne_add_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5b008b82-9ee6-f0ae-d7a5-70e5ba448ec3",
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
  "slug": "conductorthreerieszmeanone-add-sub--1ad5ad1ca1056f84404d10e9",
  "source": {
    "blob": "8d3654fb5ed424dc8659259aceeda58e4032f3e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 59,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreeRieszExplicitFormula/Variantdc3f816d71ffd73babfceff147c330a2f7c0f1e658278c7577fbedf0084a05ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ad5ad1ca1056f84404d10e9a1f70292691f2a27e5dc69d36c285fb3b58381e9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ConductorThreeRieszExplicitFormula/Variantdc3f816d71ffd73babfceff147c330a2f7c0f1e658278c7577fbedf0084a05ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b008b82-9ee6-f0ae-d7a5-70e5ba448ec3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–109.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ConductorThreeRieszExplicitFormula/Variantdc3f816d71ffd73babfceff147c330a2f7c0f1e658278c7577fbedf0084a05ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreeRieszExplicitFormula/Variantdc3f816d71ffd73babfceff147c330a2f7c0f1e658278c7577fbedf0084a05ad.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d3654fb5ed424dc8659259aceeda58e4032f3e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
