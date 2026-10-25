# Iter.Intermediate.step_appendSnd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d6a55f72-6904-b1e1-de2b-d09a165bf7c2",
  "kind": "theorem",
  "lexical_name": "Iter.Intermediate.step_appendSnd",
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
  "slug": "iter-intermediate-step-appendsnd--b4d426a1ccb91cedf1bda824",
  "source": {
    "blob": "c5b37b23ecc7d62c79f01d977985f0e0818351d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 56,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variant785d5a9d70f81efa8fbd955443ed86e3e82bad5dfeac446ddd068b25fefa8563.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4d426a1ccb91cedf1bda8241f3314508d1138815fc5775a1a61f51471859475",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variant785d5a9d70f81efa8fbd955443ed86e3e82bad5dfeac446ddd068b25fefa8563.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d6a55f72-6904-b1e1-de2b-d09a165bf7c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Iter.Intermediate.step_appendSnd {α₁ α₂ β : Type w}
    [Iterator α₁ Id β] [Iterator α₂ Id β]
    {it₂ : Iter (α := α₂) β} :
    (Iter.Intermediate.appendSnd α₁ it₂).step =
      match it₂.step with
      | .yield it₂' out h => .yield (Iter.Intermediate.appendSnd α₁ it₂') out (.sndYield h)
      | .skip it₂' h => .skip (Iter.Intermediate.appendSnd α₁ it₂') (.sndSkip h)
      | .done h => .done (.sndDone h) := by
  simp only [Iter.step, appendSnd, toIterM_toIter, IterM.Intermediate.step_appendSnd, Id.run_bind]
  cases it₂.toIterM.step.run.inflate using PlausibleIterStep.casesOn <;> simp

@[cbv_eval, simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variant785d5a9d70f81efa8fbd955443ed86e3e82bad5dfeac446ddd068b25fefa8563.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variant785d5a9d70f81efa8fbd955443ed86e3e82bad5dfeac446ddd068b25fefa8563.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5b37b23ecc7d62c79f01d977985f0e0818351d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
