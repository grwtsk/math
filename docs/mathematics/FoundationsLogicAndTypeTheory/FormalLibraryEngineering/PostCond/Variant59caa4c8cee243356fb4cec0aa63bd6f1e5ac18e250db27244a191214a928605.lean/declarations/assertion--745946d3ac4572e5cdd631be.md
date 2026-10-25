# Assertion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1c8cc4e31522cea6582fdd8ec9bbc9ffee4946946de00bcb38805e1aa0b9ca82",
  "kind": "abbrev",
  "lexical_name": "Assertion",
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
  "slug": "assertion--745946d3ac4572e5cdd631be",
  "source": {
    "blob": "f64f9c0b07722e346fce05f277ea13625593d257",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 101,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostCond/Variant59caa4c8cee243356fb4cec0aa63bd6f1e5ac18e250db27244a191214a928605.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:745946d3ac4572e5cdd631be5e3d954a5256bcd06b80ec07708873be088538fd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostCond/Variant59caa4c8cee243356fb4cec0aa63bd6f1e5ac18e250db27244a191214a928605.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1c8cc4e31522cea6582fdd8ec9bbc9ffee4946946de00bcb38805e1aa0b9ca82`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
abbrev Assertion (ps : PostShape.{u}) : Type u :=
  SPred (PostShape.args ps)

/--
An assertion about each potential exception that's declared in a postcondition shape.

Examples:
```lean example
example : ExceptConds (.pure) = Unit := rfl
example : ExceptConds (.except ε .pure) = ((ε → ULift Prop) × Unit) := rfl
example : ExceptConds (.arg σ (.except ε .pure)) = ((ε → ULift Prop) × Unit) := rfl
example : ExceptConds (.except ε (.arg σ .pure)) = ((ε → σ → ULift Prop) × Unit) := rfl
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostCond/Variant59caa4c8cee243356fb4cec0aa63bd6f1e5ac18e250db27244a191214a928605.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostCond/Variant59caa4c8cee243356fb4cec0aa63bd6f1e5ac18e250db27244a191214a928605.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f64f9c0b07722e346fce05f277ea13625593d257` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
