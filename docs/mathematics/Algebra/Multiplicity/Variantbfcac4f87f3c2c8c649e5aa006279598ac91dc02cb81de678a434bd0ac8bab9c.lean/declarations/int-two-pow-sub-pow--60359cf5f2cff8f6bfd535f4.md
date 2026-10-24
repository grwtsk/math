# Int.two_pow_sub_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6f5dc2c2-d38e-6057-29f9-95c5f50d514c",
  "kind": "theorem",
  "lexical_name": "Int.two_pow_sub_pow",
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
  "slug": "int-two-pow-sub-pow--60359cf5f2cff8f6bfd535f4",
  "source": {
    "blob": "f1d34b5d432cc8b833229cb6a38c06a617480678",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 371,
    "line": 345,
    "path": "GRWTSK/Algebra/Multiplicity/Variantbfcac4f87f3c2c8c649e5aa006279598ac91dc02cb81de678a434bd0ac8bab9c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:60359cf5f2cff8f6bfd535f4389374f602150dd2e0a16d4fc54fdfd901ab19fd",
  "verification": {
    "reference": "docs/verification/Algebra/Multiplicity/Variantbfcac4f87f3c2c8c649e5aa006279598ac91dc02cb81de678a434bd0ac8bab9c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f5dc2c2-d38e-6057-29f9-95c5f50d514c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 345–371.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Int.two_pow_sub_pow {x y : ℤ} {n : ℕ} (hxy : 2 ∣ x - y) (hx : ¬2 ∣ x) (hn : Even n) :
    emultiplicity 2 (x ^ n - y ^ n) + 1 =
      emultiplicity 2 (x + y) + emultiplicity 2 (x - y) + emultiplicity (2 : ℤ) n := by
  have hy : Odd y := by
    rw [← even_iff_two_dvd, Int.not_even_iff_odd] at hx
    replace hxy := (@even_neg _ _ (x - y)).mpr (even_iff_two_dvd.mpr hxy)
    convert Even.add_odd hxy hx
    abel
  obtain ⟨d, hd⟩ := hn
  subst hd
  simp only [← two_mul, pow_mul]
  have hxy4 : 4 ∣ x ^ 2 - y ^ 2 := by
    rw [Int.dvd_iff_emod_eq_zero, Int.sub_emod, Int.sq_mod_four_eq_one_of_odd _,
      Int.sq_mod_four_eq_one_of_odd hy]
    · norm_num
    · simp only [← Int.not_even_iff_odd, even_iff_two_dvd, hx, not_false_iff]
  rw [Int.two_pow_sub_pow' d hxy4 _, sq_sub_sq, ← Int.ofNat_mul_out,
    emultiplicity_mul Int.prime_two, emultiplicity_mul Int.prime_two]
  · suffices emultiplicity (2 : ℤ) ↑(2 : ℕ) = 1 by rw [this, add_comm 1, ← add_assoc]
    norm_cast
    rw [FiniteMultiplicity.emultiplicity_self]
    rw [Nat.finiteMultiplicity_iff]
    decide
  · rw [← even_iff_two_dvd, Int.not_even_iff_odd]
    apply Odd.pow
    simp only [← Int.not_even_iff_odd, even_iff_two_dvd, hx, not_false_iff]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Multiplicity/Variantbfcac4f87f3c2c8c649e5aa006279598ac91dc02cb81de678a434bd0ac8bab9c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Multiplicity/Variantbfcac4f87f3c2c8c649e5aa006279598ac91dc02cb81de678a434bd0ac8bab9c.lean#L345).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1d34b5d432cc8b833229cb6a38c06a617480678` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
