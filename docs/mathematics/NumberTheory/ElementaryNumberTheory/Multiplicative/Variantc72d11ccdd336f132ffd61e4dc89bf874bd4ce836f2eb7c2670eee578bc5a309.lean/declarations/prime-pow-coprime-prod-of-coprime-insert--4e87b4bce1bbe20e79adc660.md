# prime_pow_coprime_prod_of_coprime_insert

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7434c6ad-7ab9-2b31-6076-d53eca6a8938",
  "kind": "theorem",
  "lexical_name": "prime_pow_coprime_prod_of_coprime_insert",
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
  "slug": "prime-pow-coprime-prod-of-coprime-insert--4e87b4bce1bbe20e79adc660",
  "source": {
    "blob": "e64c3fb89b286a85d13612f45c014db9dace5e08",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 41,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Multiplicative/Variantc72d11ccdd336f132ffd61e4dc89bf874bd4ce836f2eb7c2670eee578bc5a309.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e87b4bce1bbe20e79adc660d9cacbfc8cba8a68eeb220784ebac5271b819749",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Multiplicative/Variantc72d11ccdd336f132ffd61e4dc89bf874bd4ce836f2eb7c2670eee578bc5a309.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7434c6ad-7ab9-2b31-6076-d53eca6a8938`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prime_pow_coprime_prod_of_coprime_insert [DecidableEq α] {s : Finset α} (i : α → ℕ) (p : α)
    (hps : p ∉ s) (is_prime : ∀ q ∈ insert p s, Prime q)
    (is_coprime : ∀ᵉ (q ∈ insert p s) (q' ∈ insert p s), q ∣ q' → q = q') :
    IsRelPrime (p ^ i p) (∏ p' ∈ s, p' ^ i p') := by
  have hp := is_prime _ (Finset.mem_insert_self _ _)
  refine (isRelPrime_iff_no_prime_factors <| pow_ne_zero _ hp.ne_zero).mpr ?_
  intro d hdp hdprod hd
  apply hps
  replace hdp := hd.dvd_of_dvd_pow hdp
  obtain ⟨q, q_mem', hdq⟩ := hd.exists_mem_multiset_dvd hdprod
  obtain ⟨q, q_mem, rfl⟩ := Multiset.mem_map.mp q_mem'
  replace hdq := hd.dvd_of_dvd_pow hdq
  have : p ∣ q := dvd_trans (hd.irreducible.dvd_symm hp.irreducible hdp) hdq
  convert! q_mem using 0
  rw [Finset.mem_val,
    is_coprime _ (Finset.mem_insert_self p s) _ (Finset.mem_insert_of_mem q_mem) this]

/-- If `P` holds for units and powers of primes,
and `P x ∧ P y` for coprime `x, y` implies `P (x * y)`,
then `P` holds on a product of powers of distinct primes. -/
@[elab_as_elim]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Multiplicative/Variantc72d11ccdd336f132ffd61e4dc89bf874bd4ce836f2eb7c2670eee578bc5a309.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Multiplicative/Variantc72d11ccdd336f132ffd61e4dc89bf874bd4ce836f2eb7c2670eee578bc5a309.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e64c3fb89b286a85d13612f45c014db9dace5e08` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
