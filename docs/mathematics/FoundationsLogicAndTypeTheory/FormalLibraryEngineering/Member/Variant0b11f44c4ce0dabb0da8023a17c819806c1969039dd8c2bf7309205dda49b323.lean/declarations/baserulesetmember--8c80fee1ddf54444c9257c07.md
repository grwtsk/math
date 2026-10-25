# BaseRuleSetMember

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:44272c35eedb7ce57de9705d824df5a5b72c7bf6b9ab4e428f08ef0700973124",
  "kind": "inductive",
  "lexical_name": "BaseRuleSetMember",
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
  "slug": "baserulesetmember--8c80fee1ddf54444c9257c07",
  "source": {
    "blob": "a393bbad02c8ed3ec65af8bce8749fa219c8aa2f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 23,
    "line": 14,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Member/Variant0b11f44c4ce0dabb0da8023a17c819806c1969039dd8c2bf7309205dda49b323.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8c80fee1ddf54444c9257c07cfb7d2eee010d832d94cd1c9552187f8bfbfe3f5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Member/Variant0b11f44c4ce0dabb0da8023a17c819806c1969039dd8c2bf7309205dda49b323.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:44272c35eedb7ce57de9705d824df5a5b72c7bf6b9ab4e428f08ef0700973124`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 14–23.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive BaseRuleSetMember
  | normRule (r : NormRule)
  | unsafeRule (r : UnsafeRule)
  | safeRule (r : SafeRule)
  | unfoldRule (r : UnfoldRule)
  | normForwardRule (r₁ : ForwardRule) (r₂ : NormRule)
  | unsafeForwardRule (r₁ : ForwardRule) (r₂ : UnsafeRule)
  | safeForwardRule (r₁ : ForwardRule) (r₂ : SafeRule)
  deriving Inhabited

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Member/Variant0b11f44c4ce0dabb0da8023a17c819806c1969039dd8c2bf7309205dda49b323.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Member/Variant0b11f44c4ce0dabb0da8023a17c819806c1969039dd8c2bf7309205dda49b323.lean#L14).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a393bbad02c8ed3ec65af8bce8749fa219c8aa2f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
