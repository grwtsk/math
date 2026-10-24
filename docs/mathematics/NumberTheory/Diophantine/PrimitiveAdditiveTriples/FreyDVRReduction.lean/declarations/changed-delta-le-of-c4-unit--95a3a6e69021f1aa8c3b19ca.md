# changed_delta_le_of_c4_unit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:089870f7-83f7-b9d0-0e9c-95f24cfb4d63",
  "kind": "theorem",
  "lexical_name": "changed_delta_le_of_c4_unit",
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
  "slug": "changed-delta-le-of-c4-unit--95a3a6e69021f1aa8c3b19ca",
  "source": {
    "blob": "7817aa4f3c54605b05e5da40d67daa3cc71c8129",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 38,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyDVRReduction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:95a3a6e69021f1aa8c3b19ca0db1ca8452ad1cf68acd4a0e517364c1ffbdfdd3",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyDVRReduction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:089870f7-83f7-b9d0-0e9c-95f24cfb4d63`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem changed_delta_le_of_c4_unit (W : WeierstrassCurve K)
    (hc4 : ν W.c₄ = 1) (C : WeierstrassCurve.VariableChange K)
    [WeierstrassCurve.IsIntegral R (C • W)] :
    ν (C • W).Δ ≤ ν W.Δ := by
  have h4 : ν (↑C.u⁻¹ : K) ^ 4 ≤ 1 := by
    simpa only [WeierstrassCurve.variableChange_c₄, map_mul, map_pow,
      hc4, mul_one] using integral_c4_le_one R (C • W)
  have h12 : ν (↑C.u⁻¹ : K) ^ 12 ≤ 1 := by
    calc
      ν (↑C.u⁻¹ : K) ^ 12 =
          (ν (↑C.u⁻¹ : K) ^ 4 * ν (↑C.u⁻¹ : K) ^ 4) *
            ν (↑C.u⁻¹ : K) ^ 4 := by rw [← pow_add, ← pow_add]
      _ ≤ (1 * 1) * 1 := mul_le_mul' (mul_le_mul' h4 h4) h4
      _ = 1 := by simp
  calc
    ν (C • W).Δ = ν (↑C.u⁻¹ : K) ^ 12 * ν W.Δ := by
      rw [WeierstrassCurve.variableChange_Δ, map_mul, map_pow]
    _ ≤ 1 * ν W.Δ := mul_le_mul_right' h12 _
    _ = ν W.Δ := one_mul _

/-- An integral equation with unit c4 is minimal in Mathlib's DVR sense. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyDVRReduction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyDVRReduction.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7817aa4f3c54605b05e5da40d67daa3cc71c8129` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
