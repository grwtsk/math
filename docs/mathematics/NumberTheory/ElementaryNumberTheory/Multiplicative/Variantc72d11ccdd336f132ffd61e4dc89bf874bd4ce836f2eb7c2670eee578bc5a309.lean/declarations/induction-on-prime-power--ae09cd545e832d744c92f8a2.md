# induction_on_prime_power

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8f51905a-36b5-4f49-9f03-07211e3c7fb0",
  "kind": "theorem",
  "lexical_name": "induction_on_prime_power",
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
  "slug": "induction-on-prime-power--ae09cd545e832d744c92f8a2",
  "source": {
    "blob": "e64c3fb89b286a85d13612f45c014db9dace5e08",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 62,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Multiplicative/Variantc72d11ccdd336f132ffd61e4dc89bf874bd4ce836f2eb7c2670eee578bc5a309.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae09cd545e832d744c92f8a2bf514cad6ed5ef9a2bc56479191ac5c7092920ab",
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

Occurrence: `result:8f51905a-36b5-4f49-9f03-07211e3c7fb0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem induction_on_prime_power {P : α → Prop} (s : Finset α) (i : α → ℕ)
    (is_prime : ∀ p ∈ s, Prime p) (is_coprime : ∀ᵉ (p ∈ s) (q ∈ s), p ∣ q → p = q)
    (h1 : ∀ {x}, IsUnit x → P x) (hpr : ∀ {p} (i : ℕ), Prime p → P (p ^ i))
    (hcp : ∀ {x y}, IsRelPrime x y → P x → P y → P (x * y)) :
    P (∏ p ∈ s, p ^ i p) := by
  let := Classical.decEq α
  induction s using Finset.induction_on with
  | empty => simpa using h1 isUnit_one
  | insert p f' hpf' ih =>
    rw [Finset.prod_insert hpf']
    exact
      hcp (prime_pow_coprime_prod_of_coprime_insert i p hpf' is_prime is_coprime)
        (hpr (i p) (is_prime _ (Finset.mem_insert_self _ _)))
        (ih (fun q hq => is_prime _ (Finset.mem_insert_of_mem hq)) fun q hq q' hq' =>
          is_coprime _ (Finset.mem_insert_of_mem hq) _ (Finset.mem_insert_of_mem hq'))

/-- If `P` holds for `0`, units and powers of primes,
and `P x ∧ P y` for coprime `x, y` implies `P (x * y)`,
then `P` holds on all `a : α`. -/
@[elab_as_elim]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Multiplicative/Variantc72d11ccdd336f132ffd61e4dc89bf874bd4ce836f2eb7c2670eee578bc5a309.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Multiplicative/Variantc72d11ccdd336f132ffd61e4dc89bf874bd4ce836f2eb7c2670eee578bc5a309.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e64c3fb89b286a85d13612f45c014db9dace5e08` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
