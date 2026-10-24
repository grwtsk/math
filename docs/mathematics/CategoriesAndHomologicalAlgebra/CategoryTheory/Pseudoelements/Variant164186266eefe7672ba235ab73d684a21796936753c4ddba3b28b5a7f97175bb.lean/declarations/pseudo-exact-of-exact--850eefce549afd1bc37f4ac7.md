# pseudo_exact_of_exact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b572ba3b-34af-e1ca-5e3d-bd6d027c1f41",
  "kind": "theorem",
  "lexical_name": "pseudo_exact_of_exact",
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
  "slug": "pseudo-exact-of-exact--850eefce549afd1bc37f4ac7",
  "source": {
    "blob": "4290ecf81731b4641c45d60ada187c237791ab9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 354,
    "line": 326,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant164186266eefe7672ba235ab73d684a21796936753c4ddba3b28b5a7f97175bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:850eefce549afd1bc37f4ac766d7e31e0753e967a02dcb99270fbdd011e0e9f5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant164186266eefe7672ba235ab73d684a21796936753c4ddba3b28b5a7f97175bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b572ba3b-34af-e1ca-5e3d-bd6d027c1f41`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 326–354.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pseudo_exact_of_exact {S : ShortComplex C} (hS : S.Exact) :
    ∀ b, S.g b = 0 → ∃ a, S.f a = b :=
  fun b' =>
    Quotient.inductionOn b' fun b hb => by
      have hb' : b.hom ≫ S.g = 0 := (pseudoZero_iff _).1 hb
      -- By exactness, `b` factors through `im f = ker g` via some `c`.
      obtain ⟨c, hc⟩ := KernelFork.IsLimit.lift' hS.isLimitImage _ hb'
      -- We compute the pullback of the map into the image and `c`.
      -- The pseudoelement induced by the first pullback map will be our preimage.
      use pullback.fst (Abelian.factorThruImage S.f) c
      -- It remains to show that the image of this element under `f` is pseudo-equal to `b`.
      apply Quotient.sound
      refine ⟨pullback (Abelian.factorThruImage S.f) c, 𝟙 _,
              pullback.snd _ _, inferInstance, inferInstance, ?_⟩
      -- Now we can verify that the diagram commutes.
      calc
        𝟙 (pullback (Abelian.factorThruImage S.f) c) ≫ pullback.fst _ _ ≫ S.f =
          pullback.fst _ _ ≫ S.f :=
          Category.id_comp _
        _ = pullback.fst _ _ ≫ Abelian.factorThruImage S.f ≫ kernel.ι (cokernel.π S.f) := by
          rw [Abelian.image.fac]
        _ = (pullback.snd _ _ ≫ c) ≫ kernel.ι (cokernel.π S.f) := by
          rw [← Category.assoc, pullback.condition]
        _ = pullback.snd _ _ ≫ b.hom := by
          rw [Category.assoc]
          congr

end

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant164186266eefe7672ba235ab73d684a21796936753c4ddba3b28b5a7f97175bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant164186266eefe7672ba235ab73d684a21796936753c4ddba3b28b5a7f97175bb.lean#L326).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4290ecf81731b4641c45d60ada187c237791ab9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
