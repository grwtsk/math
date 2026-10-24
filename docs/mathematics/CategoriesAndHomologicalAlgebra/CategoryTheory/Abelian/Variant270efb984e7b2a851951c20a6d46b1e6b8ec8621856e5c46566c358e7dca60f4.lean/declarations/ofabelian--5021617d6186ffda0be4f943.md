# ofAbelian

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3c30d0f668321f9baadd1b4f728ed1ab35b9f876a2c4e030cdc1953f7bc529ed",
  "kind": "def",
  "lexical_name": "ofAbelian",
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
  "slug": "ofabelian--5021617d6186ffda0be4f943",
  "source": {
    "blob": "806aabbe9134045e19b6d0ffcc34c1ba4e540385",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 74,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant270efb984e7b2a851951c20a6d46b1e6b8ec8621856e5c46566c358e7dca60f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5021617d6186ffda0be4f9431d6d0ee5ae11fee57310e499bd6f5ee0345928dc",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant270efb984e7b2a851951c20a6d46b1e6b8ec8621856e5c46566c358e7dca60f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3c30d0f668321f9baadd1b4f728ed1ab35b9f876a2c4e030cdc1953f7bc529ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def ofAbelian : S.LeftHomologyData := by
  let γ := kernel.ι S.g ≫ cokernel.π S.f
  let f' := kernel.lift S.g S.f S.zero
  have hf' : f' = kernel.lift γ f' (by simp [γ, f']) ≫ kernel.ι γ := by rw [kernel.lift_ι]
  have wπ : f' ≫ cokernel.π (kernel.ι γ) = 0 := by
    rw [hf']
    simp only [assoc, cokernel.condition, comp_zero]
  let e : Abelian.image S.f ≅ kernel γ :=
    IsLimit.conePointUniqueUpToIso S.abelianImageToKernelIsKernel (limit.isLimit _)
  have he : e.hom ≫ kernel.ι γ = S.abelianImageToKernel :=
    IsLimit.conePointUniqueUpToIso_hom_comp _ _ WalkingParallelPair.zero
  have fac : f' = Abelian.factorThruImage S.f ≫ e.hom ≫ kernel.ι γ := by
    rw [hf', he]
    simp only [γ, f', kernel.lift_ι, abelianImageToKernel, ← cancel_mono (kernel.ι S.g),
      assoc]
  have hπ : IsColimit (CokernelCofork.ofπ _ wπ) :=
    CokernelCofork.IsColimit.ofπ _ _
    (fun x hx => cokernel.desc _ x (by
      simpa only [← cancel_epi e.hom, ← cancel_epi (Abelian.factorThruImage S.f),
        comp_zero, fac, assoc] using hx))
    (fun x hx => cokernel.π_desc _ _ _)
    (fun x hx b hb => coequalizer.hom_ext (by simp only [hb, cokernel.π_desc]))
  exact
    { K := kernel S.g,
      H := Abelian.coimage (kernel.ι S.g ≫ cokernel.π S.f)
      i := kernel.ι _,
      π := cokernel.π _
      wi := kernel.condition _
      hi := kernelIsKernel _
      wπ := wπ
      hπ := hπ }

end LeftHomologyData

/-- The canonical morphism `cokernel S.f ⟶ Abelian.coimage S.g` for a short complex `S`
in an abelian category. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant270efb984e7b2a851951c20a6d46b1e6b8ec8621856e5c46566c358e7dca60f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant270efb984e7b2a851951c20a6d46b1e6b8ec8621856e5c46566c358e7dca60f4.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `806aabbe9134045e19b6d0ffcc34c1ba4e540385` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
