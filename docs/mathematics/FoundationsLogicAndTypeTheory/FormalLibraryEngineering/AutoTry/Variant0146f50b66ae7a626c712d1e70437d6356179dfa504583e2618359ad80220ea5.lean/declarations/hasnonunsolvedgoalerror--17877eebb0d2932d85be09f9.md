# hasNonUnsolvedGoalError

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c19dde9702a9f9c96a578b13ee7c46bade9767dd268a78e0c36b7abe45db17eb",
  "kind": "def",
  "lexical_name": "hasNonUnsolvedGoalError",
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
  "slug": "hasnonunsolvedgoalerror--17877eebb0d2932d85be09f9",
  "source": {
    "blob": "6b7e4fa75788992bb30fdb5933e81e9f5d28c4d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 448,
    "line": 424,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AutoTry/Variant0146f50b66ae7a626c712d1e70437d6356179dfa504583e2618359ad80220ea5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:17877eebb0d2932d85be09f909196502862d03f5bb84e5e02aa4f48e00a54068",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AutoTry/Variant0146f50b66ae7a626c712d1e70437d6356179dfa504583e2618359ad80220ea5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c19dde9702a9f9c96a578b13ee7c46bade9767dd268a78e0c36b7abe45db17eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 424–448.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def hasNonUnsolvedGoalError (stx : Syntax) : CommandElabM Bool := do
  let some range := stx.getRange? | return false
  let fileMap := (← read).fileMap
  let msgs := (← get).messages
  return msgs.reportedPlusUnreported.any fun m =>
    let inRange := range.contains (fileMap.ofPosition m.pos) (includeStop := true)
    let isError := m.severity matches .error
    let isUnsolved := m.data.hasTag (· == `Tactic.unsolvedGoals)
    inRange && isError && !isUnsolved

/--
Returns `true` iff a suggestion may safely be inserted at the candidate's insertion
point -- i.e., iff a tactic typed there would run on exactly one clearly-identified
goal. Uses `InfoTree.goalsAt?`, the same runtime-state query the LSP
`getInteractiveGoals` request drives:

* Exactly one `TacticInfo` runtime instance covers the insertion point. If two
  instances reach the same position (`<;>` re-entered its rhs against different
  goal states, etc.), suppress -- the appended tactic would run for each of them.
* Reading off that instance the state the newly-inserted tactic would actually
  run against: `goalsBefore` for `sorry` (the suggestion replaces the `sorry`)
  and for empty bodies (the suggestion is the first thing to run in the body);
  `goalsAfter` for non-empty bodies (the suggestion runs after the existing
  tactics). That state must have exactly one goal.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AutoTry/Variant0146f50b66ae7a626c712d1e70437d6356179dfa504583e2618359ad80220ea5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AutoTry/Variant0146f50b66ae7a626c712d1e70437d6356179dfa504583e2618359ad80220ea5.lean#L424).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b7e4fa75788992bb30fdb5933e81e9f5d28c4d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
