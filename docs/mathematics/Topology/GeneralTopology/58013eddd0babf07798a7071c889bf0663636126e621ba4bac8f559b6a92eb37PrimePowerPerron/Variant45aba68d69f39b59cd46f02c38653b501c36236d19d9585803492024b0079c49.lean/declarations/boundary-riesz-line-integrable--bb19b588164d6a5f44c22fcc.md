# boundary_riesz_line_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c40af831-2892-b276-ba77-259e5a1f7655",
  "kind": "theorem",
  "lexical_name": "boundary_riesz_line_integrable",
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
  "slug": "boundary-riesz-line-integrable--bb19b588164d6a5f44c22fcc",
  "source": {
    "blob": "1bf9eb0e63164dce124d859c6bea8f9ca0edc96f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 326,
    "line": 299,
    "path": "GRWTSK/Topology/GeneralTopology/58013eddd0babf07798a7071c889bf0663636126e621ba4bac8f559b6a92eb37PrimePowerPerron/Variant45aba68d69f39b59cd46f02c38653b501c36236d19d9585803492024b0079c49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb19b588164d6a5f44c22fccdd197a20e18c7b0d8619e42a9c88762e5b97eb4a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/58013eddd0babf07798a7071c889bf0663636126e621ba4bac8f559b6a92eb37PrimePowerPerron/Variant45aba68d69f39b59cd46f02c38653b501c36236d19d9585803492024b0079c49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c40af831-2892-b276-ba77-259e5a1f7655`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 299–326.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundary_riesz_line_integrable (A c : ℝ) (hc : 0 < c) :
    Integrable (fun t : ℝ ↦ boundaryRieszTransform A ((c : ℂ) + (t : ℂ) * Complex.I)) := by
  have he (t : ℝ) : boundaryRieszTransform A ((c : ℂ) + (t : ℂ) * Complex.I) =
      ∑ j ∈ Finset.range 9,
        ((rieszCoefficient j : ℂ) * ((j + 9).factorial : ℂ) /
          ((sourceNormalization A : ℂ) * (A : ℂ) ^ j)) *
        ((((c : ℂ) + (t : ℂ) * Complex.I) ^ (j + 6))⁻¹ -
          (1 / 2 : ℂ) * (((c : ℂ) + (t : ℂ) * Complex.I) ^ (j + 8))⁻¹ +
            (1 / 16 : ℂ) * (((c : ℂ) + (t : ℂ) * Complex.I) ^ (j + 10))⁻¹) := by
    have hne : (c : ℂ) + (t : ℂ) * Complex.I ≠ 0 := by
      intro hz
      have hre := congrArg Complex.re hz
      simp at hre
      linarith
    unfold boundaryRieszTransform
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro j hj
    field_simp
    ring
  simp_rw [he]
  apply integrable_finsetSum
  intro j hj
  exact (((vertical_inverse_power_integrable c hc (j + 6) (by omega)).sub
    ((vertical_inverse_power_integrable c hc (j + 8) (by omega)).const_mul (1 / 2 : ℂ))).add
    ((vertical_inverse_power_integrable c hc (j + 10) (by omega)).const_mul
      (1 / 16 : ℂ))).const_mul _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/58013eddd0babf07798a7071c889bf0663636126e621ba4bac8f559b6a92eb37PrimePowerPerron/Variant45aba68d69f39b59cd46f02c38653b501c36236d19d9585803492024b0079c49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/58013eddd0babf07798a7071c889bf0663636126e621ba4bac8f559b6a92eb37PrimePowerPerron/Variant45aba68d69f39b59cd46f02c38653b501c36236d19d9585803492024b0079c49.lean#L299).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1bf9eb0e63164dce124d859c6bea8f9ca0edc96f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
