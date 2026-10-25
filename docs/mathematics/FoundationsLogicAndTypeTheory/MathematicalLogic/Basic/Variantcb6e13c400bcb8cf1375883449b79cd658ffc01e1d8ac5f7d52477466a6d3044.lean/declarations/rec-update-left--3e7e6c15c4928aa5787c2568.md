# rec_update_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:192a64a0-135e-45b9-4dae-4e7e43a80e7c",
  "kind": "lemma",
  "lexical_name": "rec_update_left",
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
  "slug": "rec-update-left--3e7e6c15c4928aa5787c2568",
  "source": {
    "blob": "c488e856445eefd306c130e5336696540e8c23fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 135,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcb6e13c400bcb8cf1375883449b79cd658ffc01e1d8ac5f7d52477466a6d3044.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e7e6c15c4928aa5787c2568fa462ef48f1d2e2ccb1793cde6e82a17d8bb97e5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcb6e13c400bcb8cf1375883449b79cd658ffc01e1d8ac5f7d52477466a6d3044.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:192a64a0-135e-45b9-4dae-4e7e43a80e7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma rec_update_left {γ : α ⊕ β → Sort*} [DecidableEq α] [DecidableEq β]
    (f : ∀ a, γ (.inl a)) (g : ∀ b, γ (.inr b)) (a : α) (x : γ (.inl a)) :
    Sum.rec (update f a x) g = update (Sum.rec f g) (.inl a) x :=
  Function.rec_update Sum.inl_injective (Sum.rec · g) (fun _ _ => rfl) (fun
    | _, _, .inl _, h => (h _ rfl).elim
    | _, _, .inr _, _ => rfl) _ _ _

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcb6e13c400bcb8cf1375883449b79cd658ffc01e1d8ac5f7d52477466a6d3044.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcb6e13c400bcb8cf1375883449b79cd658ffc01e1d8ac5f7d52477466a6d3044.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c488e856445eefd306c130e5336696540e8c23fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
