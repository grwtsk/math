# ULift.instT5Space

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:38c9439205d35623a50a49f0cc96b4ea9bc257f553fcc0d172ad482ac0cafcdd",
  "kind": "instance",
  "lexical_name": "ULift.instT5Space",
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
  "slug": "ulift-instt5space--fcd735bf5983f4db7a00367b",
  "source": {
    "blob": "ab8ac2866c917f921ebfd21ae7c876899707775a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 721,
    "line": 716,
    "path": "GRWTSK/Topology/GeneralTopology/Regular/Variantf0f2120650baa283c15069a4403d2a1eadeef74204bff44fa3f4b5543eaa94f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fcd735bf5983f4db7a00367b48334ab347537f7ff81a080e0331dde3a733fb97",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Regular/Variantf0f2120650baa283c15069a4403d2a1eadeef74204bff44fa3f4b5543eaa94f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:38c9439205d35623a50a49f0cc96b4ea9bc257f553fcc0d172ad482ac0cafcdd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 716–721.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance ULift.instT5Space [T5Space X] : T5Space (ULift X) :=
  IsEmbedding.uliftDown.t5Space

/--
A space is a `T5Space` iff all its open subspaces are `T4Space`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Regular/Variantf0f2120650baa283c15069a4403d2a1eadeef74204bff44fa3f4b5543eaa94f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Regular/Variantf0f2120650baa283c15069a4403d2a1eadeef74204bff44fa3f4b5543eaa94f0.lean#L716).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab8ac2866c917f921ebfd21ae7c876899707775a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
