# multiplicative_prime_power

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8c6a21cff27a1382e518edf20e22ea148dcd6b82",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 90,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/5269136675534ce1957b3b9e10f36d64ea332619828107de55fd215d745b5afe.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:71bd1766-05bc-da3d-4668-788b43223245",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0998cc22-2cf1-4d35-3624-867cccd232dd",
  "kind": "theorem",
  "lexical_name": "multiplicative_prime_power",
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
  "slug": "multiplicative-prime-power--25a3f82082cea13810a1e3e9",
  "source": {
    "blob": "8c6a21cff27a1382e518edf20e22ea148dcd6b82",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 90,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Multiplicative/Variant5269136675534ce1957b3b9e10f36d64ea332619828107de55fd215d745b5afe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:25a3f82082cea13810a1e3e955452df8cf8e345e16d20aa7729dd5ee12d4bc94",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Multiplicative/Variant5269136675534ce1957b3b9e10f36d64ea332619828107de55fd215d745b5afe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0998cc22-2cf1-4d35-3624-867cccd232dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem multiplicative_prime_power {f : α → β} (s : Finset α) (i j : α → ℕ)
    (is_prime : ∀ p ∈ s, Prime p) (is_coprime : ∀ᵉ (p ∈ s) (q ∈ s), p ∣ q → p = q)
    (h1 : ∀ {x y}, IsUnit y → f (x * y) = f x * f y)
    (hpr : ∀ {p} (i : ℕ), Prime p → f (p ^ i) = f p ^ i)
    (hcp : ∀ {x y}, IsRelPrime x y → f (x * y) = f x * f y) :
    f (∏ p ∈ s, p ^ (i p + j p)) = f (∏ p ∈ s, p ^ i p) * f (∏ p ∈ s, p ^ j p) := by
  letI := Classical.decEq α
  induction' s using Finset.induction_on with p s hps ih
  · simpa using h1 isUnit_one
  have hpr_p := is_prime _ (Finset.mem_insert_self _ _)
  have hpr_s : ∀ p ∈ s, Prime p := fun p hp => is_prime _ (Finset.mem_insert_of_mem hp)
  have hcp_p := fun i => prime_pow_coprime_prod_of_coprime_insert i p hps is_prime is_coprime
  have hcp_s : ∀ᵉ (p ∈ s) (q ∈ s), p ∣ q → p = q := fun p hp q hq =>
    is_coprime p (Finset.mem_insert_of_mem hp) q (Finset.mem_insert_of_mem hq)
  rw [Finset.prod_insert hps, Finset.prod_insert hps, Finset.prod_insert hps, hcp (hcp_p _),
    hpr _ hpr_p, hcp (hcp_p _), hpr _ hpr_p, hcp (hcp_p (fun p => i p + j p)), hpr _ hpr_p,
    ih hpr_s hcp_s, pow_add, mul_assoc, mul_left_comm (f p ^ j p), mul_assoc]

/-- If `f` maps `p ^ i` to `(f p) ^ i` for primes `p`, and `f`
is multiplicative on coprime elements, then `f` is multiplicative everywhere. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Multiplicative/Variant5269136675534ce1957b3b9e10f36d64ea332619828107de55fd215d745b5afe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Multiplicative/Variant5269136675534ce1957b3b9e10f36d64ea332619828107de55fd215d745b5afe.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c6a21cff27a1382e518edf20e22ea148dcd6b82` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
