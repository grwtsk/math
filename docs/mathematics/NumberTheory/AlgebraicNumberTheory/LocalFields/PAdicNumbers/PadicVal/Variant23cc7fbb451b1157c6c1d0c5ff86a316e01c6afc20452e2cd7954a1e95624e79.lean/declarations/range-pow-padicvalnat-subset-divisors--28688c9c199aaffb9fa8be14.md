# range_pow_padicValNat_subset_divisors'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8c6d944b-a69b-aa4d-2a67-38d28893ae15",
  "kind": "theorem",
  "lexical_name": "range_pow_padicValNat_subset_divisors'",
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
  "slug": "range-pow-padicvalnat-subset-divisors--28688c9c199aaffb9fa8be14",
  "source": {
    "blob": "544f2915c5ba1c70d9a13de107b22ee5fa3eb755",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 565,
    "line": 553,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicVal/Variant23cc7fbb451b1157c6c1d0c5ff86a316e01c6afc20452e2cd7954a1e95624e79.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:28688c9c199aaffb9fa8be1448d1fd3351909ff7384ac1ccd2d7e6977865b28c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicVal/Variant23cc7fbb451b1157c6c1d0c5ff86a316e01c6afc20452e2cd7954a1e95624e79.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c6d944b-a69b-aa4d-2a67-38d28893ae15`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 553–565.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem range_pow_padicValNat_subset_divisors' {n : ℕ} [hp : Fact p.Prime] :
    ((Finset.range (padicValNat p n)).image fun t => p ^ (t + 1)) ⊆ n.divisors.erase 1 := by
  rcases eq_or_ne n 0 with (rfl | hn)
  · simp
  intro t ht
  simp only [exists_prop, Finset.mem_image, Finset.mem_range] at ht
  obtain ⟨k, hk, rfl⟩ := ht
  rw [Finset.mem_erase, Nat.mem_divisors]
  refine' ⟨_, (pow_dvd_pow p <| succ_le_iff.2 hk).trans pow_padicValNat_dvd, hn⟩
  exact (Nat.one_lt_pow _ _ k.succ_pos hp.out.one_lt).ne'
#align range_pow_padic_val_nat_subset_divisors' range_pow_padicValNat_subset_divisors'

/-- The `p`-adic valuation of `(p * n)!` is `n` more than that of `n!`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicVal/Variant23cc7fbb451b1157c6c1d0c5ff86a316e01c6afc20452e2cd7954a1e95624e79.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicVal/Variant23cc7fbb451b1157c6c1d0c5ff86a316e01c6afc20452e2cd7954a1e95624e79.lean#L553).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `544f2915c5ba1c70d9a13de107b22ee5fa3eb755` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
