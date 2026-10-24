# Monic.not_irreducible_iff_exists_add_mul_eq_coeff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:48cd0652-b067-85f2-1f17-a40b362d9747",
  "kind": "theorem",
  "lexical_name": "Monic.not_irreducible_iff_exists_add_mul_eq_coeff",
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
  "slug": "monic-not-irreducible-iff-exists-add-mul-eq-coeff--ef85217df3be1f3950a120fb",
  "source": {
    "blob": "abaff12b546c6d78885765b2fe2842b794b57b0b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 347,
    "line": 323,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/RingDivision/Variant9a6541980ce3a0dd3115ab40267c3287795024b8936b77f6acab3a4b379a2308.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef85217df3be1f3950a120fb04fed9fd110d62539ad68c7dff27cf5ba82eed52",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/RingDivision/Variant9a6541980ce3a0dd3115ab40267c3287795024b8936b77f6acab3a4b379a2308.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:48cd0652-b067-85f2-1f17-a40b362d9747`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 323–347.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Monic.not_irreducible_iff_exists_add_mul_eq_coeff (hm : p.Monic) (hnd : p.natDegree = 2) :
    ¬Irreducible p ↔ ∃ c₁ c₂, p.coeff 0 = c₁ * c₂ ∧ p.coeff 1 = c₁ + c₂ := by
  cases subsingleton_or_nontrivial R
  · simp [natDegree_of_subsingleton] at hnd
  rw [hm.irreducible_iff_natDegree', and_iff_right, hnd]
  push_neg; constructor
  · rintro ⟨a, b, ha, hb, rfl, hdb⟩
    simp only [zero_lt_two, Nat.div_self, ge_iff_le,
      Nat.Ioc_succ_singleton, zero_add, mem_singleton] at hdb
    have hda := hnd
    rw [ha.natDegree_mul hb, hdb] at hda
    use a.coeff 0, b.coeff 0, mul_coeff_zero a b
    simpa only [nextCoeff, hnd, add_right_cancel hda, hdb] using ha.nextCoeff_mul hb
  · rintro ⟨c₁, c₂, hmul, hadd⟩
    refine
      ⟨X + C c₁, X + C c₂, monic_X_add_C _, monic_X_add_C _, ?_, ?_ ⟩
    · rw [p.as_sum_range_C_mul_X_pow, hnd, Finset.sum_range_succ, Finset.sum_range_succ,
        Finset.sum_range_one, ← hnd, hm.coeff_natDegree, hnd, hmul, hadd, C_mul, C_add, C_1]
      ring
    · rw [mem_Ioc, natDegree_X_add_C _]
      simp
  · rintro rfl
    simp [natDegree_one] at hnd
#align polynomial.monic.not_irreducible_iff_exists_add_mul_eq_coeff Polynomial.Monic.not_irreducible_iff_exists_add_mul_eq_coeff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/RingDivision/Variant9a6541980ce3a0dd3115ab40267c3287795024b8936b77f6acab3a4b379a2308.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/RingDivision/Variant9a6541980ce3a0dd3115ab40267c3287795024b8936b77f6acab3a4b379a2308.lean#L323).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `abaff12b546c6d78885765b2fe2842b794b57b0b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
