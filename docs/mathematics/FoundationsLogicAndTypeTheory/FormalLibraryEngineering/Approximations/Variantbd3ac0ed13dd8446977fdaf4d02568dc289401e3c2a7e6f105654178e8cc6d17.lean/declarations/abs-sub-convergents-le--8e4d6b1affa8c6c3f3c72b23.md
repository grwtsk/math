# abs_sub_convergents_le'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c57784793a3c2f2fef2db7353a5f21672cd2408e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 553,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bd/bd3ac0ed13dd8446977fdaf4d02568dc289401e3c2a7e6f105654178e8cc6d17.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9774b635-a0de-1e6c-b976-8229ca43150e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8d199408-dba3-2208-2b28-776b3cd2707d",
  "kind": "theorem",
  "lexical_name": "abs_sub_convergents_le'",
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
  "slug": "abs-sub-convergents-le--8e4d6b1affa8c6c3f3c72b23",
  "source": {
    "blob": "c57784793a3c2f2fef2db7353a5f21672cd2408e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 573,
    "line": 553,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Approximations/Variantbd3ac0ed13dd8446977fdaf4d02568dc289401e3c2a7e6f105654178e8cc6d17.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8e4d6b1affa8c6c3f3c72b23d6ed032b649d494aedaf9c37b7ed96ced86f1ca8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Approximations/Variantbd3ac0ed13dd8446977fdaf4d02568dc289401e3c2a7e6f105654178e8cc6d17.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d199408-dba3-2208-2b28-776b3cd2707d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 553–573.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_sub_convergents_le' {b : K}
    (nth_part_denom_eq : (of v).partialDenominators.get? n = some b) :
    |v - (of v).convergents n| ≤ 1 / (b * (of v).denominators n * (of v).denominators n) := by
  have not_terminated_at_n : ¬(of v).TerminatedAt n := by
    simp [terminatedAt_iff_part_denom_none, nth_part_denom_eq]
  refine' (abs_sub_convergents_le not_terminated_at_n).trans _
  -- One can show that `0 < (GeneralizedContinuedFraction.of v).denominators n` but it's easier
  -- to consider the case `(GeneralizedContinuedFraction.of v).denominators n = 0`.
  rcases (zero_le_of_denom (K := K)).eq_or_gt with
    ((hB : (GeneralizedContinuedFraction.of v).denominators n = 0) | hB)
  · simp only [hB, mul_zero, zero_mul, div_zero, le_refl]
  · apply one_div_le_one_div_of_le
    · have : 0 < b := zero_lt_one.trans_le (of_one_le_get?_part_denom nth_part_denom_eq)
      apply_rules [mul_pos]
    · conv_rhs => rw [mul_comm]
      exact mul_le_mul_of_nonneg_right (le_of_succ_get?_denom nth_part_denom_eq) hB.le
#align generalized_continued_fraction.abs_sub_convergents_le' GeneralizedContinuedFraction.abs_sub_convergents_le'

end ErrorTerm

end GeneralizedContinuedFraction
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Approximations/Variantbd3ac0ed13dd8446977fdaf4d02568dc289401e3c2a7e6f105654178e8cc6d17.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Approximations/Variantbd3ac0ed13dd8446977fdaf4d02568dc289401e3c2a7e6f105654178e8cc6d17.lean#L553).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c57784793a3c2f2fef2db7353a5f21672cd2408e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
