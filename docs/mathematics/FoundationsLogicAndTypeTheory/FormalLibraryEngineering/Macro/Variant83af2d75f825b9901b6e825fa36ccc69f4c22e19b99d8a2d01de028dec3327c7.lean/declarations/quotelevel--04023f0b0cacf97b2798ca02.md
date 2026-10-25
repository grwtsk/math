# quoteLevel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c95e452160aa0f60ba62b7a6c3a08dab587de92c568599a90c82fe5162245e15",
  "kind": "def",
  "lexical_name": "quoteLevel",
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
  "slug": "quotelevel--04023f0b0cacf97b2798ca02",
  "source": {
    "blob": "80dd26726f6355f44af9535c64e12a255ff5f39e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 382,
    "line": 365,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Macro/Variant83af2d75f825b9901b6e825fa36ccc69f4c22e19b99d8a2d01de028dec3327c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:04023f0b0cacf97b2798ca02085a0601b1b6e35cd74838319c7e885daaf8d31e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Macro/Variant83af2d75f825b9901b6e825fa36ccc69f4c22e19b99d8a2d01de028dec3327c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c95e452160aa0f60ba62b7a6c3a08dab587de92c568599a90c82fe5162245e15`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 365–382.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
meta def quoteLevel : Level → QuoteM Expr
  | .zero => return .const ``Level.zero []
  | .succ u => return mkApp (.const ``Level.succ []) (← quoteLevel u)
  | l@(.mvar ..) => do
    if let some e := (← read).levelBackSubst[l]? then
      return e
    throwError "cannot quote level mvar {l}"
  | .max a b => return mkApp2 (.const ``Level.max []) (← quoteLevel a) (← quoteLevel b)
  | .imax a b => return mkApp2 (.const ``Level.imax []) (← quoteLevel a) (← quoteLevel b)
  | l@(.param n) => do
    match (← read).levelBackSubst[l]? with
      | some e => return e
      | none =>
        match ← isLevelFVar n with
          | some fv => return fv
          | none =>
            throwError "universe parameter {n} not of type Level"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Macro/Variant83af2d75f825b9901b6e825fa36ccc69f4c22e19b99d8a2d01de028dec3327c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Macro/Variant83af2d75f825b9901b6e825fa36ccc69f4c22e19b99d8a2d01de028dec3327c7.lean#L365).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80dd26726f6355f44af9535c64e12a255ff5f39e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
