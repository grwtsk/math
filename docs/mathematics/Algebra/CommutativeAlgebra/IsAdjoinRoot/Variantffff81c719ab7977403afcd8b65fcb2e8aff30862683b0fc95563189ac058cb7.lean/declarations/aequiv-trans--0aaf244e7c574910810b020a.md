# aequiv_trans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7a317046e79ece819b1b4c062642ba7dbb5cf52d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 596,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ff/ffff81c719ab7977403afcd8b65fcb2e8aff30862683b0fc95563189ac058cb7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:811ccf93-2e56-6de2-7e23-d0d4674db5e7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3d648755-d876-b428-22b2-a029e564bf1b",
  "kind": "theorem",
  "lexical_name": "aequiv_trans",
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
  "slug": "aequiv-trans--0aaf244e7c574910810b020a",
  "source": {
    "blob": "7a317046e79ece819b1b4c062642ba7dbb5cf52d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 605,
    "line": 596,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/IsAdjoinRoot/Variantffff81c719ab7977403afcd8b65fcb2e8aff30862683b0fc95563189ac058cb7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0aaf244e7c574910810b020a7a2edfaf863b5d20ee558d2b20bc640d2a16febe",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/IsAdjoinRoot/Variantffff81c719ab7977403afcd8b65fcb2e8aff30862683b0fc95563189ac058cb7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d648755-d876-b428-22b2-a029e564bf1b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 596–605.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem aequiv_trans {U : Type*} [CommRing U] [Algebra R U] (h : IsAdjoinRoot S f)
    (h' : IsAdjoinRoot T f) (h'' : IsAdjoinRoot U f) :
    (h.aequiv h').trans (h'.aequiv h'') = h.aequiv h'' := by ext z; exact h.aequiv_aequiv h' h'' z

/-- Transfer `IsAdjoinRoot` across an algebra isomorphism.

This is the converse of `IsAdjoinRoot.aequiv`: this turns an `AlgEquiv` into an `IsAdjoinRoot`,
and `IsAdjoinRoot.aequiv` turns an `IsAdjoinRoot` into an `AlgEquiv`.
-/
@[simps! map_apply]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/IsAdjoinRoot/Variantffff81c719ab7977403afcd8b65fcb2e8aff30862683b0fc95563189ac058cb7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/IsAdjoinRoot/Variantffff81c719ab7977403afcd8b65fcb2e8aff30862683b0fc95563189ac058cb7.lean#L596).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a317046e79ece819b1b4c062642ba7dbb5cf52d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
