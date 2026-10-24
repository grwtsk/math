# discr_prime_pow_eq_unit_mul_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e7e67968de2680d6596a996c2d47f76e2149192d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 180,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/62/62235d62d1a3e19b83414b4edf23356d69b9d13f0f11f842e46da0dc87863d3f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:67cbee01-f25b-c43e-300f-b8dca76bffcd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ba7cf1f8-2b45-5c20-2f21-8632347c9b23",
  "kind": "theorem",
  "lexical_name": "discr_prime_pow_eq_unit_mul_pow",
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
  "slug": "discr-prime-pow-eq-unit-mul-pow--59d861eed6763f1c0b03e0ec",
  "source": {
    "blob": "e7e67968de2680d6596a996c2d47f76e2149192d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 180,
    "path": "GRWTSK/Algebra/Discriminant/Variant62235d62d1a3e19b83414b4edf23356d69b9d13f0f11f842e46da0dc87863d3f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:59d861eed6763f1c0b03e0ec515cf2a22b9a6bc9de172c7c4bb93a5155295a29",
  "verification": {
    "reference": "docs/verification/Algebra/Discriminant/Variant62235d62d1a3e19b83414b4edf23356d69b9d13f0f11f842e46da0dc87863d3f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba7cf1f8-2b45-5c20-2f21-8632347c9b23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem discr_prime_pow_eq_unit_mul_pow [IsCyclotomicExtension {p ^ k} K L]
    [hp : Fact (p : ℕ).Prime] (hζ : IsPrimitiveRoot ζ ↑(p ^ k))
    (hirr : Irreducible (cyclotomic (↑(p ^ k) : ℕ) K)) :
    ∃ (u : ℤˣ) (n : ℕ), discr K (hζ.powerBasis K).basis = u * p ^ n := by
  rw [discr_prime_pow hζ hirr]
  by_cases heven : Even ((p ^ k : ℕ).totient / 2)
  · exact ⟨1, (p : ℕ) ^ (k - 1) * ((p - 1) * k - 1), by rw [heven.neg_one_pow]; norm_num⟩
  · exact ⟨-1, (p : ℕ) ^ (k - 1) * ((p - 1) * k - 1), by
      rw [(not_even_iff_odd.1 heven).neg_one_pow]; norm_num⟩

/-- If `p` is an odd prime and `IsCyclotomicExtension {p} K L`, then
`discr K (hζ.powerBasis K).basis = (-1) ^ ((p - 1) / 2) * p ^ (p - 2)` if
`Irreducible (cyclotomic p K)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Discriminant/Variant62235d62d1a3e19b83414b4edf23356d69b9d13f0f11f842e46da0dc87863d3f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Discriminant/Variant62235d62d1a3e19b83414b4edf23356d69b9d13f0f11f842e46da0dc87863d3f.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e7e67968de2680d6596a996c2d47f76e2149192d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
