# ExtraDegeneracy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6022c285b82cd87b3ee091cc2313d54f49369da65045b38da51d58bc121245bd",
  "kind": "structure",
  "lexical_name": "ExtraDegeneracy",
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
  "slug": "extradegeneracy--e61ed4f5724da9c349b3e4b5",
  "source": {
    "blob": "136602b740fe0b5c6ecef06b83ded4f68a09bd8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 74,
    "path": "GRWTSK/Topology/AlgebraicTopology/ExtraDegeneracy/Variant1ff9aa58bbabff7a52944aa8bcc08bb8c2905958f585fc30e53c4a3bbd14bef5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e61ed4f5724da9c349b3e4b55bde917646a874321556e522234eddb96942d503",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/ExtraDegeneracy/Variant1ff9aa58bbabff7a52944aa8bcc08bb8c2905958f585fc30e53c4a3bbd14bef5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6022c285b82cd87b3ee091cc2313d54f49369da65045b38da51d58bc121245bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ExtraDegeneracy (X : SimplicialObject.Augmented C) where
  /-- a section of the augmentation in dimension `0` -/
  s' : X.right ⟶ X.left _⦋0⦌
  /-- the extra degeneracy -/
  s : ∀ n : ℕ, X.left _⦋n⦌ ⟶ X.left _⦋n + 1⦌
  s'_comp_ε : dsimp% s' ≫ X.hom.app (op ⦋0⦌) = 𝟙 X.right := by cat_disch
  s₀_comp_δ₁ : dsimp% s 0 ≫ X.left.δ 1 = X.hom.app (op ⦋0⦌) ≫ s' := by cat_disch
  s_comp_δ₀ : ∀ n : ℕ, s n ≫ X.left.δ 0 = 𝟙 _ := by cat_disch
  s_comp_δ :
    ∀ (n : ℕ) (i : Fin (n + 2)), s (n + 1) ≫ X.left.δ i.succ = X.left.δ i ≫ s n := by cat_disch
  s_comp_σ :
    ∀ (n : ℕ) (i : Fin (n + 1)), s n ≫ X.left.σ i.succ = X.left.σ i ≫ s (n + 1) := by cat_disch

namespace ExtraDegeneracy

attribute [reassoc] s₀_comp_δ₁ s_comp_δ s_comp_σ
attribute [reassoc (attr := simp)] s'_comp_ε s_comp_δ₀

attribute [local simp←] Functor.map_comp in
attribute [local simp] s₀_comp_δ₁ s_comp_δ s_comp_σ in
/-- If `ed` is an extra degeneracy for `X : SimplicialObject.Augmented C` and
`F : C ⥤ D` is a functor, then `ed.map F` is an extra degeneracy for the
augmented simplicial object in `D` obtained by applying `F` to `X`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/ExtraDegeneracy/Variant1ff9aa58bbabff7a52944aa8bcc08bb8c2905958f585fc30e53c4a3bbd14bef5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/ExtraDegeneracy/Variant1ff9aa58bbabff7a52944aa8bcc08bb8c2905958f585fc30e53c4a3bbd14bef5.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `136602b740fe0b5c6ecef06b83ded4f68a09bd8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
