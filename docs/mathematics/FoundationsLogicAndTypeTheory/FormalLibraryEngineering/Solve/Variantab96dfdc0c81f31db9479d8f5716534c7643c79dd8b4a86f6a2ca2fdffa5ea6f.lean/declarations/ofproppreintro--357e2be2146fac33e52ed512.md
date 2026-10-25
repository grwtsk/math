# ofPropPreIntro?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2f2a4fee771f7a876f7abb0f884630713e60a79394d0b70aa71a4a3190eb35a1",
  "kind": "def",
  "lexical_name": "ofPropPreIntro?",
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
  "slug": "ofproppreintro--357e2be2146fac33e52ed512",
  "source": {
    "blob": "5628e82bb9a7a689b3776d46674102654293213e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 156,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Solve/Variantab96dfdc0c81f31db9479d8f5716534c7643c79dd8b4a86f6a2ca2fdffa5ea6f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:357e2be2146fac33e52ed5123f0468c064e70b66e8066e590eb58ffe19cd147f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Solve/Variantab96dfdc0c81f31db9479d8f5716534c7643c79dd8b4a86f6a2ca2fdffa5ea6f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2f2a4fee771f7a876f7abb0f884630713e60a79394d0b70aa71a4a3190eb35a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def ofPropPreIntro? (goal : MVarId) (pre : Expr) : VCGenM (Option (MVarId × FVarId)) := do
  let_expr CompleteLattice.ofProp _l _inst φ := pre | return none
  if φ.isTrue then return none
  return some (← introPre (← read).backwardRules.ofPropPreIntro goal)

/-- Strategy 7: move a bare `Prop` precondition `φ ⊑ rhs` into the local context via
`le_of_imp_top_le`, leaving `⊤ ⊑ rhs`. Runs after `True` and `⊤` preconditions are handled, so
`φ` carries information worth keeping. Returns the new goal and the introduced hypothesis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Solve/Variantab96dfdc0c81f31db9479d8f5716534c7643c79dd8b4a86f6a2ca2fdffa5ea6f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Solve/Variantab96dfdc0c81f31db9479d8f5716534c7643c79dd8b4a86f6a2ca2fdffa5ea6f.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5628e82bb9a7a689b3776d46674102654293213e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
