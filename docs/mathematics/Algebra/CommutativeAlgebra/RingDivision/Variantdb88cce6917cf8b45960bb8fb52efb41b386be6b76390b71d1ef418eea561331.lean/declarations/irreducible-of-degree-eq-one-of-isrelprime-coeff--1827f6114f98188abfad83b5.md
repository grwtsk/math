# irreducible_of_degree_eq_one_of_isRelPrime_coeff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f31f7a00-4a9a-3e8f-6a1c-7a69444757b0",
  "kind": "theorem",
  "lexical_name": "irreducible_of_degree_eq_one_of_isRelPrime_coeff",
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
  "slug": "irreducible-of-degree-eq-one-of-isrelprime-coeff--1827f6114f98188abfad83b5",
  "source": {
    "blob": "1edf1bc113400d64ee9c2be4d6eee2916a55e6c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 287,
    "line": 267,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/RingDivision/Variantdb88cce6917cf8b45960bb8fb52efb41b386be6b76390b71d1ef418eea561331.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1827f6114f98188abfad83b5ee03b4749de3df4ee156e989d6858fe5161941b0",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/RingDivision/Variantdb88cce6917cf8b45960bb8fb52efb41b386be6b76390b71d1ef418eea561331.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f31f7a00-4a9a-3e8f-6a1c-7a69444757b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 267–287.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem irreducible_of_degree_eq_one_of_isRelPrime_coeff
    {p : R[X]} (hp : p.degree = 1) (hc : IsRelPrime (p.coeff 0) (p.coeff 1)) :
    Irreducible p where
  not_isUnit h := by
    obtain ⟨u, -, h⟩ := isUnit_iff.mp h
    apply not_le.mpr (zero_lt_one' (WithBot ℕ))
    simp [← hp, ← h, degree_C_le]
  isUnit_or_isUnit f g h := by
    wlog! H : f.degree ≤ g.degree generalizing f g
    · rw [mul_comm] at h
      exact (this g f h H.le).symm
    left
    rw [h, degree_mul, Nat.WithBot.add_eq_one_iff] at hp
    rcases hp with ⟨hf, hg⟩ | ⟨hf, hg⟩; swap
    · simp [← not_lt, hf, hg] at H
    replace hf := f.eq_C_of_degree_eq_zero hf
    rw [hf]
    apply IsUnit.map C
    rw [h, hf, coeff_C_mul, coeff_C_mul] at hc
    apply hc <;> simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/RingDivision/Variantdb88cce6917cf8b45960bb8fb52efb41b386be6b76390b71d1ef418eea561331.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/RingDivision/Variantdb88cce6917cf8b45960bb8fb52efb41b386be6b76390b71d1ef418eea561331.lean#L267).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1edf1bc113400d64ee9c2be4d6eee2916a55e6c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
