# closure_induction''

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "99d973796a1a4d8f5618b0cd6e2622d7902b7f0a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 161,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/01/01ffa1874259dd9052c3b32029d5a7dddcdc4fa1695e271d888a91a7f9f2651d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:014997b3-68e2-1c7e-4c13-fa4e75a25049",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3afb9870-5f63-7dcb-3e6f-2daab4fba72c",
  "kind": "theorem",
  "lexical_name": "closure_induction''",
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
  "slug": "closure-induction--988fd1e7eb0fbead1fc54faf",
  "source": {
    "blob": "99d973796a1a4d8f5618b0cd6e2622d7902b7f0a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 161,
    "path": "GRWTSK/Algebra/GroupTheory/Pointwise/Variant01ffa1874259dd9052c3b32029d5a7dddcdc4fa1695e271d888a91a7f9f2651d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:988fd1e7eb0fbead1fc54faf6493f740fb2a2e8e420f04cd6e3581fd5dff809c",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Pointwise/Variant01ffa1874259dd9052c3b32029d5a7dddcdc4fa1695e271d888a91a7f9f2651d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3afb9870-5f63-7dcb-3e6f-2daab4fba72c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closure_induction'' {p : (g : G) → g ∈ closure s → Prop}
    (mem : ∀ x (hx : x ∈ s), p x (subset_closure hx))
    (inv_mem : ∀ x (hx : x ∈ s), p x⁻¹ (inv_mem (subset_closure hx)))
    (one : p 1 (one_mem _))
    (mul : ∀ x y hx hy, p x hx → p y hy → p (x * y) (mul_mem hx hy))
    {x} (h : x ∈ closure s) : p x h :=
  closure_induction_left one (fun x hx y _ hy => mul x y _ _ (mem x hx) hy)
    (fun x hx y _ => mul x⁻¹ y _ _ <| inv_mem x hx) h

/-- An induction principle for elements of `⨆ i, S i`.
If `C` holds for `1` and all elements of `S i` for all `i`, and is preserved under multiplication,
then it holds for all elements of the supremum of `S`. -/
@[to_additive (attr := elab_as_elim) " An induction principle for elements of `⨆ i, S i`.
If `C` holds for `0` and all elements of `S i` for all `i`, and is preserved under addition,
then it holds for all elements of the supremum of `S`. "]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Pointwise/Variant01ffa1874259dd9052c3b32029d5a7dddcdc4fa1695e271d888a91a7f9f2651d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Pointwise/Variant01ffa1874259dd9052c3b32029d5a7dddcdc4fa1695e271d888a91a7f9f2651d.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99d973796a1a4d8f5618b0cd6e2622d7902b7f0a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
