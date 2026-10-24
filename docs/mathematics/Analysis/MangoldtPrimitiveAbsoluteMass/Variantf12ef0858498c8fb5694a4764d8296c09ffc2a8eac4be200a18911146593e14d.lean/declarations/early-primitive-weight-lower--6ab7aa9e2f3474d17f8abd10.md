# early_primitive_weight_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1580108d-137a-cfdc-764c-cdb885da2efd",
  "kind": "theorem",
  "lexical_name": "early_primitive_weight_lower",
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
  "slug": "early-primitive-weight-lower--6ab7aa9e2f3474d17f8abd10",
  "source": {
    "blob": "efc4f13117f72d21b101d8e0027195328a86d48b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 47,
    "path": "GRWTSK/Analysis/MangoldtPrimitiveAbsoluteMass/Variantf12ef0858498c8fb5694a4764d8296c09ffc2a8eac4be200a18911146593e14d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ab7aa9e2f3474d17f8abd103dd81efb46a94c7a27f4360f7d375bd1b696ea88",
  "verification": {
    "reference": "docs/verification/Analysis/MangoldtPrimitiveAbsoluteMass/Variantf12ef0858498c8fb5694a4764d8296c09ffc2a8eac4be200a18911146593e14d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1580108d-137a-cfdc-764c-cdb885da2efd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem early_primitive_weight_lower {x : ℝ} {n : ℕ} (hn : 1 ≤ n)
    (hnx : (n : ℝ) ≤ x / 4) : 2 / Real.sqrt x ≤ primitiveWeight x n := by
  have hnp : 0 < (n : ℝ) := by exact_mod_cast (by omega : 0 < n)
  have hx : 0 < x := by linarith
  have hsnp := Real.sqrt_pos.mpr hnp
  have hsxp := Real.sqrt_pos.mpr hx
  have hsqn := Real.sq_sqrt hnp.le
  have hsqx := Real.sq_sqrt hx.le
  have hdouble : 2 * Real.sqrt n ≤ Real.sqrt x := by nlinarith
  have hi : 2 / Real.sqrt x ≤ 1 / Real.sqrt n :=
    (div_le_div_iff₀ hsxp hsnp).mpr (by linarith)
  rw [show 2 / Real.sqrt x = 2 * (1 / Real.sqrt x) by ring] at hi ⊢
  unfold primitiveWeight
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/MangoldtPrimitiveAbsoluteMass/Variantf12ef0858498c8fb5694a4764d8296c09ffc2a8eac4be200a18911146593e14d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MangoldtPrimitiveAbsoluteMass/Variantf12ef0858498c8fb5694a4764d8296c09ffc2a8eac4be200a18911146593e14d.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `efc4f13117f72d21b101d8e0027195328a86d48b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
