# AddLeftCancelMonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:11eed3c12321f023c91f83d17e2d87df729c6e1fbbfbf8d0f09e89c90602d882",
  "kind": "class",
  "lexical_name": "AddLeftCancelMonoid",
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
  "slug": "addleftcancelmonoid--89c3f103d573abab5896ec01",
  "source": {
    "blob": "94f1c538b336da8cbfce2a2ff534e145fbae559c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 695,
    "line": 689,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variant44bb869a67aa76b8f5b9500e8c2381a65c3c89ff5c60041e32685ea3f109d1f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:89c3f103d573abab5896ec013f131d0a512645590ad40265e29b9960a38cfa94",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variant44bb869a67aa76b8f5b9500e8c2381a65c3c89ff5c60041e32685ea3f109d1f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:11eed3c12321f023c91f83d17e2d87df729c6e1fbbfbf8d0f09e89c90602d882`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 689–695.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class AddLeftCancelMonoid (M : Type u) extends AddLeftCancelSemigroup M, AddMonoid M
#align add_left_cancel_monoid AddLeftCancelMonoid

attribute [instance 75] AddLeftCancelMonoid.toAddMonoid -- See note [lower cancel priority]

/-- A monoid in which multiplication is left-cancellative. -/
@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variant44bb869a67aa76b8f5b9500e8c2381a65c3c89ff5c60041e32685ea3f109d1f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variant44bb869a67aa76b8f5b9500e8c2381a65c3c89ff5c60041e32685ea3f109d1f3.lean#L689).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94f1c538b336da8cbfce2a2ff534e145fbae559c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
