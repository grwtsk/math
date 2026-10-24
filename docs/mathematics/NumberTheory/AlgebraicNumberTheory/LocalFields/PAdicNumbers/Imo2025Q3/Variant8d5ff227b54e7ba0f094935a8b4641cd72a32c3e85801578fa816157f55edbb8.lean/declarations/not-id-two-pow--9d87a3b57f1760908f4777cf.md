# not_id_two_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0cbf8a5d-f111-3709-953b-1899e865e8df",
  "kind": "lemma",
  "lexical_name": "not_id_two_pow",
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
  "slug": "not-id-two-pow--9d87a3b57f1760908f4777cf",
  "source": {
    "blob": "5b0937d10f8a03d15058e87e045307623061c556",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 124,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Imo2025Q3/Variant8d5ff227b54e7ba0f094935a8b4641cd72a32c3e85801578fa816157f55edbb8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9d87a3b57f1760908f4777cf2898f000651ec8ad84fc49504ae9df38924e2959",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Imo2025Q3/Variant8d5ff227b54e7ba0f094935a8b4641cd72a32c3e85801578fa816157f55edbb8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0cbf8a5d-f111-3709-953b-1899e865e8df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma not_id_two_pow (hf : IsBonza f) (hnf : ¬ ∀ x > (0 : ℕ), f x = x) :
    ∀ n, 0 < n → ∃ a, f n = 2 ^ a := fun n hn ↦
  have {p} (pp : p.Prime) (hp : p ∣ f n) : p = 2 := by
    by_contra nh
    have dvd : (p : ℤ) ∣ p ^ n - 1 := by calc
      _ ∣ (f n : ℤ) := ofNat_dvd.mpr hp
      _ ∣ _ := by
        have := hf.1 n p hn pp.pos
        have p_gt_two : 2 < p := lt_of_le_of_ne pp.two_le (fun a ↦ nh (id (Eq.symm a)))
        rwa [hf.apply_prime_gt_two_eq_one hnf p p_gt_two pp, Nat.cast_one, one_pow] at this
    have : (p : ℤ) ∣ p ^ n := dvd_pow (Int.dvd_refl p) (ne_zero_of_lt hn)
    exact (pp.not_dvd_one) (ofNat_dvd.mp ((Int.dvd_iff_dvd_of_dvd_sub dvd).mp this))
  ⟨(f n).primeFactorsList.length, eq_prime_pow_of_unique_prime_dvd (ne_zero_of_lt (hf.2 n hn)) this⟩

end IsBonza

/-- An example of a bonza function achieving the maximum number of values of `c`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Imo2025Q3/Variant8d5ff227b54e7ba0f094935a8b4641cd72a32c3e85801578fa816157f55edbb8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Imo2025Q3/Variant8d5ff227b54e7ba0f094935a8b4641cd72a32c3e85801578fa816157f55edbb8.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b0937d10f8a03d15058e87e045307623061c556` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
