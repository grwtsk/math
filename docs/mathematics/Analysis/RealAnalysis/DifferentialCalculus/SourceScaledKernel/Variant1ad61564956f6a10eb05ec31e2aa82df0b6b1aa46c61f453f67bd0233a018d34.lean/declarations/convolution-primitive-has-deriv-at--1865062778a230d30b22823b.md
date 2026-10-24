# convolution_primitive_has_deriv_at

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bb0b7ef84b33409cc223654932e967b0cf502fe1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 139,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1a/1ad61564956f6a10eb05ec31e2aa82df0b6b1aa46c61f453f67bd0233a018d34.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0aa791f4-a34f-7430-037e-0328864e9a26",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4b9259d6-52cd-5725-54b4-a3bcedd9ffcc",
  "kind": "theorem",
  "lexical_name": "convolution_primitive_has_deriv_at",
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
  "slug": "convolution-primitive-has-deriv-at--1865062778a230d30b22823b",
  "source": {
    "blob": "bb0b7ef84b33409cc223654932e967b0cf502fe1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 139,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceScaledKernel/Variant1ad61564956f6a10eb05ec31e2aa82df0b6b1aa46c61f453f67bd0233a018d34.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1865062778a230d30b22823bb7c1c501d8e9f65a7c49fea544f1d37dbcfe876c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceScaledKernel/Variant1ad61564956f6a10eb05ec31e2aa82df0b6b1aa46c61f453f67bd0233a018d34.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b9259d6-52cd-5725-54b4-a3bcedd9ffcc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem convolution_primitive_has_deriv_at (q x : ℝ) :
    HasDerivAt (convolutionPrimitive q)
      ((1 - x ^ 2) ^ 4 * (1 - (x - q) ^ 2) ^ 4) x := by
  have h := hasDerivAt_id x
  have h0 := ((h.pow 1).const_mul (1 + -4 * q ^ 2 + 6 * q ^ 4 + -4 * q ^ 6 + 1 * q ^ 8)).div_const 1
  have h1 := ((h.pow 2).const_mul (8 * q ^ 1 + -24 * q ^ 3 + 24 * q ^ 5 + -8 * q ^ 7)).div_const 2
  have h2 := ((h.pow 3).const_mul (-8 + 52 * q ^ 2 + -84 * q ^ 4 + 44 * q ^ 6 + -4 * q ^
      8)).div_const 3
  have h3 := ((h.pow 4).const_mul (-56 * q ^ 1 + 176 * q ^ 3 + -152 * q ^ 5 + 32 * q ^
      7)).div_const 4
  have h4 := ((h.pow 5).const_mul (28 + -228 * q ^ 2 + 346 * q ^ 4 + -136 * q ^ 6 + 6 * q ^
      8)).div_const 5
  have h5 := ((h.pow 6).const_mul (168 * q ^ 1 + -520 * q ^ 3 + 368 * q ^ 5 + -48 * q ^
      7)).div_const 6
  have h6 := ((h.pow 7).const_mul (-56 + 500 * q ^ 2 + -664 * q ^ 4 + 184 * q ^ 6 + -4 * q ^
      8)).div_const 7
  have h7 := ((h.pow 8).const_mul (-280 * q ^ 1 + 800 * q ^ 3 + -432 * q ^ 5 + 32 * q ^
      7)).div_const 8
  have h8 := ((h.pow 9).const_mul (70 + -620 * q ^ 2 + 666 * q ^ 4 + -116 * q ^ 6 + 1 * q ^
      8)).div_const 9
  have h9 := ((h.pow 10).const_mul (280 * q ^ 1 + -680 * q ^ 3 + 248 * q ^ 5 + -8 * q ^
      7)).div_const 10
  have h10 := ((h.pow 11).const_mul (-56 + 444 * q ^ 2 + -340 * q ^ 4 + 28 * q ^ 6)).div_const 11
  have h11 := ((h.pow 12).const_mul (-168 * q ^ 1 + 304 * q ^ 3 + -56 * q ^ 5)).div_const 12
  have h12 := ((h.pow 13).const_mul (28 + -172 * q ^ 2 + 70 * q ^ 4)).div_const 13
  have h13 := ((h.pow 14).const_mul (56 * q ^ 1 + -56 * q ^ 3)).div_const 14
  have h14 := ((h.pow 15).const_mul (-8 + 28 * q ^ 2)).div_const 15
  have h15 := ((h.pow 16).const_mul (-8 * q ^ 1)).div_const 16
  have h16 := ((h.pow 17).const_mul (1)).div_const 17
  convert ((((((((((((((((h0.add h1).add h2).add h3).add h4).add h5).add h6).add h7).add h8).add
      h9).add h10).add h11).add h12).add h13).add h14).add h15).add h16) using 1 <;> try rfl
  simp only [id_eq]
  ring

set_option maxHeartbeats 1600000 in
-- Exact endpoint subtraction normalizes the degree-seventeen antiderivative.
/-- The actual base convolution has exact ninth-order endpoint factorization. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceScaledKernel/Variant1ad61564956f6a10eb05ec31e2aa82df0b6b1aa46c61f453f67bd0233a018d34.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceScaledKernel/Variant1ad61564956f6a10eb05ec31e2aa82df0b6b1aa46c61f453f67bd0233a018d34.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb0b7ef84b33409cc223654932e967b0cf502fe1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
