# IsPrimePow.exists_ord_compl_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bd10c9e3-307c-2442-043f-06af0a042849",
  "kind": "theorem",
  "lexical_name": "IsPrimePow.exists_ord_compl_eq_one",
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
  "slug": "isprimepow-exists-ord-compl-eq-one--2c8dfa54d0904645c2042c22",
  "source": {
    "blob": "b460e15128df7ceb4ccde09d1857b2197b594c73",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 72,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PrimePow/Variant29d0abad87a4e9b03f0601b30ecdf924836575cab34fbbb92b3df2a926d09a06.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c8dfa54d0904645c2042c22ff0e9563940bee6544adb746e19da22bf3b64177",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/PrimePow/Variant29d0abad87a4e9b03f0601b30ecdf924836575cab34fbbb92b3df2a926d09a06.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bd10c9e3-307c-2442-043f-06af0a042849`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsPrimePow.exists_ord_compl_eq_one {n : ℕ} (h : IsPrimePow n) :
    ∃ p : ℕ, p.Prime ∧ ord_compl[p] n = 1 := by
  rcases eq_or_ne n 0 with (rfl | hn0); · cases not_isPrimePow_zero h
  rcases isPrimePow_iff_factorization_eq_single.mp h with ⟨p, k, hk0, h1⟩
  rcases em' p.Prime with (pp | pp)
  · refine' absurd _ hk0.ne'
    simp [← Nat.factorization_eq_zero_of_non_prime n pp, h1]
  refine' ⟨p, pp, _⟩
  refine' Nat.eq_of_factorization_eq (Nat.ord_compl_pos p hn0).ne' (by simp) fun q => _
  rw [Nat.factorization_ord_compl n p, h1]
  simp
#align is_prime_pow.exists_ord_compl_eq_one IsPrimePow.exists_ord_compl_eq_one

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/PrimePow/Variant29d0abad87a4e9b03f0601b30ecdf924836575cab34fbbb92b3df2a926d09a06.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/PrimePow/Variant29d0abad87a4e9b03f0601b30ecdf924836575cab34fbbb92b3df2a926d09a06.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b460e15128df7ceb4ccde09d1857b2197b594c73` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
