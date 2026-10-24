# positive_eigenvalue_lower_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:01cb2407-fba8-7e20-6dc2-70a81a64fd3a",
  "kind": "theorem",
  "lexical_name": "positive_eigenvalue_lower_bound",
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
  "slug": "positive-eigenvalue-lower-bound--c6c240291e4d8c67c12a83f1",
  "source": {
    "blob": "e0a62295f3eba08c1039e0bd391242348710045f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 110,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/QuantitativeGap/Variant3aee7b46bbb7ef92f78345ceaba0ada479b9f4f83c0d8a51113142ae07aa171f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c6c240291e4d8c67c12a83f1300f1a15de21d26fc74b11f0fb7d3a5e7bb1e5d2",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/QuantitativeGap/Variant3aee7b46bbb7ef92f78345ceaba0ada479b9f4f83c0d8a51113142ae07aa171f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:01cb2407-fba8-7e20-6dc2-70a81a64fd3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positive_eigenvalue_lower_bound (H : V →L[𝕜] V)
    (P : ProtectedProjector (𝕜 := 𝕜) V) (Δ eigenvalue : ℝ)
    (hH : IsSelfAdjoint H) (hcoercive : CoerciveOn H P ⊤ Δ)
    (hannihilate : H.comp P.projection = 0) (hpositive : 0 < eigenvalue)
    (x : V) (hx : x ≠ 0) (heigen : H x = (eigenvalue : 𝕜) • x) : Δ ≤ eigenvalue := by
  have hPH : P.projection.comp H = 0 := by
    have h := congrArg (fun A : V →L[𝕜] V => A.adjoint) hannihilate
    simpa only [ContinuousLinearMap.adjoint_comp, hH.adjoint_eq,
      P.selfAdjoint.adjoint_eq, map_zero] using h
  have hPx : P.projection x = 0 := by
    have h := congrArg (fun A : V →L[𝕜] V => A x) hPH
    change P.projection (H x) = 0 at h
    rw [heigen, map_smul] at h
    exact (smul_eq_zero.mp h).resolve_left (RCLike.ofReal_ne_zero.mpr (ne_of_gt hpositive))
  have hQ : P.complement x = x := by simp [ProtectedProjector.complement, hPx]
  have hb := hcoercive x Submodule.mem_top
  rw [hQ, heigen, inner_smul_right, RCLike.re_ofReal_mul, inner_self_eq_norm_sq] at hb
  exact le_of_mul_le_mul_right hb (sq_pos_of_pos (norm_pos_iff.mpr hx))

end FormalResearch.PositiveAtlas.QuantitativeGap
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/QuantitativeGap/Variant3aee7b46bbb7ef92f78345ceaba0ada479b9f4f83c0d8a51113142ae07aa171f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/QuantitativeGap/Variant3aee7b46bbb7ef92f78345ceaba0ada479b9f4f83c0d8a51113142ae07aa171f.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0a62295f3eba08c1039e0bd391242348710045f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
