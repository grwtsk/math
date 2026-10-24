# sum_equiv_comp_eval_eq_elim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "48f0ba400d90f653e7a1697bccf77d0919046a48",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 347,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b5/b5dc7a06f9385ecd34f112de9a56686c3d9bc0aa0e0f2485e96e724c6aa93c69.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a84e8a7a-ed32-f6ff-c8bb-fb1bbae1f47b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:30a6f304-a1c8-663c-db97-53c599c6de48",
  "kind": "theorem",
  "lexical_name": "sum_equiv_comp_eval_eq_elim",
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
  "slug": "sum-equiv-comp-eval-eq-elim--f66bb238d8d6800b03e0674b",
  "source": {
    "blob": "48f0ba400d90f653e7a1697bccf77d0919046a48",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 375,
    "line": 347,
    "path": "GRWTSK/Topology/GeneralTopology/Successor/Variantb5dc7a06f9385ecd34f112de9a56686c3d9bc0aa0e0f2485e96e724c6aa93c69.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f66bb238d8d6800b03e0674bf79f6fb72d1330948ae8bdfb88471ac892997b5e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Successor/Variantb5dc7a06f9385ecd34f112de9a56686c3d9bc0aa0e0f2485e96e724c6aa93c69.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30a6f304-a1c8-663c-db97-53c599c6de48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 347–375.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
theorem sum_equiv_comp_eval_eq_elim : eval C ∘ (sum_equiv C hsC ho).toFun =
    (Sum.elim (fun (l : GoodProducts (π C (ord I · < o))) ↦ Products.eval C l.1)
    (fun (l : MaxProducts C ho) ↦ Products.eval C l.1)) := by
  ext ⟨_, _⟩ <;> [rfl; rfl]

/-- Let

`N := LocallyConstant (π C (ord I · < o)) ℤ`

`M := LocallyConstant C ℤ`

`P := LocallyConstant (C' C ho) ℤ`

`ι := GoodProducts (π C (ord I · < o))`

`ι' := GoodProducts (C' C ho')`

`v : ι → N := GoodProducts.eval (π C (ord I · < o))`

Then `SumEval C ho` is the map `u` in the diagram below. It is linearly independent if and only if
`GoodProducts.eval C` is, see `linearIndependent_iff_sum`. The top row is the exact sequence given
by `succ_exact` and `succ_mono`. The left square commutes by `GoodProducts.square_commutes`.
```
0 --→ N --→ M --→  P
      ↑     ↑      ↑
     v|    u|      |
      ι → ι ⊕ ι' ← ι'
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Successor/Variantb5dc7a06f9385ecd34f112de9a56686c3d9bc0aa0e0f2485e96e724c6aa93c69.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Successor/Variantb5dc7a06f9385ecd34f112de9a56686c3d9bc0aa0e0f2485e96e724c6aa93c69.lean#L347).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48f0ba400d90f653e7a1697bccf77d0919046a48` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
