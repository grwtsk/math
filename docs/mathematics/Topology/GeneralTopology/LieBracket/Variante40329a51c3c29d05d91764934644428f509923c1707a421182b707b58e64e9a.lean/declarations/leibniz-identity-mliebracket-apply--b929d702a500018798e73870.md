# leibniz_identity_mlieBracket_apply

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
      "line": 1047,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e4/e40329a51c3c29d05d91764934644428f509923c1707a421182b707b58e64e9a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f375a610-c7c0-4fd6-9dc1-4fedf542f1ac",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c4390477-5948-669a-bd1b-db4bae38da88",
  "kind": "lemma",
  "lexical_name": "leibniz_identity_mlieBracket_apply",
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
  "slug": "leibniz-identity-mliebracket-apply--b929d702a500018798e73870",
  "source": {
    "blob": "995e2d739cbbbbf39ec67edad8cee2ecb7e16d39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1058,
    "line": 1047,
    "path": "GRWTSK/Topology/GeneralTopology/LieBracket/Variante40329a51c3c29d05d91764934644428f509923c1707a421182b707b58e64e9a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b929d702a500018798e7387069981fe7379a88330245e65b81ce005f5279a163",
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

Occurrence: `result:c4390477-5948-669a-bd1b-db4bae38da88`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1047–1058.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma leibniz_identity_mlieBracket_apply
    {U V W : Π (x : M), TangentSpace I x} {x : M}
    (hU : CMDiffAt (minSmoothness 𝕜 2) (T% U) x)
    (hV : CMDiffAt (minSmoothness 𝕜 2) (T% V) x)
    (hW : CMDiffAt (minSmoothness 𝕜 2) (T% W) x) :
    mlieBracket I U (mlieBracket I V W) x =
      mlieBracket I (mlieBracket I U V) W x + mlieBracket I V (mlieBracket I U W) x := by
  simp only [← mlieBracketWithin_univ, ← contMDiffWithinAt_univ] at hU hV hW ⊢
  exact leibniz_identity_mlieBracketWithin_apply uniqueMDiffOn_univ (by simp) (mem_univ _) hU hV hW

/-- The Lie bracket of vector fields in manifolds satisfies the Leibniz identity
`[U, [V, W]] = [[U, V], W] + [V, [U, W]]` (also called Jacobi identity). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LieBracket/Variante40329a51c3c29d05d91764934644428f509923c1707a421182b707b58e64e9a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LieBracket/Variante40329a51c3c29d05d91764934644428f509923c1707a421182b707b58e64e9a.lean#L1047).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `995e2d739cbbbbf39ec67edad8cee2ecb7e16d39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
