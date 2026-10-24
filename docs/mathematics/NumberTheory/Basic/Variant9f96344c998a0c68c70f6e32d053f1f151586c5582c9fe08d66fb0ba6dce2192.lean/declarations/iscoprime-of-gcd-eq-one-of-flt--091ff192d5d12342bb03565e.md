# isCoprime_of_gcd_eq_one_of_FLT

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3295b05c0cfe60fee9441fece8604854ebf8a267",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 244,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9f/9f96344c998a0c68c70f6e32d053f1f151586c5582c9fe08d66fb0ba6dce2192.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:21c25d88-d334-6e86-6aa4-b57df78cef93",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:de29a29a-d274-7c55-a8ea-de69c531a688",
  "kind": "lemma",
  "lexical_name": "isCoprime_of_gcd_eq_one_of_FLT",
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
  "slug": "iscoprime-of-gcd-eq-one-of-flt--091ff192d5d12342bb03565e",
  "source": {
    "blob": "3295b05c0cfe60fee9441fece8604854ebf8a267",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 258,
    "line": 244,
    "path": "GRWTSK/NumberTheory/Basic/Variant9f96344c998a0c68c70f6e32d053f1f151586c5582c9fe08d66fb0ba6dce2192.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:091ff192d5d12342bb03565e0f24b6a470d037d6399ab0b44ffc7218051f2e2e",
  "verification": {
    "reference": "docs/verification/NumberTheory/Basic/Variant9f96344c998a0c68c70f6e32d053f1f151586c5582c9fe08d66fb0ba6dce2192.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:de29a29a-d274-7c55-a8ea-de69c531a688`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 244–258.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isCoprime_of_gcd_eq_one_of_FLT {n : ℕ} {a b c : ℤ} (Hgcd : Finset.gcd {a, b, c} id = 1)
    (HF : a ^ n + b ^ n + c ^ n = 0) : IsCoprime a b := by
  rcases eq_or_ne n 0 with rfl | hn
  · simp only [pow_zero, Int.reduceAdd, OfNat.ofNat_ne_zero] at HF
  refine isCoprime_of_prime_dvd  ?_ <| (fun p hp hpa hpb ↦ hp.not_dvd_one ?_)
  · rintro ⟨rfl, rfl⟩
    simp only [ne_eq, hn, not_false_eq_true, zero_pow, add_zero, zero_add, pow_eq_zero_iff]
      at HF
    simp only [HF, Finset.mem_singleton, Finset.insert_eq_of_mem, Finset.gcd_singleton, id_eq,
      map_zero, zero_ne_one] at Hgcd
  · rw [← Hgcd]
    refine Finset.dvd_gcd_iff.mpr fun x hx ↦ ?_
    simp only [Finset.mem_insert, Finset.mem_singleton] at hx
    rcases hx with hx | hx | hx <;> simp only [id_eq, hx, hpa, hpb,
      dvd_c_of_prime_of_dvd_a_of_dvd_b_of_FLT hp hpa hpb HF]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Basic/Variant9f96344c998a0c68c70f6e32d053f1f151586c5582c9fe08d66fb0ba6dce2192.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Basic/Variant9f96344c998a0c68c70f6e32d053f1f151586c5582c9fe08d66fb0ba6dce2192.lean#L244).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3295b05c0cfe60fee9441fece8604854ebf8a267` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
