# order_monomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ced47f92-6877-cf47-177b-88772280c2f1",
  "kind": "theorem",
  "lexical_name": "order_monomial",
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
  "slug": "order-monomial--7c9fbd9bf2df8dd9aa40610b",
  "source": {
    "blob": "bfdc8f72082525c52f1fe03aa34cc279cb8e9735",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2398,
    "line": 2385,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant95d8365b3a3fbc91d19d843feaac7e6bc006acd8cc39d59218e4cd88af18321f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c9fbd9bf2df8dd9aa40610bcf278bafc74a7f481a76170b4919d836ff360373",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variant95d8365b3a3fbc91d19d843feaac7e6bc006acd8cc39d59218e4cd88af18321f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ced47f92-6877-cf47-177b-88772280c2f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2385–2398.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem order_monomial (n : ℕ) (a : R) [Decidable (a = 0)] :
    order (monomial R n a) = if a = 0 then (⊤ : PartENat) else n := by
  split_ifs with h
  · rw [h, order_eq_top, LinearMap.map_zero]
  · rw [order_eq]
    constructor <;> intro i hi
    · rw [PartENat.natCast_inj] at hi
      rwa [hi, coeff_monomial_same]
    · rw [PartENat.coe_lt_coe] at hi
      rw [coeff_monomial, if_neg]
      exact ne_of_lt hi
#align power_series.order_monomial PowerSeries.order_monomial

/-- The order of the monomial `a*X^n` is `n` if `a ≠ 0`.-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variant95d8365b3a3fbc91d19d843feaac7e6bc006acd8cc39d59218e4cd88af18321f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant95d8365b3a3fbc91d19d843feaac7e6bc006acd8cc39d59218e4cd88af18321f.lean#L2385).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bfdc8f72082525c52f1fe03aa34cc279cb8e9735` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
