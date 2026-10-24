# stereo_right_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4988d581da34e5f744eddcce5caeb0ccd62c7df7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 229,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2e/2e5b287c02f2583b816692cc8647df3e4548bb2fe1e7d238a8883c90173f8153.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d0c25464-977f-e6bd-462c-cdef604895ca",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:637a7705-1763-5f40-5738-0e86b8577265",
  "kind": "theorem",
  "lexical_name": "stereo_right_inv",
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
  "slug": "stereo-right-inv--e9720d4612df03d79a7f5040",
  "source": {
    "blob": "4988d581da34e5f744eddcce5caeb0ccd62c7df7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 229,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Sphere/Variant2e5b287c02f2583b816692cc8647df3e4548bb2fe1e7d238a8883c90173f8153.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e9720d4612df03d79a7f504031196317a747a7bdb1f62869c199560a46f605cc",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Sphere/Variant2e5b287c02f2583b816692cc8647df3e4548bb2fe1e7d238a8883c90173f8153.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:637a7705-1763-5f40-5738-0e86b8577265`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 229–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stereo_right_inv (hv : ‖v‖ = 1) (w : (ℝ ∙ v)ᗮ) : stereoToFun v (stereoInvFun hv w) = w := by
  simp only [stereoToFun, stereoInvFun, stereoInvFunAux, smul_add, map_add, map_smul, innerSL_apply,
    Submodule.orthogonalProjection_mem_subspace_eq_self]
  have h₁ : (ℝ ∙ v)ᗮ.orthogonalProjection v = 0 :=
    Submodule.orthogonalProjection_orthogonalComplement_singleton_eq_zero v
  -- Porting note: was innerSL _ and now just inner
  have h₂ : ⟪v, w⟫ = 0 := Submodule.mem_orthogonal_singleton_iff_inner_right.mp w.2
  -- Porting note: was innerSL _ and now just inner
  have h₃ : ⟪v, v⟫ = 1 := by simp [real_inner_self_eq_norm_mul_norm, hv]
  rw [h₁, h₂, h₃]
  match_scalars
  field_simp
  ring

/-- Stereographic projection from the unit sphere in `E`, centred at a unit vector `v` in `E`;
this is the version as a partial homeomorphism. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Sphere/Variant2e5b287c02f2583b816692cc8647df3e4548bb2fe1e7d238a8883c90173f8153.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Sphere/Variant2e5b287c02f2583b816692cc8647df3e4548bb2fe1e7d238a8883c90173f8153.lean#L229).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4988d581da34e5f744eddcce5caeb0ccd62c7df7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
