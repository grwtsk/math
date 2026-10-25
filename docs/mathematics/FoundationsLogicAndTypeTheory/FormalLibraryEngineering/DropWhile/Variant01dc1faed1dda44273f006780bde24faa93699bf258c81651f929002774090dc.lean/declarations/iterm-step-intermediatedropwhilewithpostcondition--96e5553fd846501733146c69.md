# IterM.step_intermediateDropWhileWithPostcondition

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
      "line": 45,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/01/01dc1faed1dda44273f006780bde24faa93699bf258c81651f929002774090dc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2f4d0a68-904b-89b4-908c-9be76a473d34",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8d7a9927-2121-42b4-9006-37d3ba16cf03",
  "kind": "theorem",
  "lexical_name": "IterM.step_intermediateDropWhileWithPostcondition",
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
  "slug": "iterm-step-intermediatedropwhilewithpostcondition--96e5553fd846501733146c69",
  "source": {
    "blob": "52af44480b3888645ae0c0accf80a561838948db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 45,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DropWhile/Variant01dc1faed1dda44273f006780bde24faa93699bf258c81651f929002774090dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:96e5553fd846501733146c694fd4d7167fdea8d7df4f3456d93edce2f7ef798e",
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

Occurrence: `result:8d7a9927-2121-42b4-9006-37d3ba16cf03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IterM.step_intermediateDropWhileWithPostcondition {α m β} [Monad m] [Iterator α m β]
    {it : IterM (α := α) m β} {P} {dropping} :
    (IterM.Intermediate.dropWhileWithPostcondition P dropping it).step = (do
    match (← it.step).inflate with
    | .yield it' out h =>
      if h' : dropping = true then
        match ← (P out).operation with
        | ⟨.up true, h''⟩ =>
          return .deflate <| .skip (IterM.Intermediate.dropWhileWithPostcondition P true it') (.dropped h h' h'')
        | ⟨.up false, h''⟩ =>
          return .deflate <| .yield (IterM.Intermediate.dropWhileWithPostcondition P false it') out (.start h h' h'')
      else
        return .deflate <| .yield (IterM.Intermediate.dropWhileWithPostcondition P false it') out
            (.yield h (Bool.not_eq_true _ ▸ h'))
    | .skip it' h =>
      return .deflate <| .skip (IterM.Intermediate.dropWhileWithPostcondition P dropping it') (.skip h)
    | .done h =>
      return .deflate <| .done (.done h)) := by
  simp only [step, Iterator.step, Intermediate.dropWhileWithPostcondition]
  apply bind_congr
  intro step
  simp
  cases h : step.inflate using PlausibleIterStep.casesOn <;> rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DropWhile/Variant01dc1faed1dda44273f006780bde24faa93699bf258c81651f929002774090dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DropWhile/Variant01dc1faed1dda44273f006780bde24faa93699bf258c81651f929002774090dc.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52af44480b3888645ae0c0accf80a561838948db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
