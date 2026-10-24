# physicalEnergy_eq_diagonal_add_cross

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fd3b287f-8043-3900-274c-4a37cb0d3d38",
  "kind": "theorem",
  "lexical_name": "physicalEnergy_eq_diagonal_add_cross",
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
  "slug": "physicalenergy-eq-diagonal-add-cross--503501c5cf066ae270ce098f",
  "source": {
    "blob": "a10e3543d8572b3b859158f37837b6a166f2977e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 203,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedSourceEnergy/Variant05418e1d5a9be4ef0d3eaaece9af4d35997ed4593247d0f40b6e2d979e1c572c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:503501c5cf066ae270ce098fd232c2ac46e524da352315ee53b9f7beef6cf8cd",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedSourceEnergy/Variant05418e1d5a9be4ef0d3eaaece9af4d35997ed4593247d0f40b6e2d979e1c572c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd3b287f-8043-3900-274c-4a37cb0d3d38`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem physicalEnergy_eq_diagonal_add_cross {A : ℝ} (hA : 1 ≤ A) (t : ℝ) :
    physicalEnergy A t = diagonalEnergy A t + crossEnergy A t := by
  rw [physicalEnergy_eq_full_gram hA]
  have hrow (m : ℕ) (hm : m ∈ integerInventory A) :
      (∑ n ∈ integerInventory A, coefficient A t m * coefficient A t n * prescribedGram A m n) =
      coefficient A t m ^ 2 +
        ∑ n ∈ integerInventory A,
          if m ≠ n then coefficient A t m * coefficient A t n * prescribedGram A m n else 0 := by
    calc
      _ = ∑ n ∈ integerInventory A,
          ((if n = m then coefficient A t m ^ 2 else 0) +
          (if m ≠ n then coefficient A t m * coefficient A t n * prescribedGram A m n else 0)) := by
        apply Finset.sum_congr rfl
        intro n _
        by_cases he : n = m
        · subst n
          simp [gram_diagonal hA (Finset.mem_Icc.mp hm).1, pow_two]
        · simp [he, Ne.symm he]
      _ = _ := by rw [Finset.sum_add_distrib]; simp [hm]
  rw [Finset.sum_congr rfl hrow, Finset.sum_add_distrib]
  congr 1
  unfold diagonalEnergy coefficient
  apply Finset.sum_congr rfl
  intro n _
  ring

end
end GRWTSK.RiemannHypothesis.Conversation.WeightedSourceEnergy
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedSourceEnergy/Variant05418e1d5a9be4ef0d3eaaece9af4d35997ed4593247d0f40b6e2d979e1c572c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedSourceEnergy/Variant05418e1d5a9be4ef0d3eaaece9af4d35997ed4593247d0f40b6e2d979e1c572c.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a10e3543d8572b3b859158f37837b6a166f2977e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
