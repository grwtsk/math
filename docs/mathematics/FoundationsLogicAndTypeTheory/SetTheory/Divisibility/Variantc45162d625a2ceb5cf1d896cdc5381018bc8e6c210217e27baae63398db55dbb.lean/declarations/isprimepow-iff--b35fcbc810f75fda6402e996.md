# isPrimePow_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0931894a-0d1a-105a-a155-7536e277c3e2",
  "kind": "theorem",
  "lexical_name": "isPrimePow_iff",
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
  "slug": "isprimepow-iff--b35fcbc810f75fda6402e996",
  "source": {
    "blob": "854a8bc57accea64b200c1567ae5a38e0a4837db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 151,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Divisibility/Variantc45162d625a2ceb5cf1d896cdc5381018bc8e6c210217e27baae63398db55dbb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b35fcbc810f75fda6402e9967722e7bacf08bf93dd4549197cdd88f0b12d2d09",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Divisibility/Variantc45162d625a2ceb5cf1d896cdc5381018bc8e6c210217e27baae63398db55dbb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0931894a-0d1a-105a-a155-7536e277c3e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isPrimePow_iff {a : Cardinal} : IsPrimePow a ↔ ℵ₀ ≤ a ∨ ∃ n : ℕ, a = n ∧ IsPrimePow n := by
  by_cases h : ℵ₀ ≤ a
  · simp [h, (prime_of_aleph0_le h).isPrimePow]
  simp only [h, Nat.cast_inj, exists_eq_left', false_or_iff, isPrimePow_nat_iff]
  lift a to ℕ using not_le.mp h
  rw [isPrimePow_def]
  refine'
    ⟨_, fun ⟨n, han, p, k, hp, hk, h⟩ =>
          ⟨p, k, nat_is_prime_iff.2 hp, hk, by rw [han]; exact_mod_cast h⟩⟩
  rintro ⟨p, k, hp, hk, hpk⟩
  have key : p ^ 1 ≤ ↑a := by rw [←hpk]; apply power_le_power_left hp.ne_zero; exact_mod_cast hk
  rw [power_one] at key
  lift p to ℕ using key.trans_lt (nat_lt_aleph0 a)
  exact ⟨a, rfl, p, k, nat_is_prime_iff.mp hp, hk, by exact_mod_cast hpk⟩
#align cardinal.is_prime_pow_iff Cardinal.isPrimePow_iff

end Cardinal
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Divisibility/Variantc45162d625a2ceb5cf1d896cdc5381018bc8e6c210217e27baae63398db55dbb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Divisibility/Variantc45162d625a2ceb5cf1d896cdc5381018bc8e6c210217e27baae63398db55dbb.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `854a8bc57accea64b200c1567ae5a38e0a4837db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
