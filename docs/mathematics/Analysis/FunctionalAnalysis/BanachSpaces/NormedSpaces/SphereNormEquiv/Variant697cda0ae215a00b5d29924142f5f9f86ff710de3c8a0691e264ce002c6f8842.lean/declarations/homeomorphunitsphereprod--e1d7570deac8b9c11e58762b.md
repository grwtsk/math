# homeomorphUnitSphereProd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:89af1ada91549c39c0951a6346be64d38ec1be8cf976f125629fc026ded85271",
  "kind": "def",
  "lexical_name": "homeomorphUnitSphereProd",
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
  "slug": "homeomorphunitsphereprod--e1d7570deac8b9c11e58762b",
  "source": {
    "blob": "ae997c31cb191fe41ef1f5c052ecd54012601e6e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 37,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SphereNormEquiv/Variant697cda0ae215a00b5d29924142f5f9f86ff710de3c8a0691e264ce002c6f8842.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e1d7570deac8b9c11e58762b69406b27d89736531188a4831c0bae25681fc8f6",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SphereNormEquiv/Variant697cda0ae215a00b5d29924142f5f9f86ff710de3c8a0691e264ce002c6f8842.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:89af1ada91549c39c0951a6346be64d38ec1be8cf976f125629fc026ded85271`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def homeomorphUnitSphereProd :
    ({0}ᶜ : Set E) ≃ₜ (sphere (0 : E) 1 × Ioi (0 : ℝ)) where
  toFun x := (⟨‖x.1‖⁻¹ • x.1, by
    rw [mem_sphere_zero_iff_norm, norm_smul, norm_inv, norm_norm,
      inv_mul_cancel₀ (norm_ne_zero_iff.2 x.2)]⟩, ⟨‖x.1‖, norm_pos_iff.2 x.2⟩)
  invFun x := ⟨x.2.1 • x.1.1, smul_ne_zero x.2.2.out.ne' (ne_of_mem_sphere x.1.2 one_ne_zero)⟩
  left_inv x := Subtype.eq <| by simp [smul_inv_smul₀ (norm_ne_zero_iff.2 x.2)]
  right_inv
  | (⟨x, hx⟩, ⟨r, hr⟩) => by
    rw [mem_sphere_zero_iff_norm] at hx
    rw [mem_Ioi] at hr
    ext <;> simp [hx, norm_smul, hr.le, abs_of_pos hr, hr.ne']
  continuous_toFun := by
    refine .prodMk (.codRestrict (.smul (.inv₀ ?_ ?_) ?_) _) ?_
    · fun_prop
    · simp
    · fun_prop
    · fun_prop
  continuous_invFun := by apply Continuous.subtype_mk (by fun_prop)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SphereNormEquiv/Variant697cda0ae215a00b5d29924142f5f9f86ff710de3c8a0691e264ce002c6f8842.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SphereNormEquiv/Variant697cda0ae215a00b5d29924142f5f9f86ff710de3c8a0691e264ce002c6f8842.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae997c31cb191fe41ef1f5c052ecd54012601e6e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
