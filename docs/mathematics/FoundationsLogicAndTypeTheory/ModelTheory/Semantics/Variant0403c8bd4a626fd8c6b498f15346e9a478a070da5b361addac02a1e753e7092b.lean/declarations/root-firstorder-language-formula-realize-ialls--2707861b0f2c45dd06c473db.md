# _root_.FirstOrder.Language.Formula.realize_iAlls

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a9e104f25f606f41e2c4a95b197e00353cb2c297",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 824,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/04/0403c8bd4a626fd8c6b498f15346e9a478a070da5b361addac02a1e753e7092b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fdd7fb06-5ec7-07eb-5033-78cbde82aa7e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:76f3bfa5-7fdb-5a61-25c6-c38130dcb81a",
  "kind": "theorem",
  "lexical_name": "_root_.FirstOrder.Language.Formula.realize_iAlls",
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
  "slug": "root-firstorder-language-formula-realize-ialls--2707861b0f2c45dd06c473db",
  "source": {
    "blob": "a9e104f25f606f41e2c4a95b197e00353cb2c297",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 841,
    "line": 824,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Semantics/Variant0403c8bd4a626fd8c6b498f15346e9a478a070da5b361addac02a1e753e7092b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2707861b0f2c45dd06c473dbb61a2c014a0494114cd3e16a076f6cfc83c46119",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Semantics/Variant0403c8bd4a626fd8c6b498f15346e9a478a070da5b361addac02a1e753e7092b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76f3bfa5-7fdb-5a61-25c6-c38130dcb81a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 824–841.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.FirstOrder.Language.Formula.realize_iAlls
    [Finite β] {φ : L.Formula (α ⊕ β)} {v : α → M} : (φ.iAlls β).Realize v ↔
      ∀ (i : β → M), φ.Realize (fun a => Sum.elim v i a) := by
  let e := Classical.choice (Classical.choose_spec (Finite.exists_equiv_fin β))
  rw [Formula.iAlls]
  simp only [Nat.add_zero, realize_alls, realize_relabel, Function.comp_def,
    castAdd_zero, Sum.elim_map, id_eq]
  refine Equiv.forall_congr ?_ ?_
  · exact ⟨fun v => v ∘ e, fun v => v ∘ e.symm,
      fun _ => by simp [Function.comp_def],
      fun _ => by simp [Function.comp_def]⟩
  · intro x
    rw [Formula.Realize, iff_iff_eq]
    congr
    funext i
    exact i.elim0

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Semantics/Variant0403c8bd4a626fd8c6b498f15346e9a478a070da5b361addac02a1e753e7092b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Semantics/Variant0403c8bd4a626fd8c6b498f15346e9a478a070da5b361addac02a1e753e7092b.lean#L824).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9e104f25f606f41e2c4a95b197e00353cb2c297` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
