# size_inter_eq_size_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:93255ff2-7ff2-dc27-f551-bf78f6edacbd",
  "kind": "theorem",
  "lexical_name": "size_inter_eq_size_right",
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
  "slug": "size-inter-eq-size-right--b3b1a6a8436da5b0943cd276",
  "source": {
    "blob": "88edaba28e5ebf2aa594debeac940d2e56bf11ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3295,
    "line": 3289,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RawLemmas/Variantc83eb1e2c595ebe46e350cdc2a272dc1d4839d7f6b0de0ce6c8d30c4b204139b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b3b1a6a8436da5b0943cd2765d0b03e45bf11eb24694eee108ef76578732cffe",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/RawLemmas/Variantc83eb1e2c595ebe46e350cdc2a272dc1d4839d7f6b0de0ce6c8d30c4b204139b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:93255ff2-7ff2-dc27-f551-bf78f6edacbd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3289–3295.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem size_inter_eq_size_right [EquivBEq α] [LawfulHashable α]
    (h₁ : m₁.val.WF) (h₂ : m₂.val.WF)
    (h : ∀ (a : α), m₂.contains a → m₁.contains a) :
    (m₁.inter m₂).1.size = m₂.1.size := by
  revert h
  simp_to_model [inter, size, contains] using length_filter_containsKey_of_length_right

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/RawLemmas/Variantc83eb1e2c595ebe46e350cdc2a272dc1d4839d7f6b0de0ce6c8d30c4b204139b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RawLemmas/Variantc83eb1e2c595ebe46e350cdc2a272dc1d4839d7f6b0de0ce6c8d30c4b204139b.lean#L3289).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88edaba28e5ebf2aa594debeac940d2e56bf11ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
