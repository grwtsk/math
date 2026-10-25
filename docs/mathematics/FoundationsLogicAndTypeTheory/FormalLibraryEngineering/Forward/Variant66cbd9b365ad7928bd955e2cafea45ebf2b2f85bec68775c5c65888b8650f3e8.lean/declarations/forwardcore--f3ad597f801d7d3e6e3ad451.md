# forwardCore₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2b3fec775b1a4f6f6c73fa304e766921501d9f209dbd72c425f926b90b1fdcc9",
  "kind": "def",
  "lexical_name": "forwardCore₂",
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
  "slug": "forwardcore--f3ad597f801d7d3e6e3ad451",
  "source": {
    "blob": "92e2f68ea6c18c166e7a70a16301c318f43ae942",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 95,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variant66cbd9b365ad7928bd955e2cafea45ebf2b2f85bec68775c5c65888b8650f3e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f3ad597f801d7d3e6e3ad451ef1e268b44a35461ea4b92eed939bee0853afc19",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variant66cbd9b365ad7928bd955e2cafea45ebf2b2f85bec68775c5c65888b8650f3e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2b3fec775b1a4f6f6c73fa304e766921501d9f209dbd72c425f926b90b1fdcc9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def forwardCore₂ (t : ElabRuleTerm) (immediate? : Option (Array Name))
    (pat? : Option RulePattern) (phase : PhaseSpec) (isDestruct : Bool) :
    MetaM ForwardRule := do
  let expr ← t.expr
  let name ← t.name
  let immediate ← getImmediatePremises (← inferType expr) pat? immediate?
  let info ← ForwardRuleInfo.ofExpr expr pat? immediate
  aesop_trace[forward] "rule type:{indentExpr $ ← inferType expr}"
  withConstAesopTraceNode .forward (return m!"slot clusters") do
    aesop_trace[forward] do
      for h : i in [:info.slotClusters.size] do
        let cluster := info.slotClusters[i]
        withConstAesopTraceNode .forward (return m!"cluster {i}") do
          for s in cluster do
            aesop_trace![forward] "slot {s.index} (premise {s.premiseIndex}, deps {s.deps.toArray.qsortOrd}, common {s.common.toArray.qsortOrd}, forward deps {s.forwardDeps.qsortOrd})"
  aesop_trace[forward] "conclusion deps: {info.conclusionDeps}"
  let prio :=
    match phase with
    | .safe info => .normSafe info.penalty
    | .norm info => .normSafe info.penalty
    | .unsafe info => .unsafe info.successProbability
  let builder := if isDestruct then .destruct else .forward
  let name := { phase := phase.phase, name, scope := t.scope, builder }
  return {
    toForwardRuleInfo := info
    term := t.toRuleTerm
    name, prio
  }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variant66cbd9b365ad7928bd955e2cafea45ebf2b2f85bec68775c5c65888b8650f3e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variant66cbd9b365ad7928bd955e2cafea45ebf2b2f85bec68775c5c65888b8650f3e8.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92e2f68ea6c18c166e7a70a16301c318f43ae942` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
