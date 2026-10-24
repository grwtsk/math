# mem_le_listBound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ffbd8582-ddf7-5a52-a97e-4c4e1ab7babb",
  "kind": "theorem",
  "lexical_name": "mem_le_listBound",
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
  "slug": "mem-le-listbound--2df2552ccf8d9d46dbca35da",
  "source": {
    "blob": "30b7007156900c4cadccd786892b784f4c86f827",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 19,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EuclidInfinitude/Variant8caa8cff12ec69442c2f52ff2aed33ef121b5ea45abf99663c045926f4ee41f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2df2552ccf8d9d46dbca35daad33b2a9dcacdcda2a5e90e37c911cc6da62a462",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EuclidInfinitude/Variant8caa8cff12ec69442c2f52ff2aed33ef121b5ea45abf99663c045926f4ee41f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ffbd8582-ddf7-5a52-a97e-4c4e1ab7babb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_le_listBound {x : Nat} {xs : List Nat}
    (h : x ∈ xs) :
    x ≤ listBound xs := by
  induction xs with
  | nil =>
      cases h
  | cons y ys ih =>
      simp at h
      cases h with
      | inl hy =>
          cases hy
          exact Nat.le_max_left x (listBound ys)
      | inr hys =>
          have := ih hys
          exact Nat.le_trans this (Nat.le_max_right y (listBound ys))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EuclidInfinitude/Variant8caa8cff12ec69442c2f52ff2aed33ef121b5ea45abf99663c045926f4ee41f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EuclidInfinitude/Variant8caa8cff12ec69442c2f52ff2aed33ef121b5ea45abf99663c045926f4ee41f6.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30b7007156900c4cadccd786892b784f4c86f827` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
