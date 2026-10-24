# factorization_gcd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f76683c5ca2e6fa7651186e158a5ce2c7080c64a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 661,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/39/39aef9ddee400b4157dc4c3b855dff556d19b0301cac0dd8ff2e8868a04b168a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:26a5b91a-7490-cbc5-e6e2-97fe0dda96ef",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e8bfaa46-7258-d4d2-d418-eb3c36bbd95c",
  "kind": "theorem",
  "lexical_name": "factorization_gcd",
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
  "slug": "factorization-gcd--db08d2d8977168062156bd2d",
  "source": {
    "blob": "f76683c5ca2e6fa7651186e158a5ce2c7080c64a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 685,
    "line": 661,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant39aef9ddee400b4157dc4c3b855dff556d19b0301cac0dd8ff2e8868a04b168a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:db08d2d8977168062156bd2dfaf1ca82769a54311a8d507d6439da5277b2aa1c",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Basic/Variant39aef9ddee400b4157dc4c3b855dff556d19b0301cac0dd8ff2e8868a04b168a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e8bfaa46-7258-d4d2-d418-eb3c36bbd95c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 661–685.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem factorization_gcd {a b : ℕ} (ha_pos : a ≠ 0) (hb_pos : b ≠ 0) :
    (gcd a b).factorization = a.factorization ⊓ b.factorization := by
  let dfac := a.factorization ⊓ b.factorization
  let d := dfac.prod Nat.pow
  have dfac_prime : ∀ p : ℕ, p ∈ dfac.support → Prime p := by
    intro p hp
    have : p ∈ a.factors ∧ p ∈ b.factors := by simpa using hp
    exact prime_of_mem_factors this.1
  have h1 : d.factorization = dfac := prod_pow_factorization_eq_self dfac_prime
  have hd_pos : d ≠ 0 := (factorizationEquiv.invFun ⟨dfac, dfac_prime⟩).2.ne'
  suffices d = gcd a b by rwa [← this]
  apply gcd_greatest
  · rw [← factorization_le_iff_dvd hd_pos ha_pos, h1]
    exact inf_le_left
  · rw [← factorization_le_iff_dvd hd_pos hb_pos, h1]
    exact inf_le_right
  · intro e hea heb
    rcases Decidable.eq_or_ne e 0 with (rfl | he_pos)
    · simp only [zero_dvd_iff] at hea
      contradiction
    have hea' := (factorization_le_iff_dvd he_pos ha_pos).mpr hea
    have heb' := (factorization_le_iff_dvd he_pos hb_pos).mpr heb
    simp [← factorization_le_iff_dvd he_pos hd_pos, h1, hea', heb']
#align nat.factorization_gcd Nat.factorization_gcd

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Basic/Variant39aef9ddee400b4157dc4c3b855dff556d19b0301cac0dd8ff2e8868a04b168a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant39aef9ddee400b4157dc4c3b855dff556d19b0301cac0dd8ff2e8868a04b168a.lean#L661).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f76683c5ca2e6fa7651186e158a5ce2c7080c64a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
