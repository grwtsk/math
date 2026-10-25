# NameMapAttributeImpl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2f3f1b3f070340582372b5820f87e7a8a70dec521dbc7e2f54d611f68f82fb33",
  "kind": "structure",
  "lexical_name": "NameMapAttributeImpl",
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
  "slug": "namemapattributeimpl--ebd26beffada8a1ffb32bba1",
  "source": {
    "blob": "9e2f0b0646dae9f68a7447621c0bb7e679391146",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 43,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameMapAttribute/Variant579dc6c8a5e9b0d55fd07e7407e80899ea9e89fa89a5c69000ab30d518635785.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ebd26beffada8a1ffb32bba109d924fde93f8c890b9798fd2c25af046817adf8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameMapAttribute/Variant579dc6c8a5e9b0d55fd07e7407e80899ea9e89fa89a5c69000ab30d518635785.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2f3f1b3f070340582372b5820f87e7a8a70dec521dbc7e2f54d611f68f82fb33`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure NameMapAttributeImpl (α : Type) where
  /-- The name of the attribute -/
  name : Name
  /-- The declaration which creates the attribute -/
  ref : Name := by exact decl_name%
  /-- The description of the attribute -/
  descr : String
  /-- This function is called when the attribute is applied.
  It should produce a value of type `α` from the given attribute syntax. -/
  add (src : Name) (stx : Syntax) : AttrM α
  deriving Inhabited

/-- Similar to `registerParametricAttribute` except that attributes do not
have to be assigned in the same file as the declaration. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameMapAttribute/Variant579dc6c8a5e9b0d55fd07e7407e80899ea9e89fa89a5c69000ab30d518635785.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameMapAttribute/Variant579dc6c8a5e9b0d55fd07e7407e80899ea9e89fa89a5c69000ab30d518635785.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e2f0b0646dae9f68a7447621c0bb7e679391146` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
