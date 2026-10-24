# dual

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:09d36d64087c5ffe1e8da5a1c75a637fcb400c51f3bc251e6ad86f64056de104",
  "kind": "def",
  "lexical_name": "dual",
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
  "slug": "dual--ec07722e6ceeb89d009eb0f5",
  "source": {
    "blob": "986d57f9f76a4066cefc0f34a6200c0b05349d7e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 564,
    "line": 551,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant11e348407806847011c7b5e81a7435a057181b4b6e9781a37498ca5c53b04aa9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ec07722e6ceeb89d009eb0f5bb3512cc82642ceb70455b0d725972face6abbe5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant11e348407806847011c7b5e81a7435a057181b4b6e9781a37498ca5c53b04aa9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:09d36d64087c5ffe1e8da5a1c75a637fcb400c51f3bc251e6ad86f64056de104`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 551–564.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def dual : (α →o β) ≃ (αᵒᵈ →o βᵒᵈ) where
  toFun f := ⟨(OrderDual.toDual : β → βᵒᵈ) ∘ (f : α → β) ∘
    (OrderDual.ofDual : αᵒᵈ → α), f.mono.dual⟩
  invFun f := ⟨OrderDual.ofDual ∘ f ∘ OrderDual.toDual, f.mono.dual⟩
  left_inv _ := rfl
  right_inv _ := rfl
#align order_hom.dual OrderHom.dual
#align order_hom.dual_apply_coe OrderHom.dual_apply_coe
#align order_hom.dual_symm_apply_coe OrderHom.dual_symm_apply_coe

-- Porting note: We used to be able to write `(OrderHom.id : α →o α).dual` here rather than
-- `OrderHom.dual (OrderHom.id : α →o α)`.
-- See https://github.com/leanprover/lean4/issues/1910
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant11e348407806847011c7b5e81a7435a057181b4b6e9781a37498ca5c53b04aa9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant11e348407806847011c7b5e81a7435a057181b4b6e9781a37498ca5c53b04aa9.lean#L551).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `986d57f9f76a4066cefc0f34a6200c0b05349d7e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
