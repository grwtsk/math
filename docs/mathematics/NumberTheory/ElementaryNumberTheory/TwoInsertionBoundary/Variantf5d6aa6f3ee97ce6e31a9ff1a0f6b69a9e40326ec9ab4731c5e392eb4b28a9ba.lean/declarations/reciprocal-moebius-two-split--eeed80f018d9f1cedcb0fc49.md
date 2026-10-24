# reciprocal_moebius_two_split

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6d0be4daa08e4aeb8faafcd43eadd56fd640e1d4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 249,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f5/f5d6aa6f3ee97ce6e31a9ff1a0f6b69a9e40326ec9ab4731c5e392eb4b28a9ba.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0fd98367-06df-dd2d-950c-d74620cfd89d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f63865b6-b648-2624-fe7c-5a022e9815ad",
  "kind": "theorem",
  "lexical_name": "reciprocal_moebius_two_split",
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
  "slug": "reciprocal-moebius-two-split--eeed80f018d9f1cedcb0fc49",
  "source": {
    "blob": "6d0be4daa08e4aeb8faafcd43eadd56fd640e1d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 265,
    "line": 249,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundary/Variantf5d6aa6f3ee97ce6e31a9ff1a0f6b69a9e40326ec9ab4731c5e392eb4b28a9ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eeed80f018d9f1cedcb0fc494b1667804c322a7c842471b2192013800ea233d6",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundary/Variantf5d6aa6f3ee97ce6e31a9ff1a0f6b69a9e40326ec9ab4731c5e392eb4b28a9ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f63865b6-b648-2624-fe7c-5a022e9815ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 249–265.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reciprocal_moebius_two_split (N : ℕ) :
    (∑ d ∈ Icc 1 N, (ArithmeticFunction.moebius d : ℝ) / (d : ℝ)) =
      (∑ d ∈ (Icc 1 N).filter (fun d ↦ Nat.Coprime d 2),
        (ArithmeticFunction.moebius d : ℝ) / (d : ℝ)) -
      (1 / 2 : ℝ) * ∑ d ∈ (Icc 1 (N / 2)).filter (fun d ↦ Nat.Coprime d 2),
        (ArithmeticFunction.moebius d : ℝ) / (d : ℝ) := by
  have hs := moebius_sum_two_split N (fun d ↦ 1 / (d : ℝ))
  simp only [mul_one_div] at hs
  rw [hs, mul_sum]
  congr 1
  apply sum_congr rfl
  intro d _
  push_cast
  simp only [div_eq_mul_inv, mul_inv_rev]
  ring

/-- An exact Q identity: neither the two linear pieces nor the complete rough error is removed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundary/Variantf5d6aa6f3ee97ce6e31a9ff1a0f6b69a9e40326ec9ab4731c5e392eb4b28a9ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundary/Variantf5d6aa6f3ee97ce6e31a9ff1a0f6b69a9e40326ec9ab4731c5e392eb4b28a9ba.lean#L249).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d0be4daa08e4aeb8faafcd43eadd56fd640e1d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
