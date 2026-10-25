# ReduceConfig

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:92c61848776865254cb74bde8c8dde9e4775c7b48e50a906cb29de1a651bf4c0",
  "kind": "structure",
  "lexical_name": "ReduceConfig",
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
  "slug": "reduceconfig--79864a53ec281829cf0b604c",
  "source": {
    "blob": "9dc60f9b32862069489bef92c22b3f02cc97a3e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 524,
    "line": 505,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MetaTypes/Variant6ce9ae712999c2b8837cd19a66a262023b31fc0530bb2fd822871d25173cfc7d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:79864a53ec281829cf0b604cd2f40288456a701169a349acee7d28da76879e8f",
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

Occurrence: `declaration:92c61848776865254cb74bde8c8dde9e4775c7b48e50a906cb29de1a651bf4c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 505–524.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ReduceConfig where
  /-- Do reductions of types and propositions. Default: `false`. -/
  types : Bool := false
  /-- Do reductions of proof terms. Default: `false`. -/
  proofs : Bool := false
  /-- In applications, do reductions of implicit arguments. Default: `false`. -/
  implicits : Bool := false
  /-- Transparency mode for reduction. Default: `all`. -/
  transparency : TransparencyMode := .all
  /-- Use "smart unfolding" when reducing definitions, to ensure the primitive recursors
  are not exposed. Default: `false`. -/
  smartUnfolding : Bool := false
  /-- Typecheck the elaborated term before reducing. Default: `true`. -/
  check : Bool := true
  /-- Ignore stuck typeclass synthesis while elaborating the term. Default: `false`. -/
  ignoreStuckTC : Bool := false

end Command

end Lean.Meta
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MetaTypes/Variant6ce9ae712999c2b8837cd19a66a262023b31fc0530bb2fd822871d25173cfc7d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MetaTypes/Variant6ce9ae712999c2b8837cd19a66a262023b31fc0530bb2fd822871d25173cfc7d.lean#L505).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9dc60f9b32862069489bef92c22b3f02cc97a3e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
