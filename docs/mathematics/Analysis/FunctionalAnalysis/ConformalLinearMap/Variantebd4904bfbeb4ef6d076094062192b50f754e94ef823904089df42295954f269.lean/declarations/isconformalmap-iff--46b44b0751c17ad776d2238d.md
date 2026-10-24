# isConformalMap_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2751f5ff-85ae-9824-909c-2a4a4c7ace10",
  "kind": "theorem",
  "lexical_name": "isConformalMap_iff",
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
  "slug": "isconformalmap-iff--46b44b0751c17ad776d2238d",
  "source": {
    "blob": "c3fd9c9a83cdb2541833822d0b261490e7b7eee5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 39,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/ConformalLinearMap/Variantebd4904bfbeb4ef6d076094062192b50f754e94ef823904089df42295954f269.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:46b44b0751c17ad776d2238d3950de2d88c7316e6bdfe450cf4b632720f6380b",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/ConformalLinearMap/Variantebd4904bfbeb4ef6d076094062192b50f754e94ef823904089df42295954f269.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2751f5ff-85ae-9824-909c-2a4a4c7ace10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isConformalMap_iff (f : E →L[ℝ] F) :
    IsConformalMap f ↔ ∃ c : ℝ, 0 < c ∧ ∀ u v : E, ⟪f u, f v⟫ = c * ⟪u, v⟫ := by
  constructor
  · rintro ⟨c₁, hc₁, li, rfl⟩
    refine ⟨c₁ * c₁, mul_self_pos.2 hc₁, fun u v => ?_⟩
    simp only [real_inner_smul_left, real_inner_smul_right, mul_assoc,
      coe_toContinuousLinearMap, smul_apply, inner_map_map]
  · rintro ⟨c₁, hc₁, huv⟩
    obtain ⟨c, hc, rfl⟩ : ∃ c : ℝ, 0 < c ∧ c₁ = c * c :=
      ⟨√c₁, Real.sqrt_pos.2 hc₁, (Real.mul_self_sqrt hc₁.le).symm⟩
    refine ⟨c, hc.ne', (c⁻¹ • f : E →ₗ[ℝ] F).isometryOfInner fun u v => ?_, ?_⟩
    · simp only [real_inner_smul_left, real_inner_smul_right, huv, mul_assoc,
        inv_mul_cancel_left₀ hc.ne', LinearMap.smul_apply, ContinuousLinearMap.coe_coe]
    · ext1 x
      exact (smul_inv_smul₀ hc.ne' (f x)).symm
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/ConformalLinearMap/Variantebd4904bfbeb4ef6d076094062192b50f754e94ef823904089df42295954f269.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/ConformalLinearMap/Variantebd4904bfbeb4ef6d076094062192b50f754e94ef823904089df42295954f269.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3fd9c9a83cdb2541833822d0b261490e7b7eee5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
