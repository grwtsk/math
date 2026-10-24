# integralBasis_repr_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:296d4b57-4b47-3df3-c26d-a9f013a90849",
  "kind": "theorem",
  "lexical_name": "integralBasis_repr_apply",
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
  "slug": "integralbasis-repr-apply--37c6460c399b56d6ac3d1e4b",
  "source": {
    "blob": "82a4cd2cca4d1719930333affd8822ea9a3db609",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 172,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Varianteb8a669b3a1c8ef1b2436101da9ce1ba8d751ce50f4d8b39c7b1f13841a83536.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:37c6460c399b56d6ac3d1e4b649905163db8c948661bc4978f6ff4a458bee78b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Basic/Varianteb8a669b3a1c8ef1b2436101da9ce1ba8d751ce50f4d8b39c7b1f13841a83536.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:296d4b57-4b47-3df3-c26d-a9f013a90849`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integralBasis_repr_apply [NumberField K] (x : K) (i : Free.ChooseBasisIndex ℤ (𝓞 K)) :
    (latticeBasis K).repr (canonicalEmbedding K x) i = (integralBasis K).repr x i := by
  rw [← Basis.restrictScalars_repr_apply ℚ _ ⟨_, mem_rat_span_latticeBasis K x⟩, eq_ratCast,
    Rat.cast_inj]
  let f := (canonicalEmbedding K).toRatAlgHom.toLinearMap.codRestrict _
    (fun x ↦ mem_rat_span_latticeBasis K x)
  suffices ((latticeBasis K).restrictScalars ℚ).repr.toLinearMap ∘ₗ f =
    (integralBasis K).repr.toLinearMap from DFunLike.congr_fun (LinearMap.congr_fun this x) i
  refine Basis.ext (integralBasis K) (fun i ↦ ?_)
  have : f (integralBasis K i) = ((latticeBasis K).restrictScalars ℚ) i := by
    apply Subtype.val_injective
    rw [LinearMap.codRestrict_apply, AlgHom.toLinearMap_apply, Basis.restrictScalars_apply,
      latticeBasis_apply]
    rfl
  simp_rw [LinearMap.coe_comp, LinearEquiv.coe_coe, Function.comp_apply, this, Basis.repr_self]

end NumberField.canonicalEmbedding

namespace NumberField.mixedEmbedding

open NumberField.InfinitePlace Module Finset

/-- The mixed space `ℝ^r₁ × ℂ^r₂` with `(r₁, r₂)` the signature of `K`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Basic/Varianteb8a669b3a1c8ef1b2436101da9ce1ba8d751ce50f4d8b39c7b1f13841a83536.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Varianteb8a669b3a1c8ef1b2436101da9ce1ba8d751ce50f4d8b39c7b1f13841a83536.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82a4cd2cca4d1719930333affd8822ea9a3db609` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
