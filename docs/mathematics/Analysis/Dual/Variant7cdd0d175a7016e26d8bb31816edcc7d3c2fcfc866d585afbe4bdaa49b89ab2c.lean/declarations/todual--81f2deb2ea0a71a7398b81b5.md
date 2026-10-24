# toDual

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:536af99db77144e88680432ace05c59f060442ea5a0c0c5eb821c313f6a50791",
  "kind": "def",
  "lexical_name": "toDual",
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
  "slug": "todual--81f2deb2ea0a71a7398b81b5",
  "source": {
    "blob": "0742335c3f20d554fa9f1b6c3adfcb3242ff6ea4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 145,
    "path": "GRWTSK/Analysis/Dual/Variant7cdd0d175a7016e26d8bb31816edcc7d3c2fcfc866d585afbe4bdaa49b89ab2c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:81f2deb2ea0a71a7398b81b5e9f829e80ddd458153bc65fc47b2419c96f6e2e8",
  "verification": {
    "reference": "docs/verification/Analysis/Dual/Variant7cdd0d175a7016e26d8bb31816edcc7d3c2fcfc866d585afbe4bdaa49b89ab2c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:536af99db77144e88680432ace05c59f060442ea5a0c0c5eb821c313f6a50791`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toDual : E ≃ₗᵢ⋆[𝕜] StrongDual 𝕜 E :=
  LinearIsometryEquiv.ofSurjective (toDualMap 𝕜 E)
    (by
      intro ℓ
      set Y := ℓ.ker
      by_cases htriv : Y = ⊤
      · have hℓ : ℓ = 0 := by
          have h' := LinearMap.ker_eq_top.mp htriv
          norm_cast at h'
        exact ⟨0, by simp [hℓ]⟩
      · rw [← Submodule.orthogonal_eq_bot_iff] at htriv
        change Yᗮ ≠ ⊥ at htriv
        rw [Submodule.ne_bot_iff] at htriv
        obtain ⟨z : E, hz : z ∈ Yᗮ, z_ne_0 : z ≠ 0⟩ := htriv
        refine ⟨(starRingEnd (R := 𝕜) (ℓ z) / ⟪z, z⟫) • z, ?_⟩
        apply ContinuousLinearMap.ext
        intro x
        have h₁ : ℓ z • x - ℓ x • z ∈ Y := by
          rw [LinearMap.mem_ker, map_sub, map_smul, map_smul, smul_eq_mul,
            smul_eq_mul, mul_comm]
          exact sub_self (ℓ x * ℓ z)
        have h₂ : ℓ z * ⟪z, x⟫ = ℓ x * ⟪z, z⟫ :=
          haveI h₃ :=
            calc
              0 = ⟪z, ℓ z • x - ℓ x • z⟫ := by
                rw [(Y.mem_orthogonal' z).mp hz]
                exact h₁
              _ = ⟪z, ℓ z • x⟫ - ⟪z, ℓ x • z⟫ := by rw [inner_sub_right]
              _ = ℓ z * ⟪z, x⟫ - ℓ x * ⟪z, z⟫ := by simp [inner_smul_right]
          sub_eq_zero.mp h₃.symm
        calc
          ⟪(ℓ z† / ⟪z, z⟫) • z, x⟫ = ℓ z / ⟪z, z⟫ * ⟪z, x⟫ := by simp [inner_smul_left]
          _ = ℓ z * ⟪z, x⟫ / ⟪z, z⟫ := by rw [← div_mul_eq_mul_div]
          _ = ℓ x * ⟪z, z⟫ / ⟪z, z⟫ := by rw [h₂]
          _ = ℓ x := by have : ⟪z, z⟫ ≠ 0 := inner_self_ne_zero.mpr z_ne_0; field)

variable {𝕜} {E}

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Dual/Variant7cdd0d175a7016e26d8bb31816edcc7d3c2fcfc866d585afbe4bdaa49b89ab2c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Dual/Variant7cdd0d175a7016e26d8bb31816edcc7d3c2fcfc866d585afbe4bdaa49b89ab2c.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0742335c3f20d554fa9f1b6c3adfcb3242ff6ea4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
