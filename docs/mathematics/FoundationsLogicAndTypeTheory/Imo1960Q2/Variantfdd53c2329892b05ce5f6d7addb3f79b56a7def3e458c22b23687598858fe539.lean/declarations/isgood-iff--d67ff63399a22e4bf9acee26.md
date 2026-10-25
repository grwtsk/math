# isGood_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "60faf4c5c5d6636100f76c9a1207cc0d5430c4e1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 41,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fd/fdd53c2329892b05ce5f6d7addb3f79b56a7def3e458c22b23687598858fe539.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:41fe99e0-74ad-300d-4801-3be3628fe5e7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:233a1f9d-5daa-3036-4f2f-1f8b1f330797",
  "kind": "theorem",
  "lexical_name": "isGood_iff",
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
  "slug": "isgood-iff--d67ff63399a22e4bf9acee26",
  "source": {
    "blob": "60faf4c5c5d6636100f76c9a1207cc0d5430c4e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 41,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Imo1960Q2/Variantfdd53c2329892b05ce5f6d7addb3f79b56a7def3e458c22b23687598858fe539.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d67ff63399a22e4bf9acee26726ef8be981af40a650983a61b3dcfbbdca3a056",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Imo1960Q2/Variantfdd53c2329892b05ce5f6d7addb3f79b56a7def3e458c22b23687598858fe539.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:233a1f9d-5daa-3036-4f2f-1f8b1f330797`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isGood_iff {x} : IsGood x ↔ x ∈ Ico (-1/2) (45/8) \ {0} := by
  -- First, note that the denominator is equal to zero at `x = 0`, hence it's not a solution.
  rcases eq_or_ne x 0 with rfl | hx
  · simp [isGood_iff']
  cases lt_or_le x (-1/2) with
  | inl hx2 =>
    -- Next, if `x < -1/2`, then the square root is undefined.
    have : 2 * x + 1 < 0 := by linarith
    simp [hx2.not_le, isGood_iff', this.not_le]
  | inr hx2 =>
    -- Now, if `x ≥ -1/2`, `x ≠ 0`, then the expression is well-defined.
    have hx2' : 0 ≤ 2 * x + 1 := by linarith
    have H : 1 - sqrt (2 * x + 1) ≠ 0 := by
      rw [sub_ne_zero, ne_comm, ne_eq, sqrt_eq_iff_eq_sq hx2' zero_le_one]
      simpa
    calc
      -- Note that the fraction in the LHS is equal to `(1 + sqrt (2 * x + 1)) ^ 2`
      IsGood x ↔ (1 + sqrt (2 * x + 1)) ^ 2 < 2 * x + 9 := by
        have : 4 * x ^ 2 = (1 + sqrt (2 * x + 1)) ^ 2 * (1 - sqrt (2 * x + 1)) ^ 2 := by
          rw [← mul_pow, ← sq_sub_sq, sq_sqrt hx2']
          ring
        simp [isGood_iff', *]
      -- Simplify the inequality
      _ ↔ sqrt (2 * x + 1) < 7 / 2 := by
        rw [add_sq, sq_sqrt hx2']; constructor <;> intro <;> linarith
      _ ↔ 2 * x + 1 < (7 / 2) ^ 2 := sqrt_lt' <| by positivity
      _ ↔ x < 45 / 8 := by constructor <;> intro <;> linarith
      _ ↔ x ∈ Ico (-1/2) (45/8) \ {0} := by simp [*]

end Imo1960Q2
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Imo1960Q2/Variantfdd53c2329892b05ce5f6d7addb3f79b56a7def3e458c22b23687598858fe539.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Imo1960Q2/Variantfdd53c2329892b05ce5f6d7addb3f79b56a7def3e458c22b23687598858fe539.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `60faf4c5c5d6636100f76c9a1207cc0d5430c4e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
