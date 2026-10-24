# derivative_rootMultiplicity_of_root

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2a0e0e1a4a4a03bbe80b335f5c95b23ab98a3ece",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 34,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/62/62acac4070343ebf0b80b8982fdde835cd01d3f55798ee520051186f97391dff.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:66ea2a15-53bb-3ef0-f60d-e7d170df1326",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5ce0e089-1dff-21b3-6e81-ea90e662e9f6",
  "kind": "theorem",
  "lexical_name": "derivative_rootMultiplicity_of_root",
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
  "slug": "derivative-rootmultiplicity-of-root--c130431408a8a887964c37f3",
  "source": {
    "blob": "2a0e0e1a4a4a03bbe80b335f5c95b23ab98a3ece",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 34,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/FieldDivision/Variant62acac4070343ebf0b80b8982fdde835cd01d3f55798ee520051186f97391dff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c130431408a8a887964c37f3941e190b254bafde36efa8587985483b0e3da62c",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/FieldDivision/Variant62acac4070343ebf0b80b8982fdde835cd01d3f55798ee520051186f97391dff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ce0e089-1dff-21b3-6e81-ea90e662e9f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem derivative_rootMultiplicity_of_root [CharZero R] {p : R[X]} {t : R} (hpt : p.IsRoot t) :
    p.derivative.rootMultiplicity t = p.rootMultiplicity t - 1 := by
  rcases eq_or_ne p 0 with (rfl | hp)
  · simp
  nth_rw 1 [← p.divByMonic_mul_pow_rootMultiplicity_eq t]
  simp only [derivative_pow, derivative_mul, derivative_sub, derivative_X, derivative_C, sub_zero,
    mul_one]
  set n := p.rootMultiplicity t - 1
  have hn : n + 1 = _ := tsub_add_cancel_of_le ((rootMultiplicity_pos hp).mpr hpt)
  rw [← hn]
  set q := p /ₘ (X - C t) ^ (n + 1) with _hq
  convert_to rootMultiplicity t ((X - C t) ^ n * (derivative q * (X - C t) + q * C ↑(n + 1))) = n
  · congr
    rw [mul_add, mul_left_comm <| (X - C t) ^ n, ← pow_succ']
    congr 1
    rw [mul_left_comm <| (X - C t) ^ n, mul_comm <| (X - C t) ^ n]
  have h : eval t (derivative q * (X - C t) + q * C (R := R) ↑(n + 1)) ≠ 0 := by
    suffices eval t q * ↑(n + 1) ≠ 0 by simpa
    refine' mul_ne_zero _ (Nat.cast_ne_zero.mpr n.succ_ne_zero)
    convert eval_divByMonic_pow_rootMultiplicity_ne_zero t hp
  rw [rootMultiplicity_mul, rootMultiplicity_X_sub_C_pow, rootMultiplicity_eq_zero h, add_zero]
  refine' mul_ne_zero (pow_ne_zero n <| X_sub_C_ne_zero t) _
  contrapose! h
  rw [h, eval_zero]
#align polynomial.derivative_root_multiplicity_of_root Polynomial.derivative_rootMultiplicity_of_root

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/FieldDivision/Variant62acac4070343ebf0b80b8982fdde835cd01d3f55798ee520051186f97391dff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/FieldDivision/Variant62acac4070343ebf0b80b8982fdde835cd01d3f55798ee520051186f97391dff.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a0e0e1a4a4a03bbe80b335f5c95b23ab98a3ece` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
