# ContinuousLinearEquiv.piRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:625e688fc0bb5aaab2109ef2983b6cc8f44bff948a00980c0b451a5b3d68ce86",
  "kind": "def",
  "lexical_name": "ContinuousLinearEquiv.piRing",
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
  "slug": "continuouslinearequiv-piring--5f53d6485437b9f4e8e05cdf",
  "source": {
    "blob": "ed527ab706d4ffa4d76783100b9caa4100d7cbf6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 308,
    "line": 290,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/FiniteDimension/Variant6b77179d1e50cf49026202d4b80ac87137b4ab47aae70bb5b71adb441a494d71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5f53d6485437b9f4e8e05cdfbef6992e9887e3ed5b873df4f5c91bd2dbd2ce68",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/FiniteDimension/Variant6b77179d1e50cf49026202d4b80ac87137b4ab47aae70bb5b71adb441a494d71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:625e688fc0bb5aaab2109ef2983b6cc8f44bff948a00980c0b451a5b3d68ce86`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 290–308.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ContinuousLinearEquiv.piRing (ι : Type*) [Fintype ι] [DecidableEq ι] :
    ((ι → 𝕜) →L[𝕜] E) ≃L[𝕜] ι → E :=
  { LinearMap.toContinuousLinearMap.symm.trans (LinearEquiv.piRing 𝕜 E ι 𝕜) with
    continuous_invFun := by
      simp_rw [LinearEquiv.invFun_eq_symm, LinearEquiv.trans_symm, LinearEquiv.symm_symm]
      refine AddMonoidHomClass.continuous_of_bound
        (LinearMap.toContinuousLinearMap.toLinearMap.comp
            (LinearEquiv.piRing 𝕜 E ι 𝕜).symm.toLinearMap)
        (Fintype.card ι : ℝ) fun g ↦ ?_
      rw [← nsmul_eq_mul]
      refine opNorm_le_bound _ (nsmul_nonneg (norm_nonneg g) (Fintype.card ι)) fun t ↦ ?_
      simp_rw [LinearMap.coe_comp, LinearEquiv.coe_toLinearMap, Function.comp_apply,
        LinearMap.coe_toContinuousLinearMap', LinearEquiv.piRing_symm_apply]
      apply le_trans (norm_sum_le _ _)
      rw [smul_mul_assoc]
      refine Finset.sum_le_card_nsmul _ _ _ fun i _ ↦ ?_
      rw [norm_smul, mul_comm]
      gcongr <;> apply norm_le_pi_norm }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/FiniteDimension/Variant6b77179d1e50cf49026202d4b80ac87137b4ab47aae70bb5b71adb441a494d71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/FiniteDimension/Variant6b77179d1e50cf49026202d4b80ac87137b4ab47aae70bb5b71adb441a494d71.lean#L290).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed527ab706d4ffa4d76783100b9caa4100d7cbf6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
