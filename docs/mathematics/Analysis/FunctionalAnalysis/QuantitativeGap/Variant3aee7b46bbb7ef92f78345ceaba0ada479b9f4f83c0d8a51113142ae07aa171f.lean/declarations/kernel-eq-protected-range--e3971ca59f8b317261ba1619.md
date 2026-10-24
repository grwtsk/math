# kernel_eq_protected_range

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7156f4c7-5e3a-f0c4-026c-a0ee20293aab",
  "kind": "theorem",
  "lexical_name": "kernel_eq_protected_range",
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
  "slug": "kernel-eq-protected-range--e3971ca59f8b317261ba1619",
  "source": {
    "blob": "e0a62295f3eba08c1039e0bd391242348710045f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 83,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/QuantitativeGap/Variant3aee7b46bbb7ef92f78345ceaba0ada479b9f4f83c0d8a51113142ae07aa171f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e3971ca59f8b317261ba1619ffad42bca8db65f0c109857663284f1e20c1e85c",
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

Occurrence: `result:7156f4c7-5e3a-f0c4-026c-a0ee20293aab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem kernel_eq_protected_range
    (H : V →L[𝕜] V) (P : ProtectedProjector (𝕜 := 𝕜) V) (Δ : ℝ)
    (hΔ : 0 < Δ) (hcoercive : CoerciveOn H P ⊤ Δ)
    (hannihilate : H.comp P.projection = 0) :
    LinearMap.ker H.toLinearMap = LinearMap.range P.projection.toLinearMap := by
  ext x
  constructor
  · intro hx
    have hz : H x = 0 := hx
    have hb := hcoercive x (Submodule.mem_top)
    rw [hz, inner_zero_right, map_zero] at hb
    have hn : ‖P.complement x‖ = 0 := by
      have hs : ‖P.complement x‖ ^ 2 ≤ 0 :=
        le_of_mul_le_mul_left (by simpa using hb) hΔ
      have hnn := norm_nonneg (P.complement x)
      nlinarith
    have hQ : P.complement x = 0 := norm_eq_zero.mp hn
    have he : x = P.projection x := by
      exact sub_eq_zero.mp hQ
    exact ⟨x, he.symm⟩
  · rintro ⟨y, rfl⟩
    change H (P.projection y) = 0
    exact congrArg (fun f : V →L[𝕜] V => f y) hannihilate

/-- Every positive eigenvalue of an actually self-adjoint packet lies above the
coercivity bound once the protected range is annihilated. In finite dimension
this excludes the open eigenvalue interval `(0,Δ)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/QuantitativeGap/Variant3aee7b46bbb7ef92f78345ceaba0ada479b9f4f83c0d8a51113142ae07aa171f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/QuantitativeGap/Variant3aee7b46bbb7ef92f78345ceaba0ada479b9f4f83c0d8a51113142ae07aa171f.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0a62295f3eba08c1039e0bd391242348710045f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
