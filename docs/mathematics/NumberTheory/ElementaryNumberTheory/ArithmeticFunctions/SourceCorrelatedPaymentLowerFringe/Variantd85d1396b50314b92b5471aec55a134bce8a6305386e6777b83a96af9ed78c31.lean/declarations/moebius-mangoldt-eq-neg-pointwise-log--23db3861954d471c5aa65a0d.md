# moebius_mangoldt_eq_neg_pointwise_log

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "309dd7d9b1068864450599b3be0c8a3725bb7072",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 35,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d8/d85d1396b50314b92b5471aec55a134bce8a6305386e6777b83a96af9ed78c31.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bbe9d107-7889-9cb2-c669-29a526760ae8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4b8e4277-d123-1993-21d0-460367c2a592",
  "kind": "theorem",
  "lexical_name": "moebius_mangoldt_eq_neg_pointwise_log",
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
  "slug": "moebius-mangoldt-eq-neg-pointwise-log--23db3861954d471c5aa65a0d",
  "source": {
    "blob": "309dd7d9b1068864450599b3be0c8a3725bb7072",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 35,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourceCorrelatedPaymentLowerFringe/Variantd85d1396b50314b92b5471aec55a134bce8a6305386e6777b83a96af9ed78c31.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23db3861954d471c5aa65a0d44716d145f397de1d36531c5d1fad4edf254ad24",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourceCorrelatedPaymentLowerFringe/Variantd85d1396b50314b92b5471aec55a134bce8a6305386e6777b83a96af9ed78c31.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b8e4277-d123-1993-21d0-460367c2a592`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem moebius_mangoldt_eq_neg_pointwise_log :
    (moebius : ArithmeticFunction ℝ) * vonMangoldt =
      -((moebius : ArithmeticFunction ℝ).pmul ArithmeticFunction.log) := by
  let g := (moebius : ArithmeticFunction ℝ).pmul ArithmeticFunction.log
  have hs : g * (zeta : ArithmeticFunction ℝ) = -vonMangoldt := by
    ext n
    simp only [coe_mul_zeta_apply, g, pmul_apply, intCoe_apply, neg_apply]
    exact sum_moebius_mul_log_eq
  have hh := congrArg
    (fun f : ArithmeticFunction ℝ => f * (moebius : ArithmeticFunction ℝ)) hs
  rw [mul_assoc, coe_zeta_mul_coe_moebius, mul_one, neg_mul] at hh
  calc
    (moebius : ArithmeticFunction ℝ) * vonMangoldt =
        vonMangoldt * (moebius : ArithmeticFunction ℝ) := mul_comm _ _
    _ = -g := by rw [hh, neg_neg]
    _ = -((moebius : ArithmeticFunction ℝ).pmul ArithmeticFunction.log) := rfl

/-- The full arithmetic convolution is the negative pointwise Moebius logarithmic weight. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourceCorrelatedPaymentLowerFringe/Variantd85d1396b50314b92b5471aec55a134bce8a6305386e6777b83a96af9ed78c31.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourceCorrelatedPaymentLowerFringe/Variantd85d1396b50314b92b5471aec55a134bce8a6305386e6777b83a96af9ed78c31.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `309dd7d9b1068864450599b3be0c8a3725bb7072` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
