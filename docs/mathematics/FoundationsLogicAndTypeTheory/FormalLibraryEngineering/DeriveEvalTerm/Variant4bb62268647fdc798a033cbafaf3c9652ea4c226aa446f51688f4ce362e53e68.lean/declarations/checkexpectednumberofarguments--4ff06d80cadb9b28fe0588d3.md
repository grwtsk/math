# checkExpectedNumberOfArguments

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c039de8a91e809f653c1d2514c43703d6dcb31199198b71bc4a24050404f791e",
  "kind": "def",
  "lexical_name": "checkExpectedNumberOfArguments",
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
  "slug": "checkexpectednumberofarguments--4ff06d80cadb9b28fe0588d3",
  "source": {
    "blob": "11131bfe0ebc0f075c61ea696337c31521169738",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 79,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalTerm/Variant4bb62268647fdc798a033cbafaf3c9652ea4c226aa446f51688f4ce362e53e68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4ff06d80cadb9b28fe0588d3d640cc91d9598e211d3b9f18914cc1bfb224346f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalTerm/Variant4bb62268647fdc798a033cbafaf3c9652ea4c226aa446f51688f4ce362e53e68.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c039de8a91e809f653c1d2514c43703d6dcb31199198b71bc4a24050404f791e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def checkExpectedNumberOfArguments (ctor : Name) (expected : Nat) (args : TSyntaxArray `term) : TermElabM Unit := do
  unless expected == args.size do
    throwError "unexpected number of arguments, `{.ofConstName ctor}` expects {expected} argument{expected.plural}, \
      but {args.size} {args.size.plural "was" "were"} provided"

end EvalTerm

open EvalTerm

/--
Ensures an `EvalTerm` instance exists for the given type by deriving one if necessary.
Derivation can handle `EvalTerm` instance for inductive types without universes, parameters, or indices,
and which only does simple recursion.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalTerm/Variant4bb62268647fdc798a033cbafaf3c9652ea4c226aa446f51688f4ce362e53e68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalTerm/Variant4bb62268647fdc798a033cbafaf3c9652ea4c226aa446f51688f4ce362e53e68.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `11131bfe0ebc0f075c61ea696337c31521169738` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
