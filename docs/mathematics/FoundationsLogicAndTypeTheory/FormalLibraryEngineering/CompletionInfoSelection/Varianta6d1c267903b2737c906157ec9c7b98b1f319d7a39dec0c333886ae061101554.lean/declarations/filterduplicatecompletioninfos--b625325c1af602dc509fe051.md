# filterDuplicateCompletionInfos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e58c9d28c36bc49434d1875f3d4bc59db49c6dd20803211910aaf1520cee6fa3",
  "kind": "def",
  "lexical_name": "filterDuplicateCompletionInfos",
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
  "slug": "filterduplicatecompletioninfos--b625325c1af602dc509fe051",
  "source": {
    "blob": "981f61285a2350397af47c4fe7e8d1a0aa68e5ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 24,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompletionInfoSelection/Varianta6d1c267903b2737c906157ec9c7b98b1f319d7a39dec0c333886ae061101554.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b625325c1af602dc509fe051df8370a0ae39c205849c9746f92c3ff5a4a329e0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompletionInfoSelection/Varianta6d1c267903b2737c906157ec9c7b98b1f319d7a39dec0c333886ae061101554.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e58c9d28c36bc49434d1875f3d4bc59db49c6dd20803211910aaf1520cee6fa3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def filterDuplicateCompletionInfos
    (infos : Array ContextualizedCompletionInfo)
    : Array ContextualizedCompletionInfo := Id.run do
  -- We don't expect there to be too many duplicate completion infos,
  -- so it's fine if this is quadratic (we don't need to implement `Hashable` / `LT` this way).
  let mut deduplicatedInfos : Array ContextualizedCompletionInfo := #[]
  for i in infos do
    if deduplicatedInfos.any (fun di => eq di.info i.info) then
      continue
    deduplicatedInfos := deduplicatedInfos.push i
  deduplicatedInfos
where
  eq : CompletionInfo → CompletionInfo → Bool
    | .dot ti₁ .., .dot ti₂ .. =>
      ti₁.stx.eqWithInfo ti₂.stx && ti₁.expr == ti₂.expr
    | .id stx₁ id₁ .., .id stx₂ id₂ .. =>
      stx₁.eqWithInfo stx₂ && id₁ == id₂
    | .dotId stx₁ id₁ .., .id stx₂ id₂ .. =>
      stx₁.eqWithInfo stx₂ && id₁ == id₂
    | .fieldId stx₁ id₁? _ structName₁, .fieldId stx₂ id₂? _ structName₂ =>
      stx₁.eqWithInfo stx₂ && id₁? == id₂? && structName₁ == structName₂
    | .namespaceId stx₁, .namespaceId stx₂ =>
      stx₁.eqWithInfo stx₂
    | .option stx₁, .option stx₂ =>
      stx₁.eqWithInfo stx₂
    | .errorName stx₁ .., .errorName stx₂ .. =>
      stx₁.eqWithInfo stx₂
    | .endSection stx₁ .., .endSection stx₂ .. =>
      stx₁.eqWithInfo stx₂
    | .tactic stx₁, .tactic stx₂ =>
      stx₁.eqWithInfo stx₂
    | _, _ =>
      false

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompletionInfoSelection/Varianta6d1c267903b2737c906157ec9c7b98b1f319d7a39dec0c333886ae061101554.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompletionInfoSelection/Varianta6d1c267903b2737c906157ec9c7b98b1f319d7a39dec0c333886ae061101554.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `981f61285a2350397af47c4fe7e8d1a0aa68e5ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
