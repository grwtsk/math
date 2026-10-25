# Icc_union_Icc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7ac90d5461fc3a32a80d49e14918b9a567588373",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1688,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/df/dfbbb0f1b154951afc6fba6184be0bdd3a958c9419b645cda7e5e61bf2fac159.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ea984609-d556-e892-8a97-71f6aba7b3a1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e58571d7-edb4-fcac-73d7-b8c7193953d3",
  "kind": "theorem",
  "lexical_name": "Icc_union_Icc",
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
  "slug": "icc-union-icc--290a00454350e3745a4cc4cf",
  "source": {
    "blob": "7ac90d5461fc3a32a80d49e14918b9a567588373",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1696,
    "line": 1688,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantdfbbb0f1b154951afc6fba6184be0bdd3a958c9419b645cda7e5e61bf2fac159.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:290a00454350e3745a4cc4cfc4cf4307792292b7348a380b7df586ffa61bdf53",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantdfbbb0f1b154951afc6fba6184be0bdd3a958c9419b645cda7e5e61bf2fac159.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e58571d7-edb4-fcac-73d7-b8c7193953d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1688–1696.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Icc_union_Icc (h₁ : min a b < max c d) (h₂ : min c d < max a b) :
    Icc a b ∪ Icc c d = Icc (min a c) (max b d) := by
  cases' le_or_lt a b with hab hab <;> cases' le_or_lt c d with hcd hcd <;>
    simp only [min_eq_left, min_eq_right, max_eq_left, max_eq_right, min_eq_left_of_lt,
      min_eq_right_of_lt, max_eq_left_of_lt, max_eq_right_of_lt, hab, hcd] at h₁ h₂
  · exact Icc_union_Icc' h₂.le h₁.le
  all_goals simp [*, min_eq_left_of_lt, max_eq_left_of_lt, min_eq_right_of_lt, max_eq_right_of_lt]
#align set.Icc_union_Icc Set.Icc_union_Icc

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantdfbbb0f1b154951afc6fba6184be0bdd3a958c9419b645cda7e5e61bf2fac159.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantdfbbb0f1b154951afc6fba6184be0bdd3a958c9419b645cda7e5e61bf2fac159.lean#L1688).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ac90d5461fc3a32a80d49e14918b9a567588373` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
