# nu_lt_one_of_dvd_prodPrimes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0e767061-3647-e6a0-8948-ad4eb6ac1c12",
  "kind": "theorem",
  "lexical_name": "nu_lt_one_of_dvd_prodPrimes",
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
  "slug": "nu-lt-one-of-dvd-prodprimes--b7d71432a576f96ec7e30ae6",
  "source": {
    "blob": "3b65487ee5ff875948d7dad4be7a3f00b83ca5d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 151,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant99b6499f37325ff12a914052565c0ccacbd626b01fb3fda100964aecc51c68f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b7d71432a576f96ec7e30ae6704d4f74dd96fe4bd79ed29986ac073e18ba36d6",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant99b6499f37325ff12a914052565c0ccacbd626b01fb3fda100964aecc51c68f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e767061-3647-e6a0-8948-ad4eb6ac1c12`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nu_lt_one_of_dvd_prodPrimes {d : ℕ} (hdP : d ∣ s.prodPrimes) (hd_ne_one : d ≠ 1) :
    s.nu d < 1 := by
  have hd_sq : Squarefree d := Squarefree.squarefree_of_dvd hdP s.prodPrimes_squarefree
  have := hd_sq.ne_zero
  calc
    s.nu d = ∏ p ∈ d.primeFactors, s.nu p := (prod_primeFactors_nu hdP).symm
    _ < ∏ p ∈ d.primeFactors, 1 := by
      apply prod_lt_prod_of_nonempty₀
      · intro p hp
        simp only [mem_primeFactors] at hp
        apply s.nu_pos_of_prime p hp.1 (hp.2.1.trans hdP)
      · intro p hpd; rw [mem_primeFactors_of_ne_zero hd_sq.ne_zero] at hpd
        apply s.nu_lt_one_of_prime p hpd.left (hpd.2.trans hdP)
      · simp only [nonempty_primeFactors, show 1 < d by lia]
    _ = 1 := by
      simp

/-- The weight of all the elements that are a multiple of `d`. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant99b6499f37325ff12a914052565c0ccacbd626b01fb3fda100964aecc51c68f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant99b6499f37325ff12a914052565c0ccacbd626b01fb3fda100964aecc51c68f3.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b65487ee5ff875948d7dad4be7a3f00b83ca5d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
