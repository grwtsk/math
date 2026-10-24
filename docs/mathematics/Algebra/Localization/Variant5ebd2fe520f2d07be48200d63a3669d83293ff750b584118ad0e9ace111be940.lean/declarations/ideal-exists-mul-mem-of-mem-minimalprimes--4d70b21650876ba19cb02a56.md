# Ideal.exists_mul_mem_of_mem_minimalPrimes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0ae9893769208e82340e9928cf4a95e17b59eb4d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 67,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5e/5ebd2fe520f2d07be48200d63a3669d83293ff750b584118ad0e9ace111be940.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b96156d2-28e3-86a4-d651-ba8548275c16",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7ac4c08c-f5da-4ad9-f64f-3052867ed590",
  "kind": "theorem",
  "lexical_name": "Ideal.exists_mul_mem_of_mem_minimalPrimes",
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
  "slug": "ideal-exists-mul-mem-of-mem-minimalprimes--4d70b21650876ba19cb02a56",
  "source": {
    "blob": "0ae9893769208e82340e9928cf4a95e17b59eb4d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 67,
    "path": "GRWTSK/Algebra/Localization/Variant5ebd2fe520f2d07be48200d63a3669d83293ff750b584118ad0e9ace111be940.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d70b21650876ba19cb02a56edc7b7595b402af4c9154388c94d0f26c043b460",
  "verification": {
    "reference": "docs/verification/Algebra/Localization/Variant5ebd2fe520f2d07be48200d63a3669d83293ff750b584118ad0e9ace111be940.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7ac4c08c-f5da-4ad9-f64f-3052867ed590`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Ideal.exists_mul_mem_of_mem_minimalPrimes
    {p : Ideal R} (hp : p ∈ I.minimalPrimes) {x : R} (hx : x ∈ p) :
    ∃ y ∉ I, x * y ∈ I := by
  classical
  obtain ⟨y, hy, n, hx⟩ := Ideal.iUnion_minimalPrimes.subset (Set.mem_biUnion hp hx)
  have H : ∃ m, x ^ m * y ^ n ∈ I := ⟨n, mul_pow x y n ▸ hx⟩
  have : Nat.find H ≠ 0 :=
    fun h ↦ hy ⟨n, by simpa only [h, pow_zero, one_mul] using Nat.find_spec H⟩
  refine ⟨x ^ (Nat.find H - 1) * y ^ n, Nat.find_min H (Nat.sub_one_lt this), ?_⟩
  rw [← mul_assoc, ← pow_succ', tsub_add_cancel_of_le (Nat.one_le_iff_ne_zero.mpr this)]
  exact Nat.find_spec H

/-- minimal primes are contained in zero divisors. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Localization/Variant5ebd2fe520f2d07be48200d63a3669d83293ff750b584118ad0e9ace111be940.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Localization/Variant5ebd2fe520f2d07be48200d63a3669d83293ff750b584118ad0e9ace111be940.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ae9893769208e82340e9928cf4a95e17b59eb4d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
