# exists_rat_abs_sub_lt_and_lt_of_irrational

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f084c01c-5c59-e558-c8e8-525704865f13",
  "kind": "theorem",
  "lexical_name": "exists_rat_abs_sub_lt_and_lt_of_irrational",
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
  "slug": "exists-rat-abs-sub-lt-and-lt-of-irrational--cbc19594e1f238f467b10b9c",
  "source": {
    "blob": "c9cd5466562cd3e81ed18a7605a7d47563c95592",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 181,
    "path": "GRWTSK/Algebra/Basic/Variant1c9317d27b5ee1d900c7acb742deddb9d4bc50d15ab9c1197f266230b38585c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cbc19594e1f238f467b10b9c3193fc5f74a3ffca0c7324ff209c53cc141b15cb",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant1c9317d27b5ee1d900c7acb742deddb9d4bc50d15ab9c1197f266230b38585c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f084c01c-5c59-e558-c8e8-525704865f13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_rat_abs_sub_lt_and_lt_of_irrational {ξ : ℝ} (hξ : Irrational ξ) (q : ℚ) :
    ∃ q' : ℚ, |ξ - q'| < 1 / (q'.den : ℝ) ^ 2 ∧ |ξ - q'| < |ξ - q| := by
  have h := abs_pos.mpr (sub_ne_zero.mpr <| Irrational.ne_rat hξ q)
  obtain ⟨m, hm⟩ := exists_nat_gt (1 / |ξ - q|)
  have m_pos : (0 : ℝ) < m := (one_div_pos.mpr h).trans hm
  obtain ⟨q', hbd, hden⟩ := exists_rat_abs_sub_le_and_den_le ξ (Nat.cast_pos.mp m_pos)
  have den_pos : (0 : ℝ) < q'.den := Nat.cast_pos.mpr q'.pos
  have md_pos := mul_pos (add_pos m_pos zero_lt_one) den_pos
  refine
    ⟨q', lt_of_le_of_lt hbd ?_,
      lt_of_le_of_lt hbd <|
        (one_div_lt md_pos h).mpr <|
          hm.trans <|
            lt_of_lt_of_le (lt_add_one _) <|
              (le_mul_iff_one_le_right <| add_pos m_pos zero_lt_one).mpr <|
                mod_cast (q'.pos : 1 ≤ q'.den)⟩
  rw [sq, one_div_lt_one_div md_pos (mul_pos den_pos den_pos), mul_lt_mul_right den_pos]
  exact lt_add_of_le_of_pos (Nat.cast_le.mpr hden) zero_lt_one

/-- If `ξ` is an irrational real number, then there are infinitely many good
rational approximations to `ξ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant1c9317d27b5ee1d900c7acb742deddb9d4bc50d15ab9c1197f266230b38585c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant1c9317d27b5ee1d900c7acb742deddb9d4bc50d15ab9c1197f266230b38585c3.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9cd5466562cd3e81ed18a7605a7d47563c95592` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
