# apply_of_pow_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f8631ec5-bb11-1351-59d7-df75deb939bc",
  "kind": "lemma",
  "lexical_name": "apply_of_pow_eq_one",
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
  "slug": "apply-of-pow-eq-one--baff9a603e2873189b568720",
  "source": {
    "blob": "7bb04111113b37a40f991b981a834305d3e1e25f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 114,
    "path": "GRWTSK/Algebra/Frobenius/Variant725ca1c8edbabba99f556263f9aa6e81edd37d315dfae4193ddd84506e8caf36.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:baff9a603e2873189b568720db90ac1bdc1694ab6ef0b006c022c4fe85ba50ef",
  "verification": {
    "reference": "docs/verification/Algebra/Frobenius/Variant725ca1c8edbabba99f556263f9aa6e81edd37d315dfae4193ddd84506e8caf36.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8631ec5-bb11-1351-59d7-df75deb939bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma apply_of_pow_eq_one [IsDomain S] {ζ : S} {m : ℕ} (hζ : ζ ^ m = 1) (hk' : ↑m ∉ Q) :
    φ ζ = ζ ^ Nat.card (R ⧸ Q.under R) := by
  set q := Nat.card (R ⧸ Q.under R)
  have hm : m ≠ 0 := by rintro rfl; exact hk' (by simp)
  obtain ⟨k, hk, hζ⟩ := IsPrimitiveRoot.exists_pos hζ hm
  have hk' : ↑k ∉ Q := fun h ↦ hk' (Q.mem_of_dvd (Nat.cast_dvd_cast (hζ.2 m ‹_›)) h)
  have : NeZero k := ⟨hk.ne'⟩
  obtain ⟨i, hi, e⟩ := hζ.eq_pow_of_pow_eq_one (ξ := φ ζ) (by rw [← map_pow, hζ.1, map_one])
  have (j) : 1 - ζ ^ ((q + k - i) * j) ∈ Q := by
    rw [← Ideal.mul_unit_mem_iff_mem _ ((hζ.isUnit k.pos_of_neZero).pow (i * j)),
      sub_mul, one_mul, ← pow_add, ← add_mul, tsub_add_cancel_of_le (by linarith), add_mul,
        pow_add, pow_mul _ k, hζ.1, one_pow, mul_one, pow_mul, e, ← map_pow, mul_comm, pow_mul]
    exact H _
  have h₁ := sum_mem (t := Finset.range k) fun j _ ↦ this j
  have h₂ := geom_sum_mul (ζ ^ (q + k - i)) k
  rw [pow_right_comm, hζ.1, one_pow, sub_self, mul_eq_zero, sub_eq_zero] at h₂
  rcases h₂ with h₂ | h₂
  · simp [h₂, pow_mul, hk'] at h₁
  replace h₂ := congr($h₂ * ζ ^ i)
  rw [one_mul, ← pow_add, tsub_add_cancel_of_le (by linarith), pow_add, hζ.1, mul_one] at h₂
  rw [h₂, e]

/-- A Frobenius element at `Q` restricts to an automorphism of `S_Q`. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Frobenius/Variant725ca1c8edbabba99f556263f9aa6e81edd37d315dfae4193ddd84506e8caf36.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Frobenius/Variant725ca1c8edbabba99f556263f9aa6e81edd37d315dfae4193ddd84506e8caf36.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7bb04111113b37a40f991b981a834305d3e1e25f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
