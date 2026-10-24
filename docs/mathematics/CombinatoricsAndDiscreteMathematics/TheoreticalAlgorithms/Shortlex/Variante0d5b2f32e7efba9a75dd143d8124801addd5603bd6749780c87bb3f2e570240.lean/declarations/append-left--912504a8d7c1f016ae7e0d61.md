# append_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ae5a36b022ed672fee170a6eb99e05b8f0b0493f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 109,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e0/e0d5b2f32e7efba9a75dd143d8124801addd5603bd6749780c87bb3f2e570240.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:af5ffae9-939a-82d3-a94f-586d4bf9a95c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9d427283-7b5b-56a6-c78c-8378b2c56a2c",
  "kind": "theorem",
  "lexical_name": "append_left",
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
  "slug": "append-left--912504a8d7c1f016ae7e0d61",
  "source": {
    "blob": "ae5a36b022ed672fee170a6eb99e05b8f0b0493f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 109,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Shortlex/Variante0d5b2f32e7efba9a75dd143d8124801addd5603bd6749780c87bb3f2e570240.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:912504a8d7c1f016ae7e0d617427c98b0d1f47f82ed077aa2d3648a173a947e9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Shortlex/Variante0d5b2f32e7efba9a75dd143d8124801addd5603bd6749780c87bb3f2e570240.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d427283-7b5b-56a6-c78c-8378b2c56a2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem append_left {t₁ t₂ : List α} (h : Shortlex r t₁ t₂) (s : List α) :
    Shortlex r (s ++ t₁) (s ++ t₂) := by
  rcases shortlex_def.mp h with h1 | h2
  · apply of_length_lt
    rw [List.length_append, List.length_append]
    omega
  cases s with
  | nil =>
    rw [List.nil_append, List.nil_append]
    exact h
  | cons head tail =>
    apply of_lex
    · simp only [List.cons_append, List.length_cons, List.length_append, Nat.succ_eq_add_one,
      add_left_inj, add_right_inj]
      exact h2.1
    exact List.Lex.append_left r h2.2 (head :: tail)

section WellFounded

variable {h : WellFounded r}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Shortlex/Variante0d5b2f32e7efba9a75dd143d8124801addd5603bd6749780c87bb3f2e570240.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Shortlex/Variante0d5b2f32e7efba9a75dd143d8124801addd5603bd6749780c87bb3f2e570240.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae5a36b022ed672fee170a6eb99e05b8f0b0493f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
