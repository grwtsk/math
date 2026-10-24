# eq_prod_of_integral_prod_mul_prod_boundedContinuousFunction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b963c3e0766328db4efb132ae80a03157e47480f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 198,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/10/107724f6c8b762c5a2bb9428d029b13f6e9d1180752e2a6d7044997f3d66b9fb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7afdac79-f6ee-860b-f877-761ca15271e6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:08fc1857-3267-1a8f-8909-7142e3dff7a9",
  "kind": "lemma",
  "lexical_name": "eq_prod_of_integral_prod_mul_prod_boundedContinuousFunction",
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
  "slug": "eq-prod-of-integral-prod-mul-prod-boundedcontinuousfunction--354e05bf43c00a020406350b",
  "source": {
    "blob": "b963c3e0766328db4efb132ae80a03157e47480f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 198,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/HasOuterApproxClosedProd/Variant107724f6c8b762c5a2bb9428d029b13f6e9d1180752e2a6d7044997f3d66b9fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:354e05bf43c00a020406350bbb8d93abc3ce7add931b9fa2aa3b825e84a4cd77",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/HasOuterApproxClosedProd/Variant107724f6c8b762c5a2bb9428d029b13f6e9d1180752e2a6d7044997f3d66b9fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:08fc1857-3267-1a8f-8909-7142e3dff7a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eq_prod_of_integral_prod_mul_prod_boundedContinuousFunction {μ : Measure (Π i, X i)}
    {ν : Measure (Π j, Y j)} {ξ : Measure ((Π i, X i) × (Π j, Y j))}
    [IsFiniteMeasure μ] [IsFiniteMeasure ν] [IsFiniteMeasure ξ]
    (h : ∀ (f : (i : ι) → X i →ᵇ ℝ) (g : (j : κ) → Y j →ᵇ ℝ),
      ∫ p, (∏ i, f i (p.1 i)) * (∏ j, g j (p.2 j)) ∂ξ =
      (∫ x, ∏ i, f i (x i) ∂μ) * (∫ y, ∏ j, g j (y j) ∂ν)) :
    ξ = μ.prod ν :=
  ext_of_integral_prod_mul_prod_boundedContinuousFunction fun f g ↦ by rw [h, ← integral_prod_mul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/HasOuterApproxClosedProd/Variant107724f6c8b762c5a2bb9428d029b13f6e9d1180752e2a6d7044997f3d66b9fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/HasOuterApproxClosedProd/Variant107724f6c8b762c5a2bb9428d029b13f6e9d1180752e2a6d7044997f3d66b9fb.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b963c3e0766328db4efb132ae80a03157e47480f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
