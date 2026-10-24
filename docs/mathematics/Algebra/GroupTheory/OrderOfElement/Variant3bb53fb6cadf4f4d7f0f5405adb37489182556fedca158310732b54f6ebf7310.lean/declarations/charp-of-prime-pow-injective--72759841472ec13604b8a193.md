# charP_of_prime_pow_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b7ad0c9f-d4e7-c5df-1f6f-ce405a76582a",
  "kind": "lemma",
  "lexical_name": "charP_of_prime_pow_injective",
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
  "slug": "charp-of-prime-pow-injective--72759841472ec13604b8a193",
  "source": {
    "blob": "339939e3cac40d57459333fb13bb319707147947",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1202,
    "line": 1192,
    "path": "GRWTSK/Algebra/GroupTheory/OrderOfElement/Variant3bb53fb6cadf4f4d7f0f5405adb37489182556fedca158310732b54f6ebf7310.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:72759841472ec13604b8a193b26ac4d6c6b2fce66a99c18727c842e22aa5129b",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/OrderOfElement/Variant3bb53fb6cadf4f4d7f0f5405adb37489182556fedca158310732b54f6ebf7310.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b7ad0c9f-d4e7-c5df-1f6f-ce405a76582a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1192–1202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma charP_of_prime_pow_injective (R) [Ring R] [Fintype R] (p n : ℕ) [hp : Fact p.Prime]
    (hn : card R = p ^ n) (hR : ∀ i ≤ n, (p : R) ^ i = 0 → i = n) : CharP R (p ^ n) := by
  obtain ⟨c, hc⟩ := CharP.exists R
  have hcpn : c ∣ p ^ n := by rw [← CharP.cast_eq_zero_iff R c, ← hn, Nat.cast_card_eq_zero]
  obtain ⟨i, hi, rfl⟩ : ∃ i ≤ n, c = p ^ i := by rwa [Nat.dvd_prime_pow hp.1] at hcpn
  obtain rfl : i = n := hR i hi <| by rw [← Nat.cast_pow, CharP.cast_eq_zero]
  assumption

namespace SemiconjBy

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/OrderOfElement/Variant3bb53fb6cadf4f4d7f0f5405adb37489182556fedca158310732b54f6ebf7310.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/OrderOfElement/Variant3bb53fb6cadf4f4d7f0f5405adb37489182556fedca158310732b54f6ebf7310.lean#L1192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `339939e3cac40d57459333fb13bb319707147947` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
