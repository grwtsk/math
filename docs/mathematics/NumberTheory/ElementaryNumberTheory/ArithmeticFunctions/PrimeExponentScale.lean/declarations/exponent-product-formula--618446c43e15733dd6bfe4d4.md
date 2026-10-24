# exponent_product_formula

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d969933c-73cf-9237-85c8-473d671e46ff",
  "kind": "theorem",
  "lexical_name": "exponent_product_formula",
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
  "slug": "exponent-product-formula--618446c43e15733dd6bfe4d4",
  "source": {
    "blob": "74d56ea401b2c7d48b4d9eb467d28fca909e75c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 523,
    "line": 509,
    "path": "GRWTSK/NumberTheory/ArithmeticFunctions/PrimeExponentScale.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:618446c43e15733dd6bfe4d41cf7773b882259be212aa455ab216f8c6aaad650",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScale.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d969933c-73cf-9237-85c8-473d671e46ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 509–523.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exponent_product_formula (x : PrimeExponent) :
    Real.exp (logRealization x) * finitePadicNormProduct x = 1 := by
  classical
  rw [logRealization_eq_log_rationalRealization,
    Real.exp_log (by exact_mod_cast rationalRealization_pos x)]
  have hcast : (rationalRealization x : ℝ) =
      ∏ p ∈ x.support, (p.1 : ℝ) ^ (x p) := by
    simp [rationalRealization, Finsupp.prod]
  rw [hcast, finitePadicNormProduct, ← Finset.prod_mul_distrib]
  apply Finset.prod_eq_one
  intro p hp
  rw [zpow_neg]
  exact mul_inv_cancel₀ (zpow_ne_zero _ (by exact_mod_cast p.2.ne_zero))

/-- The logarithmic product formula, expressed as a finite support sum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScale.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ArithmeticFunctions/PrimeExponentScale.lean#L509).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74d56ea401b2c7d48b4d9eb467d28fca909e75c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
