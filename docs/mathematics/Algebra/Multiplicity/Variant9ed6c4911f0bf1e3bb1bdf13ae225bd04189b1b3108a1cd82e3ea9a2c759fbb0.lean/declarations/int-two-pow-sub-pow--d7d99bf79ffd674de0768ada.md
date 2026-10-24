# Int.two_pow_sub_pow'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3dd47b3d-53c9-2a4b-bd5d-4509e309d210",
  "kind": "theorem",
  "lexical_name": "Int.two_pow_sub_pow'",
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
  "slug": "int-two-pow-sub-pow--d7d99bf79ffd674de0768ada",
  "source": {
    "blob": "848608d1d24ba6b81fa4b30e669ca44c893309dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 307,
    "line": 284,
    "path": "GRWTSK/Algebra/Multiplicity/Variant9ed6c4911f0bf1e3bb1bdf13ae225bd04189b1b3108a1cd82e3ea9a2c759fbb0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7d99bf79ffd674de0768ada9ddadc899983d5ccde9b0d6ee911f5e217790f35",
  "verification": {
    "reference": "docs/verification/Algebra/Multiplicity/Variant9ed6c4911f0bf1e3bb1bdf13ae225bd04189b1b3108a1cd82e3ea9a2c759fbb0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3dd47b3d-53c9-2a4b-bd5d-4509e309d210`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 284–307.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Int.two_pow_sub_pow' {x y : ℤ} (n : ℕ) (hxy : 4 ∣ x - y) (hx : ¬2 ∣ x) :
    emultiplicity 2 (x ^ n - y ^ n) = emultiplicity 2 (x - y) + emultiplicity (2 : ℤ) n := by
  have hx_odd : Odd x := by rwa [← Int.not_even_iff_odd, even_iff_two_dvd]
  have hxy_even : Even (x - y) := even_iff_two_dvd.mpr (dvd_trans (by decide) hxy)
  have hy_odd : Odd y := by simpa using hx_odd.sub_even hxy_even
  rcases n with - | n
  · simp only [pow_zero, sub_self, emultiplicity_zero_right, Int.ofNat_zero, add_top]
  have h : FiniteMultiplicity 2 n.succ := Nat.finiteMultiplicity_iff.mpr ⟨by simp, n.succ_pos⟩
  simp only [Nat.succ_eq_add_one] at h
  rcases emultiplicity_eq_coe.mp h.emultiplicity_eq_multiplicity with ⟨⟨k, hk⟩, hpn⟩
  rw [hk, pow_mul, pow_mul, emultiplicity_pow_sub_pow_of_prime,
    Int.two_pow_two_pow_sub_pow_two_pow _ hxy hx, ← hk]
  · norm_cast
    rw [h.emultiplicity_eq_multiplicity]
  · exact Int.prime_two
  · simpa only [even_iff_two_dvd] using hx_odd.pow.sub_odd hy_odd.pow
  · simpa only [even_iff_two_dvd, ← Int.not_even_iff_odd] using hx_odd.pow
  norm_cast
  contrapose hpn
  rw [pow_succ]
  conv_rhs => rw [hk]
  exact mul_dvd_mul_left _ hpn

/-- **Lifting the exponent lemma** for `p = 2` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Multiplicity/Variant9ed6c4911f0bf1e3bb1bdf13ae225bd04189b1b3108a1cd82e3ea9a2c759fbb0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Multiplicity/Variant9ed6c4911f0bf1e3bb1bdf13ae225bd04189b1b3108a1cd82e3ea9a2c759fbb0.lean#L284).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `848608d1d24ba6b81fa4b30e669ca44c893309dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
