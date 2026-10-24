# Int.two_pow_two_pow_add_two_pow_two_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0ee63943-2089-451a-665c-b06795529979",
  "kind": "theorem",
  "lexical_name": "Int.two_pow_two_pow_add_two_pow_two_pow",
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
  "slug": "int-two-pow-two-pow-add-two-pow-two-pow--0641aa200c26193f9ce8cbed",
  "source": {
    "blob": "f1d34b5d432cc8b833229cb6a38c06a617480678",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 314,
    "line": 291,
    "path": "GRWTSK/Algebra/Multiplicity/Variantbfcac4f87f3c2c8c649e5aa006279598ac91dc02cb81de678a434bd0ac8bab9c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0641aa200c26193f9ce8cbed6c4f0218e1b2e6c31cb565673b5f1777b5cb8d15",
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

Occurrence: `result:0ee63943-2089-451a-665c-b06795529979`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 291–314.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Int.two_pow_two_pow_add_two_pow_two_pow {x y : ℤ} (hx : ¬2 ∣ x) (hxy : 4 ∣ x - y) (i : ℕ) :
    emultiplicity 2 (x ^ 2 ^ i + y ^ 2 ^ i) = ↑(1 : ℕ) := by
  have hx_odd : Odd x := by rwa [← Int.not_even_iff_odd, even_iff_two_dvd]
  have hxy_even : Even (x - y) := even_iff_two_dvd.mpr (dvd_trans (by decide) hxy)
  have hy_odd : Odd y := by simpa using hx_odd.sub_even hxy_even
  refine emultiplicity_eq_coe.mpr ⟨?_, ?_⟩
  · rw [pow_one, ← even_iff_two_dvd]
    exact hx_odd.pow.add_odd hy_odd.pow
  rcases i with - | i
  · intro hxy'
    have : 2 * 2 ∣ 2 * x := by
      have := dvd_add hxy hxy'
      norm_num at *
      rw [two_mul]
      exact this
    have : 2 ∣ x := (mul_dvd_mul_iff_left (by norm_num)).mp this
    contradiction
  suffices ∀ x : ℤ, Odd x → x ^ 2 ^ (i + 1) % 4 = 1 by
    rw [show (2 ^ (1 + 1) : ℤ) = 4 by norm_num, Int.dvd_iff_emod_eq_zero, Int.add_emod,
      this _ hx_odd, this _ hy_odd]
    decide
  intro x hx
  rw [pow_succ', mul_comm, pow_mul, Int.sq_mod_four_eq_one_of_odd hx.pow]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Multiplicity/Variantbfcac4f87f3c2c8c649e5aa006279598ac91dc02cb81de678a434bd0ac8bab9c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Multiplicity/Variantbfcac4f87f3c2c8c649e5aa006279598ac91dc02cb81de678a434bd0ac8bab9c.lean#L291).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1d34b5d432cc8b833229cb6a38c06a617480678` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
