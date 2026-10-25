# reportJob

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7cb2cd67478e9feff0476f4132c43ecb517ac3df102f3fe987290a42fdde1bce",
  "kind": "def",
  "lexical_name": "reportJob",
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
  "slug": "reportjob--421a1aa808cf7cbf94f050ec",
  "source": {
    "blob": "dc19a860759f5e616e6f0708ea1fb91a716715a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 127,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant49b96ad53c3c255b9c466516c30a3f20017f30451f60c504a46916d30383b3e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:421a1aa808cf7cbf94f050ecc426005383a56f507ff015fecb7ab8b338bcb5b7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant49b96ad53c3c255b9c466516c30a3f20017f30451f60c504a46916d30383b3e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7cb2cd67478e9feff0476f4132c43ecb517ac3df102f3fe987290a42fdde1bce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def reportJob (job : OpaqueJob) : MonitorM PUnit := do
  let {jobNo, totalJobs, ..} ← get
  let {failLv, outLv, showOptional, out, useAnsi, showProgress, minAction, showTime, ..} ← read
  let {task, caption, optional, ..} := job
  let {log, action, wantsRebuild, buildTime, ..} := task.get.state
  let maxLv := log.maxLv
  let failed := strictAnd log.hasEntries (maxLv ≥ failLv)
  if wantsRebuild then
    modify fun s => if s.wantsRebuild then s else {s with wantsRebuild := true}
  if failed && !optional then
    modify fun s => {s with failures := s.failures.push caption}
  let hasOutput := failed || (log.hasEntries && maxLv ≥ outLv)
  let showJob :=
    (!optional || showOptional) &&
    (hasOutput || (showProgress && !useAnsi && action ≥ minAction))
  if showJob then
    let verb := action.verb failed
    let icon := if hasOutput then maxLv.icon else '✔'
    let opt := if optional then " (Optional)" else ""
    let time := if showTime && buildTime > 0 then s!" ({formatTime buildTime})" else ""
    let caption := s!"{icon} [{jobNo}/{totalJobs}]{opt} {verb} {caption}{time}"
    let caption :=
      if useAnsi then
        let color := if hasOutput then maxLv.ansiColor else "32"
        Ansi.chalk color caption
      else
        caption
    let resetCtrl ← modifyGet fun s => (s.resetCtrl, {s with resetCtrl := ""})
    print s!"{resetCtrl}{caption}\n"
    if hasOutput then
      let outLv := if failed then .trace else outLv
      log.replay (logger := .stream out outLv useAnsi)
    flush
where
  formatTime ms :=
    if ms > 10000 then s!"{ms / 1000}s"
    else if ms > 1000 then s!"{(ms) / 1000}.{(ms+50) / 100 % 10}s"
    else s!"{ms}ms"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant49b96ad53c3c255b9c466516c30a3f20017f30451f60c504a46916d30383b3e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant49b96ad53c3c255b9c466516c30a3f20017f30451f60c504a46916d30383b3e7.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc19a860759f5e616e6f0708ea1fb91a716715a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
