# IterM.Equiv.step_eq.aux_subtypeMk_congr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f20833768a33bdf44dcde85294657a9dfdc94161",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 97,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8e/8e1c264235ebde3200191488a1b61f6c22b911886c7d3c384b23eadffcb4ed21.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7fc2db51-e94c-abaf-2e5f-19affe79244a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8d1c701d-05d0-af75-a8d6-96b7e760096d",
  "kind": "theorem",
  "lexical_name": "IterM.Equiv.step_eq.aux_subtypeMk_congr",
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
  "slug": "iterm-equiv-step-eq-aux-subtypemk-congr--0e9e8a3ce24f946d846c6505",
  "source": {
    "blob": "f20833768a33bdf44dcde85294657a9dfdc94161",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 97,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/StepCongr/Variant8e1c264235ebde3200191488a1b61f6c22b911886c7d3c384b23eadffcb4ed21.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e9e8a3ce24f946d846c6505615cd22b1f389e206863d5d9e4183f0ba4b80ebf",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/StepCongr/Variant8e1c264235ebde3200191488a1b61f6c22b911886c7d3c384b23eadffcb4ed21.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d1c701d-05d0-af75-a8d6-96b7e760096d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem IterM.Equiv.step_eq.aux_subtypeMk_congr {α : Type u} {P Q R : α → Prop}
    {h₁ : ∀ a, P a → R a}
    {h₂ : ∀ a, Q a → R a} (h : P = Q) :
    (fun (a : α) (ha : P a) => Subtype.mk a (h₁ a ha)) ≍
      (fun (a : α) (ha : Q a) => Subtype.mk a (h₂ a ha)) := by
  cases h
  simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/StepCongr/Variant8e1c264235ebde3200191488a1b61f6c22b911886c7d3c384b23eadffcb4ed21.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/StepCongr/Variant8e1c264235ebde3200191488a1b61f6c22b911886c7d3c384b23eadffcb4ed21.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f20833768a33bdf44dcde85294657a9dfdc94161` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
