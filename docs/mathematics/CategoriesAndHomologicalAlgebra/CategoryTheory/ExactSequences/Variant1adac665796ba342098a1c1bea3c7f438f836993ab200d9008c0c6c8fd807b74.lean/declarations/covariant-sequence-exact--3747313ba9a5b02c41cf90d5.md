# covariant_sequence_exact₃

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4eb09eac1879fc03ecfc8f1bfbdeff44bbbe0e23",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 151,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1a/1adac665796ba342098a1c1bea3c7f438f836993ab200d9008c0c6c8fd807b74.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9cb4ff00-4f6d-3e14-b712-d4afff959dae",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8fc27e6c-8271-0d63-cc5a-8f45a575b737",
  "kind": "lemma",
  "lexical_name": "covariant_sequence_exact₃",
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
  "slug": "covariant-sequence-exact--3747313ba9a5b02c41cf90d5",
  "source": {
    "blob": "4eb09eac1879fc03ecfc8f1bfbdeff44bbbe0e23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 151,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Variant1adac665796ba342098a1c1bea3c7f438f836993ab200d9008c0c6c8fd807b74.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3747313ba9a5b02c41cf90d528bd6e8a2cb2280cc934489399ffb33d322b5c93",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Variant1adac665796ba342098a1c1bea3c7f438f836993ab200d9008c0c6c8fd807b74.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8fc27e6c-8271-0d63-cc5a-8f45a575b737`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma covariant_sequence_exact₃ {n₀ : ℕ} (x₃ : Ext X S.X₃ n₀) {n₁ : ℕ} (hn₁ : n₀ + 1 = n₁)
    (hx₃ : x₃.comp hS.extClass hn₁ = 0) :
    ∃ (x₂ : Ext X S.X₂ n₀), x₂.comp (mk₀ S.g) (add_zero n₀) = x₃ := by
  have := covariant_sequence_exact₃' X hS n₀ n₁ hn₁
  rw [ShortComplex.ab_exact_iff] at this
  exact this x₃ hx₃

end CovariantSequence

section ContravariantSequence

variable {S : ShortComplex C} (hS : S.ShortExact) (Y : C)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Variant1adac665796ba342098a1c1bea3c7f438f836993ab200d9008c0c6c8fd807b74.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Variant1adac665796ba342098a1c1bea3c7f438f836993ab200d9008c0c6c8fd807b74.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4eb09eac1879fc03ecfc8f1bfbdeff44bbbe0e23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
