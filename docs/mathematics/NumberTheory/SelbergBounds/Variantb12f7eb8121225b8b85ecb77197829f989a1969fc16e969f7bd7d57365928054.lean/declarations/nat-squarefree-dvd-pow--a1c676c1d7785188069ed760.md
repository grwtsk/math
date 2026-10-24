# Nat.squarefree_dvd_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:de22d9b3-081d-0aa9-7914-3ac9033b36f2",
  "kind": "lemma",
  "lexical_name": "Nat.squarefree_dvd_pow",
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
  "slug": "nat-squarefree-dvd-pow--a1c676c1d7785188069ed760",
  "source": {
    "blob": "08e79baa91f08a6ec633911aa9852c0096e8a252",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 371,
    "line": 354,
    "path": "GRWTSK/NumberTheory/SelbergBounds/Variantb12f7eb8121225b8b85ecb77197829f989a1969fc16e969f7bd7d57365928054.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1c676c1d7785188069ed760986c9ba03bbef50870a593281c82e319789566b7",
  "verification": {
    "reference": "docs/verification/NumberTheory/SelbergBounds/Variantb12f7eb8121225b8b85ecb77197829f989a1969fc16e969f7bd7d57365928054.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:de22d9b3-081d-0aa9-7914-3ac9033b36f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 354–371.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Nat.squarefree_dvd_pow (a b N : ℕ) (ha : Squarefree a) (hab : a ∣ b ^ N) : a ∣ b := by
  by_cases hN : N=0
  · rw [hN, pow_zero, Nat.dvd_one] at hab
    rw [hab]; simp
  rw [Squarefree.dvd_pow_iff_dvd ha hN] at hab
  exact hab

/-
Proposed generalisation :

theorem selbergBoundingSum_ge_sum_div (s : SelbergSieve)
    (hnu : CompletelyMultiplicative s.nuDivSelf) (hnu_nonneg : ∀ n, 0 ≤ s.nuDivSelf n)
    (hnu_lt : ∀ p, p.Prime → p ∣ s.prodPrimes → s.nuDivSelf p < 1):
    s.selbergBoundingSum ≥ ∑ m in
      (Finset.Icc 1 (Nat.floor <| Real.sqrt s.level)).filter (fun m => ∀ p, p.Prime → p ∣ m → p ∣ s.prodPrimes),
      s.nu m
-/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/SelbergBounds/Variantb12f7eb8121225b8b85ecb77197829f989a1969fc16e969f7bd7d57365928054.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/SelbergBounds/Variantb12f7eb8121225b8b85ecb77197829f989a1969fc16e969f7bd7d57365928054.lean#L354).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08e79baa91f08a6ec633911aa9852c0096e8a252` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
