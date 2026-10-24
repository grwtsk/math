# roots_quadratic_eq_pair_iff_of_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8f507b93-0340-8da8-1dc4-41c05a12c2f7",
  "kind": "lemma",
  "lexical_name": "roots_quadratic_eq_pair_iff_of_ne_zero",
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
  "slug": "roots-quadratic-eq-pair-iff-of-ne-zero--860d052b9b8a908bed535de7",
  "source": {
    "blob": "a1d9b6f06a0e193771a0fec9b79143decb9079c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 68,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/SmallDegreeVieta/Variantcfeabb3d742dfa8656a2c2f0e4064cdf6394c3d27fcd29006382e4c7053a7673.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:860d052b9b8a908bed535de7614126d187cfc9ff17926caf180cfa5745a4e02b",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/SmallDegreeVieta/Variantcfeabb3d742dfa8656a2c2f0e4064cdf6394c3d27fcd29006382e4c7053a7673.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f507b93-0340-8da8-1dc4-41c05a12c2f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma roots_quadratic_eq_pair_iff_of_ne_zero [CommRing R] [IsDomain R] {a b c x1 x2 : R}
    (ha : a ≠ 0) :
    (C a * X ^ 2 + C b * X + C c).roots = {x1, x2} ↔
      b = -a * (x1 + x2) ∧ c = a * x1 * x2 :=
  have roots_of_ne_zero_of_vieta (hvieta : b = -a * (x1 + x2) ∧ c = a * x1 * x2) :
      (C a * X ^ 2 + C b * X + C c).roots = {x1, x2} := by
    suffices C a * X ^ 2 + C b * X + C c = C a * (X - C x1) * (X - C x2) by
      have h1 : C a * (X - C x1) ≠ 0 := mul_ne_zero (by simpa) (Polynomial.X_sub_C_ne_zero _)
      have h2 : C a * (X - C x1) * (X - C x2) ≠ 0 := mul_ne_zero h1 (Polynomial.X_sub_C_ne_zero _)
      simp [this, Polynomial.roots_mul h2, Polynomial.roots_mul h1]
    simpa [hvieta.1, hvieta.2] using by ring
  ⟨fun h => ⟨eq_neg_mul_add_of_roots_quadratic_eq_pair h, eq_mul_mul_of_roots_quadratic_eq_pair h⟩,
    roots_of_ne_zero_of_vieta⟩

/-- **Vieta's formula** for quadratics as an iff (`aroots` version). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/SmallDegreeVieta/Variantcfeabb3d742dfa8656a2c2f0e4064cdf6394c3d27fcd29006382e4c7053a7673.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/SmallDegreeVieta/Variantcfeabb3d742dfa8656a2c2f0e4064cdf6394c3d27fcd29006382e4c7053a7673.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1d9b6f06a0e193771a0fec9b79143decb9079c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
