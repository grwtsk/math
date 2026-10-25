# _root_.GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.TheoryModel.Variant57be9f1cf98ca9e455e1c89a084f12fa0dd28066b81c0499d9de3e98e71dc8b8.FirstOrder.Language.Formula.realize_iAlls

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bc5a5da0-9bb6-8ea7-c613-bee9a4d21613",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.TheoryModel.Variant57be9f1cf98ca9e455e1c89a084f12fa0dd28066b81c0499d9de3e98e71dc8b8.FirstOrder.Language.Formula.realize_iAlls",
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
  "slug": "root-grwtsk-foundationslogicandtypetheory-modeltheory-theorymodel-varian--b364da647348e9e2fd267b12",
  "source": {
    "blob": "f10ffb2e1c1d22091a9704a3dc76c587fa63986c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 790,
    "line": 773,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Semantics/Variante24869437cc7ca58d4bfa353afcf721f8c93f5f7639dda1b4dc3a6c175ea1cf2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b364da647348e9e2fd267b12877572ce696956a90e51a3b135fcb1a90d182b8d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Semantics/Variante24869437cc7ca58d4bfa353afcf721f8c93f5f7639dda1b4dc3a6c175ea1cf2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bc5a5da0-9bb6-8ea7-c613-bee9a4d21613`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 773–790.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.TheoryModel.Variant57be9f1cf98ca9e455e1c89a084f12fa0dd28066b81c0499d9de3e98e71dc8b8.FirstOrder.Language.Formula.realize_iAlls
    [Finite β] {φ : L.Formula (α ⊕ β)} {v : α → M} : (φ.iAlls β).Realize v ↔
      ∀ (i : β → M), φ.Realize (fun a => Sum.elim v i a) := by
  let e := Classical.choice (Classical.choose_spec (Finite.exists_equiv_fin β))
  rw [Formula.iAlls]
  simp only [Nat.add_zero, realize_alls, realize_relabel, Function.comp_def,
    castAdd_zero, finCongr_refl, OrderIso.refl_apply, Sum.elim_map, id_eq]
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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Semantics/Variante24869437cc7ca58d4bfa353afcf721f8c93f5f7639dda1b4dc3a6c175ea1cf2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Semantics/Variante24869437cc7ca58d4bfa353afcf721f8c93f5f7639dda1b4dc3a6c175ea1cf2.lean#L773).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f10ffb2e1c1d22091a9704a3dc76c587fa63986c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
