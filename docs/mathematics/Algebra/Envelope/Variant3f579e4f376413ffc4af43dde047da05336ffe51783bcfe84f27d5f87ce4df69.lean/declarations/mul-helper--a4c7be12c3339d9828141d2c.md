# mul_helper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a4d4fd93c00f92010b2fc5a67b97abcba4db9cdf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 60,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3f/3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c4f157a1-a1b2-0e64-e8e0-9ce4d12499b8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ffc6eb84-11b8-f28f-0139-e59633e1edfd",
  "kind": "theorem",
  "lexical_name": "mul_helper",
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
  "slug": "mul-helper--a4c7be12c3339d9828141d2c",
  "source": {
    "blob": "a4d4fd93c00f92010b2fc5a67b97abcba4db9cdf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 60,
    "path": "GRWTSK/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a4c7be12c3339d9828141d2cad7c04f99b36a3284cee628d1d43a7e499748fe2",
  "verification": {
    "reference": "docs/verification/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ffc6eb84-11b8-f28f-0139-e59633e1edfd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_helper {α} [Semiring α]
    {a₁ b₁ a₂ b₂ a₃ b₃ a₄ b₄ k₁ k₂ : α}
    (h₁ : a₁ + b₃ + k₁ = b₁ + a₃ + k₁)
    (h₂ : a₂ + b₄ + k₂ = b₂ + a₄ + k₂)
    : ∃ k, (a₁ * a₂ + b₁ * b₂) + (a₃ * b₄ + b₃ * a₄) + k = (a₁ * b₂ + b₁ * a₂) + (a₃ * a₄ + b₃ * b₄) + k := by
  refine ⟨b₃ * a₂ + k₁ * a₂ + a₃ * b₄ + a₃ * k₂ + k₁ * b₂ + b₃ * k₂, ?_⟩
  have h := congrArg (· * a₂) h₁
  simp [Semiring.right_distrib] at h
  have : a₁ * a₂ + b₁ * b₂ + (a₃ * b₄ + b₃ * a₄) + (b₃ * a₂ + k₁ * a₂ + a₃ * b₄ + a₃ * k₂ + k₁ * b₂ + b₃ * k₂) =
         a₁ * a₂ + b₃ * a₂ + k₁ * a₂ + (b₁ * b₂ + a₃ * b₄ + b₃ * a₄ + a₃ * b₄ + a₃ * k₂ + k₁ * b₂ + b₃ * k₂) := by ac_rfl
  rw [this, h]
  clear this h
  have h := congrArg (a₃ * ·) h₂
  simp [Semiring.left_distrib] at h
  have : b₁ * a₂ + a₃ * a₂ + k₁ * a₂ + (b₁ * b₂ + a₃ * b₄ + b₃ * a₄ + a₃ * b₄ + a₃ * k₂ + k₁ * b₂ + b₃ * k₂) =
         a₃ * a₂ + a₃ * b₄ + a₃ * k₂ + (b₁ * a₂ + k₁ * a₂ + b₁ * b₂ + b₃ * a₄ + a₃ * b₄ + k₁ * b₂ + b₃ * k₂) := by ac_rfl
  rw [this, h]
  clear this h
  have h := congrArg (· * b₂) h₁
  simp [Semiring.right_distrib] at h
  have : a₃ * b₂ + a₃ * a₄ + a₃ * k₂ + (b₁ * a₂ + k₁ * a₂ + b₁ * b₂ + b₃ * a₄ + a₃ * b₄ + k₁ * b₂ + b₃ * k₂) =
         b₁ * b₂ + a₃ * b₂ + k₁ * b₂ + (a₃ * a₄ + a₃ * k₂ + b₁ * a₂ + k₁ * a₂ + b₃ * a₄ + a₃ * b₄ + b₃ * k₂) := by ac_rfl
  rw [this, ← h]
  clear this h
  have h := congrArg (b₃ * ·) h₂
  simp [Semiring.left_distrib] at h
  have : a₁ * b₂ + b₃ * b₂ + k₁ * b₂ + (a₃ * a₄ + a₃ * k₂ + b₁ * a₂ + k₁ * a₂ + b₃ * a₄ + a₃ * b₄ + b₃ * k₂) =
         b₃ * b₂ + b₃ * a₄ + b₃ * k₂ + (a₁ * b₂ + k₁ * b₂ + a₃ * a₄ + a₃ * k₂ + b₁ * a₂ + k₁ * a₂ + a₃ * b₄) := by ac_rfl
  rw [this, ← h]
  clear this h
  ac_rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4d4fd93c00f92010b2fc5a67b97abcba4db9cdf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
