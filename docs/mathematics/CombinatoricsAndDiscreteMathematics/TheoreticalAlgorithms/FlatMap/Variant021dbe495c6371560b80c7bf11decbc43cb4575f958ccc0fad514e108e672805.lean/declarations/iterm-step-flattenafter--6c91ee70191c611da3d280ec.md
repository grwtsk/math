# IterM.step_flattenAfter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ae5ee446-28f9-d074-068d-c16fc66af9f9",
  "kind": "theorem",
  "lexical_name": "IterM.step_flattenAfter",
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
  "slug": "iterm-step-flattenafter--6c91ee70191c611da3d280ec",
  "source": {
    "blob": "abf1cf005a5797933028c9816f6c43f50f7fbcb9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 29,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant021dbe495c6371560b80c7bf11decbc43cb4575f958ccc0fad514e108e672805.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c91ee70191c611da3d280ec4da148feced7774a8f0398d0fdcbfe70b7a9aa30",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant021dbe495c6371560b80c7bf11decbc43cb4575f958ccc0fad514e108e672805.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ae5ee446-28f9-d074-068d-c16fc66af9f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IterM.step_flattenAfter {α α₂ β : Type w} {m : Type w → Type w'} [Monad m]
    [Iterator α m (IterM (α := α₂) m β)] [Iterator α₂ m β]
    {it₁ : IterM (α := α) m (IterM (α := α₂) m β)} {it₂ : Option (IterM (α := α₂) m β)} :
  (it₁.flattenAfter it₂).step = (
    match it₂ with
    | none => do
      match (← it₁.step).inflate with
      | .yield it₁' it₂' h => return .deflate (.skip (it₁'.flattenAfter (some it₂')) (.outerYield h))
      | .skip it₁' h => return .deflate (.skip (it₁'.flattenAfter none) (.outerSkip h))
      | .done h => return .deflate (.done (.outerDone h))
    | some it₂ => do
      match (← it₂.step).inflate with
      | .yield it₂' out h => return .deflate (.yield (it₁.flattenAfter (some it₂')) out (.innerYield h))
      | .skip it₂' h => return .deflate (.skip (it₁.flattenAfter (some it₂')) (.innerSkip h))
      | .done h => return .deflate (.skip (it₁.flattenAfter none) (.innerDone h))) := by
  cases it₂
  all_goals
  · apply bind_congr; intro step
    cases step.inflate using PlausibleIterStep.casesOn <;> simp [IterM.flattenAfter] <;> rfl

namespace Iterators.Types

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant021dbe495c6371560b80c7bf11decbc43cb4575f958ccc0fad514e108e672805.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant021dbe495c6371560b80c7bf11decbc43cb4575f958ccc0fad514e108e672805.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `abf1cf005a5797933028c9816f6c43f50f7fbcb9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
