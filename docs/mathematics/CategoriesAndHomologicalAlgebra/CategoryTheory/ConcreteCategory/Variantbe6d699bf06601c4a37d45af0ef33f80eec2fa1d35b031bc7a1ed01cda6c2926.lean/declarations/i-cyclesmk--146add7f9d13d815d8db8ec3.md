# i_cyclesMk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:28b21154-dd30-b12b-f422-dd598f873fc6",
  "kind": "lemma",
  "lexical_name": "i_cyclesMk",
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
  "slug": "i-cyclesmk--146add7f9d13d815d8db8ec3",
  "source": {
    "blob": "a2b4249b988ce7c2dd80cf3f699d1be729f1f354",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 125,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variantbe6d699bf06601c4a37d45af0ef33f80eec2fa1d35b031bc7a1ed01cda6c2926.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:146add7f9d13d815d8db8ec3cab24d14543712fb7f1fe5069005315475d9a772",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variantbe6d699bf06601c4a37d45af0ef33f80eec2fa1d35b031bc7a1ed01cda6c2926.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:28b21154-dd30-b12b-f422-dd598f873fc6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma i_cyclesMk [S.HasHomology] (x₂ : (forget₂ C Ab).obj S.X₂)
    (hx₂ : ((forget₂ C Ab).map S.g) x₂ = 0) :
    (forget₂ C Ab).map S.iCycles (S.cyclesMk x₂ hx₂) = x₂ := by
  dsimp [cyclesMk]
  -- `abCyclesIso_inv_apply_iCycles` is not in `simp`-normal form, so we first
  -- have to simplify it.
  have := abCyclesIso_inv_apply_iCycles (S.map (forget₂ C Ab)) ⟨x₂, hx₂⟩
  simp only [map_X₂, map_X₃, map_g] at this
  rw [← ConcreteCategory.comp_apply, S.mapCyclesIso_hom_iCycles (forget₂ C Ab), this]

end ShortComplex

end preadditive

end

section abelian

variable {C : Type u} [Category.{v} C] {FC : C → C → Type*} {CC : C → Type v}
  [∀ X Y, FunLike (FC X Y) (CC X) (CC Y)] [ConcreteCategory.{v} C FC] [HasForget₂ C Ab]
  [Abelian C] [(forget₂ C Ab).Additive] [(forget₂ C Ab).PreservesHomology]

namespace ShortComplex

namespace SnakeInput

variable (D : SnakeInput C)

set_option backward.isDefEq.respectTransparency false in
/-- This lemma allows the computation of the connecting homomorphism
`D.δ` when `D : SnakeInput C` and `C` is a concrete category. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variantbe6d699bf06601c4a37d45af0ef33f80eec2fa1d35b031bc7a1ed01cda6c2926.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variantbe6d699bf06601c4a37d45af0ef33f80eec2fa1d35b031bc7a1ed01cda6c2926.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2b4249b988ce7c2dd80cf3f699d1be729f1f354` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
