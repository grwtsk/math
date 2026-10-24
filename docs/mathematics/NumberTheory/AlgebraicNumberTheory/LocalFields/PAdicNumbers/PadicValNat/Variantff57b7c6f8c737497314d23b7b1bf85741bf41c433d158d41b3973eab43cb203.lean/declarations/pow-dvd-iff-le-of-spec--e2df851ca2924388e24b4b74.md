# pow_dvd_iff_le_of_spec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aa9bf335-c0af-9074-b16c-99236befc3cd",
  "kind": "theorem",
  "lexical_name": "pow_dvd_iff_le_of_spec",
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
  "slug": "pow-dvd-iff-le-of-spec--e2df851ca2924388e24b4b74",
  "source": {
    "blob": "3669a56e74e64c6b0f418dc2076d698e5738b9c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 96,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicValNat/Variantff57b7c6f8c737497314d23b7b1bf85741bf41c433d158d41b3973eab43cb203.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2df851ca2924388e24b4b748b9f769524d32be46b433e9d16ba107c6a500dc3",
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

Occurrence: `result:aa9bf335-c0af-9074-b16c-99236befc3cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem pow_dvd_iff_le_of_spec {p k n a b : ℕ} (hp : 1 < p) (hn : n ≠ 0)
    (hab : p ^ a * b = n) (hb : ¬p ∣ b) : p ^ k ∣ n ↔ k ≤ a := by
  subst hab
  cases Nat.lt_or_ge a k with
  | inl hlt =>
    refine iff_of_false (fun hdvd ↦ ?_) (Nat.not_le_of_lt hlt)
    obtain ⟨l, rfl⟩ := Nat.exists_eq_add_of_lt hlt
    rw [Nat.add_assoc, Nat.pow_add,
      Nat.mul_dvd_mul_iff_left (Nat.pow_pos (Nat.zero_lt_of_lt hp))] at hdvd
    exact hb <| Nat.dvd_of_pow_dvd (Nat.le_add_left 1 l) hdvd
  | inr hle =>
    refine iff_of_true (Nat.dvd_mul_right_of_dvd ?_ _) hle
    exact Nat.pow_dvd_pow p hle

/-- If `p > 1`, `n > 0`, then the first component of `maxPowDvdDiv` is the maximal power of `p`
that divides `n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicValNat/Variantff57b7c6f8c737497314d23b7b1bf85741bf41c433d158d41b3973eab43cb203.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicValNat/Variantff57b7c6f8c737497314d23b7b1bf85741bf41c433d158d41b3973eab43cb203.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3669a56e74e64c6b0f418dc2076d698e5738b9c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
