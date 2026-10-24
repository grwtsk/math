# zpow_addLeft

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e80de0c4-4b24-b310-5903-3448621953d4",
  "kind": "lemma",
  "lexical_name": "zpow_addLeft",
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
  "slug": "zpow-addleft--8bfeb1523d45f3f31fd98f00",
  "source": {
    "blob": "b9f8d6d48e5e7a272bff5becf70fcb32136083e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 570,
    "line": 567,
    "path": "GRWTSK/Algebra/GroupTheory/End/Variantbfb343bc1e2df52e0e92de6085c44cbb2803ba51b722d40c27a6c759ad1e1372.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8bfeb1523d45f3f31fd98f003e61c5806a0e12aa4d6acb536562a1b3a77c5f4f",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/End/Variantbfb343bc1e2df52e0e92de6085c44cbb2803ba51b722d40c27a6c759ad1e1372.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e80de0c4-4b24-b310-5903-3448621953d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 567–570.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma zpow_addLeft (n : ℤ) : Equiv.addLeft a ^ n = Equiv.addLeft (n • a) :=
  (map_zsmul ({ toFun := Equiv.addLeft, map_zero' := addLeft_zero, map_add' := addLeft_add } :
    α →+ Additive (Perm α)) _ _).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/End/Variantbfb343bc1e2df52e0e92de6085c44cbb2803ba51b722d40c27a6c759ad1e1372.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/End/Variantbfb343bc1e2df52e0e92de6085c44cbb2803ba51b722d40c27a6c759ad1e1372.lean#L567).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9f8d6d48e5e7a272bff5becf70fcb32136083e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
