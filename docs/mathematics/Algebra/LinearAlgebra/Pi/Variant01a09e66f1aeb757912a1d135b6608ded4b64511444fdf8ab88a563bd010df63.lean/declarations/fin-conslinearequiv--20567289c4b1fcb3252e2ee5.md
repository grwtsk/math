# Fin.consLinearEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:91f5ccd87bc5377b98387f46c6de664ce8cb983d64bfef3bd130363d67275f7f",
  "kind": "def",
  "lexical_name": "Fin.consLinearEquiv",
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
  "slug": "fin-conslinearequiv--20567289c4b1fcb3252e2ee5",
  "source": {
    "blob": "e60bf5fb2621cad6e6988bde409a14016462c3b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 628,
    "line": 599,
    "path": "GRWTSK/Algebra/LinearAlgebra/Pi/Variant01a09e66f1aeb757912a1d135b6608ded4b64511444fdf8ab88a563bd010df63.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:20567289c4b1fcb3252e2ee59652887742a33d49f280dc9f135d5ff0341041e6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Pi/Variant01a09e66f1aeb757912a1d135b6608ded4b64511444fdf8ab88a563bd010df63.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:91f5ccd87bc5377b98387f46c6de664ce8cb983d64bfef3bd130363d67275f7f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 599–628.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Fin.consLinearEquiv
    {n : ℕ} (M : Fin n.succ → Type*) [Semiring R] [∀ i, AddCommMonoid (M i)] [∀ i, Module R (M i)] :
    (M 0 × Π i, M (Fin.succ i)) ≃ₗ[R] (Π i, M i) where
  __ := Fin.consEquiv M
  map_add' x y := funext <| Fin.cases rfl (by simp)
  map_smul' c x := funext <| Fin.cases rfl (by simp)


/-! ### Bundled versions of `Matrix.vecCons` and `Matrix.vecEmpty`

The idea of these definitions is to be able to define a map as `x ↦ ![f₁ x, f₂ x, f₃ x]`, where
`f₁ f₂ f₃` are already linear maps, as `f₁.vecCons <| f₂.vecCons <| f₃.vecCons <| vecEmpty`.

While the same thing could be achieved using `LinearMap.pi ![f₁, f₂, f₃]`, this is not
definitionally equal to the result using `LinearMap.vecCons`, as `Fin.cases` and function
application do not commute definitionally.

Versions for when `f₁ f₂ f₃` are bilinear maps are also provided.

-/


section Fin

section Semiring

variable [Semiring R] [AddCommMonoid M] [AddCommMonoid M₂] [AddCommMonoid M₃]
variable [Module R M] [Module R M₂] [Module R M₃]

/-- The linear map defeq to `Matrix.vecEmpty` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Pi/Variant01a09e66f1aeb757912a1d135b6608ded4b64511444fdf8ab88a563bd010df63.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Pi/Variant01a09e66f1aeb757912a1d135b6608ded4b64511444fdf8ab88a563bd010df63.lean#L599).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e60bf5fb2621cad6e6988bde409a14016462c3b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
