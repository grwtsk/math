# Nat.pred_mul_geom_sum_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c5a0a4f8fb2111f39679d67265985cd7df8f7ef3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 425,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c1/c1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:424988c5-a569-a352-42ce-09cfe757bd27",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:89f09651-fd7e-b277-a7f8-d1ef3cdaf991",
  "kind": "theorem",
  "lexical_name": "Nat.pred_mul_geom_sum_le",
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
  "slug": "nat-pred-mul-geom-sum-le--c1b3353e2fca7266f018a2c0",
  "source": {
    "blob": "c5a0a4f8fb2111f39679d67265985cd7df8f7ef3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 437,
    "line": 425,
    "path": "GRWTSK/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c1b3353e2fca7266f018a2c05da6b50c140efee517cbdb67bc7844593d2aae43",
  "verification": {
    "reference": "docs/verification/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:89f09651-fd7e-b277-a7f8-d1ef3cdaf991`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 425–437.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Nat.pred_mul_geom_sum_le (a b n : ℕ) :
    ((b - 1) * ∑ i ∈ range n.succ, a / b ^ i) ≤ a * b - a / b ^ n :=
  calc
    ((b - 1) * ∑ i ∈ range n.succ, a / b ^ i) =
    (∑ i ∈ range n, a / b ^ (i + 1) * b) + a * b - ((∑ i ∈ range n, a / b ^ i) + a / b ^ n) := by
      rw [tsub_mul, mul_comm, sum_mul, one_mul, sum_range_succ', sum_range_succ, pow_zero,
        Nat.div_one]
    _ ≤ (∑ i ∈ range n, a / b ^ i) + a * b - ((∑ i ∈ range n, a / b ^ i) + a / b ^ n) := by
      gcongr with i hi
      rw [pow_succ, ← Nat.div_div_eq_div_mul]
      exact Nat.div_mul_le_self _ _
    _ = a * b - a / b ^ n := add_tsub_add_eq_tsub_left _ _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean#L425).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5a0a4f8fb2111f39679d67265985cd7df8f7ef3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
