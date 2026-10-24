# nsmul_eq_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9013d309-6e26-a516-81c6-7bd10b57abd6",
  "kind": "theorem",
  "lexical_name": "nsmul_eq_zero_iff",
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
  "slug": "nsmul-eq-zero-iff--dbb0263ca6d0d51bfd55878e",
  "source": {
    "blob": "dc71366f4c55aaf40d5382f07cce3231dc3986f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 649,
    "line": 632,
    "path": "GRWTSK/Topology/GeneralTopology/Defs/Variantcb29d9fae3e7d3b7fed6f50de80f08a5781c7052c8d4d7a35498601a1dc2f746.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dbb0263ca6d0d51bfd55878e825d739a35e4a77331a8e0d89e386a398a626300",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Defs/Variantcb29d9fae3e7d3b7fed6f50de80f08a5781c7052c8d4d7a35498601a1dc2f746.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9013d309-6e26-a516-81c6-7bd10b57abd6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 632–649.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem nsmul_eq_zero_iff {u : AddCircle p} {n : ℕ} (h : 0 < n) :
    n • u = 0 ↔ ∃ m < n, ↑(↑m / ↑n * p) = u := by
  refine ⟨QuotientAddGroup.induction_on u fun k hk ↦ ?_, ?_⟩
  · rw [← addOrderOf_dvd_iff_nsmul_eq_zero]
    rintro ⟨m, -, rfl⟩
    constructor; rw [mul_comm, eq_comm]
    exact gcd_mul_addOrderOf_div_eq p m h
  rw [← coe_nsmul, coe_eq_zero_iff] at hk
  obtain ⟨a, ha⟩ := hk
  refine ⟨a.natMod n, Int.natMod_lt h.ne', ?_⟩
  have h0 : (n : 𝕜) ≠ 0 := Nat.cast_ne_zero.2 h.ne'
  rw [nsmul_eq_mul, mul_comm, ← div_eq_iff h0, ← a.ediv_mul_add_emod n, add_smul, add_div,
    zsmul_eq_mul, Int.cast_mul, Int.cast_natCast, mul_assoc, ← mul_div, mul_comm _ p,
    mul_div_cancel_right₀ p h0] at ha
  rw [← ha, coe_add, ← Int.cast_natCast, Int.natMod, Int.toNat_of_nonneg, zsmul_eq_mul,
    mul_div_right_comm, eq_comm, add_eq_right, ← zsmul_eq_mul, coe_zsmul, coe_period, smul_zero]
  exact Int.emod_nonneg _ (by exact_mod_cast h.ne')

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Defs/Variantcb29d9fae3e7d3b7fed6f50de80f08a5781c7052c8d4d7a35498601a1dc2f746.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Defs/Variantcb29d9fae3e7d3b7fed6f50de80f08a5781c7052c8d4d7a35498601a1dc2f746.lean#L632).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc71366f4c55aaf40d5382f07cce3231dc3986f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
