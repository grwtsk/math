# completeAtomicBooleanAlgebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:02996f26961fe532f4e1dfb2aa8cc13746ad7f8dd393ca283840d1a0b600eef2",
  "kind": "instance",
  "lexical_name": "completeAtomicBooleanAlgebra",
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
  "slug": "completeatomicbooleanalgebra--39b004714ea53c0296365df3",
  "source": {
    "blob": "9c6ee3bb9ba27b16ab01927c83d91c0edadeead3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 339,
    "line": 319,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant8cac3b0a40416cecbbe9acaab0304810463ec389c6b309eb811d263a0d4a8209.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:39b004714ea53c0296365df3f2600ceb705446a993211641afb09d4fbca85b9b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant8cac3b0a40416cecbbe9acaab0304810463ec389c6b309eb811d263a0d4a8209.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:02996f26961fe532f4e1dfb2aa8cc13746ad7f8dd393ca283840d1a0b600eef2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 319–339.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance completeAtomicBooleanAlgebra : CompleteAtomicBooleanAlgebra (SimpleGraph V) where
  top.Adj := Ne
  bot.Adj _ _ := False
  le_top x _ _ h := x.ne_of_adj h
  bot_le _ _ _ h := h.elim
  sdiff_eq x y := by
    ext v w
    refine ⟨fun h => ⟨h.1, ⟨?_, h.2⟩⟩, fun h => ⟨h.1, h.2.2⟩⟩
    rintro rfl
    exact x.irrefl h.1
  inf_compl_le_bot _ _ _ h := False.elim <| h.2.2 h.1
  top_le_sup_compl G v w hvw := by
    by_cases h : G.Adj v w
    · exact Or.inl h
    · exact Or.inr ⟨hvw, h⟩
  isLUB_sSup _ := ⟨fun G hG _ _ hab ↦ ⟨G, hG, hab⟩, fun _ hG _ _ ⟨_, hH, hab⟩ ↦ hG hH hab⟩
  isGLB_sInf _ := ⟨fun _ hG _ _ hab ↦ hab.1 hG, fun _ hG _ _ hab ↦ ⟨fun _ hH => hG hH hab, hab.ne⟩⟩
  iInf_iSup_eq f := by ext; simp [Classical.skolem]

/-- The complete graph on a type `V` is the simple graph with all pairs of distinct vertices. -/
@[wikidata Q45715]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant8cac3b0a40416cecbbe9acaab0304810463ec389c6b309eb811d263a0d4a8209.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant8cac3b0a40416cecbbe9acaab0304810463ec389c6b309eb811d263a0d4a8209.lean#L319).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c6ee3bb9ba27b16ab01927c83d91c0edadeead3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
