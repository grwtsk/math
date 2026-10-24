# apply_mem_algebraAdjoin_of_pow_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "90102fbc7a80e4dca25c75de152c3aa1eae2538d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 216,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/20/206683ca5ec3f95b2799a6a133d2841a760c8573056915f35ce3bf25b74eb0ac.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d77640bb-62e3-93de-5fa0-3d683a0e6547",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a498c39a-53fb-0c47-6245-4cfc723ca153",
  "kind": "lemma",
  "lexical_name": "apply_mem_algebraAdjoin_of_pow_eq_one",
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
  "slug": "apply-mem-algebraadjoin-of-pow-eq-one--3164af526246bfaa1b1dc8a9",
  "source": {
    "blob": "90102fbc7a80e4dca25c75de152c3aa1eae2538d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 216,
    "path": "GRWTSK/NumberTheory/Lemmas/Variant206683ca5ec3f95b2799a6a133d2841a760c8573056915f35ce3bf25b74eb0ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3164af526246bfaa1b1dc8a9a980b3fcd9bfaa333cdb8dc59d2444cdcb365189",
  "verification": {
    "reference": "docs/verification/NumberTheory/Lemmas/Variant206683ca5ec3f95b2799a6a133d2841a760c8573056915f35ce3bf25b74eb0ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a498c39a-53fb-0c47-6245-4cfc723ca153`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma apply_mem_algebraAdjoin_of_pow_eq_one {χ : MulChar F R} {n : ℕ} [NeZero n] (hχ : χ ^ n = 1)
    {μ : R} (hμ : IsPrimitiveRoot μ n) (a : F) :
    χ a ∈ Algebra.adjoin ℤ {μ} := by
  rcases eq_or_ne a 0 with rfl | h
  · exact χ.map_zero ▸ Subalgebra.zero_mem _
  · obtain ⟨ζ, hζ₁, hζ₂⟩ := apply_mem_rootsOfUnity_of_pow_eq_one hχ h
    rw [mem_rootsOfUnity, Units.ext_iff, Units.val_pow_eq_pow_val] at hζ₁
    obtain ⟨k, _, hk⟩ := IsPrimitiveRoot.eq_pow_of_pow_eq_one hμ hζ₁
    exact hζ₂ ▸ hk ▸ Subalgebra.pow_mem _ (Algebra.self_mem_adjoin_singleton ℤ μ) k

/-- The values of a multiplicative character of order `n` are contained in `ℤ[μ]` when
`μ` is a primitive `n`th root of unity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Lemmas/Variant206683ca5ec3f95b2799a6a133d2841a760c8573056915f35ce3bf25b74eb0ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Lemmas/Variant206683ca5ec3f95b2799a6a133d2841a760c8573056915f35ce3bf25b74eb0ac.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90102fbc7a80e4dca25c75de152c3aa1eae2538d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
