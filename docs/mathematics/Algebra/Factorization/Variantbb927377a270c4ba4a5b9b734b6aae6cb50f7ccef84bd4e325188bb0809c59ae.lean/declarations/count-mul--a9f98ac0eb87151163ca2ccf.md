# count_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "88647c45574d4f4a8bd2224cdc49b47cfacbd607",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 365,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bb/bb927377a270c4ba4a5b9b734b6aae6cb50f7ccef84bd4e325188bb0809c59ae.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:44351a63-e2bf-e084-946b-386b96db48e3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3a905e1b-7ef6-f40a-2ff6-a9bcfc904d95",
  "kind": "theorem",
  "lexical_name": "count_mul",
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
  "slug": "count-mul--a9f98ac0eb87151163ca2ccf",
  "source": {
    "blob": "88647c45574d4f4a8bd2224cdc49b47cfacbd607",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 389,
    "line": 365,
    "path": "GRWTSK/Algebra/Factorization/Variantbb927377a270c4ba4a5b9b734b6aae6cb50f7ccef84bd4e325188bb0809c59ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a9f98ac0eb87151163ca2ccf740b858f0f1a3b69d4fba6dad5e3bbf286703e55",
  "verification": {
    "reference": "docs/verification/Algebra/Factorization/Variantbb927377a270c4ba4a5b9b734b6aae6cb50f7ccef84bd4e325188bb0809c59ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3a905e1b-7ef6-f40a-2ff6-a9bcfc904d95`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 365–389.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem count_mul {I I' : FractionalIdeal R⁰ K} (hI : I ≠ 0) (hI' : I' ≠ 0) :
    count K v (I * I') = count K v I + count K v I' := by
  have hv : Irreducible (Associates.mk v.asIdeal) := by apply v.associates_irreducible
  obtain ⟨a, J, ha, haJ⟩ := exists_eq_spanSingleton_mul I
  have ha_ne_zero : Associates.mk (Ideal.span {a} : Ideal R) ≠ 0 := by
    rw [ne_eq, Associates.mk_eq_zero, Ideal.zero_eq_bot, Ideal.span_singleton_eq_bot]; exact ha
  have hJ_ne_zero : Associates.mk J ≠ 0 := Associates.mk_ne_zero.mpr (ideal_factor_ne_zero hI haJ)
  obtain ⟨a', J', ha', haJ'⟩ := exists_eq_spanSingleton_mul I'
  have ha'_ne_zero : Associates.mk (Ideal.span {a'} : Ideal R) ≠ 0 := by
    rw [ne_eq, Associates.mk_eq_zero, Ideal.zero_eq_bot, Ideal.span_singleton_eq_bot]; exact ha'
  have hJ'_ne_zero : Associates.mk J' ≠ 0 :=
    Associates.mk_ne_zero.mpr (ideal_factor_ne_zero hI' haJ')
  have h_prod : I * I' = spanSingleton R⁰ ((algebraMap R K) (a * a'))⁻¹ * ↑(J * J') := by
    rw [haJ, haJ', mul_assoc, mul_comm (J : FractionalIdeal R⁰ K), mul_assoc, ← mul_assoc,
      spanSingleton_mul_spanSingleton, coeIdeal_mul, map_mul, mul_inv,
      mul_comm (J : FractionalIdeal R⁰ K)]
  rw [count_well_defined K v hI haJ, count_well_defined K v hI' haJ',
    count_well_defined K v (mul_ne_zero hI hI') h_prod, ← Associates.mk_mul_mk,
    Associates.count_mul hJ_ne_zero hJ'_ne_zero hv, ← Ideal.span_singleton_mul_span_singleton,
    ← Associates.mk_mul_mk, Associates.count_mul ha_ne_zero ha'_ne_zero hv]
  push_cast
  ring

/-- For nonzero `I, I'`, `val_v(I*I') = val_v(I) + val_v(I')`. If `I` or `I'` is zero, then
`val_v(I*I') = 0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Factorization/Variantbb927377a270c4ba4a5b9b734b6aae6cb50f7ccef84bd4e325188bb0809c59ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Factorization/Variantbb927377a270c4ba4a5b9b734b6aae6cb50f7ccef84bd4e325188bb0809c59ae.lean#L365).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88647c45574d4f4a8bd2224cdc49b47cfacbd607` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
