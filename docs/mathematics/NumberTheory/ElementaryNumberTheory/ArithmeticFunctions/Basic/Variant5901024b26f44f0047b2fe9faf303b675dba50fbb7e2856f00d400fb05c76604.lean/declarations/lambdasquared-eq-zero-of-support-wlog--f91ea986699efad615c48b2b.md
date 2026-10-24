# lambdaSquared_eq_zero_of_support_wlog

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "318c9dc92fadb0531bd6a623ef3c4a4a5e82d439",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 163,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/59/5901024b26f44f0047b2fe9faf303b675dba50fbb7e2856f00d400fb05c76604.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:67fb4eab-a2c9-fc59-e0c9-a67a3943ef59",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8a0bf3f7-e8ff-c6e3-620a-7f594a780642",
  "kind": "theorem",
  "lexical_name": "lambdaSquared_eq_zero_of_support_wlog",
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
  "slug": "lambdasquared-eq-zero-of-support-wlog--f91ea986699efad615c48b2b",
  "source": {
    "blob": "318c9dc92fadb0531bd6a623ef3c4a4a5e82d439",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 163,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Basic/Variant5901024b26f44f0047b2fe9faf303b675dba50fbb7e2856f00d400fb05c76604.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f91ea986699efad615c48b2b8d840f4d542fe416741723491cca5523357382ff",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Basic/Variant5901024b26f44f0047b2fe9faf303b675dba50fbb7e2856f00d400fb05c76604.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a0bf3f7-e8ff-c6e3-620a-7f594a780642`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem lambdaSquared_eq_zero_of_support_wlog {w : ℕ → ℝ} {y : ℝ}
    (hw : ∀ (d : ℕ), ¬d ^ 2 ≤ y → w d = 0)
    {d : ℕ} (hd : ¬↑d ≤ y) (d1 : ℕ) (d2 : ℕ) (h : d = Nat.lcm d1 d2) (hle : d1 ≤ d2) :
    w d1 * w d2 = 0 := by
  rw [hw d2, mul_zero]
  by_contra hyp; apply hd
  apply le_trans _ hyp
  norm_cast
  calc _ ≤ (d1.lcm d2) := by rw [h]
      _ ≤ (d1*d2) := Nat.div_le_self _ _
      _ ≤ _       := ?_
  · rw [sq]; gcongr

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Basic/Variant5901024b26f44f0047b2fe9faf303b675dba50fbb7e2856f00d400fb05c76604.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Basic/Variant5901024b26f44f0047b2fe9faf303b675dba50fbb7e2856f00d400fb05c76604.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `318c9dc92fadb0531bd6a623ef3c4a4a5e82d439` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
