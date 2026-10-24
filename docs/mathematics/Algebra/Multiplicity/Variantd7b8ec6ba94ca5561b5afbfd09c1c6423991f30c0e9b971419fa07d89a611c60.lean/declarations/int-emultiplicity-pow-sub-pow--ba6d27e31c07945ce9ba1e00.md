# Int.emultiplicity_pow_sub_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "693c07db5964005f125996f5a04e81b206fe8654",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 203,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d7/d7b8ec6ba94ca5561b5afbfd09c1c6423991f30c0e9b971419fa07d89a611c60.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9d3882b1-0da0-3894-6e1b-fda4164c8a10",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:699b8b88-fec7-bad5-7055-45094a936474",
  "kind": "theorem",
  "lexical_name": "Int.emultiplicity_pow_sub_pow",
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
  "slug": "int-emultiplicity-pow-sub-pow--ba6d27e31c07945ce9ba1e00",
  "source": {
    "blob": "693c07db5964005f125996f5a04e81b206fe8654",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 203,
    "path": "GRWTSK/Algebra/Multiplicity/Variantd7b8ec6ba94ca5561b5afbfd09c1c6423991f30c0e9b971419fa07d89a611c60.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba6d27e31c07945ce9ba1e0008d8c6f9c64fbfe4d5e32e5444c80e839a5d11f5",
  "verification": {
    "reference": "docs/verification/Algebra/Multiplicity/Variantd7b8ec6ba94ca5561b5afbfd09c1c6423991f30c0e9b971419fa07d89a611c60.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:699b8b88-fec7-bad5-7055-45094a936474`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Int.emultiplicity_pow_sub_pow {x y : ℤ} (hxy : ↑p ∣ x - y) (hx : ¬↑p ∣ x) (n : ℕ) :
    emultiplicity (↑p) (x ^ n - y ^ n) = emultiplicity (↑p) (x - y) + emultiplicity p n := by
  rcases n with - | n
  · simp only [emultiplicity_zero, add_top, pow_zero, sub_self]
  have h : FiniteMultiplicity _ _ := Nat.finiteMultiplicity_iff.mpr ⟨hp.ne_one, n.succ_pos⟩
  simp only [Nat.succ_eq_add_one] at h
  rcases emultiplicity_eq_coe.mp h.emultiplicity_eq_multiplicity with ⟨⟨k, hk⟩, hpn⟩
  conv_lhs => rw [hk, pow_mul, pow_mul]
  rw [Nat.prime_iff_prime_int] at hp
  rw [emultiplicity_pow_sub_pow_of_prime hp,
    emultiplicity_pow_prime_pow_sub_pow_prime_pow hp hp1 hxy hx, h.emultiplicity_eq_multiplicity]
  · rw [← geom_sum₂_mul]
    exact dvd_mul_of_dvd_right hxy _
  · exact fun h => hx (hp.dvd_of_dvd_pow h)
  · rw [Int.natCast_dvd_natCast]
    rintro ⟨c, rfl⟩
    refine hpn ⟨c, ?_⟩
    rwa [pow_succ, mul_assoc]

@[deprecated (since := "2024-11-30")]
alias multiplicity.Int.pow_sub_pow := Int.emultiplicity_pow_sub_pow

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Multiplicity/Variantd7b8ec6ba94ca5561b5afbfd09c1c6423991f30c0e9b971419fa07d89a611c60.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Multiplicity/Variantd7b8ec6ba94ca5561b5afbfd09c1c6423991f30c0e9b971419fa07d89a611c60.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `693c07db5964005f125996f5a04e81b206fe8654` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
