# forall_pow_eq_one_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ff8e1bf3-4d88-3380-19e5-fe58c3578a1d",
  "kind": "theorem",
  "lexical_name": "forall_pow_eq_one_iff",
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
  "slug": "forall-pow-eq-one-iff--cd489ebfedd8c3c20d5ceaf7",
  "source": {
    "blob": "d20f5461432043b353465bf024bd2e6b857d2dd1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 177,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant303004df677a5388af3763b347f5c53b375eddfdf5090cbb4a8085b9905cdf61.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd489ebfedd8c3c20d5ceaf7bc197db70d8ff8d90d079bd0db1458c8c69ecd11",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variant303004df677a5388af3763b347f5c53b375eddfdf5090cbb4a8085b9905cdf61.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff8e1bf3-4d88-3380-19e5-fe58c3578a1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem forall_pow_eq_one_iff (i : ℕ) : (∀ x : Kˣ, x ^ i = 1) ↔ q - 1 ∣ i := by
  classical
    obtain ⟨x, hx⟩ := IsCyclic.exists_generator (α := Kˣ)
    rw [← Fintype.card_units, ← orderOf_eq_card_of_forall_mem_zpowers hx,
      orderOf_dvd_iff_pow_eq_one]
    constructor
    · intro h; apply h
    · intro h y
      simp_rw [← mem_powers_iff_mem_zpowers] at hx
      rcases hx y with ⟨j, rfl⟩
      rw [← pow_mul, mul_comm, pow_mul, h, one_pow]
#align finite_field.forall_pow_eq_one_iff FiniteField.forall_pow_eq_one_iff

/-- The sum of `x ^ i` as `x` ranges over the units of a finite field of cardinality `q`
is equal to `0` unless `(q - 1) ∣ i`, in which case the sum is `q - 1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variant303004df677a5388af3763b347f5c53b375eddfdf5090cbb4a8085b9905cdf61.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant303004df677a5388af3763b347f5c53b375eddfdf5090cbb4a8085b9905cdf61.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d20f5461432043b353465bf024bd2e6b857d2dd1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
