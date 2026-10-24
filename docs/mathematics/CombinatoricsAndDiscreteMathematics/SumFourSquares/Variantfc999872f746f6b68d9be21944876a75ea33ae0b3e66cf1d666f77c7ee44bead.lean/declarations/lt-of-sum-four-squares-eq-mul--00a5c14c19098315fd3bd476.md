# lt_of_sum_four_squares_eq_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ddcf9250-e2af-c25a-4043-7d09cd2d95d8",
  "kind": "theorem",
  "lexical_name": "lt_of_sum_four_squares_eq_mul",
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
  "slug": "lt-of-sum-four-squares-eq-mul--00a5c14c19098315fd3bd476",
  "source": {
    "blob": "49873e512556cbd7faa9cde8fc26823e994d9ed5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 75,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SumFourSquares/Variantfc999872f746f6b68d9be21944876a75ea33ae0b3e66cf1d666f77c7ee44bead.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:00a5c14c19098315fd3bd476a589b72ed62e05b44bd7e88865fdca9417b95f6f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SumFourSquares/Variantfc999872f746f6b68d9be21944876a75ea33ae0b3e66cf1d666f77c7ee44bead.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ddcf9250-e2af-c25a-4043-7d09cd2d95d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lt_of_sum_four_squares_eq_mul {a b c d k m : ℕ}
    (h : a ^ 2 + b ^ 2 + c ^ 2 + d ^ 2 = k * m)
    (ha : 2 * a < m) (hb : 2 * b < m) (hc : 2 * c < m) (hd : 2 * d < m) :
    k < m := by
  refine lt_of_mul_lt_mul_right (lt_of_mul_lt_mul_left ?_ (zero_le (2 ^ 2))) (zero_le m)
  calc
    2 ^ 2 * (k * ↑m) = ∑ i : Fin 4, (2 * ![a, b, c, d] i) ^ 2 := by
      simp [← h, Fin.sum_univ_succ, mul_add, mul_pow, add_assoc]
    _ < ∑ _i : Fin 4, m ^ 2 := Finset.sum_lt_sum_of_nonempty Finset.univ_nonempty fun i _ ↦ by
      refine pow_lt_pow_of_lt_left ?_ (zero_le _) two_pos
      fin_cases i <;> assumption
    _ = 2 ^ 2 * (m * m) := by simp; ring

-- porting note: new theorem
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SumFourSquares/Variantfc999872f746f6b68d9be21944876a75ea33ae0b3e66cf1d666f77c7ee44bead.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SumFourSquares/Variantfc999872f746f6b68d9be21944876a75ea33ae0b3e66cf1d666f77c7ee44bead.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49873e512556cbd7faa9cde8fc26823e994d9ed5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
