# appendFun_comp_splitFun

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "abbb649fcaf627c8755bd0f6b3f9ebf5dcb999e4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 219,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/59/59a4ef3efa95d42dea1e65d2f02792640a9eab82032a9a12a8e64aff489622de.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c1d82b0b-6339-c540-4691-d2bf0ac99868",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ba4cb137-dcf0-13fa-0a14-557ae98a1780",
  "kind": "theorem",
  "lexical_name": "appendFun_comp_splitFun",
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
  "slug": "appendfun-comp-splitfun--512ef0b6d20a64a74055f6b1",
  "source": {
    "blob": "abbb649fcaf627c8755bd0f6b3f9ebf5dcb999e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 219,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TypeVec/Variant59a4ef3efa95d42dea1e65d2f02792640a9eab82032a9a12a8e64aff489622de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:512ef0b6d20a64a74055f6b1c67f4fb4e2eeea7ed4f7029fa58f566622b3c28b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/TypeVec/Variant59a4ef3efa95d42dea1e65d2f02792640a9eab82032a9a12a8e64aff489622de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba4cb137-dcf0-13fa-0a14-557ae98a1780`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem appendFun_comp_splitFun {α γ : TypeVec n} {β δ : Type*} {ε : TypeVec (n + 1)}
    (f₀ : drop ε ⟹ α) (f₁ : α ⟹ γ) (g₀ : last ε → β) (g₁ : β → δ) :
    appendFun f₁ g₁ ⊚ splitFun f₀ g₀ = splitFun (α' := γ.append1 δ) (f₁ ⊚ f₀) (g₁ ∘ g₀) :=
  (splitFun_comp _ _ _ _).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/TypeVec/Variant59a4ef3efa95d42dea1e65d2f02792640a9eab82032a9a12a8e64aff489622de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TypeVec/Variant59a4ef3efa95d42dea1e65d2f02792640a9eab82032a9a12a8e64aff489622de.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `abbb649fcaf627c8755bd0f6b3f9ebf5dcb999e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
