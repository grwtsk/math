# Anonymous syntax

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fe0b847e45da22fe0c3163e9119e74e2f329e70c0c0aacf6a9a5ceae928f8927",
  "kind": "syntax",
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
  "slug": "syntax--d512051ae960dc8a3c9c4f8a",
  "source": {
    "blob": "895f22b80b0bf34dd3889111888f38262eec2220",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 158,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant0431c84d5c4f8a16bb79c3c193292e8d3fba959a8a4ab8da5888246332fb7d58.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d512051ae960dc8a3c9c4f8a1b8c762519b5ced63c2ad22c580b3ddec497c4d2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant0431c84d5c4f8a16bb79c3c193292e8d3fba959a8a4ab8da5888246332fb7d58.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `syntax` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fe0b847e45da22fe0c3163e9119e74e2f329e70c0c0aacf6a9a5ceae928f8927`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
syntax grindCasesEager := atomic(&"cases" &"eager")
/--
The `intro` modifier instructs `grind` to use the constructors (introduction rules)
of an inductive predicate as E-matching theorems.Example:
```
inductive Even : Nat → Prop where
| zero : Even 0
| add2 : Even x → Even (x + 2)

attribute [grind intro] Even
example (h : Even x) : Even (x + 6) := by grind
example : Even 0 := by grind
```
Here `attribute [grind intro] Even` acts like a macro that expands to
`attribute [grind] Even.zero` and `attribute [grind] Even.add2`.
This is especially convenient for inductive predicates with many constructors.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant0431c84d5c4f8a16bb79c3c193292e8d3fba959a8a4ab8da5888246332fb7d58.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant0431c84d5c4f8a16bb79c3c193292e8d3fba959a8a4ab8da5888246332fb7d58.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `895f22b80b0bf34dd3889111888f38262eec2220` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
