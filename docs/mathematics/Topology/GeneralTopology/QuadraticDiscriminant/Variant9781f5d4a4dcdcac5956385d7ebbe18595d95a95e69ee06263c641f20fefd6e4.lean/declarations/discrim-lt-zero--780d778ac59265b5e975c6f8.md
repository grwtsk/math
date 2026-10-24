# discrim_lt_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f5288efc621f4c8ce643732c934d84357139f900",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 148,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/97/9781f5d4a4dcdcac5956385d7ebbe18595d95a95e69ee06263c641f20fefd6e4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d2cc1627-4386-03ca-b323-25b941ba1212",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8bda26c9-9c43-66f5-e694-2202ba666fc5",
  "kind": "theorem",
  "lexical_name": "discrim_lt_zero",
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
  "slug": "discrim-lt-zero--780d778ac59265b5e975c6f8",
  "source": {
    "blob": "f5288efc621f4c8ce643732c934d84357139f900",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 148,
    "path": "GRWTSK/Topology/GeneralTopology/QuadraticDiscriminant/Variant9781f5d4a4dcdcac5956385d7ebbe18595d95a95e69ee06263c641f20fefd6e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:780d778ac59265b5e975c6f87cc10a95008a1473b541544ba2e27825db254da3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/QuadraticDiscriminant/Variant9781f5d4a4dcdcac5956385d7ebbe18595d95a95e69ee06263c641f20fefd6e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8bda26c9-9c43-66f5-e694-2202ba666fc5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem discrim_lt_zero (ha : a ≠ 0) (h : ∀ x : K, 0 < a * x * x + b * x + c) :
    discrim a b c < 0 := by
  have : ∀ x : K, 0 ≤ a * x * x + b * x + c := fun x => le_of_lt (h x)
  refine lt_of_le_of_ne (discrim_le_zero this) fun h' ↦ ?_
  have := h (-b / (2 * a))
  have : a * (-b / (2 * a)) * (-b / (2 * a)) + b * (-b / (2 * a)) + c = 0 := by
    rw [quadratic_eq_zero_iff_of_discrim_eq_zero ha h' (-b / (2 * a))]
  linarith
#align discrim_lt_zero discrim_lt_zero

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/QuadraticDiscriminant/Variant9781f5d4a4dcdcac5956385d7ebbe18595d95a95e69ee06263c641f20fefd6e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/QuadraticDiscriminant/Variant9781f5d4a4dcdcac5956385d7ebbe18595d95a95e69ee06263c641f20fefd6e4.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5288efc621f4c8ce643732c934d84357139f900` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
