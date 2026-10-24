# Char.card_pow_char_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "630849d6b0b77c0e8b7f6a56b4c05d0272569afd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 287,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/79/79b5b4a0a74b8535a379e51b38527af9762163a545b1e55b4ec061eb8a031247.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8402b311-1b6f-75a8-d64d-b46dc699e8ed",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:967fd1a4-1afb-831a-bf90-26c6ed7c605a",
  "kind": "theorem",
  "lexical_name": "Char.card_pow_char_pow",
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
  "slug": "char-card-pow-char-pow--5abe8cd17d6101d105f1aa2f",
  "source": {
    "blob": "630849d6b0b77c0e8b7f6a56b4c05d0272569afd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 302,
    "line": 287,
    "path": "GRWTSK/NumberTheory/GaussSum/Variant79b5b4a0a74b8535a379e51b38527af9762163a545b1e55b4ec061eb8a031247.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5abe8cd17d6101d105f1aa2f6f1208a1cb426ca73c0884d0e1cb0f586a6814a1",
  "verification": {
    "reference": "docs/verification/NumberTheory/GaussSum/Variant79b5b4a0a74b8535a379e51b38527af9762163a545b1e55b4ec061eb8a031247.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:967fd1a4-1afb-831a-bf90-26c6ed7c605a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 287–302.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Char.card_pow_char_pow {χ : MulChar R R'} (hχ : IsQuadratic χ) (ψ : AddChar R R') (p n : ℕ)
    [fp : Fact p.Prime] [hch : CharP R' p] (hp : IsUnit (p : R)) (hp' : p ≠ 2)
    (hg : gaussSum χ ψ ^ 2 = χ (-1) * Fintype.card R) :
    (χ (-1) * Fintype.card R) ^ (p ^ n / 2) = χ ((p : R) ^ n) := by
  have : gaussSum χ ψ ≠ 0 := by
    intro hf
    rw [hf, zero_pow two_ne_zero, eq_comm, mul_eq_zero] at hg
    exact not_isUnit_prime_of_dvd_card
        ((CharP.cast_eq_zero_iff R' p _).mp <| hg.resolve_left (isUnit_one.neg.map χ).ne_zero) hp
  rw [← hg]
  apply mul_right_cancel₀ this
  rw [← hχ.gaussSum_frob_iter p n hp ψ, ← pow_mul, ← pow_succ,
    Nat.two_mul_div_two_add_one_of_odd (fp.1.eq_two_or_odd'.resolve_left hp').pow]

/-- When `F` and `F'` are finite fields and `χ : F → F'` is a nontrivial quadratic character,
then `(χ(-1) * #F)^(#F'/2) = χ #F'`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/GaussSum/Variant79b5b4a0a74b8535a379e51b38527af9762163a545b1e55b4ec061eb8a031247.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/GaussSum/Variant79b5b4a0a74b8535a379e51b38527af9762163a545b1e55b4ec061eb8a031247.lean#L287).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `630849d6b0b77c0e8b7f6a56b4c05d0272569afd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
