# early_six_atom_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6e86ba98-5ae8-0bfe-9508-5e6df4ae3a32",
  "kind": "theorem",
  "lexical_name": "early_six_atom_lower",
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
  "slug": "early-six-atom-lower--54e0345492b88af58e06bf7a",
  "source": {
    "blob": "efc4f13117f72d21b101d8e0027195328a86d48b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 67,
    "path": "GRWTSK/Analysis/MangoldtPrimitiveAbsoluteMass/Variantf12ef0858498c8fb5694a4764d8296c09ffc2a8eac4be200a18911146593e14d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:54e0345492b88af58e06bf7afeffcee7f2f71331ac186c76c7facd8ded9138f9",
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

Occurrence: `result:6e86ba98-5ae8-0bfe-9508-5e6df4ae3a32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem early_six_atom_lower {x : ℝ} (hx : 48 ≤ x) {k : ℕ}
    (hk : k ∈ Finset.Icc 1 ⌊x / 24⌋₊) :
    2 / Real.sqrt x ≤ |ArithmeticFunction.vonMangoldt (6 * k) - 1| *
      primitiveWeight x (6 * k) := by
  obtain ⟨hk1, hkM⟩ := Finset.mem_Icc.mp hk
  have hkr := (show (k : ℝ) ≤ (⌊x / 24⌋₊ : ℝ) by exact_mod_cast hkM).trans
    (Nat.floor_le (by linarith : 0 ≤ x / 24))
  rw [vonMangoldt_six_mul]
  simp only [zero_sub, abs_neg, abs_one, one_mul]
  apply early_primitive_weight_lower (by omega : 1 ≤ 6 * k)
  push_cast
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/MangoldtPrimitiveAbsoluteMass/Variantf12ef0858498c8fb5694a4764d8296c09ffc2a8eac4be200a18911146593e14d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MangoldtPrimitiveAbsoluteMass/Variantf12ef0858498c8fb5694a4764d8296c09ffc2a8eac4be200a18911146593e14d.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `efc4f13117f72d21b101d8e0027195328a86d48b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
