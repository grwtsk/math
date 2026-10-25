# forwardCore₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:96fb7b16e22b5e3817041483973d0ac83c119e567304a5def2ae9c072c14b71c",
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
  "slug": "forwardcore--0f5d2dd5dc9a219e4c0aaae0",
  "source": {
    "blob": "9d2b1ea1fa806e9bacb5af96488710d803f40202",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 103,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variantd55b93e9fbba671017b5efb03d30ab1c864f49e7d99e53e6348ab89782ba2708.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0f5d2dd5dc9a219e4c0aaae0120986d38ead78d3246a3eb2a4e2c5b2e2b56c09",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variantd55b93e9fbba671017b5efb03d30ab1c864f49e7d99e53e6348ab89782ba2708.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:96fb7b16e22b5e3817041483973d0ac83c119e567304a5def2ae9c072c14b71c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–131.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variantd55b93e9fbba671017b5efb03d30ab1c864f49e7d99e53e6348ab89782ba2708.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variantd55b93e9fbba671017b5efb03d30ab1c864f49e7d99e53e6348ab89782ba2708.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d2b1ea1fa806e9bacb5af96488710d803f40202` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
