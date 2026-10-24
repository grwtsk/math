# maxPowDvdDiv_of_pow_mul_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fc404a2c-c61e-3082-22ec-44243fbb546f",
  "kind": "theorem",
  "lexical_name": "maxPowDvdDiv_of_pow_mul_eq",
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
  "slug": "maxpowdvddiv-of-pow-mul-eq--558517c89d4bc4867cc12344",
  "source": {
    "blob": "3669a56e74e64c6b0f418dc2076d698e5738b9c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 119,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicValNat/Variantff57b7c6f8c737497314d23b7b1bf85741bf41c433d158d41b3973eab43cb203.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:558517c89d4bc4867cc12344b9fe406eb40c0a26d3610b82c0e46dbf3b3bcad2",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicValNat/Variantff57b7c6f8c737497314d23b7b1bf85741bf41c433d158d41b3973eab43cb203.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc404a2c-c61e-3082-22ec-44243fbb546f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem maxPowDvdDiv_of_pow_mul_eq {p n k l : ℕ} (hn : n ≠ 0) (h : p ^ k * l = n)
    (hl : ¬p ∣ l) : maxPowDvdDiv p n = (k, l) := by
  obtain rfl | rfl | hp : p = 0 ∨ p = 1 ∨ 1 < p := by grind
  · cases k.eq_zero_or_pos <;> simp_all
  · simp_all
  · have hk : k = (p.maxPowDvdDiv n).1 := by
      · apply Nat.le_antisymm
        · rw [← padicValNat, ← pow_dvd_iff_le_padicValNat (Nat.ne_of_gt hp) hn,
            pow_dvd_iff_le_of_spec hp hn h hl]
        · rw [← pow_dvd_iff_le_of_spec hp hn h hl, pow_dvd_iff_le_padicValNat (Nat.ne_of_gt hp) hn]
          apply Nat.le_refl
    rw [← pow_padicValNat_mul_divMaxPow p n, hk, padicValNat, Nat.mul_left_cancel_iff] at h
    · exact Prod.ext hk.symm h.symm
    · exact Nat.pow_pos <| Nat.zero_lt_of_lt hp

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicValNat/Variantff57b7c6f8c737497314d23b7b1bf85741bf41c433d158d41b3973eab43cb203.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicValNat/Variantff57b7c6f8c737497314d23b7b1bf85741bf41c433d158d41b3973eab43cb203.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3669a56e74e64c6b0f418dc2076d698e5738b9c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
