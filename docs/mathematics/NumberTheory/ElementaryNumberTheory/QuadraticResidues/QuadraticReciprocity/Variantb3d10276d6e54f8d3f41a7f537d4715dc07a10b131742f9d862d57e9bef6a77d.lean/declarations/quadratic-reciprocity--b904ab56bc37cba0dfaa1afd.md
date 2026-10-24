# quadratic_reciprocity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fdd9aa0e-7d57-af0a-fa01-5d8b542b7642",
  "kind": "theorem",
  "lexical_name": "quadratic_reciprocity",
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
  "slug": "quadratic-reciprocity--b904ab56bc37cba0dfaa1afd",
  "source": {
    "blob": "237e9c76c329e92b85d69612b1e2f081de2a03ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 111,
    "path": "GRWTSK/NumberTheory/QuadraticReciprocity/Variantb3d10276d6e54f8d3f41a7f537d4715dc07a10b131742f9d862d57e9bef6a77d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b904ab56bc37cba0dfaa1afdf5ea02a2e2f0faa78c754bd6b30bb3b6c9460d2e",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/QuadraticResidues/QuadraticReciprocity/Variantb3d10276d6e54f8d3f41a7f537d4715dc07a10b131742f9d862d57e9bef6a77d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fdd9aa0e-7d57-af0a-fa01-5d8b542b7642`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quadratic_reciprocity (hp : p ≠ 2) (hq : q ≠ 2) (hpq : p ≠ q) :
    legendreSym q p * legendreSym p q = (-1) ^ (p / 2 * (q / 2)) := by
  have hp₁ := (Prime.eq_two_or_odd <| @Fact.out p.Prime _).resolve_left hp
  have hq₁ := (Prime.eq_two_or_odd <| @Fact.out q.Prime _).resolve_left hq
  have hq₂ : ringChar (ZMod q) ≠ 2 := (ringChar_zmod_n q).substr hq
  have h :=
    quadraticChar_odd_prime ((ringChar_zmod_n p).substr hp) hq ((ringChar_zmod_n p).substr hpq)
  rw [card p] at h
  have nc : ∀ n r : ℕ, ((n : ℤ) : ZMod r) = n := fun n r => by norm_cast
  have nc' : (((-1) ^ (p / 2) : ℤ) : ZMod q) = (-1) ^ (p / 2) := by norm_cast
  rw [legendreSym, legendreSym, nc, nc, h, map_mul, mul_rotate', mul_comm (p / 2), ← pow_two,
    quadraticChar_sq_one (prime_ne_zero q p hpq.symm), mul_one, pow_mul, χ₄_eq_neg_one_pow hp₁, nc',
    map_pow, quadraticChar_neg_one hq₂, card q, χ₄_eq_neg_one_pow hq₁]

/-- The Law of Quadratic Reciprocity: if `p` and `q` are odd primes, then
`(q / p) = (-1)^((p-1)(q-1)/4) * (p / q)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/QuadraticResidues/QuadraticReciprocity/Variantb3d10276d6e54f8d3f41a7f537d4715dc07a10b131742f9d862d57e9bef6a77d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/QuadraticReciprocity/Variantb3d10276d6e54f8d3f41a7f537d4715dc07a10b131742f9d862d57e9bef6a77d.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `237e9c76c329e92b85d69612b1e2f081de2a03ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
