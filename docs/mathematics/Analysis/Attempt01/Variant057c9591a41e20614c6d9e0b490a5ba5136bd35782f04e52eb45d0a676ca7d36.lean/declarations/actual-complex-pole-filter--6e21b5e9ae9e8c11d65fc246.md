# actual_complex_pole_filter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cea2e7d8-9bc2-0f6e-5749-3f1cca7e2239",
  "kind": "theorem",
  "lexical_name": "actual_complex_pole_filter",
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
  "slug": "actual-complex-pole-filter--6e21b5e9ae9e8c11d65fc246",
  "source": {
    "blob": "a5a5d946d2fda3d362f140e4ac412c1e65fea440",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 73,
    "path": "GRWTSK/Analysis/Attempt01/Variant057c9591a41e20614c6d9e0b490a5ba5136bd35782f04e52eb45d0a676ca7d36.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e21b5e9ae9e8c11d65fc2467d79a6e10acebcf6f473227c358e6e0316fc1289",
  "verification": {
    "reference": "docs/verification/Analysis/Attempt01/Variant057c9591a41e20614c6d9e0b490a5ba5136bd35782f04e52eb45d0a676ca7d36.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cea2e7d8-9bc2-0f6e-5749-3f1cca7e2239`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_complex_pole_filter {A : ℝ} (hA : 1 ≤ A) (z : ℂ) :
    normalizedTransform A z = (z^2-1/4)*normalizedPrimitiveTransform A z := by
  have hp : 0 < A := by linarith
  let b := normalizedPrimitiveBump A
  have hb : ContDiff ℝ 2 b := normalizedPrimitiveBump_contDiff hp
  have hs : HasCompactSupport b := normalizedPrimitiveBump_hasCompactSupport hp
  have h0 := complex_weighted_derivative b (hb.of_le (by norm_num)) hs z
  have h1 := complex_weighted_derivative (deriv b) hb.deriv' hs.deriv z
  rw [h0] at h1
  have hi0 := compactLaplace_integrable b hb.continuous hs z
  have hi2 := compactLaplace_integrable (deriv (deriv b)) hb.deriv'.continuous_deriv_one
    hs.deriv.deriv z
  unfold normalizedTransform normalizedPrimitiveTransform
  have he (x : ℝ) : (normalizedTest explicitSecondDerivative A x : ℂ)*Complex.exp (z*(x : ℂ)) =
      (deriv (deriv b) x : ℂ)*Complex.exp (z*(x : ℂ)) -
        ((b x : ℂ)*Complex.exp (z*(x : ℂ)))/4 := by
    rw [← normalizedPrimitiveBump_second_sub_quarter hp x]
    dsimp [b]
    push_cast
    ring
  simp_rw [he]
  rw [integral_sub hi2 (hi0.div_const 4),integral_div]
  change compactLaplace (deriv (deriv b)) z - compactLaplace b z/4 = _
  rw [h1]
  change _ = (z^2-1/4)*compactLaplace b z
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Attempt01/Variant057c9591a41e20614c6d9e0b490a5ba5136bd35782f04e52eb45d0a676ca7d36.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Attempt01/Variant057c9591a41e20614c6d9e0b490a5ba5136bd35782f04e52eb45d0a676ca7d36.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5a5d946d2fda3d362f140e4ac412c1e65fea440` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
