# sign_eq_of_affineCombination_mem_affineSpan_single_lineMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a083c36d-8ea9-59b3-a212-f1a62791464b",
  "kind": "theorem",
  "lexical_name": "sign_eq_of_affineCombination_mem_affineSpan_single_lineMap",
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
  "slug": "sign-eq-of-affinecombination-mem-affinespan-single-linemap--6b10ec2a8011562c71b5e463",
  "source": {
    "blob": "1ba3e3fa915b8879d73756648f55d4117c8e328b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 784,
    "line": 755,
    "path": "GRWTSK/Algebra/LinearAlgebra/Independent/Variant87b91ada808f7f432fc153aeb3da6c7382eb0e24db07c1e4fc2ee70c4023cd92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b10ec2a8011562c71b5e463b0062348e826a01f5abd78598f9964dd37841b96",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Independent/Variant87b91ada808f7f432fc153aeb3da6c7382eb0e24db07c1e4fc2ee70c4023cd92.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a083c36d-8ea9-59b3-a212-f1a62791464b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 755–784.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sign_eq_of_affineCombination_mem_affineSpan_single_lineMap {p : ι → P}
    (h : AffineIndependent k p) {w : ι → k} {s : Finset ι} (hw : ∑ i in s, w i = 1) {i₁ i₂ i₃ : ι}
    (h₁ : i₁ ∈ s) (h₂ : i₂ ∈ s) (h₃ : i₃ ∈ s) (h₁₂ : i₁ ≠ i₂) (h₁₃ : i₁ ≠ i₃) (h₂₃ : i₂ ≠ i₃)
    {c : k} (hc0 : 0 < c) (hc1 : c < 1)
    (hs : s.affineCombination k p w ∈ line[k, p i₁, AffineMap.lineMap (p i₂) (p i₃) c]) :
    SignType.sign (w i₂) = SignType.sign (w i₃) := by
  classical
    rw [← s.affineCombination_affineCombinationSingleWeights k p h₁, ←
      s.affineCombination_affineCombinationLineMapWeights p h₂ h₃ c] at hs
    refine'
      sign_eq_of_affineCombination_mem_affineSpan_pair h hw
        (s.sum_affineCombinationSingleWeights k h₁)
        (s.sum_affineCombinationLineMapWeights h₂ h₃ c) hs h₂ h₃
        (Finset.affineCombinationSingleWeights_apply_of_ne k h₁₂.symm)
        (Finset.affineCombinationSingleWeights_apply_of_ne k h₁₃.symm) _
    rw [Finset.affineCombinationLineMapWeights_apply_left h₂₃,
      Finset.affineCombinationLineMapWeights_apply_right h₂₃]
    simp_all only [sub_pos, sign_pos]
#align sign_eq_of_affine_combination_mem_affine_span_single_line_map sign_eq_of_affineCombination_mem_affineSpan_single_lineMap

end Ordered

namespace Affine

variable (k : Type*) {V : Type*} (P : Type*) [Ring k] [AddCommGroup V] [Module k V]

variable [AffineSpace V P]

/-- A `Simplex k P n` is a collection of `n + 1` affinely
independent points. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Independent/Variant87b91ada808f7f432fc153aeb3da6c7382eb0e24db07c1e4fc2ee70c4023cd92.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Independent/Variant87b91ada808f7f432fc153aeb3da6c7382eb0e24db07c1e4fc2ee70c4023cd92.lean#L755).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ba3e3fa915b8879d73756648f55d4117c8e328b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
