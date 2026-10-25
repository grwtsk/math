# scriptsCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e9bb668ca73c031ee54c63d3ae37626ee83d7c0e8993564e82c2d6ae3d07f428",
  "kind": "def",
  "lexical_name": "scriptsCore",
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
  "slug": "scriptscore--74c77db93ea4a178ad6df8ca",
  "source": {
    "blob": "ab8b47480fd625687b0bb758cca04ab8393c0978",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 91,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Report/Varianta361f18a425b28b7c678e603db186906ec2e55a9381d09e6128bc6b5f8e79571.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:74c77db93ea4a178ad6df8ca87e7daf5b7e45b7530d6ab58d31064dc2eefec86",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Report/Varianta361f18a425b28b7c678e603db186906ec2e55a9381d09e6128bc6b5f8e79571.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e9bb668ca73c031ee54c63d3ae37626ee83d7c0e8993564e82c2d6ae3d07f428`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def scriptsCore (nSlowest := 30) (nontrivialOnly := false) :
    StatsReport := λ statsArray => Id.run do
  let statsArray :=
    if nontrivialOnly then
      statsArray.filter (match ·.stats.scriptGenerated with | none => false | some g => g.hasMVar)
    else
      statsArray
  let mut staticallyStructured := 0
  let mut perfectlyStaticallyStructured := 0
  let mut dynamicallyStructured := 0
  let mut perfectlyDynamicallyStructured := 0
  let mut totalTimes := Array.mkEmpty statsArray.size
  let mut scriptTimes := Array.mkEmpty statsArray.size
  for stats in statsArray do
    let stats := stats.stats
    totalTimes := totalTimes.push stats.total
    match stats.scriptGenerated with
    | none => pure ()
    | some g =>
      scriptTimes := scriptTimes.push stats.script
      match g.method with
      | .static =>
        staticallyStructured := staticallyStructured + 1
        if g.perfect then
          perfectlyStaticallyStructured := perfectlyStaticallyStructured + 1
      | .dynamic =>
        dynamicallyStructured := dynamicallyStructured + 1
        if g.perfect then
          perfectlyDynamicallyStructured := perfectlyDynamicallyStructured + 1

  let slowest := statsArray.qsort (λ s₁ s₂ => s₁.stats.script > s₂.stats.script)
  let slowest := slowest[:nSlowest].toArray
  let nSlowest := min slowest.size nSlowest
  let slowestFmt := slowest.map λ e =>
    let pos :=
      match e.position? with
      | some pos => f!"{pos.line}:{pos.column}"
      | none => f!"?:?"
    f!"{e.fileName}:{pos}: script {e.stats.script}, total {e.stats.total}, type {fmtScriptGenerated e.stats.scriptGenerated}"

  f!"Statistics for {statsArray.size} Aesop calls{if nontrivialOnly then f!" with nontrivial script generation" else ""} in current and imported modules\n\
     Total Aesop time:         {fmtTimes totalTimes}\n\
     Script generation time:   {fmtTimes scriptTimes}\n\
     Scripts generated:        {scriptTimes.size}\n\
     - Statically  structured: {staticallyStructured}\n" ++
  f!"  - perfectly:            {perfectlyStaticallyStructured}\n\
     - Dynamically structured: {dynamicallyStructured}\n" ++
  f!"  - perfectly:            {perfectlyDynamicallyStructured}\n\
     \n\
     {nSlowest} Aesop calls with slowest script generation:\n\
     {Format.joinSep slowestFmt.toList "\n"}"
where
  fmtScriptGenerated : Option ScriptGenerated → Format
    | none => "<none>"
    | some g => f!"{g.method} (perfect: {g.perfect})"

  fmtTimes (ns : Array Nanos) : Format :=
    let ns := ns.qsortOrd
    let total : Nanos := ns.foldl (init := 0) (· + ·)
    let average := if ns.size == 0 then 0 else total / ns.size
    let min := ns[0]?.getD 0
    let max := ns[ns.size - 1]?.getD 0
    let median := sortedMedianD 0 ns
    let pct80 := sortedPercentileD ⟨0.80⟩ 0 ns
    let pct95 := sortedPercentileD ⟨0.95⟩ 0 ns
    let pct99 := sortedPercentileD ⟨0.99⟩ 0 ns
    f!"{total} (min = {min}, avg = {average}, median = {median}, 80pct = {pct80}, 95pct = {pct95}, 99pct = {pct99}, max = {max})"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Report/Varianta361f18a425b28b7c678e603db186906ec2e55a9381d09e6128bc6b5f8e79571.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Report/Varianta361f18a425b28b7c678e603db186906ec2e55a9381d09e6128bc6b5f8e79571.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab8b47480fd625687b0bb758cca04ab8393c0978` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
