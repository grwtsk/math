# moebius_mul_vonMangoldt_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:64749ef9-18fb-875d-9563-5da1bb20a82d",
  "kind": "theorem",
  "lexical_name": "moebius_mul_vonMangoldt_apply",
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
  "slug": "moebius-mul-vonmangoldt-apply--e5eece0faca3a2297d26fb1c",
  "source": {
    "blob": "43bb5c66f7f3f250e91d4a1e1ce6841b9c66dd9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 61,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourceCorrelatedPaymentLowerFringe/Variant047793c3ef458b1e3e7e981e86c876da433cce069c8928f83677e617ab5ec0fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5eece0faca3a2297d26fb1c99a765f47b8e5240658f408bdd7f069e8fd806e0",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourceCorrelatedPaymentLowerFringe/Variant047793c3ef458b1e3e7e981e86c876da433cce069c8928f83677e617ab5ec0fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:64749ef9-18fb-875d-9563-5da1bb20a82d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem moebius_mul_vonMangoldt_apply (n : ℕ) :
    ((moebius : ArithmeticFunction ℝ) * vonMangoldt) n =
      -(moebius n : ℝ) * Real.log (n : ℝ) := by
  have h := congrArg (fun f : ArithmeticFunction ℝ => f n)
    moebius_mangoldt_eq_neg_pointwise_log
  simpa only [neg_apply, pmul_apply, intCoe_apply, log_apply, neg_mul] using h

/-- The closed lower carrier combines sampling rows, while the entire U-squared fringe stays. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourceCorrelatedPaymentLowerFringe/Variant047793c3ef458b1e3e7e981e86c876da433cce069c8928f83677e617ab5ec0fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourceCorrelatedPaymentLowerFringe/Variant047793c3ef458b1e3e7e981e86c876da433cce069c8928f83677e617ab5ec0fb.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43bb5c66f7f3f250e91d4a1e1ce6841b9c66dd9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
