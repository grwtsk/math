# mkEqForExpectedType

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a494649bb7e298bbe1f513666ad74042da33f4f6dc182cdcaf7236858605bcea",
  "kind": "def",
  "lexical_name": "mkEqForExpectedType",
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
  "slug": "mkeqforexpectedtype--bf65d1339c404e99e4af53b1",
  "source": {
    "blob": "c6ed0521e7097a3aade6fa0ef779b2d8b50e38e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 286,
    "line": 276,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variant74404cfc5e7fda86459c76ab29da7d736f9bdb9b55d8e401eb636bf02e775398.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bf65d1339c404e99e4af53b10e9fcc94c6414cd001f7acdd62526e6fd26ffa00",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variant74404cfc5e7fda86459c76ab29da7d736f9bdb9b55d8e401eb636bf02e775398.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a494649bb7e298bbe1f513666ad74042da33f4f6dc182cdcaf7236858605bcea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 276–286.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkEqForExpectedType (expectedType? : Option Expr) : MetaM Expr := do
  let u ← mkFreshLevelMVar
  let ty ← mkFreshExprMVar (mkSort u)
  let eq := mkApp3 (mkConst ``Eq [u]) ty (← mkFreshExprMVar ty) (← mkFreshExprMVar ty)
  if let some expectedType := expectedType? then
    unless ← isDefEq expectedType eq do
      throwError m!"Type{indentD expectedType}\nis expected to be an equality."
  return eq

/-- Ensures the expected type is a HEq. Returns the HEq.
This expression satisfies `Lean.Expr.heq?`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variant74404cfc5e7fda86459c76ab29da7d736f9bdb9b55d8e401eb636bf02e775398.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variant74404cfc5e7fda86459c76ab29da7d736f9bdb9b55d8e401eb636bf02e775398.lean#L276).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6ed0521e7097a3aade6fa0ef779b2d8b50e38e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
