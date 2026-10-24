# emultiplicity_map_eq_ramificationIdx'_mul_of_prime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b61e9c13820bfc7d407bc90954f5dd2084bed701",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 350,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ee/ee734a8e1c377b66c18ef1aa2658040c49c1a66fd898bc8cd76757dca6a97a9f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:184ad62e-7cf5-ca22-d556-41310a4596a1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b9b8b60c-8667-45e7-7eeb-bad6cb5c448c",
  "kind": "theorem",
  "lexical_name": "emultiplicity_map_eq_ramificationIdx'_mul_of_prime",
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
  "slug": "emultiplicity-map-eq-ramificationidx-mul-of-prime--cbfed831c7804c82cc7587c8",
  "source": {
    "blob": "b61e9c13820bfc7d407bc90954f5dd2084bed701",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 365,
    "line": 350,
    "path": "GRWTSK/Algebra/Ramification/Variantee734a8e1c377b66c18ef1aa2658040c49c1a66fd898bc8cd76757dca6a97a9f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cbfed831c7804c82cc7587c89401dd1f3842083d3f02152c1615966e5cee93c5",
  "verification": {
    "reference": "docs/verification/Algebra/Ramification/Variantee734a8e1c377b66c18ef1aa2658040c49c1a66fd898bc8cd76757dca6a97a9f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b9b8b60c-8667-45e7-7eeb-bad6cb5c448c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 350–365.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem emultiplicity_map_eq_ramificationIdx'_mul_of_prime [IsDedekindDomain R]
    [FaithfulSMul R S] {v : Ideal R} {w : Ideal S} {p : Ideal R}
    (hv : Irreducible v) (hp : Prime p) (hw : Irreducible w) (hw_bot : w ≠ ⊥)
    [w.LiesOver v] : emultiplicity w (p.map (algebraMap R S)) =
      v.ramificationIdx' w * emultiplicity v p := by
  have hp_bot : p.map (algebraMap R S) ≠ ⊥ := map_ne_bot_of_ne_bot hp.ne_zero
  by_cases hvp : v = p
  · simp [hvp, (FiniteMultiplicity.of_prime_left hp hp.ne_zero).emultiplicity_self,
      ramificationIdx'_eq_normalizedFactors_count hp_bot (isPrime_of_prime hw.prime) hw_bot,
      emultiplicity_eq_count_normalizedFactors hw hp_bot]
  · rw [emultiplicity_eq_zero_of_irreducible_ne hv hp.irreducible hvp, mul_zero,
      emultiplicity_map_eq_zero_of_ne hv hp hvp]

/-- If `v` is an irreducible ideal of `R`, `w` is an irreducible ideal of `S` lying over `v`, and
`I` is an ideal of `R`, then the multiplicity of `w` in `I.map (algebraMap R S)` is given by
the multiplicity of `v` in `I` multiplied by the ramification index of `w` over `v`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Ramification/Variantee734a8e1c377b66c18ef1aa2658040c49c1a66fd898bc8cd76757dca6a97a9f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ramification/Variantee734a8e1c377b66c18ef1aa2658040c49c1a66fd898bc8cd76757dca6a97a9f.lean#L350).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b61e9c13820bfc7d407bc90954f5dd2084bed701` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
