# char_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:560d62f2-30c1-98e6-0da4-95a5cca62664",
  "kind": "lemma",
  "lexical_name": "char_neg",
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
  "slug": "char-neg--aa182ee8e445dcab56ebe30a",
  "source": {
    "blob": "d85345bbb62fed427057631b34169b75331b9d7d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 84,
    "path": "GRWTSK/Topology/GeneralTopology/BoundedContinuousFunctionChar/Variant5208538a3fee62286146a1282515e313b9868960f15774c457a534bd3dca2c58.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa182ee8e445dcab56ebe30aa4669b725fa9df3ce58a93a8899339c9f642a309",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/BoundedContinuousFunctionChar/Variant5208538a3fee62286146a1282515e313b9868960f15774c457a534bd3dca2c58.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:560d62f2-30c1-98e6-0da4-95a5cca62664`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma char_neg (w : W) :
    char he hL (-w) = star (char he hL w) := by ext; simp

set_option backward.isDefEq.respectTransparency false in
/-- If `e` and `L` are non-trivial, then `char he hL w, w : W` separates points in `V`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/BoundedContinuousFunctionChar/Variant5208538a3fee62286146a1282515e313b9868960f15774c457a534bd3dca2c58.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/BoundedContinuousFunctionChar/Variant5208538a3fee62286146a1282515e313b9868960f15774c457a534bd3dca2c58.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d85345bbb62fed427057631b34169b75331b9d7d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
