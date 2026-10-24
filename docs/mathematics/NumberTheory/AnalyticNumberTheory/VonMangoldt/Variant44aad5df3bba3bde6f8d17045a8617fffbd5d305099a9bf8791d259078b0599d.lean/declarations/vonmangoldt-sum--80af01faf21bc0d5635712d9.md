# vonMangoldt_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6859af42a7aa3cb1691adbcc0abfd654dbeb76b6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 98,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/44/44aad5df3bba3bde6f8d17045a8617fffbd5d305099a9bf8791d259078b0599d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:349d19a0-593b-9f30-c686-499f073dea60",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3e3fa17f-9820-6b36-60d3-669555bd6a08",
  "kind": "theorem",
  "lexical_name": "vonMangoldt_sum",
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
  "slug": "vonmangoldt-sum--80af01faf21bc0d5635712d9",
  "source": {
    "blob": "6859af42a7aa3cb1691adbcc0abfd654dbeb76b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 98,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/VonMangoldt/Variant44aad5df3bba3bde6f8d17045a8617fffbd5d305099a9bf8791d259078b0599d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:80af01faf21bc0d5635712d9ece88b393186c3720e2ae46b22c5b19d6b788b29",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/VonMangoldt/Variant44aad5df3bba3bde6f8d17045a8617fffbd5d305099a9bf8791d259078b0599d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3e3fa17f-9820-6b36-60d3-669555bd6a08`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem vonMangoldt_sum {n : ℕ} : ∑ i ∈ n.divisors, Λ i = Real.log n := by
  refine recOnPrimeCoprime ?_ ?_ ?_ n
  · simp
  · intro p k hp
    rw [sum_divisors_prime_pow hp, cast_pow, Real.log_pow, Finset.sum_range_succ', Nat.pow_zero,
      vonMangoldt_apply_one]
    simp [vonMangoldt_apply_pow (Nat.succ_ne_zero _), vonMangoldt_apply_prime hp]
  intro a b ha' hb' hab ha hb
  simp only [vonMangoldt_apply, ← sum_filter] at ha hb ⊢
  rw [mul_divisors_filter_prime_pow hab, filter_union,
    sum_union (disjoint_divisors_filter_isPrimePow hab), ha, hb, Nat.cast_mul,
    Real.log_mul (cast_ne_zero.2 (pos_of_gt ha').ne') (cast_ne_zero.2 (pos_of_gt hb').ne')]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/VonMangoldt/Variant44aad5df3bba3bde6f8d17045a8617fffbd5d305099a9bf8791d259078b0599d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/VonMangoldt/Variant44aad5df3bba3bde6f8d17045a8617fffbd5d305099a9bf8791d259078b0599d.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6859af42a7aa3cb1691adbcc0abfd654dbeb76b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
