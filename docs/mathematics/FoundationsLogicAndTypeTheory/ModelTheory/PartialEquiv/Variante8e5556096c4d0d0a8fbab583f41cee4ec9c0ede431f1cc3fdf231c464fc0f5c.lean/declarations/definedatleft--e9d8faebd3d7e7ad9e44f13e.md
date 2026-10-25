# definedAtLeft

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d2378a5ed3c006c03f0bf9e99c7d85c9582d82ad6eba37599f2afd11c8fa2e7e",
  "kind": "def",
  "lexical_name": "definedAtLeft",
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
  "slug": "definedatleft--e9d8faebd3d7e7ad9e44f13e",
  "source": {
    "blob": "ecd5ae63a5e6963f650710a9d9703978cfb17485",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 471,
    "line": 466,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/PartialEquiv/Variante8e5556096c4d0d0a8fbab583f41cee4ec9c0ede431f1cc3fdf231c464fc0f5c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e9d8faebd3d7e7ad9e44f13e346c8f308697d3a66144b49c187809bdad1fc62f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/PartialEquiv/Variante8e5556096c4d0d0a8fbab583f41cee4ec9c0ede431f1cc3fdf231c464fc0f5c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d2378a5ed3c006c03f0bf9e99c7d85c9582d82ad6eba37599f2afd11c8fa2e7e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 466–471.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def definedAtLeft
    (h : L.IsExtensionPair M N) (m : M) : Order.Cofinal (FGEquiv L M N) where
  carrier := {f | m ∈ f.val.dom}
  isCofinal := fun f => h f m

/-- The cofinal set of finite equivalences with a given element in their codomain. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/PartialEquiv/Variante8e5556096c4d0d0a8fbab583f41cee4ec9c0ede431f1cc3fdf231c464fc0f5c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/PartialEquiv/Variante8e5556096c4d0d0a8fbab583f41cee4ec9c0ede431f1cc3fdf231c464fc0f5c.lean#L466).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ecd5ae63a5e6963f650710a9d9703978cfb17485` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
