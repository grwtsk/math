# ExtraDegeneracy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b31350f6ec98615a9507bb1ca8ba270b084ba7e1864777139693f7f28757a272",
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
  "slug": "extradegeneracy--58c52a892a562f7d7788b0be",
  "source": {
    "blob": "ef3f477b8fce655263952684b0f4563ec9874815",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 62,
    "path": "GRWTSK/Topology/AlgebraicTopology/ExtraDegeneracy/Variantca61270c8661b36ecab30805a8288cc60ee9d09ba3ebecb1a42fad00f7b03d40.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:58c52a892a562f7d7788b0beb8006717435b701bbc5743c0403d0ca0eed9f4c8",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/ExtraDegeneracy/Variantca61270c8661b36ecab30805a8288cc60ee9d09ba3ebecb1a42fad00f7b03d40.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b31350f6ec98615a9507bb1ca8ba270b084ba7e1864777139693f7f28757a272`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ExtraDegeneracy (X : SimplicialObject.Augmented C) where
  s' : point.obj X ⟶ drop.obj X _[0]
  s : ∀ n : ℕ, drop.obj X _[n] ⟶ drop.obj X _[n + 1]
  s'_comp_ε : s' ≫ X.hom.app (op [0]) = 𝟙 _
  s₀_comp_δ₁ : s 0 ≫ X.left.δ 1 = X.hom.app (op [0]) ≫ s'
  s_comp_δ₀ : ∀ n : ℕ, s n ≫ X.left.δ 0 = 𝟙 _
  s_comp_δ :
    ∀ (n : ℕ) (i : Fin (n + 2)), s (n + 1) ≫ X.left.δ i.succ = X.left.δ i ≫ s n
  s_comp_σ :
    ∀ (n : ℕ) (i : Fin (n + 1)), s n ≫ X.left.σ i.succ = X.left.σ i ≫ s (n + 1)
#align simplicial_object.augmented.extra_degeneracy SimplicialObject.Augmented.ExtraDegeneracy

namespace ExtraDegeneracy

attribute [reassoc] s₀_comp_δ₁ s_comp_δ s_comp_σ
attribute [reassoc (attr := simp)] s'_comp_ε s_comp_δ₀

/-- If `ed` is an extra degeneracy for `X : SimplicialObject.Augmented C` and
`F : C ⥤ D` is a functor, then `ed.map F` is an extra degeneracy for the
augmented simplical object in `D` obtained by applying `F` to `X`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/ExtraDegeneracy/Variantca61270c8661b36ecab30805a8288cc60ee9d09ba3ebecb1a42fad00f7b03d40.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/ExtraDegeneracy/Variantca61270c8661b36ecab30805a8288cc60ee9d09ba3ebecb1a42fad00f7b03d40.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef3f477b8fce655263952684b0f4563ec9874815` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
