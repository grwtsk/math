# homology_exact₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ae371146-1f33-40ba-5d28-78aa078abe0a",
  "kind": "lemma",
  "lexical_name": "homology_exact₂",
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
  "slug": "homology-exact--249941b30fbbbd0dd6100394",
  "source": {
    "blob": "93426cb64c1e46fa454e7b7c030b6de2da429e93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 325,
    "line": 311,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequence/Variant1b726eac36f7f343e3072c114011580fe03d8f573a371466c2346a1ab795a07f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:249941b30fbbbd0dd6100394a0bfad463f7d76bd4bcdf7454ed0de9284c5b2de",
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

Occurrence: `result:ae371146-1f33-40ba-5d28-78aa078abe0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 311–325.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma homology_exact₂ : (ShortComplex.mk (HomologicalComplex.homologyMap S.f i)
    (HomologicalComplex.homologyMap S.g i) (by rw [← HomologicalComplex.homologyMap_comp,
      S.zero, HomologicalComplex.homologyMap_zero])).Exact := by
  by_cases h : c.Rel i (c.next i)
  · exact (snakeInput hS i _ h).L₀_exact
  · have := hS.epi_g
    have : ∀ (K : HomologicalComplex C c), IsIso (K.homologyι i) :=
      fun K => ShortComplex.isIso_homologyι (K.sc i) (K.shape _ _ h)
    have e : S.map (HomologicalComplex.homologyFunctor C c i) ≅
        S.map (HomologicalComplex.opcyclesFunctor C c i) :=
      ShortComplex.isoMk (asIso (S.X₁.homologyι i))
        (asIso (S.X₂.homologyι i)) (asIso (S.X₃.homologyι i)) (by simp) (by simp)
    exact ShortComplex.exact_of_iso e.symm (opcycles_right_exact S hS.exact i)

/-- Exactness of `S.X₂.homology i ⟶ S.X₃.homology i ⟶ S.X₁.homology j`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequence/Variant1b726eac36f7f343e3072c114011580fe03d8f573a371466c2346a1ab795a07f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequence/Variant1b726eac36f7f343e3072c114011580fe03d8f573a371466c2346a1ab795a07f.lean#L311).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93426cb64c1e46fa454e7b7c030b6de2da429e93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
