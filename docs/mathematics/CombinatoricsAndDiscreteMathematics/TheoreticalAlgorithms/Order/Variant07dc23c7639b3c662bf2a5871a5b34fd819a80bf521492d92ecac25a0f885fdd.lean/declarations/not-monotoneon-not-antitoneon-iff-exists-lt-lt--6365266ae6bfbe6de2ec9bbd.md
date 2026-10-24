# not_monotoneOn_not_antitoneOn_iff_exists_lt_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b981c9b122b4ef9081596e5ec2cd9e64325d8beb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 57,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/07/07dc23c7639b3c662bf2a5871a5b34fd819a80bf521492d92ecac25a0f885fdd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:74abf6cc-0a95-0134-2b05-76d584748134",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8105e7e1-8498-c1a1-7ed4-afb301f6dcc5",
  "kind": "theorem",
  "lexical_name": "not_monotoneOn_not_antitoneOn_iff_exists_lt_lt",
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
  "slug": "not-monotoneon-not-antitoneon-iff-exists-lt-lt--6365266ae6bfbe6de2ec9bbd",
  "source": {
    "blob": "b981c9b122b4ef9081596e5ec2cd9e64325d8beb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 57,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variant07dc23c7639b3c662bf2a5871a5b34fd819a80bf521492d92ecac25a0f885fdd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6365266ae6bfbe6de2ec9bbd701685dc8db72e8fc488429150513739a7ea8c84",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variant07dc23c7639b3c662bf2a5871a5b34fd819a80bf521492d92ecac25a0f885fdd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8105e7e1-8498-c1a1-7ed4-afb301f6dcc5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_monotoneOn_not_antitoneOn_iff_exists_lt_lt :
    ¬MonotoneOn f s ∧ ¬AntitoneOn f s ↔
      ∃ᵉ (a ∈ s) (b ∈ s) (c ∈ s), a < b ∧ b < c ∧
        (f a < f b ∧ f c < f b ∨ f b < f a ∧ f b < f c) := by
  simp [monotoneOn_iff_monotone, antitoneOn_iff_antitone, and_assoc, exists_and_left,
    not_monotone_not_antitone_iff_exists_lt_lt, @and_left_comm (_ ∈ s)]

end LinearOrder

end Set

/-! ### Monotone lemmas for sets -/

section Monotone
variable {α β : Type*}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variant07dc23c7639b3c662bf2a5871a5b34fd819a80bf521492d92ecac25a0f885fdd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variant07dc23c7639b3c662bf2a5871a5b34fd819a80bf521492d92ecac25a0f885fdd.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b981c9b122b4ef9081596e5ec2cd9e64325d8beb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
