# IterM.step_dropWhileWithPostcondition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3915f5a9-a424-c0dc-6c77-c94934cd920c",
  "kind": "theorem",
  "lexical_name": "IterM.step_dropWhileWithPostcondition",
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
  "slug": "iterm-step-dropwhilewithpostcondition--cfdc1e58f156f2cbec27553e",
  "source": {
    "blob": "bd5d316f2ee30f886e73b139de14674181443e42",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 77,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DropWhile/Variant8b8b1161e5e4503976547db97d9a758b1696889294970213f0c3ed139f43d1a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cfdc1e58f156f2cbec27553ec52b9146f70e13e7e3d702bbc9792edc1091aab0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DropWhile/Variant8b8b1161e5e4503976547db97d9a758b1696889294970213f0c3ed139f43d1a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3915f5a9-a424-c0dc-6c77-c94934cd920c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IterM.step_dropWhileWithPostcondition {α m β} [Monad m] [Iterator α m β]
    {it : IterM (α := α) m β} {P} :
    (it.dropWhileWithPostcondition P).step = (do
    match (← it.step).inflate with
    | .yield it' out h =>
        match ← (P out).operation with
        | ⟨.up true, h''⟩ =>
          return .deflate <| .skip (IterM.Intermediate.dropWhileWithPostcondition P true it') (.dropped h rfl h'')
        | ⟨.up false, h''⟩ =>
          return .deflate <| .yield (IterM.Intermediate.dropWhileWithPostcondition P false it') out (.start h rfl h'')
    | .skip it' h =>
      return .deflate <| .skip (IterM.Intermediate.dropWhileWithPostcondition P true it') (.skip h)
    | .done h =>
      return .deflate <| .done (.done h)) := by
  simp [dropWhileWithPostcondition_eq_intermediateDropWhileWithPostcondition, step_intermediateDropWhileWithPostcondition]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DropWhile/Variant8b8b1161e5e4503976547db97d9a758b1696889294970213f0c3ed139f43d1a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DropWhile/Variant8b8b1161e5e4503976547db97d9a758b1696889294970213f0c3ed139f43d1a5.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd5d316f2ee30f886e73b139de14674181443e42` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
