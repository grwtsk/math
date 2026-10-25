# holeKindToHoleString

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:590b3c11760edd7c7173def6198a7b7c337c176afb5c1aec1de53ba194198095",
  "kind": "def",
  "lexical_name": "holeKindToHoleString",
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
  "slug": "holekindtoholestring--81ad741364d1291054fd1b05",
  "source": {
    "blob": "8c27fb1a6197ad7f4f21a3c41d8dabea27b7af08",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 39,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Misc/Variant42b9f724f63aac2442489ab54719303427ec9ed2ba8e42c988427c76293f3eb7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:81ad741364d1291054fd1b05586a0b4020faa86482e71e3f072dcba8e0162e26",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Misc/Variant42b9f724f63aac2442489ab54719303427ec9ed2ba8e42c988427c76293f3eb7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:590b3c11760edd7c7173def6198a7b7c337c176afb5c1aec1de53ba194198095`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def holeKindToHoleString : (elaborator : Name) → (synthName : String) → String
  | ``Elab.Term.elabSyntheticHole, name => "?" ++ name
  | ``Elab.Term.elabSorry, _ => "sorry"
  | _, _ => "_"

/--
Hole code action used to fill in a structure's field when specifying an instance.

In the following:
```lean
instance : Monad Id := _
```

invoking the hole code action "Generate a (minimal) skeleton for the structure under construction."
produces:
```lean
instance : Monad Id where
  pure := _
  bind := _
```

and invoking "Generate a (maximal) skeleton for the structure under construction." produces:
```lean
instance : Monad Id where
  map := _
  mapConst := _
  pure := _
  seq := _
  seqLeft := _
  seqRight := _
  bind := _
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Misc/Variant42b9f724f63aac2442489ab54719303427ec9ed2ba8e42c988427c76293f3eb7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Misc/Variant42b9f724f63aac2442489ab54719303427ec9ed2ba8e42c988427c76293f3eb7.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c27fb1a6197ad7f4f21a3c41d8dabea27b7af08` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
