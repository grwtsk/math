# setDeprecatedTarget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:931abd0fbf1aa44a7242808c6524ca0dfb6cfa0a246e7482a4503e45e90e8b19",
  "kind": "def",
  "lexical_name": "setDeprecatedTarget",
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
  "slug": "setdeprecatedtarget--f60629ab57cbef94000218c7",
  "source": {
    "blob": "2ef7bd902bc7035ae4805293ea5485c7aa581ebb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 113,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alias/Variantf8b2a18c6c39c653bda7d8dc38e55d5f692b446c8a7254d613eebb8386eb53d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f60629ab57cbef94000218c7f31d5613755f98b43be36db758a37ead0e234bce",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alias/Variantf8b2a18c6c39c653bda7d8dc38e55d5f692b446c8a7254d613eebb8386eb53d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:931abd0fbf1aa44a7242808c6524ca0dfb6cfa0a246e7482a4503e45e90e8b19`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def setDeprecatedTarget (target : Name) (arr : Array Attribute) : Array Attribute × Bool :=
  StateT.run (m := Id) (s := false) do
    arr.mapM fun s => do
      if s.name == `deprecated then
        if let `(deprecated| deprecated%$tk $[$desc:str]? $[(since := $since)]?) := s.stx then
          set true
          let stx := Unhygienic.run
            `(deprecated| deprecated%$tk $(mkCIdent target) $[$desc:str]? $[(since := $since)]?)
          pure { s with stx }
        else pure s
      else pure s

/--
  The command `alias name := target` creates a synonym of `target` with the given name.

  The command `alias ⟨fwd, rev⟩ := target` creates synonyms for the forward and reverse directions
  of an iff theorem. Use `_` if only one direction is required.

  These commands accept all modifiers and attributes that `def` and `theorem` do.
 -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alias/Variantf8b2a18c6c39c653bda7d8dc38e55d5f692b446c8a7254d613eebb8386eb53d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alias/Variantf8b2a18c6c39c653bda7d8dc38e55d5f692b446c8a7254d613eebb8386eb53d7.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ef7bd902bc7035ae4805293ea5485c7aa581ebb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
