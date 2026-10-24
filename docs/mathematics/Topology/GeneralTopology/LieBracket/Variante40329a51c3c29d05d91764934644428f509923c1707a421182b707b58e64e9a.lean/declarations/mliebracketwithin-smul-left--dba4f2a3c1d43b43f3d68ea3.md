# mlieBracketWithin_smul_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "995e2d739cbbbbf39ec67edad8cee2ecb7e16d39",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 398,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e4/e40329a51c3c29d05d91764934644428f509923c1707a421182b707b58e64e9a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6a159b05-de22-a214-bc9c-45870cf7b1fd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aa4654cb-2def-075c-3c4d-30762d084d78",
  "kind": "lemma",
  "lexical_name": "mlieBracketWithin_smul_left",
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
  "slug": "mliebracketwithin-smul-left--dba4f2a3c1d43b43f3d68ea3",
  "source": {
    "blob": "995e2d739cbbbbf39ec67edad8cee2ecb7e16d39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 410,
    "line": 398,
    "path": "GRWTSK/Topology/GeneralTopology/LieBracket/Variante40329a51c3c29d05d91764934644428f509923c1707a421182b707b58e64e9a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dba4f2a3c1d43b43f3d68ea3d1aea0db2197c3b59a40e2c58e27346096b84e14",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LieBracket/Variante40329a51c3c29d05d91764934644428f509923c1707a421182b707b58e64e9a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa4654cb-2def-075c-3c4d-30762d084d78`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 398–410.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mlieBracketWithin_smul_left {f : M → 𝕜} (hf : MDiffAt[s] f x)
    (hV : MDiffAt[s] (fun x ↦ (V x : TangentBundle I M)) x)
    (hs : UniqueMDiffAt[s] x) :
    mlieBracketWithin I (f • V) W s x =
      - d[s] f x (W x) • (V x) + (f x) • mlieBracketWithin I V W s x := by
  rw [mlieBracketWithin_swap, Pi.neg_apply, mlieBracketWithin_smul_right hf hV (V := W) hs,
    mlieBracketWithin_swap]
  simp; abel

/--
Product rule for Lie brackets: given two vector fields `V` and `W` on `M` and a function
`f : M → 𝕜`, we have `[f • V, W] = -(df W) • V + f • [V, W]`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LieBracket/Variante40329a51c3c29d05d91764934644428f509923c1707a421182b707b58e64e9a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LieBracket/Variante40329a51c3c29d05d91764934644428f509923c1707a421182b707b58e64e9a.lean#L398).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `995e2d739cbbbbf39ec67edad8cee2ecb7e16d39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
