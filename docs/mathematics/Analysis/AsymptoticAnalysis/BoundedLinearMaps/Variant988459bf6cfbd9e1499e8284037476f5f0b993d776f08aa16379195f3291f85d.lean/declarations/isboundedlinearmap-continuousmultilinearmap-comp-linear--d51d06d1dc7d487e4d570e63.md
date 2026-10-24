# isBoundedLinearMap_continuousMultilinearMap_comp_linear

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "89f1036badeac4e4df6ebf3d8d033ebd0492a9cc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 239,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/98/988459bf6cfbd9e1499e8284037476f5f0b993d776f08aa16379195f3291f85d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9b97e25d-e4e4-879b-4d8b-697a78d1b8b4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:69d05198-e58e-f4df-9984-49dea4104c1c",
  "kind": "theorem",
  "lexical_name": "isBoundedLinearMap_continuousMultilinearMap_comp_linear",
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
  "slug": "isboundedlinearmap-continuousmultilinearmap-comp-linear--d51d06d1dc7d487e4d570e63",
  "source": {
    "blob": "89f1036badeac4e4df6ebf3d8d033ebd0492a9cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 292,
    "line": 239,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/BoundedLinearMaps/Variant988459bf6cfbd9e1499e8284037476f5f0b993d776f08aa16379195f3291f85d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d51d06d1dc7d487e4d570e63626a30c97a2428cffb561cae57e1c76711d78721",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/BoundedLinearMaps/Variant988459bf6cfbd9e1499e8284037476f5f0b993d776f08aa16379195f3291f85d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:69d05198-e58e-f4df-9984-49dea4104c1c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 239–292.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isBoundedLinearMap_continuousMultilinearMap_comp_linear (g : G →L[𝕜] E) :
    IsBoundedLinearMap 𝕜 fun f : ContinuousMultilinearMap 𝕜 (fun _ : ι => E) F =>
      f.compContinuousLinearMap fun _ => g := by
  refine'
    IsLinearMap.with_bound
      ⟨fun f₁ f₂ => by ext; rfl,
        fun c f => by ext; rfl⟩
      (‖g‖ ^ Fintype.card ι) fun f => _
  apply ContinuousMultilinearMap.op_norm_le_bound _ _ _
  · apply_rules [mul_nonneg, pow_nonneg, norm_nonneg]
  intro m
  calc
    ‖f (g ∘ m)‖ ≤ ‖f‖ * ∏ i, ‖g (m i)‖ := f.le_op_norm _
    _ ≤ ‖f‖ * ∏ i, ‖g‖ * ‖m i‖ := by
      apply mul_le_mul_of_nonneg_left _ (norm_nonneg _)
      exact Finset.prod_le_prod (fun i _ => norm_nonneg _) fun i _ => g.le_op_norm _
    _ = ‖g‖ ^ Fintype.card ι * ‖f‖ * ∏ i, ‖m i‖ := by
      simp [Finset.prod_mul_distrib, Finset.card_univ]
      ring

#align is_bounded_linear_map_continuous_multilinear_map_comp_linear isBoundedLinearMap_continuousMultilinearMap_comp_linear

end

section BilinearMap

namespace ContinuousLinearMap

/-! We prove some computation rules for continuous (semi-)bilinear maps in their first argument.
  If `f` is a continuous bilinear map, to use the corresponding rules for the second argument, use
  `(f _).map_add` and similar.

We have to assume that `F` and `G` are normed spaces in this section, to use
`ContinuousLinearMap.toNormedAddCommGroup`, but we don't need to assume this for the first
argument of `f`.
-/


variable {R : Type*}

variable {𝕜₂ 𝕜' : Type*} [NontriviallyNormedField 𝕜'] [NontriviallyNormedField 𝕜₂]

variable {M : Type*} [TopologicalSpace M]

variable {σ₁₂ : 𝕜 →+* 𝕜₂}

variable {G' : Type*} [NormedAddCommGroup G'] [NormedSpace 𝕜₂ G'] [NormedSpace 𝕜' G']

variable [SMulCommClass 𝕜₂ 𝕜' G']

section Semiring

variable [Semiring R] [AddCommMonoid M] [Module R M] {ρ₁₂ : R →+* 𝕜'}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/BoundedLinearMaps/Variant988459bf6cfbd9e1499e8284037476f5f0b993d776f08aa16379195f3291f85d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/BoundedLinearMaps/Variant988459bf6cfbd9e1499e8284037476f5f0b993d776f08aa16379195f3291f85d.lean#L239).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89f1036badeac4e4df6ebf3d8d033ebd0492a9cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
