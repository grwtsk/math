# isEqvAux_of_rel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a4d25cabac4e4ce36415f488dfd8298405f72380",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 42,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b1/b1682d00c2b7ac63511ed58d421e191c6286cd342baf8be8cc6dd37cf9642fac.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:84e850b2-4b17-b4fb-916d-b71aaf518d86",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d3960da7-5bb1-83cc-ded3-42694383f4e6",
  "kind": "theorem",
  "lexical_name": "isEqvAux_of_rel",
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
  "slug": "iseqvaux-of-rel--9c398f20fff69c75d996e142",
  "source": {
    "blob": "a4d25cabac4e4ce36415f488dfd8298405f72380",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 42,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecidableEq/Variantb1682d00c2b7ac63511ed58d421e191c6286cd342baf8be8cc6dd37cf9642fac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c398f20fff69c75d996e1424edbedc78e87ec649c6ff2cef7e17cff85ba4486",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecidableEq/Variantb1682d00c2b7ac63511ed58d421e191c6286cd342baf8be8cc6dd37cf9642fac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d3960da7-5bb1-83cc-ded3-42694383f4e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem isEqvAux_of_rel {r : α → α → Bool} {xs ys : Array α} (hsz : xs.size = ys.size) {i : Nat} (hi : i ≤ xs.size)
    (w : ∀ j, (hj : j < i) → r (xs[j]'(Nat.lt_of_lt_of_le hj hi)) (ys[j]'(Nat.lt_of_lt_of_le hj (hsz ▸ hi)))) : Array.isEqvAux xs ys hsz r i hi := by
  induction i with
  | zero => simp [Array.isEqvAux]
  | succ i ih =>
    simp only [isEqvAux, Bool.and_eq_true]
    exact ⟨w i (Nat.lt_add_one i), ih _ fun j hj => w j (Nat.lt_add_right 1 hj)⟩

-- This is private as the forward direction of `isEqv_iff_rel` may be used.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecidableEq/Variantb1682d00c2b7ac63511ed58d421e191c6286cd342baf8be8cc6dd37cf9642fac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecidableEq/Variantb1682d00c2b7ac63511ed58d421e191c6286cd342baf8be8cc6dd37cf9642fac.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4d25cabac4e4ce36415f488dfd8298405f72380` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
