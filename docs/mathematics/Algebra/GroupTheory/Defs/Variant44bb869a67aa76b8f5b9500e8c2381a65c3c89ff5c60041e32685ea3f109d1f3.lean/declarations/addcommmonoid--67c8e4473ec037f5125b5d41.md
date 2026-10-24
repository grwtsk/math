# AddCommMonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c1f80921d439986130b8e30c366638b2aff708b2aa5c6a63b6eec541abe9fc4b",
  "kind": "class",
  "lexical_name": "AddCommMonoid",
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
  "slug": "addcommmonoid--67c8e4473ec037f5125b5d41",
  "source": {
    "blob": "94f1c538b336da8cbfce2a2ff534e145fbae559c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 678,
    "line": 674,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variant44bb869a67aa76b8f5b9500e8c2381a65c3c89ff5c60041e32685ea3f109d1f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:67c8e4473ec037f5125b5d41e81de2959beb2ad0a5eb016bdf81ce91c65ad192",
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

Occurrence: `declaration:c1f80921d439986130b8e30c366638b2aff708b2aa5c6a63b6eec541abe9fc4b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 674–678.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class AddCommMonoid (M : Type u) extends AddMonoid M, AddCommSemigroup M
#align add_comm_monoid AddCommMonoid

/-- A commutative monoid is a monoid with commutative `(*)`. -/
@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variant44bb869a67aa76b8f5b9500e8c2381a65c3c89ff5c60041e32685ea3f109d1f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variant44bb869a67aa76b8f5b9500e8c2381a65c3c89ff5c60041e32685ea3f109d1f3.lean#L674).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94f1c538b336da8cbfce2a2ff534e145fbae559c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
