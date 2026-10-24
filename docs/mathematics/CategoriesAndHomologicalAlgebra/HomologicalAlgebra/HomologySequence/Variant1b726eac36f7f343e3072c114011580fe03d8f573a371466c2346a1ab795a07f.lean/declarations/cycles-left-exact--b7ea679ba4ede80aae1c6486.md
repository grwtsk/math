# cycles_left_exact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2b2e3a5f-b763-692b-b9e3-519245f4c4ec",
  "kind": "lemma",
  "lexical_name": "cycles_left_exact",
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
  "slug": "cycles-left-exact--b7ea679ba4ede80aae1c6486",
  "source": {
    "blob": "93426cb64c1e46fa454e7b7c030b6de2da429e93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 212,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequence/Variant1b726eac36f7f343e3072c114011580fe03d8f573a371466c2346a1ab795a07f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b7ea679ba4ede80aae1c648672bf238bde260d724435826ec967586ab855c941",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequence/Variant1b726eac36f7f343e3072c114011580fe03d8f573a371466c2346a1ab795a07f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b2e3a5f-b763-692b-b9e3-519245f4c4ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma cycles_left_exact (S : ShortComplex (HomologicalComplex C c)) (hS : S.Exact) [Mono S.f]
    (i : ι) [S.X₁.HasHomology i] [S.X₂.HasHomology i] [S.X₃.HasHomology i] :
    (ShortComplex.mk (cyclesMap S.f i) (cyclesMap S.g i)
      (by rw [← cyclesMap_comp, S.zero, cyclesMap_zero])).Exact := by
  have : Mono (ShortComplex.map S (eval C c i)).f := by dsimp; infer_instance
  have hi := (hS.map (HomologicalComplex.eval C c i)).fIsKernel
  apply ShortComplex.exact_of_f_is_kernel
  exact KernelFork.IsLimit.ofι' _ _ (fun {A} k hk => by
    dsimp at k hk ⊢
    have H := KernelFork.IsLimit.lift' hi (k ≫ S.X₂.iCycles i) (by
      dsimp
      rw [assoc, ← cyclesMap_i, reassoc_of% hk, zero_comp])
    dsimp at H
    refine ⟨S.X₁.liftCycles H.1 _ rfl ?_, ?_⟩
    · rw [← cancel_mono (S.f.f _), assoc, zero_comp, ← Hom.comm, reassoc_of% H.2,
        iCycles_d, comp_zero]
    · rw [← cancel_mono (S.X₂.iCycles i), liftCycles_comp_cyclesMap, liftCycles_i, H.2])

variable {S : ShortComplex (HomologicalComplex C c)}
  (hS : S.ShortExact) (i j : ι) (hij : c.Rel i j)

namespace HomologySequence

/-- Given a short exact short complex `S : HomologicalComplex C c`, and degrees `i` and `j`
such that `c.Rel i j`, this is the snake diagram whose four lines are respectively
obtained by applying the functors `homologyFunctor C c i`, `opcyclesFunctor C c i`,
`cyclesFunctor C c j`, `homologyFunctor C c j` to `S`. Applying the snake lemma to this
gives the homology sequence of `S`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequence/Variant1b726eac36f7f343e3072c114011580fe03d8f573a371466c2346a1ab795a07f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequence/Variant1b726eac36f7f343e3072c114011580fe03d8f573a371466c2346a1ab795a07f.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93426cb64c1e46fa454e7b7c030b6de2da429e93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
