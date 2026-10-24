# even_sum_reindex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6d0be4daa08e4aeb8faafcd43eadd56fd640e1d4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 135,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f5/f5d6aa6f3ee97ce6e31a9ff1a0f6b69a9e40326ec9ab4731c5e392eb4b28a9ba.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6c25f816-1cb3-6ac1-7e53-4b0daabc5e04",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d3229e5e-ebd7-cc25-aad2-7f25d36da8e9",
  "kind": "theorem",
  "lexical_name": "even_sum_reindex",
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
  "slug": "even-sum-reindex--c39f673e9b3af20ed9aa893c",
  "source": {
    "blob": "6d0be4daa08e4aeb8faafcd43eadd56fd640e1d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 135,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundary/Variantf5d6aa6f3ee97ce6e31a9ff1a0f6b69a9e40326ec9ab4731c5e392eb4b28a9ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c39f673e9b3af20ed9aa893ceaf79a2600fed6be453b053555ef8526872de5d3",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundary/Variantf5d6aa6f3ee97ce6e31a9ff1a0f6b69a9e40326ec9ab4731c5e392eb4b28a9ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d3229e5e-ebd7-cc25-aad2-7f25d36da8e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem even_sum_reindex (N : ℕ) (F : ℕ → ℝ) :
    (∑ d ∈ (Icc 1 N).filter (fun d ↦ ¬Nat.Coprime d 2),
      (ArithmeticFunction.moebius d : ℝ) * F d) =
      ∑ k ∈ Icc 1 (N / 2), (ArithmeticFunction.moebius (2 * k) : ℝ) * F (2 * k) := by
  refine sum_bij' (fun d _ ↦ d / 2) (fun k _ ↦ 2 * k) ?_ ?_ ?_ ?_ ?_
  · intro d hd
    obtain ⟨hdI, hdc⟩ := mem_filter.mp hd
    have hi := mem_Icc.mp hdI
    have he := Nat.mul_div_cancel' (two_dvd_of_not_coprime d hdc)
    apply mem_Icc.mpr
    omega
  · intro k hk
    have hi := mem_Icc.mp hk
    refine mem_filter.mpr ⟨mem_Icc.mpr (by omega), ?_⟩
    intro h
    exact (Nat.prime_two.coprime_iff_not_dvd.mp h.symm) (dvd_mul_right 2 k)
  · intro d hd
    exact Nat.mul_div_cancel' (two_dvd_of_not_coprime d (mem_filter.mp hd).2)
  · intro k _
    omega
  · intro d hd
    rw [Nat.mul_div_cancel' (two_dvd_of_not_coprime d (mem_filter.mp hd).2)]

/-- The original signed linear family has two different finite odd cutoffs. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundary/Variantf5d6aa6f3ee97ce6e31a9ff1a0f6b69a9e40326ec9ab4731c5e392eb4b28a9ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundary/Variantf5d6aa6f3ee97ce6e31a9ff1a0f6b69a9e40326ec9ab4731c5e392eb4b28a9ba.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d0be4daa08e4aeb8faafcd43eadd56fd640e1d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
