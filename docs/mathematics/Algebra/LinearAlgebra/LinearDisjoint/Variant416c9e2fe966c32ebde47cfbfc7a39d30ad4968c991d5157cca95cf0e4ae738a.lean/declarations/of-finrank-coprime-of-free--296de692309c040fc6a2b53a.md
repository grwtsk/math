# of_finrank_coprime_of_free

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a886cc903f25326c2f897be2725c45e598660bc9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 663,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/41/416c9e2fe966c32ebde47cfbfc7a39d30ad4968c991d5157cca95cf0e4ae738a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1ae67ec0-49e9-e4ce-704f-0e1537358610",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5b6e4a3f-3178-6dcf-ab7e-b187effab057",
  "kind": "theorem",
  "lexical_name": "of_finrank_coprime_of_free",
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
  "slug": "of-finrank-coprime-of-free--296de692309c040fc6a2b53a",
  "source": {
    "blob": "a886cc903f25326c2f897be2725c45e598660bc9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 688,
    "line": 663,
    "path": "GRWTSK/Algebra/LinearAlgebra/LinearDisjoint/Variant416c9e2fe966c32ebde47cfbfc7a39d30ad4968c991d5157cca95cf0e4ae738a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:296de692309c040fc6a2b53a3b732f92655986e111481869ac8633a99001d111",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LinearDisjoint/Variant416c9e2fe966c32ebde47cfbfc7a39d30ad4968c991d5157cca95cf0e4ae738a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b6e4a3f-3178-6dcf-ab7e-b187effab057`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 663–688.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem of_finrank_coprime_of_free [Module.Free R A] [Module.Free R B]
    [Module.Free A (Algebra.adjoin A (B : Set S))] [Module.Free B (Algebra.adjoin B (A : Set S))]
    (H : (Module.finrank R A).Coprime (Module.finrank R B)) : A.LinearDisjoint B := by
  nontriviality R
  by_cases h1 : Module.finrank R A = 0
  · rw [h1, Nat.coprime_zero_left] at H
    rw [eq_bot_of_finrank_one H]
    exact bot_right _
  by_cases h2 : Module.finrank R B = 0
  · rw [h2, Nat.coprime_zero_right] at H
    rw [eq_bot_of_finrank_one H]
    exact bot_left _
  haveI := Module.finite_of_finrank_pos (Nat.pos_of_ne_zero h1)
  haveI := Module.finite_of_finrank_pos (Nat.pos_of_ne_zero h2)
  haveI := finite_sup A B
  have : Module.finrank R A ≤ Module.finrank R ↥(A ⊔ B) :=
    LinearMap.finrank_le_finrank_of_injective <|
      Submodule.inclusion_injective (show toSubmodule A ≤ toSubmodule (A ⊔ B) by simp)
  exact of_finrank_sup_of_free <| (finrank_sup_le_of_free A B).antisymm <|
    Nat.le_of_dvd (lt_of_lt_of_le (Nat.pos_of_ne_zero h1) this) <| H.mul_dvd_of_dvd_of_dvd
      (finrank_left_dvd_finrank_sup_of_free A B) (finrank_right_dvd_finrank_sup_of_free A B)

variable (A B)

/-- If `A/R` is integral, such that `A'` and `B` are linearly disjoint for all subalgebras `A'`
of `A` which are finitely generated `R`-modules, then `A` and `B` are linearly disjoint. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LinearDisjoint/Variant416c9e2fe966c32ebde47cfbfc7a39d30ad4968c991d5157cca95cf0e4ae738a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LinearDisjoint/Variant416c9e2fe966c32ebde47cfbfc7a39d30ad4968c991d5157cca95cf0e4ae738a.lean#L663).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a886cc903f25326c2f897be2725c45e598660bc9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
