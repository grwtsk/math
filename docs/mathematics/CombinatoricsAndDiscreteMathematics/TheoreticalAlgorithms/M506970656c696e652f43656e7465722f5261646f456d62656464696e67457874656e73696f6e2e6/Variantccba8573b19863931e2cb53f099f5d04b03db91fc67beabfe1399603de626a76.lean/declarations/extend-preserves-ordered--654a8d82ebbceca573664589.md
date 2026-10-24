# extend_preserves_ordered

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e38754f62c2d6cd453085f4229b41aa9d96df506",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 117,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cc/ccba8573b19863931e2cb53f099f5d04b03db91fc67beabfe1399603de626a76.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f468b54c-22f3-6500-06bd-556ec981054e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f7589566-e53e-fc6a-b799-fd1cf39dc81d",
  "kind": "theorem",
  "lexical_name": "extend_preserves_ordered",
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
  "slug": "extend-preserves-ordered--654a8d82ebbceca573664589",
  "source": {
    "blob": "e38754f62c2d6cd453085f4229b41aa9d96df506",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 117,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f43656e7465722f5261646f456d62656464696e67457874656e73696f6e2e6/Variantccba8573b19863931e2cb53f099f5d04b03db91fc67beabfe1399603de626a76.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:654a8d82ebbceca573664589488ae0d3cb529895a386c2e9bd62b56164b5d008",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f43656e7465722f5261646f456d62656464696e67457874656e73696f6e2e6/Variantccba8573b19863931e2cb53f099f5d04b03db91fc67beabfe1399603de626a76.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f7589566-e53e-fc6a-b799-fd1cf39dc81d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem extend_preserves_ordered
    {G : FiniteBoolGraph} {m z : Nat} {f : Nat -> Nat}
    (hfpres : PreservesOrderedEdgesUpTo G m f)
    (hU : ∀ u : Nat, u ∈ NewVertexConnectList G m f -> bitRadoEdge z u)
    (hV : ∀ v : Nat, v ∈ NewVertexAvoidList G m f -> ¬ bitRadoEdge z v) :
    PreservesOrderedEdgesUpTo G (m + 1) (extend f m z) := by
  let U := NewVertexConnectList G m f
  let V := NewVertexAvoidList G m f
  intro i j hij hj
  by_cases hjm : j = m
  · subst j
    have him : i ≠ m := by
      intro h
      subst i
      exact Nat.lt_irrefl m hij
    have hilt : i < m := lt_of_lt_succ_ne (Nat.lt_trans hij hj) him
    have hnew : extend f m z m = z := by simp [extend]
    have hold : extend f m z i = f i := by simp [extend, him]
    by_cases hgi : G.edge m i = true
    · have hmem : f i ∈ U := mem_yesNeighbors hilt hgi
      have hedge : bitRadoEdge z (f i) := hU (f i) hmem
      rw [hnew, hold]
      constructor
      · intro _; exact hgi
      · intro _; exact hedge
    · have hgfalse : G.edge m i = false :=
        bool_eq_false_of_ne_true hgi
      have hmem : f i ∈ V := mem_noNeighbors hilt hgfalse
      have hnot : ¬ bitRadoEdge z (f i) := hV (f i) hmem
      rw [hnew, hold, hgfalse]
      constructor
      · intro hedge; exact False.elim (hnot hedge)
      · intro htrue; cases htrue
  · have hjlt : j < m := lt_of_lt_succ_ne hj hjm
    have him : i ≠ m := by
      intro h
      subst i
      exact Nat.lt_asymm hij hjlt
    have hilt : i < m := lt_of_lt_succ_ne (Nat.lt_trans hij hj) him
    have holdi : extend f m z i = f i := by simp [extend, him]
    have holdj : extend f m z j = f j := by simp [extend, hjm]
    rw [holdj, holdi]
    exact hfpres i j hij hjlt

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f43656e7465722f5261646f456d62656464696e67457874656e73696f6e2e6/Variantccba8573b19863931e2cb53f099f5d04b03db91fc67beabfe1399603de626a76.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f43656e7465722f5261646f456d62656464696e67457874656e73696f6e2e6/Variantccba8573b19863931e2cb53f099f5d04b03db91fc67beabfe1399603de626a76.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e38754f62c2d6cd453085f4229b41aa9d96df506` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
