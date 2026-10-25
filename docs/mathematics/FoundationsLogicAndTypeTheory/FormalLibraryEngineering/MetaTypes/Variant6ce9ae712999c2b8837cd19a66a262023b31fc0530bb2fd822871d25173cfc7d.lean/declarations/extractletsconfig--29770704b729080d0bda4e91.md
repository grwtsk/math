# ExtractLetsConfig

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2597e36b9889b66c19e3470364705046bc901fa5165716813466a3a5bbc700cf",
  "kind": "structure",
  "lexical_name": "ExtractLetsConfig",
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
  "slug": "extractletsconfig--29770704b729080d0bda4e91",
  "source": {
    "blob": "9dc60f9b32862069489bef92c22b3f02cc97a3e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 498,
    "line": 466,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MetaTypes/Variant6ce9ae712999c2b8837cd19a66a262023b31fc0530bb2fd822871d25173cfc7d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:29770704b729080d0bda4e910cff969157c0f14cfc8a287d4c5032d46bed2f79",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MetaTypes/Variant6ce9ae712999c2b8837cd19a66a262023b31fc0530bb2fd822871d25173cfc7d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2597e36b9889b66c19e3470364705046bc901fa5165716813466a3a5bbc700cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 466–498.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ExtractLetsConfig where
  /-- If true (default: false), extract lets from subterms that are proofs.
  Top-level lets are always extracted. -/
  proofs : Bool := false
  /-- If true (default: true), extract lets from subterms that are types.
  Top-level lets are always extracted. -/
  types : Bool := true
  /-- If true (default: false), extract lets from subterms that are implicit arguments. -/
  implicits : Bool := false
  /-- If false (default: true), extracts only top-level lets, otherwise allows descending into subterms.
  When false, `proofs` and `types` are ignored, and lets appearing in the types or values of the
  top-level lets are not themselves extracted. -/
  descend : Bool := true
  /-- If true (default: true), descend into forall/lambda/let bodies when extracting. Only relevant when `descend` is true. -/
  underBinder : Bool := true
  /-- If true (default: false), eliminate unused lets rather than extract them. -/
  usedOnly : Bool := false
  /-- If true (default: true), reuse local declarations that have syntactically equal values.
  Note that even when false, the caching strategy for `extract_lets` may result in fewer extracted let bindings than expected. -/
  merge : Bool := true
  /-- When merging is enabled, if true (default: true), make use of pre-existing local definitions in the local context. -/
  useContext : Bool := true
  /-- If true (default: false), then once `givenNames` is exhausted, stop extracting lets. Otherwise continue extracting lets. -/
  onlyGivenNames : Bool := false
  /-- If true (default: false), then when no name is provided for a 'let' expression, the name is used as-is without making it be inaccessible.
  The name still might be inaccessible if the binder name was. -/
  preserveBinderNames : Bool := false
  /-- If true (default: false), lift non-extractable `let`s as far out as possible. -/
  lift : Bool := false

/--
Configuration for the `lift_lets` tactic.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MetaTypes/Variant6ce9ae712999c2b8837cd19a66a262023b31fc0530bb2fd822871d25173cfc7d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MetaTypes/Variant6ce9ae712999c2b8837cd19a66a262023b31fc0530bb2fd822871d25173cfc7d.lean#L466).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9dc60f9b32862069489bef92c22b3f02cc97a3e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
