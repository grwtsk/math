# integral_mul_square_le_of_unit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0989709b8e8d3d5a0b03ac2c27ceb8dda07a852b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 51,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/95/95cb85acb70a0006256cc74b8c18fce2620f41678536c25e2e30f562cfb505f8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4cfb4a73-e50e-8fa2-3dbd-54d97fed7740",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8c3bd36c-a563-81d1-1c2b-15ffa76887ec",
  "kind": "theorem",
  "lexical_name": "integral_mul_square_le_of_unit",
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
  "slug": "integral-mul-square-le-of-unit--db5c83fb258a5157573643f8",
  "source": {
    "blob": "0989709b8e8d3d5a0b03ac2c27ceb8dda07a852b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 51,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceCorrelationEnergy/Variant95cb85acb70a0006256cc74b8c18fce2620f41678536c25e2e30f562cfb505f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:db5c83fb258a5157573643f8fba548fbb7b126639e9fbccc5a17a092ef5d014a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceCorrelationEnergy/Variant95cb85acb70a0006256cc74b8c18fce2620f41678536c25e2e30f562cfb505f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c3bd36c-a563-81d1-1c2b-15ffa76887ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem integral_mul_square_le_of_unit {f g : ℝ → ℝ}
    (hf : Integrable (fun x ↦ (f x) ^ 2))
    (hg : Integrable (fun x ↦ (g x) ^ 2))
    (hm : Integrable (fun x ↦ f x * g x)) (hu : (∫ x : ℝ, (g x) ^ 2) = 1) :
    (∫ x : ℝ, f x * g x) ^ 2 ≤ ∫ x : ℝ, (f x) ^ 2 := by
  let c : ℝ := ∫ x : ℝ, f x * g x
  have hnonneg : 0 ≤ ∫ x : ℝ, (f x - c * g x) ^ 2 :=
    integral_nonneg (fun x ↦ sq_nonneg _)
  have hexpand : (fun x : ℝ ↦ (f x - c * g x) ^ 2) =
      fun x ↦ (f x) ^ 2 - (2 * c) * (f x * g x) + c ^ 2 * (g x) ^ 2 := by
    funext x
    ring
  rw [hexpand] at hnonneg
  rw [integral_add
    (f := fun x : ℝ ↦ (f x) ^ 2 - (2 * c) * (f x * g x))
    (g := fun x : ℝ ↦ c ^ 2 * (g x) ^ 2)
    (hf.sub (hm.const_mul _)) (hg.const_mul _),
    integral_sub (f := fun x : ℝ ↦ (f x) ^ 2)
      (g := fun x : ℝ ↦ (2 * c) * (f x * g x)) hf (hm.const_mul _),
    integral_const_mul, integral_const_mul, hu] at hnonneg
  dsimp [c] at hnonneg
  nlinarith

/-- The unit source norm reduces Cauchy–Schwarz to its exact derivative-square energy. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceCorrelationEnergy/Variant95cb85acb70a0006256cc74b8c18fce2620f41678536c25e2e30f562cfb505f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceCorrelationEnergy/Variant95cb85acb70a0006256cc74b8c18fce2620f41678536c25e2e30f562cfb505f8.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0989709b8e8d3d5a0b03ac2c27ceb8dda07a852b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
