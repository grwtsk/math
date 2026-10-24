# pullback_of_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c776bc31-57a5-c5d5-ca85-79baf62d03f6",
  "kind": "lemma",
  "lexical_name": "pullback_of_mono",
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
  "slug": "pullback-of-mono--4f0a1a5e92226ed4537071ef",
  "source": {
    "blob": "9649821611028ba2dd9fd96c8d6c2931bf971966",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 42,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantdca7a36c0d6559b65ec92e627164fa689186dec36e63373e7cde5f18bc430fdc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f0a1a5e92226ed4537071efec4b142c09fb584117ef048cc66e8bc4776497f9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantdca7a36c0d6559b65ec92e627164fa689186dec36e63373e7cde5f18bc430fdc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c776bc31-57a5-c5d5-ca85-79baf62d03f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pullback_of_mono {X Y Z : C} (a : X ⟶ Z) (b : Y ⟶ Z) [Mono a] [Mono b] :
    HasLimit (cospan a b) :=
  let ⟨P, f, haf, i⟩ := normalMonoOfMono a
  let ⟨Q, g, hbg, i'⟩ := normalMonoOfMono b
  let ⟨a', ha'⟩ :=
    KernelFork.IsLimit.lift' i (kernel.ι (prod.lift f g)) <|
      calc kernel.ι (prod.lift f g) ≫ f
        _ = kernel.ι (prod.lift f g) ≫ prod.lift f g ≫ Limits.prod.fst := by rw [prod.lift_fst]
        _ = (0 : kernel (prod.lift f g) ⟶ P ⨯ Q) ≫ Limits.prod.fst := by rw [kernel.condition_assoc]
        _ = 0 := zero_comp
  let ⟨b', hb'⟩ :=
    KernelFork.IsLimit.lift' i' (kernel.ι (prod.lift f g)) <|
      calc kernel.ι (prod.lift f g) ≫ g
        _ = kernel.ι (prod.lift f g) ≫ prod.lift f g ≫ Limits.prod.snd := by rw [prod.lift_snd]
        _ = (0 : kernel (prod.lift f g) ⟶ P ⨯ Q) ≫ Limits.prod.snd := by rw [kernel.condition_assoc]
        _ = 0 := zero_comp
  HasLimit.mk
    { cone :=
        PullbackCone.mk a' b' <| by rw [dsimp% ha', dsimp% hb']
      isLimit :=
        PullbackCone.IsLimit.mk _
          (fun s =>
            kernel.lift (prod.lift f g) (PullbackCone.snd s ≫ b) <|
              Limits.prod.hom_ext
                (calc
                  ((PullbackCone.snd s ≫ b) ≫ prod.lift f g) ≫ Limits.prod.fst =
                      PullbackCone.snd s ≫ b ≫ f := by simp only [prod.lift_fst, Category.assoc]
                  _ = PullbackCone.fst s ≫ a ≫ f := by rw [PullbackCone.condition_assoc]
                  _ = PullbackCone.fst s ≫ 0 := by rw [haf]
                  _ = 0 ≫ Limits.prod.fst := by rw [comp_zero, zero_comp])
                (calc
                  ((PullbackCone.snd s ≫ b) ≫ prod.lift f g) ≫ Limits.prod.snd =
                      PullbackCone.snd s ≫ b ≫ g := by
                    simp only [prod.lift_snd, Category.assoc]
                  _ = PullbackCone.snd s ≫ 0 := by rw [hbg]
                  _ = 0 ≫ Limits.prod.snd := by rw [comp_zero, zero_comp]))
          (fun s =>
            (cancel_mono a).1 <| by
              rw [KernelFork.ι_ofι] at ha'
              simp [ha', PullbackCone.condition s])
          (fun s =>
            (cancel_mono b).1 <| by
              rw [KernelFork.ι_ofι] at hb'
              simp [hb'])
          fun s m h₁ _ =>
          (cancel_mono (kernel.ι (prod.lift f g))).1 <|
            calc
              m ≫ kernel.ι (prod.lift f g) = m ≫ a' ≫ a := by
                congr
                exact ha'.symm
              _ = PullbackCone.fst s ≫ a := by rw [← Category.assoc, h₁]
              _ = PullbackCone.snd s ≫ b := PullbackCone.condition s
              _ =
                  kernel.lift (prod.lift f g) (PullbackCone.snd s ≫ b) _ ≫
                    kernel.ι (prod.lift f g) := by rw [kernel.lift_ι]
               }

section

attribute [local instance] pullback_of_mono

/-- The pullback of `(𝟙 X, f)` and `(𝟙 X, g)` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantdca7a36c0d6559b65ec92e627164fa689186dec36e63373e7cde5f18bc430fdc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantdca7a36c0d6559b65ec92e627164fa689186dec36e63373e7cde5f18bc430fdc.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9649821611028ba2dd9fd96c8d6c2931bf971966` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
