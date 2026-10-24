# map_orientation_eq_det_inv_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b9e291f43dfd1b3c6efdf230d535908e477c505d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 144,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/27/27830cade28eb90c50d1aeeac36c7b554f16434746061bfac31c4d84a997f33e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ffc16dfd-17e3-48a3-67de-7775d684efe9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2519371a-3db0-8c59-abd7-e79c609b0918",
  "kind": "theorem",
  "lexical_name": "map_orientation_eq_det_inv_smul",
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
  "slug": "map-orientation-eq-det-inv-smul--717046e82590ca09b26f4289",
  "source": {
    "blob": "b9e291f43dfd1b3c6efdf230d535908e477c505d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 144,
    "path": "GRWTSK/Algebra/LinearAlgebra/Orientation/Variant27830cade28eb90c50d1aeeac36c7b554f16434746061bfac31c4d84a997f33e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:717046e82590ca09b26f42897312cb4106572a520aff36f36f700c910eacde7c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Orientation/Variant27830cade28eb90c50d1aeeac36c7b554f16434746061bfac31c4d84a997f33e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2519371a-3db0-8c59-abd7-e79c609b0918`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_orientation_eq_det_inv_smul [Finite ι] (e : Basis ι R M) (x : Orientation R M ι)
    (f : M ≃ₗ[R] M) : Orientation.map ι f x = (LinearEquiv.det f)⁻¹ • x := by
  cases nonempty_fintype ι
  letI := Classical.decEq ι
  induction x using Module.Ray.ind with | h g hg =>
  rw [Orientation.map_apply, smul_rayOfNeZero, ray_eq_iff, Units.smul_def,
    (g.compLinearMap f.symm).eq_smul_basis_det e, g.eq_smul_basis_det e,
    AlternatingMap.compLinearMap_apply, AlternatingMap.smul_apply,
    show (fun i ↦ (LinearEquiv.symm f).toLinearMap (e i)) = (LinearEquiv.symm f).toLinearMap ∘ e
    by rfl, Basis.det_comp, Basis.det_self, mul_one, smul_eq_mul, mul_comm, mul_smul,
    LinearEquiv.coe_inv_det]

variable [Fintype ι] [DecidableEq ι] [Fintype ι'] [DecidableEq ι']

/-- The orientation given by a basis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Orientation/Variant27830cade28eb90c50d1aeeac36c7b554f16434746061bfac31c4d84a997f33e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Orientation/Variant27830cade28eb90c50d1aeeac36c7b554f16434746061bfac31c4d84a997f33e.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9e291f43dfd1b3c6efdf230d535908e477c505d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
