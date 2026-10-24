# induction_on_coprime

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
      "line": 71,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/5269136675534ce1957b3b9e10f36d64ea332619828107de55fd215d745b5afe.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dd857297-e11d-fad5-8593-d1d31ec9667a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e87def0c-e0c1-2a4d-9809-19e83426ff75",
  "kind": "theorem",
  "lexical_name": "induction_on_coprime",
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
  "slug": "induction-on-coprime--4f7e411c0a4af2ba326b4cd7",
  "source": {
    "blob": "8c6a21cff27a1382e518edf20e22ea148dcd6b82",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 71,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Multiplicative/Variant5269136675534ce1957b3b9e10f36d64ea332619828107de55fd215d745b5afe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f7e411c0a4af2ba326b4cd7bfd9e14bbfbb2f88b4b0bc0ee553dacbfc968876",
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

Occurrence: `result:e87def0c-e0c1-2a4d-9809-19e83426ff75`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem induction_on_coprime {P : α → Prop} (a : α) (h0 : P 0) (h1 : ∀ {x}, IsUnit x → P x)
    (hpr : ∀ {p} (i : ℕ), Prime p → P (p ^ i))
    (hcp : ∀ {x y}, IsRelPrime x y → P x → P y → P (x * y)) : P a := by
  letI := Classical.decEq α
  have P_of_associated : ∀ {x y}, Associated x y → P x → P y := by
    rintro x y ⟨u, rfl⟩ hx
    exact hcp (fun p _ hpx => isUnit_of_dvd_unit hpx u.isUnit) hx (h1 u.isUnit)
  by_cases ha0 : a = 0
  · rwa [ha0]
  haveI : Nontrivial α := ⟨⟨_, _, ha0⟩⟩
  letI : NormalizationMonoid α := UniqueFactorizationMonoid.normalizationMonoid
  refine P_of_associated (prod_normalizedFactors ha0) ?_
  rw [← (normalizedFactors a).map_id, Finset.prod_multiset_map_count]
  refine induction_on_prime_power _ _ ?_ ?_ @h1 @hpr @hcp <;> simp only [Multiset.mem_toFinset]
  · apply prime_of_normalized_factor
  · apply normalizedFactors_eq_of_dvd

/-- If `f` maps `p ^ i` to `(f p) ^ i` for primes `p`, and `f`
is multiplicative on coprime elements, then `f` is multiplicative on all products of primes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Multiplicative/Variant5269136675534ce1957b3b9e10f36d64ea332619828107de55fd215d745b5afe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Multiplicative/Variant5269136675534ce1957b3b9e10f36d64ea332619828107de55fd215d745b5afe.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c6a21cff27a1382e518edf20e22ea148dcd6b82` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
