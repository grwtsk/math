# tagged_observe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8454942b-06a6-69cd-9678-52a6c8533113",
  "kind": "theorem",
  "lexical_name": "tagged_observe",
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
  "slug": "tagged-observe--73b320707eda971a3b860532",
  "source": {
    "blob": "5e0d083ec1beb708a9e8efdc39363be16152f8d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 19380,
    "line": 19356,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OriginalClosure/Variantae0ff5f70d14d4ff6c8238c8e96e9149279270c9fd827fb9f23991dc14eb61b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:73b320707eda971a3b86053258499c229cf67c22648c2f808a948f1c4fff6d4c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OriginalClosure/Variantae0ff5f70d14d4ff6c8238c8e96e9149279270c9fd827fb9f23991dc14eb61b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8454942b-06a6-69cd-9678-52a6c8533113`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19356–19380.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tagged_observe (t : Fin 3) (hx : HasType P Γ x (R.source.apply T)) (mx : WellModed γ x .data)
    (ha : HasType P Γ a T) (ma : WellModed γ a .data) :
    Equivalent P Γ γ (R.observe L.code T (R.tagged L.code t T x) a) (R.source.observe T x a) := by
  have hy := h.source.reencode_typed h.first hT mT hx mx
  have hz := h.inner.emb_typed (h.first.sorted hT) (h.first.mode mT) (t == 1) hy.1 hy.2
  have hw := h.tagged_typed hT mT t hx mx
  have hq := h.first.contraCallback_family hT mT ha ma
  have hq' := h.inner.recBody_family (h.first.sorted hT) (h.first.mode mT) hq
  have he := h.outer.emb_recovery (h.inner.sorted (h.first.sorted hT)) (h.inner.mode (h.first.mode mT))
    (t == 2) hz.1 hz.2 hq'
  rw [DoubleCode.recBody_instantiate] at he
  have he' := h.inner.emb_recovery (h.first.sorted hT) (h.first.mode mT) (t == 1) hy.1 hy.2 hq
  rw [DataWrapper.contraCallback_instantiate] at he'
  have he'' := h.source.reencode_evaluation h.first hT mT hx mx ha ma
  have f₁ := h.observe_formula hT mT hw.1 hw.2 ha ma
  have f₂ := h.inner.rec_formula (h.first.sorted hT) (h.first.mode mT) hz.1 hz.2 hq
  have f₃ := (h.first.sound hT mT).2 _ a hy.1 hy.2 ⟨ha,ma⟩
  have f₄ := (h.source.sound hT mT).2 _ a hx mx ⟨ha,ma⟩
  exact f₁.equivalent_trans f₃ f₄ (f₁.equivalent_trans f₂ f₃ he he') he''
end Formed
end ThreeCopyCode

namespace ChannelReturn
variable {Γ : List (Expr S)} {γ : Nat → Mode} {C : Set (Set S)}
    {L : LogicSetup P Γ γ C} {K : ChannelSetup L} (R : ChannelReturn K)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OriginalClosure/Variantae0ff5f70d14d4ff6c8238c8e96e9149279270c9fd827fb9f23991dc14eb61b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OriginalClosure/Variantae0ff5f70d14d4ff6c8238c8e96e9149279270c9fd827fb9f23991dc14eb61b9.lean#L19356).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e0d083ec1beb708a9e8efdc39363be16152f8d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
