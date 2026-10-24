# thetaRankFivePolynomial_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e829a4a90e249ea4b0849f4954149f45bb0a3033",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 155,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2f/2fea5fc563a2b6f1f8d77551f034cabc8a948c2aef36d07fe28db01fec428f5c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f9b3c5e3-007e-13df-898b-4829f963d1e6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c834bcb5-0ce1-7c16-f0dd-6ae14aa1c770",
  "kind": "theorem",
  "lexical_name": "thetaRankFivePolynomial_eq",
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
  "slug": "thetarankfivepolynomial-eq--f766b92f12d6c3850cfd3ed3",
  "source": {
    "blob": "e829a4a90e249ea4b0849f4954149f45bb0a3033",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 155,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/ThetaPositiveLift/Variant2fea5fc563a2b6f1f8d77551f034cabc8a948c2aef36d07fe28db01fec428f5c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f766b92f12d6c3850cfd3ed3774c61ca608ba9d4148911aeee3c886399187ffc",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/ThetaPositiveLift/Variant2fea5fc563a2b6f1f8d77551f034cabc8a948c2aef36d07fe28db01fec428f5c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c834bcb5-0ce1-7c16-f0dd-6ae14aa1c770`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaRankFivePolynomial_eq (n : Fin 9) :
    thetaPhiDerivativePolynomial n.val = thetaRankFivePolynomial n.val := by
  fin_cases n
  · exact polynomial_order_0
  · exact polynomial_order_1
  · exact polynomial_order_2
  · exact polynomial_order_3
  · exact polynomial_order_4
  · exact polynomial_order_5
  · exact polynomial_order_6
  · exact polynomial_order_7
  · exact polynomial_order_8

/-- Sum of absolute coefficient values in each derivative polynomial. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/ThetaPositiveLift/Variant2fea5fc563a2b6f1f8d77551f034cabc8a948c2aef36d07fe28db01fec428f5c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/ThetaPositiveLift/Variant2fea5fc563a2b6f1f8d77551f034cabc8a948c2aef36d07fe28db01fec428f5c.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e829a4a90e249ea4b0849f4954149f45bb0a3033` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
