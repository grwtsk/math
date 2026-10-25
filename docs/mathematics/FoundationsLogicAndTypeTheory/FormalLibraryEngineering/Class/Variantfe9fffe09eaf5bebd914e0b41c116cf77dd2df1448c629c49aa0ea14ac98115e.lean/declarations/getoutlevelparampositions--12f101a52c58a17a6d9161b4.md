# getOutLevelParamPositions?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:98750ad5ed64843f7af9ae6a6a95c786d090a904bb7017834bee85081bd80ca3",
  "kind": "def",
  "lexical_name": "getOutLevelParamPositions?",
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
  "slug": "getoutlevelparampositions--12f101a52c58a17a6d9161b4",
  "source": {
    "blob": "79b457a08230d2950514ef8d83f53b5c8f837baf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 91,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Class/Variantfe9fffe09eaf5bebd914e0b41c116cf77dd2df1448c629c49aa0ea14ac98115e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:12f101a52c58a17a6d9161b4d95fcdc8271558ec50c05372023bf626bf3f0774",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Class/Variantfe9fffe09eaf5bebd914e0b41c116cf77dd2df1448c629c49aa0ea14ac98115e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:98750ad5ed64843f7af9ae6a6a95c786d090a904bb7017834bee85081bd80ca3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getOutLevelParamPositions? (env : Environment) (declName : Name) : Option (Array Nat) :=
  (classExtension.getState env).outLevelParamMap.find? declName

/--
  Auxiliary function for collection the position class `outParams`, and
  checking whether they are being correctly used.
  A regular (i.e., non `outParam`) must not depend on an `outParam`.
  Reason for this restriction:
  When performing type class resolution, we replace arguments that
  are `outParam`s with fresh metavariables. If regular parameters could
  depend on `outParam`s, then we would also have to replace them with
  fresh metavariables. Otherwise, the resulting expression could be type
  incorrect. This transformation would be counterintuitive to users since
  we would implicitly treat these regular parameters as `outParam`s.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Class/Variantfe9fffe09eaf5bebd914e0b41c116cf77dd2df1448c629c49aa0ea14ac98115e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Class/Variantfe9fffe09eaf5bebd914e0b41c116cf77dd2df1448c629c49aa0ea14ac98115e.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79b457a08230d2950514ef8d83f53b5c8f837baf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
