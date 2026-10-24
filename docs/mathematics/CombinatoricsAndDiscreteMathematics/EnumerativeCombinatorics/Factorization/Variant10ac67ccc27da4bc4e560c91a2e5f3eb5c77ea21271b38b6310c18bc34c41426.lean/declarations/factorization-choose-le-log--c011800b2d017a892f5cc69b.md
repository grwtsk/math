# factorization_choose_le_log

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "346759f9b68c8214d7d6a21d878489524bfa6e2f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 34,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/10/10ac67ccc27da4bc4e560c91a2e5f3eb5c77ea21271b38b6310c18bc34c41426.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8e28fa14-b537-edc4-1d54-abce73cb0c9b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:68608142-3937-0acc-6b0c-15968c96a3d7",
  "kind": "theorem",
  "lexical_name": "factorization_choose_le_log",
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
  "slug": "factorization-choose-le-log--c011800b2d017a892f5cc69b",
  "source": {
    "blob": "346759f9b68c8214d7d6a21d878489524bfa6e2f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 34,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Factorization/Variant10ac67ccc27da4bc4e560c91a2e5f3eb5c77ea21271b38b6310c18bc34c41426.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c011800b2d017a892f5cc69b209be0edee0942dacd2d4428ed2594b0b0314b28",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Factorization/Variant10ac67ccc27da4bc4e560c91a2e5f3eb5c77ea21271b38b6310c18bc34c41426.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:68608142-3937-0acc-6b0c-15968c96a3d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem factorization_choose_le_log : (choose n k).factorization p ≤ log p n := by
  by_cases h : (choose n k).factorization p = 0
  · simp [h]
  have hp : p.Prime := Not.imp_symm (choose n k).factorization_eq_zero_of_non_prime h
  have hkn : k ≤ n := by
    refine le_of_not_lt fun hnk => h ?_
    simp [choose_eq_zero_of_lt hnk]
  rw [factorization_def _ hp, @padicValNat_def _ ⟨hp⟩ _ (choose_pos hkn)]
  rw [← Nat.cast_le (α := ℕ∞), ← FiniteMultiplicity.emultiplicity_eq_multiplicity]
  · simp only [hp.emultiplicity_choose hkn (lt_add_one _), Nat.cast_le]
    exact (Finset.card_filter_le _ _).trans (le_of_eq (Nat.card_Ico _ _))
  apply Nat.finiteMultiplicity_iff.2 ⟨hp.ne_one, choose_pos hkn⟩

/-- A `pow` form of `Nat.factorization_choose_le` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Factorization/Variant10ac67ccc27da4bc4e560c91a2e5f3eb5c77ea21271b38b6310c18bc34c41426.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Factorization/Variant10ac67ccc27da4bc4e560c91a2e5f3eb5c77ea21271b38b6310c18bc34c41426.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `346759f9b68c8214d7d6a21d878489524bfa6e2f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
