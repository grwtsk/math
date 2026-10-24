# norm_two_pi_i_inv_smul_integral_le_of_norm_le_const

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d4630ca192db1188ba6036a7bf8b4670540e0e8c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 409,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e5/e59ec91bd1792c3ba4ab5ced24781b735b0f30899e0da4168df412bed4d376a8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b9137525-d53e-b8a3-e293-5aca32cd161a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f9b5b595-1909-049e-1f8b-2b1938b89533",
  "kind": "theorem",
  "lexical_name": "norm_two_pi_i_inv_smul_integral_le_of_norm_le_const",
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
  "slug": "norm-two-pi-i-inv-smul-integral-le-of-norm-le-const--4918a1f60c613f22ef16796b",
  "source": {
    "blob": "d4630ca192db1188ba6036a7bf8b4670540e0e8c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 420,
    "line": 409,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CircleIntegral/Variante59ec91bd1792c3ba4ab5ced24781b735b0f30899e0da4168df412bed4d376a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4918a1f60c613f22ef16796b14be40a91f4440fff52778c70de787be668b4c9d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CircleIntegral/Variante59ec91bd1792c3ba4ab5ced24781b735b0f30899e0da4168df412bed4d376a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f9b5b595-1909-049e-1f8b-2b1938b89533`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 409–420.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_two_pi_i_inv_smul_integral_le_of_norm_le_const {f : ℂ → E} {c : ℂ} {R C : ℝ}
    (hR : 0 ≤ R) (hf : ∀ z ∈ sphere c R, ‖f z‖ ≤ C) :
    ‖(2 * π * I : ℂ)⁻¹ • ∮ z in C(c, R), f z‖ ≤ R * C := by
  have : ‖(2 * π * I : ℂ)⁻¹‖ = (2 * π)⁻¹ := by simp [Real.pi_pos.le]
  rw [norm_smul, this, ← div_eq_inv_mul, div_le_iff Real.two_pi_pos, mul_comm (R * C), ← mul_assoc]
  exact norm_integral_le_of_norm_le_const hR hf
set_option linter.uppercaseLean3 false in
#align circle_integral.norm_two_pi_I_inv_smul_integral_le_of_norm_le_const circleIntegral.norm_two_pi_i_inv_smul_integral_le_of_norm_le_const

/-- If `f` is continuous on the circle `|z - c| = R`, `R > 0`, the `‖f z‖` is less than or equal to
`C : ℝ` on this circle, and this norm is strictly less than `C` at some point `z` of the circle,
then `‖∮ z in C(c, R), f z‖ < 2 * π * R * C`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CircleIntegral/Variante59ec91bd1792c3ba4ab5ced24781b735b0f30899e0da4168df412bed4d376a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CircleIntegral/Variante59ec91bd1792c3ba4ab5ced24781b735b0f30899e0da4168df412bed4d376a8.lean#L409).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4630ca192db1188ba6036a7bf8b4670540e0e8c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
