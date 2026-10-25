# rwIfOrMatcher

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:36b6dbb9738dac7e99cd00c88f1275ed0da4afffd158b0dfb5eb418d4575eb53",
  "kind": "def",
  "lexical_name": "rwIfOrMatcher",
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
  "slug": "rwiformatcher--0c197cceba6ccfcc02b0d2db",
  "source": {
    "blob": "e448379fef222a6051dc15eca612b4320ecd15c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 195,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variantf93e0d46249f57be688b2bd817fe19c1e3c0361903b98ac32da369d7665b5638.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0c197cceba6ccfcc02b0d2db11a9baa63dd0fd83e68ee2dd8d3d82d3fb64f991",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variantf93e0d46249f57be688b2bd817fe19c1e3c0361903b98ac32da369d7665b5638.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:36b6dbb9738dac7e99cd00c88f1275ed0da4afffd158b0dfb5eb418d4575eb53`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def rwIfOrMatcher (idx : Nat) (e : Expr) : MetaM Simp.Result := do
  if e.isAppOf ``ite || e.isAppOf ``dite then
    let c := e.getArg! 1
    let c := if idx = 0 then c else mkNot c
    let .some fv ← findLocalDeclWithType? c
      | throwError "Failed to find proof for if condition {c}"
    rwIfWith (mkFVar fv) e
  else
    rwMatcher idx e
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variantf93e0d46249f57be688b2bd817fe19c1e3c0361903b98ac32da369d7665b5638.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variantf93e0d46249f57be688b2bd817fe19c1e3c0361903b98ac32da369d7665b5638.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e448379fef222a6051dc15eca612b4320ecd15c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
