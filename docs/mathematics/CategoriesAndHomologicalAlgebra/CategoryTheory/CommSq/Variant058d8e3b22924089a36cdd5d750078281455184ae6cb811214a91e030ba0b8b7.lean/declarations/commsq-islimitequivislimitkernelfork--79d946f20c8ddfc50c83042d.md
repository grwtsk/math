# CommSq.isLimitEquivIsLimitKernelFork

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:33cc62b3284b307a30105eeeaf0b8f6848f07e01c2c289739b652f63d9d9e673",
  "kind": "def",
  "lexical_name": "CommSq.isLimitEquivIsLimitKernelFork",
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
  "slug": "commsq-islimitequivislimitkernelfork--79d946f20c8ddfc50c83042d",
  "source": {
    "blob": "18bb3541a8c82092bcdf9a8518988e1ff7008144",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 143,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant058d8e3b22924089a36cdd5d750078281455184ae6cb811214a91e030ba0b8b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:79d946f20c8ddfc50c83042dae7364109c35a121946c850d1b145d28bef46124",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant058d8e3b22924089a36cdd5d750078281455184ae6cb811214a91e030ba0b8b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:33cc62b3284b307a30105eeeaf0b8f6848f07e01c2c289739b652f63d9d9e673`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def CommSq.isLimitEquivIsLimitKernelFork (sq : CommSq fst snd f g) :
    IsLimit (PullbackCone.mk _ _ sq.w) ≃ IsLimit sq.kernelFork where
  toFun h :=
    Fork.IsLimit.mk _
      (fun s ↦ PullbackCone.IsLimit.lift h
        (s.ι ≫ biprod.fst) (s.ι ≫ biprod.snd) (by
          rw [← sub_eq_zero, assoc, assoc, ← Preadditive.comp_sub]
          convert s.condition <;> aesop_cat))
      (fun s ↦ by
        dsimp
        ext
        · simp only [assoc, biprod.lift_fst]
          apply PullbackCone.IsLimit.lift_fst h
        · simp only [assoc, biprod.lift_snd]
          apply PullbackCone.IsLimit.lift_snd h)
      (fun s m hm ↦ by
        apply PullbackCone.IsLimit.hom_ext h
        · replace hm := hm =≫ biprod.fst
          dsimp at hm ⊢
          simp only [assoc, biprod.lift_fst] at hm
          rw [hm]
          symm
          apply PullbackCone.IsLimit.lift_fst h
        · replace hm := hm =≫ biprod.snd
          dsimp at hm ⊢
          simp only [assoc, biprod.lift_snd] at hm
          rw [hm]
          symm
          apply PullbackCone.IsLimit.lift_snd h)
  invFun h :=
    PullbackCone.IsLimit.mk _
      (fun s ↦ h.lift (KernelFork.ofι (biprod.lift s.fst s.snd)
          (by simp [s.condition])))
      (fun s ↦ by simpa using h.fac (KernelFork.ofι (biprod.lift s.fst s.snd)
        (by simp [s.condition])) .zero =≫ biprod.fst)
      (fun s ↦ by simpa using h.fac (KernelFork.ofι (biprod.lift s.fst s.snd)
        (by simp [s.condition])) .zero =≫ biprod.snd)
      (fun s m hm₁ hm₂ ↦ by
        apply Fork.IsLimit.hom_ext h
        convert (h.fac (KernelFork.ofι (biprod.lift s.fst s.snd)
          (by simp [s.condition])) .zero).symm
        aesop_cat)
  left_inv _ := Subsingleton.elim _ _
  right_inv _ := Subsingleton.elim _ _

/-- The limit kernel fork attached to a pullback square. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant058d8e3b22924089a36cdd5d750078281455184ae6cb811214a91e030ba0b8b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant058d8e3b22924089a36cdd5d750078281455184ae6cb811214a91e030ba0b8b7.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18bb3541a8c82092bcdf9a8518988e1ff7008144` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
