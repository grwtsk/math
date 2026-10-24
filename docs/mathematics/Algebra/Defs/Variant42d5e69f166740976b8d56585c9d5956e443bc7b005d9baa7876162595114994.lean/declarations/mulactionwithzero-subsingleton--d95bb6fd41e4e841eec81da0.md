# MulActionWithZero.subsingleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "271795db47ffe1508fd9eb219553482ce6ad8abf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 206,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/42/42d5e69f166740976b8d56585c9d5956e443bc7b005d9baa7876162595114994.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:36d11d24-a2b3-0a97-41db-a23231389dbb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1b83ba5d-76f6-a7a0-81e8-bb7373646814",
  "kind": "lemma",
  "lexical_name": "MulActionWithZero.subsingleton",
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
  "slug": "mulactionwithzero-subsingleton--d95bb6fd41e4e841eec81da0",
  "source": {
    "blob": "271795db47ffe1508fd9eb219553482ce6ad8abf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 206,
    "path": "GRWTSK/Algebra/Defs/Variant42d5e69f166740976b8d56585c9d5956e443bc7b005d9baa7876162595114994.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d95bb6fd41e4e841eec81da004a10866863706db5f5d41182040606b892c31fe",
  "verification": {
    "reference": "docs/verification/Algebra/Defs/Variant42d5e69f166740976b8d56585c9d5956e443bc7b005d9baa7876162595114994.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b83ba5d-76f6-a7a0-81e8-bb7373646814`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected lemma MulActionWithZero.subsingleton [MulActionWithZero M₀ A] [Subsingleton M₀] :
    Subsingleton A where
  allEq x y := by
    rw [← one_smul M₀ x, ← one_smul M₀ y, Subsingleton.elim (1 : M₀) 0, zero_smul, zero_smul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Defs/Variant42d5e69f166740976b8d56585c9d5956e443bc7b005d9baa7876162595114994.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Defs/Variant42d5e69f166740976b8d56585c9d5956e443bc7b005d9baa7876162595114994.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `271795db47ffe1508fd9eb219553482ce6ad8abf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
