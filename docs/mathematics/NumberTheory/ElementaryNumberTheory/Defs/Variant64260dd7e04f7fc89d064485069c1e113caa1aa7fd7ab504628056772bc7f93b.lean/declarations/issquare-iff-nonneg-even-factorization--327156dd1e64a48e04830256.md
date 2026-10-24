# isSquare_iff_nonneg_even_factorization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bb67ff82-91f4-acbe-e912-487efa4b4d30",
  "kind": "theorem",
  "lexical_name": "isSquare_iff_nonneg_even_factorization",
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
  "slug": "issquare-iff-nonneg-even-factorization--327156dd1e64a48e04830256",
  "source": {
    "blob": "083e01712b4ff4005135b80928b7b11e5245b218",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 241,
    "line": 223,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Defs/Variant64260dd7e04f7fc89d064485069c1e113caa1aa7fd7ab504628056772bc7f93b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:327156dd1e64a48e0483025608c4ad28994aa02badb094a9a4ee4df15b3043e5",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Defs/Variant64260dd7e04f7fc89d064485069c1e113caa1aa7fd7ab504628056772bc7f93b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb67ff82-91f4-acbe-e912-487efa4b4d30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–241.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isSquare_iff_nonneg_even_factorization {n : ℤ} :
    IsSquare n ↔ 0 ≤ n ∧ ∀ (p : ℕ), p.Prime → Even (n.natAbs.factorization p) := by
  constructor
  · intro ⟨m, hmn⟩
    exact ⟨by simpa [hmn] using Int.mul_nonneg_of_nonneg_or_nonpos (by omega),
      fun p hp ↦ isSquare_iff_even_factorization.mp ⟨m.natAbs, by grind⟩ p hp⟩
  · intro ⟨h0, h⟩
    obtain ⟨r, hr⟩ := Nat.isSquare_iff_even_factorization.mpr h
    exact ⟨r, (by rw [← natAbs_of_nonneg h0, hr, Nat.cast_mul])⟩

end Int

/-! ## Lemmas about factorizations of primes and prime powers -/

namespace Nat
variable {a b m n p : ℕ}

/-- The only prime factor of prime `p` is `p` itself, with multiplicity `1` -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Defs/Variant64260dd7e04f7fc89d064485069c1e113caa1aa7fd7ab504628056772bc7f93b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Defs/Variant64260dd7e04f7fc89d064485069c1e113caa1aa7fd7ab504628056772bc7f93b.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `083e01712b4ff4005135b80928b7b11e5245b218` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
