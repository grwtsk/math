# prod_primeFactors_pow_totient_ediv_dvd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e14c6e0393b2fd86b0b827db56ac0b18f0994990",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 435,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0b/0b71be7c52540d06698cfc05437fbdbb07acfc9fe59bb1ad3255359d62b460c8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b2bfa38f-ecee-5b43-f239-f2e636410504",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:13bcfc76-32c1-fb53-1f28-05be87b3b7bc",
  "kind": "theorem",
  "lexical_name": "prod_primeFactors_pow_totient_ediv_dvd",
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
  "slug": "prod-primefactors-pow-totient-ediv-dvd--91d5068a059eef6c8531697f",
  "source": {
    "blob": "e14c6e0393b2fd86b0b827db56ac0b18f0994990",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 448,
    "line": 435,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0b71be7c52540d06698cfc05437fbdbb07acfc9fe59bb1ad3255359d62b460c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:91d5068a059eef6c8531697f33e7ce3dba389fa3fb2078de13182a4412d04fd5",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0b71be7c52540d06698cfc05437fbdbb07acfc9fe59bb1ad3255359d62b460c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:13bcfc76-32c1-fb53-1f28-05be87b3b7bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 435–448.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_primeFactors_pow_totient_ediv_dvd {n : ℕ} (hn : 0 < n) :
    ∏ p ∈ n.primeFactors, p ^ (φ n / (p - 1)) ∣ n ^ φ n := by
  have := Nat.prod_primeFactors_dvd n
  rw [← Nat.pow_dvd_pow_iff (Nat.totient_pos.mpr hn).ne', ← Finset.prod_pow] at this
  refine dvd_trans (Finset.prod_dvd_prod_of_dvd _ _ fun p hp ↦ ?_) this
  exact Nat.pow_dvd_pow p <| Nat.div_le_self _ _

end Nat

namespace Mathlib.Meta.Positivity
open Lean Meta Qq

/-- Extension for `Nat.totient`. -/
@[positivity Nat.totient _]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0b71be7c52540d06698cfc05437fbdbb07acfc9fe59bb1ad3255359d62b460c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0b71be7c52540d06698cfc05437fbdbb07acfc9fe59bb1ad3255359d62b460c8.lean#L435).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e14c6e0393b2fd86b0b827db56ac0b18f0994990` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
