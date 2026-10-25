# IterM.step_intermediateDropWhileM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "52af44480b3888645ae0c0accf80a561838948db",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 85,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/01/01dc1faed1dda44273f006780bde24faa93699bf258c81651f929002774090dc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:109ba4b6-e0c2-9a15-e882-8099a0690a45",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1a3ee8d1-a654-3186-0170-fe48199ad4f8",
  "kind": "theorem",
  "lexical_name": "IterM.step_intermediateDropWhileM",
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
  "slug": "iterm-step-intermediatedropwhilem--889ec6f70f9eab4125b6c630",
  "source": {
    "blob": "52af44480b3888645ae0c0accf80a561838948db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 85,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DropWhile/Variant01dc1faed1dda44273f006780bde24faa93699bf258c81651f929002774090dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:889ec6f70f9eab4125b6c63037d39e4f42e6b91031faa113dea4ca4a651cdbef",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DropWhile/Variant01dc1faed1dda44273f006780bde24faa93699bf258c81651f929002774090dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1a3ee8d1-a654-3186-0170-fe48199ad4f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IterM.step_intermediateDropWhileM {α m β} [Monad m] [MonadAttach m] [LawfulMonad m]
    [Iterator α m β] {it : IterM (α := α) m β} {P} {dropping} :
    (IterM.Intermediate.dropWhileM P dropping it).step = (do
    match (← it.step).inflate with
    | .yield it' out h =>
      if h' : dropping = true then
        match ← MonadAttach.attach (P out) with
        | ⟨.up true, hP⟩ =>
          return .deflate <| .skip (IterM.Intermediate.dropWhileM P true it') (.dropped h h' hP)
        | ⟨.up false, hP⟩ =>
          return .deflate <| .yield (IterM.Intermediate.dropWhileM P false it') out (.start h h' hP)
      else
        return .deflate <| .yield (IterM.Intermediate.dropWhileM P false it') out
            (.yield h (Bool.not_eq_true _ ▸ h'))
    | .skip it' h =>
      return .deflate <| .skip (IterM.Intermediate.dropWhileM P dropping it') (.skip h)
    | .done h =>
      return .deflate <| .done (.done h)) := by
  simp only [Intermediate.dropWhileM_eq_dropWhileWithPostcondition, step_intermediateDropWhileWithPostcondition]
  apply bind_congr
  intro step
  cases step.inflate using PlausibleIterStep.casesOn
  · simp only [Function.comp_apply, PostconditionT.operation_attachLift, PlausibleIterStep.skip,
    PlausibleIterStep.yield]
    split
    · apply bind_congr
      rintro ⟨⟨x⟩, hx⟩
      cases x <;> rfl
    · rfl
  · rfl
  · rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DropWhile/Variant01dc1faed1dda44273f006780bde24faa93699bf258c81651f929002774090dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DropWhile/Variant01dc1faed1dda44273f006780bde24faa93699bf258c81651f929002774090dc.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52af44480b3888645ae0c0accf80a561838948db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
