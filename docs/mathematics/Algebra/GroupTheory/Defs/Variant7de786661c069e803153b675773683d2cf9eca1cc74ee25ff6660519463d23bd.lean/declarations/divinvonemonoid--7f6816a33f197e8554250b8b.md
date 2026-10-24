# DivInvOneMonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a4d77fa6ebf022d62bf4b9c7e073cf959c669cf08ca14e6ab884415cba2a04e9",
  "kind": "class",
  "lexical_name": "DivInvOneMonoid",
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
  "slug": "divinvonemonoid--7f6816a33f197e8554250b8b",
  "source": {
    "blob": "7f003d088fa05a121539a5354348460eebb30bd5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1015,
    "line": 1007,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variant7de786661c069e803153b675773683d2cf9eca1cc74ee25ff6660519463d23bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7f6816a33f197e8554250b8b2e9d993378f3f951017e15081774e31de796c1b9",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variant7de786661c069e803153b675773683d2cf9eca1cc74ee25ff6660519463d23bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a4d77fa6ebf022d62bf4b9c7e073cf959c669cf08ca14e6ab884415cba2a04e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1007–1015.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class DivInvOneMonoid (G : Type*) extends DivInvMonoid G, InvOneClass G
#align div_inv_one_monoid DivInvOneMonoid

-- FIXME: `to_additive` is not operating on the second parent. (#660)
attribute [to_additive existing] DivInvOneMonoid.toInvOneClass

variable [InvOneClass G]

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variant7de786661c069e803153b675773683d2cf9eca1cc74ee25ff6660519463d23bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variant7de786661c069e803153b675773683d2cf9eca1cc74ee25ff6660519463d23bd.lean#L1007).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f003d088fa05a121539a5354348460eebb30bd5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
