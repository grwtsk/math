# Interval.orderRelFalse_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bce9f7c6c02c47ee6ee90ebab54923b406521de9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 345,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/71/71836d093e9635a325c4deeda3c5ddb152f85a9523106eb12269ba2709625e94.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c2a4b3db-37d0-e5b2-56f7-dc7da2e61434",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:63348810-c607-7e2a-6b9c-8e1d9a80d9dd",
  "kind": "theorem",
  "lexical_name": "Interval.orderRelFalse_mem",
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
  "slug": "interval-orderrelfalse-mem--d7fe4d951e8baebd81c378b5",
  "source": {
    "blob": "bce9f7c6c02c47ee6ee90ebab54923b406521de9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 359,
    "line": 345,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Interval/Variant71836d093e9635a325c4deeda3c5ddb152f85a9523106eb12269ba2709625e94.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7fe4d951e8baebd81c378b543f12d891868d5ae4518d472fcc356a190dde6cf",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Interval/Variant71836d093e9635a325c4deeda3c5ddb152f85a9523106eb12269ba2709625e94.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63348810-c607-7e2a-6b9c-8e1d9a80d9dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 345–359.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Interval.orderRelFalse_mem [Preorder β] {r : α → α → Prop} {s : β → β → Prop}
    [DecidableRel r] [Trans (· ≤ ·) s s] [Trans s (· ≤ ·) s] (f : r ↪r s)
    {x y : β} {I J : Interval α} (hx : x ∈ I.map f) (hy : y ∈ J.map f) :
    s x y ∈ Interval.orderRelFalse r I J := by
  rcases I with ⟨_ | il, iu⟩
  · simp [Interval.orderRelFalse]
  rcases J with ⟨jl, _ | ju⟩
  · simp [Interval.orderRelFalse]
  dsimp [Interval.orderRelFalse]
  split_ifs with h
  · simp
  · exact IntervalBool.mem_false fun hxy ↦ h <| f.map_rel_iff.mp <|
      trans (Interval.map_lb_le f hx) (trans hxy (Interval.le_map_ub f hy))

/-- Check if `r x y` is implied (true or false) by `x ∈ I` and `y ∈ J`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Interval/Variant71836d093e9635a325c4deeda3c5ddb152f85a9523106eb12269ba2709625e94.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Interval/Variant71836d093e9635a325c4deeda3c5ddb152f85a9523106eb12269ba2709625e94.lean#L345).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bce9f7c6c02c47ee6ee90ebab54923b406521de9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
