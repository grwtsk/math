# inTangentCoordinates_eq_mfderiv_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "095041cd6654c3d2fea3dd018df121a4b0757e9f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 71,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3e/3e9d412b66fa2df9d37817e0f21aac4e299e9baa88217f0ad665fe28da2e1d79.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e43353dd-6932-9684-bfbb-ed6978249dc8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9b172ba6-a275-ce9c-1465-87d912566f3b",
  "kind": "lemma",
  "lexical_name": "inTangentCoordinates_eq_mfderiv_comp",
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
  "slug": "intangentcoordinates-eq-mfderiv-comp--69aee15708879ab0356f1cfe",
  "source": {
    "blob": "095041cd6654c3d2fea3dd018df121a4b0757e9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 71,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Tangent/Variant3e9d412b66fa2df9d37817e0f21aac4e299e9baa88217f0ad665fe28da2e1d79.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:69aee15708879ab0356f1cfec4f2fa54702c3c76a1a734d09925a4409e4de5a7",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Tangent/Variant3e9d412b66fa2df9d37817e0f21aac4e299e9baa88217f0ad665fe28da2e1d79.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b172ba6-a275-ce9c-1465-87d912566f3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma inTangentCoordinates_eq_mfderiv_comp
    {N : Type*} {f : N → M} {g : N → M'}
    {ϕ : Π x : N, TangentSpace I (f x) →L[𝕜] TangentSpace I' (g x)} {x₀ : N} {x : N}
    (hx : f x ∈ (chartAt H (f x₀)).source) (hy : g x ∈ (chartAt H' (g x₀)).source) :
    inTangentCoordinates I I' f g ϕ x₀ x =
    (mfderiv I' 𝓘(𝕜, E') (extChartAt I' (g x₀)) (g x)) ∘L (ϕ x) ∘L
      (mfderivWithin 𝓘(𝕜, E) I (extChartAt I (f x₀)).symm (range I)
        (extChartAt I (f x₀) (f x))) := by
  rw [inTangentCoordinates_eq _ _ _ hx hy, tangentBundleCore_coordChange]
  congr
  · have : MDifferentiableAt I' 𝓘(𝕜, E') (extChartAt I' (g x₀)) (g x) :=
      mdifferentiableAt_extChartAt hy
    simp_all [mfderiv]
  · simp only [mfderivWithin, writtenInExtChartAt, modelWithCornersSelf_coe, range_id, inter_univ]
    rw [if_pos]
    · simp [Function.comp_def, PartialHomeomorph.left_inv (chartAt H (f x₀)) hx]
    · apply mdifferentiableWithinAt_extChartAt_symm
      apply (extChartAt I (f x₀)).map_source
      simpa using hx

open Bundle
variable (I) in
/-- The canonical identification between the tangent bundle to the model space and the product,
as a diffeomorphism -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Tangent/Variant3e9d412b66fa2df9d37817e0f21aac4e299e9baa88217f0ad665fe28da2e1d79.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Tangent/Variant3e9d412b66fa2df9d37817e0f21aac4e299e9baa88217f0ad665fe28da2e1d79.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `095041cd6654c3d2fea3dd018df121a4b0757e9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
