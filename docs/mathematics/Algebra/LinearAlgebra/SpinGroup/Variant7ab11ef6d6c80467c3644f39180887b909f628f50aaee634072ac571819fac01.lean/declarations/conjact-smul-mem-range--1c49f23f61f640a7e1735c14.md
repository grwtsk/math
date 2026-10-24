# conjAct_smul_ι_mem_range_ι

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:60ded831-c201-3682-c656-37534850f33c",
  "kind": "theorem",
  "lexical_name": "conjAct_smul_ι_mem_range_ι",
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
  "slug": "conjact-smul-mem-range--1c49f23f61f640a7e1735c14",
  "source": {
    "blob": "77524ff81775f07460c9b00e86c92ab87ab4e73e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 76,
    "path": "GRWTSK/Algebra/LinearAlgebra/SpinGroup/Variant7ab11ef6d6c80467c3644f39180887b909f628f50aaee634072ac571819fac01.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1c49f23f61f640a7e1735c1429aea87d2fcb6f9d3eed3fe6c7846fd64a965e15",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SpinGroup/Variant7ab11ef6d6c80467c3644f39180887b909f628f50aaee634072ac571819fac01.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:60ded831-c201-3682-c656-37534850f33c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem conjAct_smul_ι_mem_range_ι {x : (CliffordAlgebra Q)ˣ} (hx : x ∈ lipschitzGroup Q)
    [Invertible (2 : R)] (m : M) :
    ConjAct.toConjAct x • ι Q m ∈ LinearMap.range (ι Q) := by
  unfold lipschitzGroup at hx
  rw [ConjAct.units_smul_def, ConjAct.ofConjAct_toConjAct]
  induction hx using Subgroup.closure_induction'' generalizing m with
  | mem x hx =>
    obtain ⟨a, ha⟩ := hx
    let := x.invertible
    let : Invertible (ι Q a) := by rwa [ha]
    let : Invertible (Q a) := invertibleOfInvertibleι Q a
    simp_rw [← invOf_units x, ← ha, ι_mul_ι_mul_invOf_ι, LinearMap.mem_range_self]
  | inv_mem x hx =>
    obtain ⟨a, ha⟩ := hx
    let := x.invertible
    let : Invertible (ι Q a) := by rwa [ha]
    let : Invertible (Q a) := invertibleOfInvertibleι Q a
    simp_rw [← invOf_units x, inv_inv, ← ha, invOf_ι_mul_ι_mul_ι, LinearMap.mem_range_self]
  | one => simp_rw [inv_one, Units.val_one, one_mul, mul_one, LinearMap.mem_range_self]
  | mul y z _ _ hy hz =>
    simp_rw [mul_inv_rev, Units.val_mul]
    suffices ↑y * (↑z * ι Q m * ↑z⁻¹) * ↑y⁻¹ ∈ _ by
      simpa only [mul_assoc] using this
    obtain ⟨z', hz'⟩ := hz m
    obtain ⟨y', hy'⟩ := hy z'
    simp_rw [← hz', ← hy', LinearMap.mem_range_self]

/-- This is another version of `lipschitzGroup.conjAct_smul_ι_mem_range_ι` which uses `involute`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SpinGroup/Variant7ab11ef6d6c80467c3644f39180887b909f628f50aaee634072ac571819fac01.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SpinGroup/Variant7ab11ef6d6c80467c3644f39180887b909f628f50aaee634072ac571819fac01.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77524ff81775f07460c9b00e86c92ab87ab4e73e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
