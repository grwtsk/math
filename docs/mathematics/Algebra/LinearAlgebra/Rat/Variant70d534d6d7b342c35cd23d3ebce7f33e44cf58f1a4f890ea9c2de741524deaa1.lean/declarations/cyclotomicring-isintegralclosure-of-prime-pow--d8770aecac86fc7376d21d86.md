# cyclotomicRing_isIntegralClosure_of_prime_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8819be702853baa5ebb27a9b1c7e3475776169f0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 131,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/70/70d534d6d7b342c35cd23d3ebce7f33e44cf58f1a4f890ea9c2de741524deaa1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5a00d20f-d9f5-4aa5-955f-45a82615f965",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:16e933cd-2518-0217-7e2b-36ab3775933f",
  "kind": "theorem",
  "lexical_name": "cyclotomicRing_isIntegralClosure_of_prime_pow",
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
  "slug": "cyclotomicring-isintegralclosure-of-prime-pow--d8770aecac86fc7376d21d86",
  "source": {
    "blob": "8819be702853baa5ebb27a9b1c7e3475776169f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 131,
    "path": "GRWTSK/Algebra/LinearAlgebra/Rat/Variant70d534d6d7b342c35cd23d3ebce7f33e44cf58f1a4f890ea9c2de741524deaa1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d8770aecac86fc7376d21d86bcb04223ad40b6951899a707f5d77abd17316ce7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Rat/Variant70d534d6d7b342c35cd23d3ebce7f33e44cf58f1a4f890ea9c2de741524deaa1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:16e933cd-2518-0217-7e2b-36ab3775933f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cyclotomicRing_isIntegralClosure_of_prime_pow :
    IsIntegralClosure (CyclotomicRing (p ^ k) ℤ ℚ) ℤ (CyclotomicField (p ^ k) ℚ) := by
  haveI : CharZero ℚ := StrictOrderedSemiring.to_charZero
  have hζ := zeta_spec (p ^ k) ℚ (CyclotomicField (p ^ k) ℚ)
  refine' ⟨IsFractionRing.injective _ _, @fun x => ⟨fun h => ⟨⟨x, _⟩, rfl⟩, _⟩⟩
-- Porting note: having `.isIntegral_iff` inside the definition of `this` causes an error.
  · have := (isIntegralClosure_adjoin_singleton_of_prime_pow hζ)
    obtain ⟨y, rfl⟩ := this.isIntegral_iff.1 h
    refine' adjoin_mono _ y.2
    simp only [PNat.pow_coe, Set.singleton_subset_iff, Set.mem_setOf_eq]
    exact hζ.pow_eq_one
  · rintro ⟨y, rfl⟩
    exact IsIntegral.algebraMap ((IsCyclotomicExtension.integral {p ^ k} ℤ _) _)
#align is_cyclotomic_extension.rat.cyclotomic_ring_is_integral_closure_of_prime_pow IsCyclotomicExtension.Rat.cyclotomicRing_isIntegralClosure_of_prime_pow

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Rat/Variant70d534d6d7b342c35cd23d3ebce7f33e44cf58f1a4f890ea9c2de741524deaa1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Rat/Variant70d534d6d7b342c35cd23d3ebce7f33e44cf58f1a4f890ea9c2de741524deaa1.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8819be702853baa5ebb27a9b1c7e3475776169f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
