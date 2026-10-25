# SectionState.insertResult

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ba9793a0b930d3b5a940a7fd4839737ec9684aeab9f80ec51f522cc2142a3006",
  "kind": "def",
  "lexical_name": "SectionState.insertResult",
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
  "slug": "sectionstate-insertresult--649b7914895adef3538eea70",
  "source": {
    "blob": "75247336c5b88ed0b15c64d8acb7ca3ba207634f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 87,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SectionState/Variantfcb1695d83a2fd395558870bba1ec46d42c44b12a017d46eaa6f61b87584e558.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:649b7914895adef3538eea70b9aae6ecf4dba1aa2be9605837388a2f62124e28",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SectionState/Variantfcb1695d83a2fd395558870bba1ec46d42c44b12a017d46eaa6f61b87584e558.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ba9793a0b930d3b5a940a7fd4839737ec9684aeab9f80ec51f522cc2142a3006`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def SectionState.insertResult (s : SectionState α) (res : Result α)
    (isDup : α → α → MetaM Bool) : MetaM (SectionState α) := do
  let { results, errors } := s
  let results ← fun c₁ c₂ c₃ c₄ ↦
    (res.insertInArray results isDup c₁ c₂ c₃ c₄).catchExceptions fun ex ↦ do
    if let .internal id _ := ex then
      if id == interruptExceptionId then
        return default
    panic! s!"an error occurred when checking for duplicate entries:\n{← ex.toMessageData.toString}"
  return { results, errors }

/-- Whether the section corresponds to local hypotheses, declarations from the current file,
or imported declarations. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SectionState/Variantfcb1695d83a2fd395558870bba1ec46d42c44b12a017d46eaa6f61b87584e558.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SectionState/Variantfcb1695d83a2fd395558870bba1ec46d42c44b12a017d46eaa6f61b87584e558.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75247336c5b88ed0b15c64d8acb7ca3ba207634f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
