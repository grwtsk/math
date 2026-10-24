# irreducible_min_polynomial_valuation_lt_one_and_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ae1fb5e3-4e9d-819e-04b3-c09c79e21697",
  "kind": "lemma",
  "lexical_name": "irreducible_min_polynomial_valuation_lt_one_and_ne_zero",
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
  "slug": "irreducible-min-polynomial-valuation-lt-one-and-ne-zero--e8464fc0eebe6663102b95ef",
  "source": {
    "blob": "6d103a3e7f61246c5f5b2dc9bc481c8d95ad43e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 102,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Ostrowski/Variant0601830a9ccd039b75aaa62023c7a40f352580d0c1f0e9bc02f9fefb290b6338.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e8464fc0eebe6663102b95efe497c0cd4cf0295e5dec4358bdfc26fb74aaf223",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Ostrowski/Variant0601830a9ccd039b75aaa62023c7a40f352580d0c1f0e9bc02f9fefb290b6338.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ae1fb5e3-4e9d-819e-04b3-c09c79e21697`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma irreducible_min_polynomial_valuation_lt_one_and_ne_zero [v.IsTrivialOn K]
    (hne : {p : K[X] | v p < 1 ∧ p ≠ 0}.Nonempty) :
    Irreducible (degree_lt_wf.min {p : K[X] | v p < 1 ∧ p ≠ 0} hne) := by
  set πᵥ := degree_lt_wf.min _ hne
  have hπᵥ : v πᵥ < 1 ∧ πᵥ ≠ 0 := degree_lt_wf.min_mem _ hne
  refine irreducible_iff.mpr ⟨?_, fun a b hab ↦ ?_⟩
  · simp only [Polynomial.isUnit_iff, isUnit_iff_ne_zero]
    intro ⟨a, ha0, ha⟩
    rw [← ha, coePolynomial, algebraMap_C, ← algebraMap_eq_C] at hπᵥ
    grind
  · by_contra! H
    simp only [hab, ne_eq, mul_eq_zero, not_or] at hπᵥ
    have hva := one_le_valuation_factor hne hπᵥ hab H.2
    simp only [mul_comm a b, @and_comm (¬a = 0)] at hπᵥ hab
    have := Right.one_le_mul (one_le_valuation_factor hne hπᵥ hab H.1) hva
    simp only [coePolynomial_eq_algebraMap, map_mul] at hπᵥ this
    grind

section valuation_X_le_one

variable [v.IsNontrivial] [v.IsTrivialOn K] (hle : v RatFunc.X ≤ 1)

/-- A uniformizing element for the valuation `v`, as a polynomial in `K[X]`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Ostrowski/Variant0601830a9ccd039b75aaa62023c7a40f352580d0c1f0e9bc02f9fefb290b6338.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Ostrowski/Variant0601830a9ccd039b75aaa62023c7a40f352580d0c1f0e9bc02f9fefb290b6338.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d103a3e7f61246c5f5b2dc9bc481c8d95ad43e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
