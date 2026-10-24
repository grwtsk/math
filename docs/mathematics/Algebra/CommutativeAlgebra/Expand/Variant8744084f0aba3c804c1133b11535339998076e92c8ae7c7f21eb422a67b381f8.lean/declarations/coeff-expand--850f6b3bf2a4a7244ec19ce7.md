# coeff_expand

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b270f573-b2f9-0d41-47a7-832cd005fcc4",
  "kind": "theorem",
  "lexical_name": "coeff_expand",
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
  "slug": "coeff-expand--850f6b3bf2a4a7244ec19ce7",
  "source": {
    "blob": "e3dedfa81c83c1243fd5d19b723479a4739bc07f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 99,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Expand/Variant8744084f0aba3c804c1133b11535339998076e92c8ae7c7f21eb422a67b381f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:850f6b3bf2a4a7244ec19ce75f92a0c6473ec6026cac8a69feb25711dd018241",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Expand/Variant8744084f0aba3c804c1133b11535339998076e92c8ae7c7f21eb422a67b381f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b270f573-b2f9-0d41-47a7-832cd005fcc4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coeff_expand {p : ℕ} (hp : 0 < p) (f : R[X]) (n : ℕ) :
    (expand R p f).coeff n = if p ∣ n then f.coeff (n / p) else 0 := by
  simp only [expand_eq_sum]
  simp_rw [coeff_sum, ← pow_mul, C_mul_X_pow_eq_monomial, coeff_monomial, sum]
  split_ifs with h
  · rw [Finset.sum_eq_single (n / p), Nat.mul_div_cancel' h, ite_eq_left rfl]
    · intro b _ hb2
      rw [ite_eq_right]
      intro hb3
      apply hb2
      rw [← hb3, Nat.mul_div_cancel_left b hp]
    · intro hn
      rw [notMem_support_iff.1 hn]
      split_ifs <;> rfl
  · rw [Finset.sum_eq_zero]
    intro k _
    rw [ite_eq_right]
    exact fun hkn => h ⟨k, hkn.symm⟩

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Expand/Variant8744084f0aba3c804c1133b11535339998076e92c8ae7c7f21eb422a67b381f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Expand/Variant8744084f0aba3c804c1133b11535339998076e92c8ae7c7f21eb422a67b381f8.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3dedfa81c83c1243fd5d19b723479a4739bc07f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
