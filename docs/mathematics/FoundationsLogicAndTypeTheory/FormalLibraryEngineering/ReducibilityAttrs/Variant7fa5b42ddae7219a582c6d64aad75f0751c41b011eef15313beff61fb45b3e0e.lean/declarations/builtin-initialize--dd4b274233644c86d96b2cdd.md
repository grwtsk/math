# Anonymous builtin_initialize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a9a102c749df11466e9f8116eb695230ea77e8664365cb80c633026daa5d6928",
  "kind": "builtin_initialize",
  "lexical_name": null,
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
  "slug": "builtin-initialize--dd4b274233644c86d96b2cdd",
  "source": {
    "blob": "d32f8582486f0b4cba5334c29164194c2787c78d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 204,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReducibilityAttrs/Variant7fa5b42ddae7219a582c6d64aad75f0751c41b011eef15313beff61fb45b3e0e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dd4b274233644c86d96b2cdd3b3e47431ea89aa43abf46636a564ec1b9d41211",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReducibilityAttrs/Variant7fa5b42ddae7219a582c6d64aad75f0751c41b011eef15313beff61fb45b3e0e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `builtin_initialize` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a9a102c749df11466e9f8116eb695230ea77e8664365cb80c633026daa5d6928`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
builtin_initialize
  registerBuiltinAttribute {
    ref             := by exact decl_name%
    name            := `semireducible
    descr           := "semireducible declaration"
    add             := addAttr .semireducible
    applicationTime := .afterTypeChecking
 }

/--
Marks a definition as `[implicit_reducible]`, meaning it is unfolded at
`TransparencyMode.implicit` or above but *not* at `TransparencyMode.instances` or
`TransparencyMode.reducible`.

Use this attribute for definitions that should unfold when checking implicit-argument
definitional equality (e.g. abbreviations in downstream libraries such as Mathlib functors),
without affecting type class search. When proof automation applies a lemma, implicit arguments
are checked with increased transparency so that type-level computations (e.g. `n + 0` vs `n`)
are resolved.

To mark a potential *type class instance* — so it can be unfolded during type class synthesis —
use `[instance_reducible]` instead (which the `instance` command applies automatically).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReducibilityAttrs/Variant7fa5b42ddae7219a582c6d64aad75f0751c41b011eef15313beff61fb45b3e0e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReducibilityAttrs/Variant7fa5b42ddae7219a582c6d64aad75f0751c41b011eef15313beff61fb45b3e0e.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d32f8582486f0b4cba5334c29164194c2787c78d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
