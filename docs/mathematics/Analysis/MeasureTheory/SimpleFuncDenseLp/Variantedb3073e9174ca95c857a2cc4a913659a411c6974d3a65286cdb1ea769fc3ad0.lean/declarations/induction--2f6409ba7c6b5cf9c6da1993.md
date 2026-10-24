# induction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "33d4039326eb4d1a24548a24292c2beeb8da639d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 626,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ed/edb3073e9174ca95c857a2cc4a913659a411c6974d3a65286cdb1ea769fc3ad0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f0f019bd-71b9-4b27-7b5d-199ddd61a9b4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e4ba9e41-2a48-5963-a88b-42113afd73ee",
  "kind": "theorem",
  "lexical_name": "induction",
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
  "slug": "induction--2f6409ba7c6b5cf9c6da1993",
  "source": {
    "blob": "33d4039326eb4d1a24548a24292c2beeb8da639d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 661,
    "line": 626,
    "path": "GRWTSK/Analysis/MeasureTheory/SimpleFuncDenseLp/Variantedb3073e9174ca95c857a2cc4a913659a411c6974d3a65286cdb1ea769fc3ad0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f6409ba7c6b5cf9c6da1993c7fd8a75c3bdb9fc8d73bd44f9197c6addb268a2",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SimpleFuncDenseLp/Variantedb3073e9174ca95c857a2cc4a913659a411c6974d3a65286cdb1ea769fc3ad0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e4ba9e41-2a48-5963-a88b-42113afd73ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 626–661.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem induction (hp_pos : p ≠ 0) (hp_ne_top : p ≠ ∞) {P : Lp.simpleFunc E p μ → Prop}
    (indicatorConst :
      ∀ (c : E) {s : Set α} (hs : MeasurableSet s) (hμs : μ s < ∞),
        P (Lp.simpleFunc.indicatorConst p hs hμs.ne c))
    (add :
      ∀ ⦃f g : α →ₛ E⦄,
        ∀ hf : MemLp f p μ,
          ∀ hg : MemLp g p μ,
            Disjoint (support f) (support g) →
              P (toLp f hf) →
                P (toLp g hg) → P (toLp f hf + toLp g hg))
    (f : Lp.simpleFunc E p μ) : P f := by
  suffices ∀ f : α →ₛ E, ∀ hf : MemLp f p μ, P (toLp f hf) by
    rw [← toLp_toSimpleFunc f]
    apply this
  clear f
  apply SimpleFunc.induction
  · intro c s hs hf
    by_cases hc : c = 0
    · convert! indicatorConst 0 MeasurableSet.empty (by simp) using 1
      ext1
      simp [hc]
    exact indicatorConst c hs
      (SimpleFunc.measure_lt_top_of_memLp_indicator hp_pos hp_ne_top hc hs hf)
  · intro f g hfg hf hg hfg'
    obtain ⟨hf', hg'⟩ : MemLp f p μ ∧ MemLp g p μ :=
      (memLp_add_of_disjoint hfg f.stronglyMeasurable g.stronglyMeasurable).mp hfg'
    exact add hf' hg' hfg (hf hf') (hg hg')

end Induction

section CoeToLp

variable [Fact (1 ≤ p)]

@[fun_prop]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SimpleFuncDenseLp/Variantedb3073e9174ca95c857a2cc4a913659a411c6974d3a65286cdb1ea769fc3ad0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SimpleFuncDenseLp/Variantedb3073e9174ca95c857a2cc4a913659a411c6974d3a65286cdb1ea769fc3ad0.lean#L626).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33d4039326eb4d1a24548a24292c2beeb8da639d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
