# isPrefixOf_toArray

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:83ca05b4-74c2-1e51-ce1e-73f75a713903",
  "kind": "theorem",
  "lexical_name": "isPrefixOf_toArray",
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
  "slug": "isprefixof-toarray--091181072346afb5b2ab7c70",
  "source": {
    "blob": "41a92b463e9b6261a8399f5cf69406f8471853c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 417,
    "line": 401,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToArray/Variant3e14f9a32eca4d462f930ca494ef8ffaf21b5f95c7a3a29e1a457a31f6bd24de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:091181072346afb5b2ab7c70a6d79f34ef2d36cdcade816fe3a3b122939c39e4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToArray/Variant3e14f9a32eca4d462f930ca494ef8ffaf21b5f95c7a3a29e1a457a31f6bd24de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:83ca05b4-74c2-1e51-ce1e-73f75a713903`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 401–417.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp, grind =] theorem isPrefixOf_toArray [BEq α] (l₁ l₂ : List α) :
    l₁.toArray.isPrefixOf l₂.toArray = l₁.isPrefixOf l₂ := by
  rw [Array.isPrefixOf]
  split <;> rename_i h
  · simp [isPrefixOfAux_toArray_zero]
  · simp only [Bool.false_eq]
    induction l₁ generalizing l₂ with
    | nil => simp at h
    | cons a l₁ ih =>
      cases l₂ with
      | nil => simp
      | cons b l₂ =>
        simp only [isPrefixOf_cons_cons, Bool.and_eq_false_imp]
        intro w
        rw [ih]
        simp_all

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToArray/Variant3e14f9a32eca4d462f930ca494ef8ffaf21b5f95c7a3a29e1a457a31f6bd24de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToArray/Variant3e14f9a32eca4d462f930ca494ef8ffaf21b5f95c7a3a29e1a457a31f6bd24de.lean#L401).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41a92b463e9b6261a8399f5cf69406f8471853c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
