# totient_div_of_dvd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e14c6e0393b2fd86b0b827db56ac0b18f0994990",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 146,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0b/0b71be7c52540d06698cfc05437fbdbb07acfc9fe59bb1ad3255359d62b460c8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c7869caf-46ec-346b-8aed-df2aeae0083e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:338f8008-f28e-3bd3-9edf-9ef817f47d24",
  "kind": "theorem",
  "lexical_name": "totient_div_of_dvd",
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
  "slug": "totient-div-of-dvd--d7048f48118e081b26eccc14",
  "source": {
    "blob": "e14c6e0393b2fd86b0b827db56ac0b18f0994990",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 146,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0b71be7c52540d06698cfc05437fbdbb07acfc9fe59bb1ad3255359d62b460c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7048f48118e081b26eccc144e9768a4eb5dfeedba4a70482e946cb6a0fe6848",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0b71be7c52540d06698cfc05437fbdbb07acfc9fe59bb1ad3255359d62b460c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:338f8008-f28e-3bd3-9edf-9ef817f47d24`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem totient_div_of_dvd {n d : ℕ} (hnd : d ∣ n) :
    φ (n / d) = #{k ∈ range n | n.gcd k = d} := by
  rcases d.eq_zero_or_pos with (rfl | hd0); · simp [eq_zero_of_zero_dvd hnd]
  rcases hnd with ⟨x, rfl⟩
  rw [Nat.mul_div_cancel_left x hd0]
  apply Finset.card_bij fun k _ => d * k
  · simp only [mem_filter, mem_range, and_imp, Coprime]
    refine fun a ha1 ha2 => ⟨by gcongr, ?_⟩
    rw [gcd_mul_left, ha2, mul_one]
  · simp [hd0.ne']
  · simp only [mem_filter, mem_range, exists_prop, and_imp]
    intro b hb1 hb2
    have : d ∣ b := by
      rw [← hb2]
      apply gcd_dvd_right
    rcases this with ⟨q, rfl⟩
    refine ⟨q, ⟨⟨(mul_lt_mul_iff_right₀ hd0).1 hb1, ?_⟩, rfl⟩⟩
    rwa [gcd_mul_left, mul_eq_left hd0.ne'] at hb2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0b71be7c52540d06698cfc05437fbdbb07acfc9fe59bb1ad3255359d62b460c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0b71be7c52540d06698cfc05437fbdbb07acfc9fe59bb1ad3255359d62b460c8.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e14c6e0393b2fd86b0b827db56ac0b18f0994990` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
