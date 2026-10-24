# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e553e7459b94e121b787c90d5c1416600ab5072d6ff1af962b343793031ec6a5",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--cd9897ec43cd8e944e66befe",
  "source": {
    "blob": "3de7e1d3eb2747270cc5937d5cbc1dddf2ad4d5d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 89,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantc7591ac5912776e7631b668aa4b8253daca72c6865c7728f80cc922354428b7c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cd9897ec43cd8e944e66befe970df721d5ab0c8456db8310435f3241deb4968d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantc7591ac5912776e7631b668aa4b8253daca72c6865c7728f80cc922354428b7c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e553e7459b94e121b787c90d5c1416600ab5072d6ff1af962b343793031ec6a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : Fintype (IndexSet Δ) :=
  Fintype.ofInjective
    (fun A =>
      ⟨⟨A.1.unop.len, Nat.lt_succ_iff.mpr (len_le_of_epi (inferInstance : Epi A.e))⟩,
        A.e.toOrderHom⟩ :
      IndexSet Δ → Sigma fun k : Fin (Δ.unop.len + 1) => Fin (Δ.unop.len + 1) → Fin (k + 1))
    (by
      rintro ⟨Δ₁, α₁⟩ ⟨Δ₂, α₂⟩ h₁
      induction' Δ₁ using Opposite.rec with Δ₁
      induction' Δ₂ using Opposite.rec with Δ₂
      simp only [unop_op, Sigma.mk.inj_iff, Fin.mk.injEq] at h₁
      have h₂ : Δ₁ = Δ₂ := by
        ext1
        simpa only [Fin.mk_eq_mk] using h₁.1
      subst h₂
      refine ext _ _ rfl ?_
      ext : 2
      exact eq_of_heq h₁.2)

variable (Δ)

/-- The distinguished element in `Splitting.IndexSet Δ` which corresponds to the
identity of `Δ`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantc7591ac5912776e7631b668aa4b8253daca72c6865c7728f80cc922354428b7c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantc7591ac5912776e7631b668aa4b8253daca72c6865c7728f80cc922354428b7c.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3de7e1d3eb2747270cc5937d5cbc1dddf2ad4d5d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
