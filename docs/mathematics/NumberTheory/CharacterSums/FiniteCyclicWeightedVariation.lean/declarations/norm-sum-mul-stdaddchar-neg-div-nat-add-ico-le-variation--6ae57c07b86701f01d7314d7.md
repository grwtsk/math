# norm_sum_mul_stdAddChar_neg_div_nat_add_Ico_le_variation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fa6412cc-e237-c9b3-3309-614768acb99b",
  "kind": "theorem",
  "lexical_name": "norm_sum_mul_stdAddChar_neg_div_nat_add_Ico_le_variation",
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
  "slug": "norm-sum-mul-stdaddchar-neg-div-nat-add-ico-le-variation--6ae57c07b86701f01d7314d7",
  "source": {
    "blob": "04d0569a302350bf6597cc870fcf957e0be61200",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 201,
    "path": "GRWTSK/NumberTheory/CharacterSums/FiniteCyclicWeightedVariation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ae57c07b86701f01d7314d7e7a7b15cdc673433e4856e8a7c472660c5f30005",
  "verification": {
    "reference": "docs/verification/NumberTheory/CharacterSums/FiniteCyclicWeightedVariation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa6412cc-e237-c9b3-3309-614768acb99b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_sum_mul_stdAddChar_neg_div_nat_add_Ico_le_variation
    (a : ℕ → ℂ)
    (t : ZMod q)
    (A B R : ℕ)
    (hA : 1 ≤ A)
    (ht : t ≠ 0) :
    ‖∑ n ∈ Finset.Ico A B,
        a n * ZMod.stdAddChar (-((n : ZMod q) * t)) /
          (((n + R : ℕ) : ℂ))‖ ≤
      ((q : ℝ) /
          (2 * (finiteCyclicCircularDistance t : ℝ))) *
        finiteCyclicReciprocalCoefficientVariation a A B R := by
  simpa [finiteCyclicReciprocalCoefficientVariation,
    div_eq_mul_inv, mul_assoc, mul_comm, mul_left_comm] using
    norm_sum_mul_stdAddChar_neg_Ico_le_coefficientVariation
      (q := q)
      (a := fun n => a n / (((n + R : ℕ) : ℂ)))
      t A B hA ht

end GRWTSK.NumberTheory.CharacterSums
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/CharacterSums/FiniteCyclicWeightedVariation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/CharacterSums/FiniteCyclicWeightedVariation.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04d0569a302350bf6597cc870fcf957e0be61200` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
