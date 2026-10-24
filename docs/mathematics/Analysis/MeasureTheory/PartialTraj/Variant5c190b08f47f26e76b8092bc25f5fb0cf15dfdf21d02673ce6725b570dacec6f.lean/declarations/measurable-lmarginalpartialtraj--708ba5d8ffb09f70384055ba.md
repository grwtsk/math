# measurable_lmarginalPartialTraj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:df7c360e-eaab-4d02-82b5-e850c3a2f96b",
  "kind": "lemma",
  "lexical_name": "measurable_lmarginalPartialTraj",
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
  "slug": "measurable-lmarginalpartialtraj--708ba5d8ffb09f70384055ba",
  "source": {
    "blob": "8d100aa339def3bd261e1aba6660d7bf711a26d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 359,
    "line": 346,
    "path": "GRWTSK/Analysis/MeasureTheory/PartialTraj/Variant5c190b08f47f26e76b8092bc25f5fb0cf15dfdf21d02673ce6725b570dacec6f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:708ba5d8ffb09f70384055bad0f662a559b69a5566cea899c914b3446ffaac06",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/PartialTraj/Variant5c190b08f47f26e76b8092bc25f5fb0cf15dfdf21d02673ce6725b570dacec6f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df7c360e-eaab-4d02-82b5-e850c3a2f96b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 346–359.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma measurable_lmarginalPartialTraj (a b : ℕ) {f : (Π n, X n) → ℝ≥0∞} (hf : Measurable f) :
    Measurable (lmarginalPartialTraj κ a b f) := by
  unfold lmarginalPartialTraj
  let g : ((i : Iic b) → X i) × (Π n, X n) → ℝ≥0∞ := fun c ↦ f (updateFinset c.2 _ c.1)
  let η : Kernel (Π n, X n) (Π i : Iic b, X i) :=
    (partialTraj κ a b).comap (frestrictLe a) (measurable_frestrictLe _)
  change Measurable fun x₀ ↦ ∫⁻ z : (i : Iic b) → X i, g (z, x₀) ∂η x₀
  refine Measurable.lintegral_kernel_prod_left' <| hf.comp ?_
  simp only [updateFinset, measurable_pi_iff]
  intro i
  by_cases h : i ∈ Iic b <;> simp [h] <;> fun_prop

/-- Integrating `f` against `partialTraj κ a b` and then against `partialTraj κ b c` is the same
as integrating `f` against `partialTraj κ a c`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/PartialTraj/Variant5c190b08f47f26e76b8092bc25f5fb0cf15dfdf21d02673ce6725b570dacec6f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/PartialTraj/Variant5c190b08f47f26e76b8092bc25f5fb0cf15dfdf21d02673ce6725b570dacec6f.lean#L346).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d100aa339def3bd261e1aba6660d7bf711a26d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
