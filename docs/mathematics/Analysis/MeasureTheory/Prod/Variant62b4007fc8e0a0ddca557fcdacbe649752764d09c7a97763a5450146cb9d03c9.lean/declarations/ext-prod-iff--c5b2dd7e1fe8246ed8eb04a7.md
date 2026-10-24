# ext_prod₃_iff'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dcda187671ab2b4ded4e301fb30ca0391eb41c3b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 667,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/62/62b4007fc8e0a0ddca557fcdacbe649752764d09c7a97763a5450146cb9d03c9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:57a9faab-f338-8fc3-57cf-2306a5aa74a3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f95b9f7d-7033-fa1a-90a8-f6e9d0669b88",
  "kind": "lemma",
  "lexical_name": "ext_prod₃_iff'",
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
  "slug": "ext-prod-iff--c5b2dd7e1fe8246ed8eb04a7",
  "source": {
    "blob": "dcda187671ab2b4ded4e301fb30ca0391eb41c3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 688,
    "line": 667,
    "path": "GRWTSK/Analysis/MeasureTheory/Prod/Variant62b4007fc8e0a0ddca557fcdacbe649752764d09c7a97763a5450146cb9d03c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c5b2dd7e1fe8246ed8eb04a75b04154ab9e870ab8c802a250c2e79419ff01eca",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Prod/Variant62b4007fc8e0a0ddca557fcdacbe649752764d09c7a97763a5450146cb9d03c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f95b9f7d-7033-fa1a-90a8-f6e9d0669b88`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 667–688.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ext_prod₃_iff' {α β γ : Type*} {mα : MeasurableSpace α} {mβ : MeasurableSpace β}
    {mγ : MeasurableSpace γ} {μ ν : Measure ((α × β) × γ)} [IsFiniteMeasure μ] :
    μ = ν ↔ (∀ {s : Set α} {t : Set β} {u : Set γ},
      MeasurableSet s → MeasurableSet t → MeasurableSet u →
      μ ((s ×ˢ t) ×ˢ u) = ν ((s ×ˢ t) ×ˢ u)) := by
  rw [← MeasurableEquiv.prodAssoc.map_measurableEquiv_injective.eq_iff, ext_prod₃_iff]
  have h_eq (ν : Measure ((α × β) × γ)) {s : Set α} {t : Set β} {u : Set γ}
      (hs : MeasurableSet s) (ht : MeasurableSet t) (hu : MeasurableSet u) :
      ν.map MeasurableEquiv.prodAssoc (s ×ˢ (t ×ˢ u)) = ν ((s ×ˢ t) ×ˢ u) := by
    rw [map_apply (by fun_prop) (hs.prod (ht.prod hu))]
    congr 1 with x
    simp [MeasurableEquiv.prodAssoc]
  refine ⟨fun h s t u hs ht hu ↦ ?_, fun h s t u hs ht hu ↦ ?_⟩ <;> specialize h hs ht hu
  · rwa [h_eq μ hs ht hu, h_eq ν hs ht hu] at h
  · rwa [h_eq μ hs ht hu, h_eq ν hs ht hu]

/-- Two finite measures on a product `(α × β) × γ` that are equal on products of sets are equal.
See `ext_prod₃` for the same statement for `α × β × γ`. -/
alias ⟨_, ext_prod₃'⟩ := ext_prod₃_iff'

variable [SFinite μ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Prod/Variant62b4007fc8e0a0ddca557fcdacbe649752764d09c7a97763a5450146cb9d03c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Prod/Variant62b4007fc8e0a0ddca557fcdacbe649752764d09c7a97763a5450146cb9d03c9.lean#L667).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dcda187671ab2b4ded4e301fb30ca0391eb41c3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
