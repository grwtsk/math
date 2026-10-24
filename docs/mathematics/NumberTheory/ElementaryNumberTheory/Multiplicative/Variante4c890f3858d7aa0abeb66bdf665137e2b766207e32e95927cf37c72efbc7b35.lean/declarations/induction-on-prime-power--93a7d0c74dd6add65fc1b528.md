# induction_on_prime_power

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "505c4dabde96672b72c1f24d893d197e1f308e0d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 54,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e4/e4c890f3858d7aa0abeb66bdf665137e2b766207e32e95927cf37c72efbc7b35.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5ff303d2-cce4-cda8-4b87-39da57b464d8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b3aa4ece-c0ba-b6dd-84cc-9fc9607192f2",
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
  "slug": "induction-on-prime-power--93a7d0c74dd6add65fc1b528",
  "source": {
    "blob": "505c4dabde96672b72c1f24d893d197e1f308e0d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 54,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Multiplicative/Variante4c890f3858d7aa0abeb66bdf665137e2b766207e32e95927cf37c72efbc7b35.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93a7d0c74dd6add65fc1b5283e610cc8c05d54f17bf81a38f906ebbdf0da19e1",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Multiplicative/Variante4c890f3858d7aa0abeb66bdf665137e2b766207e32e95927cf37c72efbc7b35.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b3aa4ece-c0ba-b6dd-84cc-9fc9607192f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–73.

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

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Multiplicative/Variante4c890f3858d7aa0abeb66bdf665137e2b766207e32e95927cf37c72efbc7b35.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Multiplicative/Variante4c890f3858d7aa0abeb66bdf665137e2b766207e32e95927cf37c72efbc7b35.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `505c4dabde96672b72c1f24d893d197e1f308e0d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
