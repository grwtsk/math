# unifyEqs?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d612e957ff2188cb6f0611f5f1c45c5f6e99cfc0bd1af937b09ae4586c495e51",
  "kind": "def",
  "lexical_name": "unifyEqs?",
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
  "slug": "unifyeqs--c7ca0b07dfaf05aa06b8b1ce",
  "source": {
    "blob": "28a0c4b825a83c9f24683c035aabcb13c8cc2651",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 231,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cases/Variantd9fb87a4567100d9828cefe632b0a594e9850d48412daed04a252ebb82443385.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c7ca0b07dfaf05aa06b8b1ce1e51311e5d36c23caf58b7dffad7567a1a22c643",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cases/Variantd9fb87a4567100d9828cefe632b0a594e9850d48412daed04a252ebb82443385.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d612e957ff2188cb6f0611f5f1c45c5f6e99cfc0bd1af937b09ae4586c495e51`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def unifyEqs? (numEqs : Nat) (mvarId : MVarId) (subst : FVarSubst) (caseName? : Option Name := none): MetaM (Option (MVarId × FVarSubst)) := withIncRecDepth do
  if numEqs == 0 then
    return some (mvarId, subst)
  else
    let (eqFVarId, mvarId) ← mvarId.intro1
    if let some { mvarId, subst, numNewEqs } ← unifyEq? mvarId eqFVarId subst MVarId.acyclic caseName? then
      unifyEqs? (numEqs - 1 + numNewEqs) mvarId subst caseName?
    else
      return none

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cases/Variantd9fb87a4567100d9828cefe632b0a594e9850d48412daed04a252ebb82443385.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cases/Variantd9fb87a4567100d9828cefe632b0a594e9850d48412daed04a252ebb82443385.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28a0c4b825a83c9f24683c035aabcb13c8cc2651` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
