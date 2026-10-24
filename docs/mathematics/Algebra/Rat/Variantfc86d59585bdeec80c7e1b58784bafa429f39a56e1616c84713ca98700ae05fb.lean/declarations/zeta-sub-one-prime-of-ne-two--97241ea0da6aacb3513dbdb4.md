# zeta_sub_one_prime_of_ne_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5c9f72232eb3095958a8d8d4cb0a2a6e3fd00efa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 290,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fc/fc86d59585bdeec80c7e1b58784bafa429f39a56e1616c84713ca98700ae05fb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1b2068d0-464a-d9a2-3aa9-b0866ed56bbe",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6e184567-4aac-a61a-3462-b2bea608521c",
  "kind": "theorem",
  "lexical_name": "zeta_sub_one_prime_of_ne_two",
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
  "slug": "zeta-sub-one-prime-of-ne-two--97241ea0da6aacb3513dbdb4",
  "source": {
    "blob": "5c9f72232eb3095958a8d8d4cb0a2a6e3fd00efa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 308,
    "line": 290,
    "path": "GRWTSK/Algebra/Rat/Variantfc86d59585bdeec80c7e1b58784bafa429f39a56e1616c84713ca98700ae05fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:97241ea0da6aacb3513dbdb4feca28f1ec62ca7c5a24d75354f8b091d00f115a",
  "verification": {
    "reference": "docs/verification/Algebra/Rat/Variantfc86d59585bdeec80c7e1b58784bafa429f39a56e1616c84713ca98700ae05fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6e184567-4aac-a61a-3462-b2bea608521c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 290–308.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zeta_sub_one_prime_of_ne_two [IsCyclotomicExtension {p ^ (k + 1)} ℚ K]
    (hζ : IsPrimitiveRoot ζ ↑(p ^ (k + 1))) (hodd : p ≠ 2) :
    Prime (hζ.toInteger - 1) := by
  letI := IsCyclotomicExtension.numberField {p ^ (k + 1)} ℚ K
  refine Ideal.prime_of_irreducible_absNorm_span (fun h ↦ ?_) ?_
  · apply hζ.pow_ne_one_of_pos_of_lt zero_lt_one (one_lt_pow₀ hp.out.one_lt (by simp))
    rw [sub_eq_zero] at h
    simpa using congrArg (algebraMap _ K) h
  rw [Nat.irreducible_iff_prime, Ideal.absNorm_span_singleton, ← Nat.prime_iff,
    ← Int.prime_iff_natAbs_prime]
  convert Nat.prime_iff_prime_int.1 hp.out
  apply RingHom.injective_int (algebraMap ℤ ℚ)
  rw [← Algebra.norm_localization (Sₘ := K) ℤ (nonZeroDivisors ℤ)]
  simp only [PNat.pow_coe, id.map_eq_id, RingHomCompTriple.comp_eq, RingHom.coe_coe,
    Subalgebra.coe_val, algebraMap_int_eq, map_natCast]
  exact hζ.norm_sub_one_of_prime_ne_two (Polynomial.cyclotomic.irreducible_rat (PNat.pos _)) hodd

/-- `ζ - 1` is prime if `ζ` is a primitive `2 ^ (k + 1)`-th root of unity.
  See `zeta_sub_one_prime` for a general statement. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Rat/Variantfc86d59585bdeec80c7e1b58784bafa429f39a56e1616c84713ca98700ae05fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Rat/Variantfc86d59585bdeec80c7e1b58784bafa429f39a56e1616c84713ca98700ae05fb.lean#L290).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c9f72232eb3095958a8d8d4cb0a2a6e3fd00efa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
