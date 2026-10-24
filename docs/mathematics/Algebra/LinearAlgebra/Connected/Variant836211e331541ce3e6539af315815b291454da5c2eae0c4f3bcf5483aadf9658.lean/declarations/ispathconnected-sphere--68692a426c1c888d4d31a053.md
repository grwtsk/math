# isPathConnected_sphere

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b20df75a-c0f5-8027-6a5b-be729332f710",
  "kind": "theorem",
  "lexical_name": "isPathConnected_sphere",
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
  "slug": "ispathconnected-sphere--68692a426c1c888d4d31a053",
  "source": {
    "blob": "5f67985bb9c1b5f802a3c61a7f7568769444665f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 211,
    "path": "GRWTSK/Algebra/LinearAlgebra/Connected/Variant836211e331541ce3e6539af315815b291454da5c2eae0c4f3bcf5483aadf9658.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:68692a426c1c888d4d31a0531695c402b77ee6c966e99476fab32d4cb764e5f3",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Connected/Variant836211e331541ce3e6539af315815b291454da5c2eae0c4f3bcf5483aadf9658.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b20df75a-c0f5-8027-6a5b-be729332f710`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isPathConnected_sphere (h : 1 < Module.rank ℝ E) (x : E) {r : ℝ} (hr : 0 ≤ r) :
    IsPathConnected (sphere x r) := by
  /- when `r > 0`, we write the sphere as the image of `{0}ᶜ` under the map
  `y ↦ x + (r * ‖y‖⁻¹) • y`. Since the image under a continuous map of a path connected set
  is path connected, this concludes the proof. -/
  rcases hr.eq_or_lt with rfl | rpos
  · simpa using isPathConnected_singleton x
  let f : E → E := fun y ↦ x + (r * ‖y‖⁻¹) • y
  have A : ContinuousOn f {0}ᶜ := by
    intro y hy
    apply (continuousAt_const.add _).continuousWithinAt
    apply (continuousAt_const.mul (ContinuousAt.inv₀ continuousAt_id.norm ?_)).smul continuousAt_id
    simpa using hy
  have B : IsPathConnected ({0}ᶜ : Set E) := isPathConnected_compl_singleton_of_one_lt_rank h 0
  have C : IsPathConnected (f '' {0}ᶜ) := B.image' A
  have : f '' {0}ᶜ = sphere x r := by
    apply Subset.antisymm
    · rintro - ⟨y, hy, rfl⟩
      have : ‖y‖ ≠ 0 := by simpa using hy
      simp [f, norm_smul, abs_of_nonneg hr, mul_assoc, inv_mul_cancel₀ this]
    · intro y hy
      refine ⟨y - x, ?_, ?_⟩
      · intro H
        simp only [mem_singleton_iff, sub_eq_zero] at H
        simp only [H, mem_sphere_iff_norm, sub_self, norm_zero] at hy
        exact rpos.ne hy
      · simp [f, mem_sphere_iff_norm.1 hy, mul_inv_cancel₀ rpos.ne']
  rwa [this] at C

/-- In a real vector space of dimension `> 1`, any sphere of nonnegative radius is connected. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Connected/Variant836211e331541ce3e6539af315815b291454da5c2eae0c4f3bcf5483aadf9658.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Connected/Variant836211e331541ce3e6539af315815b291454da5c2eae0c4f3bcf5483aadf9658.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f67985bb9c1b5f802a3c61a7f7568769444665f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
