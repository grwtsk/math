# isPresentationCoreTensor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d930eeadbf9c800bbf1bea10cd81514cd4d50ff5e20ee54020d973eaa8351f50",
  "kind": "def",
  "lexical_name": "isPresentationCoreTensor",
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
  "slug": "ispresentationcoretensor--06f190f360e7de7db6a6f32c",
  "source": {
    "blob": "56e1456b65ba2171f238c7d576786e927f3ae1e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 72,
    "path": "GRWTSK/Algebra/LinearAlgebra/Tensor/Variant44fc3b5bb6b6b8abfda2f5a0c7c62d1f7b55a591fa1e35987789acbb4699a79d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:06f190f360e7de7db6a6f32c3cf104369d9693e4653baf4dcd7efd079bdad825",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Tensor/Variant44fc3b5bb6b6b8abfda2f5a0c7c62d1f7b55a591fa1e35987789acbb4699a79d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d930eeadbf9c800bbf1bea10cd81514cd4d50ff5e20ee54020d973eaa8351f50`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def isPresentationCoreTensor :
    Solution.IsPresentationCore.{w} (solution₁.tensor solution₂) where
  desc s := uncurry _ _ _ _ (h₁.desc
    { var := fun g₁ ↦ h₂.desc
        { var := fun g₂ ↦ s.var ⟨g₁, g₂⟩
          linearCombination_var_relation := fun r₂ ↦ by
            erw [← Finsupp.linearCombination_embDomain A
              (Function.Embedding.sectR g₁ relations₂.G)]
            exact s.linearCombination_var_relation (.inr ⟨g₁, r₂⟩) }
      linearCombination_var_relation := fun r₁ ↦ h₂.postcomp_injective (by
        ext g₂
        dsimp
        erw [Finsupp.apply_linearCombination A (LinearMap.applyₗ (solution₂.var g₂))]
        have := s.linearCombination_var_relation (.inl ⟨r₁, g₂⟩)
        erw [Finsupp.linearCombination_embDomain] at this
        convert this
        ext g₁
        simp) })
  postcomp_desc _ := by aesop
  postcomp_injective h := curry_injective (h₁.postcomp_injective (by
    ext g₁ : 2
    refine h₂.postcomp_injective ?_
    ext g₂
    exact congr_var h ⟨g₁, g₂⟩))

include h₁ h₂ in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Tensor/Variant44fc3b5bb6b6b8abfda2f5a0c7c62d1f7b55a591fa1e35987789acbb4699a79d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Tensor/Variant44fc3b5bb6b6b8abfda2f5a0c7c62d1f7b55a591fa1e35987789acbb4699a79d.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56e1456b65ba2171f238c7d576786e927f3ae1e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
