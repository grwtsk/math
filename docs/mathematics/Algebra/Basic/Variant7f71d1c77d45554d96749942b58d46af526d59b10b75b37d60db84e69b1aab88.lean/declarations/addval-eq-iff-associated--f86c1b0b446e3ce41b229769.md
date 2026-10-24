# addVal_eq_iff_associated

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a0ee5d6c-59d5-c767-af54-60ddce624927",
  "kind": "lemma",
  "lexical_name": "addVal_eq_iff_associated",
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
  "slug": "addval-eq-iff-associated--f86c1b0b446e3ce41b229769",
  "source": {
    "blob": "53041e618e1f678d5e628dd16224abd21b84ebbf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 519,
    "line": 494,
    "path": "GRWTSK/Algebra/Basic/Variant7f71d1c77d45554d96749942b58d46af526d59b10b75b37d60db84e69b1aab88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f86c1b0b446e3ce41b229769dd4b68713e65a7b7f0b4902b257207f5ca6eb87a",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant7f71d1c77d45554d96749942b58d46af526d59b10b75b37d60db84e69b1aab88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a0ee5d6c-59d5-c767-af54-60ddce624927`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 494–519.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma addVal_eq_iff_associated (x y : R) :
    addVal R x = addVal R y ↔ Associated x y := by
  constructor
  · intro h
    by_cases hx : x = 0
    · simp_all only [AddValuation.map_zero]
      rw [addVal_eq_top_iff.mp h.symm]
    by_cases hy : y = 0
    · simp_all only [AddValuation.map_zero, associated_zero_iff_eq_zero]
      exact hx (addVal_eq_top_iff.mp h)
    obtain ⟨ϖ, hϖ⟩ := exists_irreducible R
    obtain ⟨m, α, hx'⟩ := eq_unit_mul_pow_irreducible hx hϖ
    obtain ⟨n, β, hy'⟩ := eq_unit_mul_pow_irreducible hy hϖ
    simp only [hx', AddValuation.map_mul, addVal_eq_zero_of_unit, AddValuation.map_pow,
      nsmul_eq_mul, zero_add, hy', associated_unit_mul_right_iff,
      associated_unit_mul_left_iff] at h ⊢
    simp only [addVal_uniformizer hϖ, mul_one, ENat.natCast_inj] at h
    rw [h]
    exact Associates.mk_eq_mk_iff_associated.mp rfl
  · rintro ⟨u, rfl⟩
    simp_all

variable (R)

/-- The ideals of a discrete valuation ring are exactly the powers of the maximal ideal. -/
@[simps apply]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant7f71d1c77d45554d96749942b58d46af526d59b10b75b37d60db84e69b1aab88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant7f71d1c77d45554d96749942b58d46af526d59b10b75b37d60db84e69b1aab88.lean#L494).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53041e618e1f678d5e628dd16224abd21b84ebbf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
