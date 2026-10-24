# ModuleCat.eq_range_of_pseudoequal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b641b662-56c1-51f2-a1a0-8b8f1800db13",
  "kind": "theorem",
  "lexical_name": "ModuleCat.eq_range_of_pseudoequal",
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
  "slug": "modulecat-eq-range-of-pseudoequal--9ac217cb7aaa4a9119c8e32d",
  "source": {
    "blob": "4290ecf81731b4641c45d60ada187c237791ab9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 459,
    "line": 438,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant164186266eefe7672ba235ab73d684a21796936753c4ddba3b28b5a7f97175bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ac217cb7aaa4a9119c8e32d2061cb543bd2d916ac77f15403797dd5416567fe",
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

Occurrence: `result:b641b662-56c1-51f2-a1a0-8b8f1800db13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 438–459.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ModuleCat.eq_range_of_pseudoequal {R : Type*} [Ring R] {G : ModuleCat R} {x y : Over G}
    (h : PseudoEqual G x y) : LinearMap.range x.hom.hom = LinearMap.range y.hom.hom := by
  obtain ⟨P, p, q, hp, hq, H⟩ := h
  refine Submodule.ext fun a => ⟨fun ha => ?_, fun ha => ?_⟩
  · obtain ⟨a', ha'⟩ := ha
    obtain ⟨a'', ha''⟩ := (ModuleCat.epi_iff_surjective p).1 hp a'
    refine ⟨q a'', ?_⟩
    dsimp at ha' ⊢
    rw [← LinearMap.comp_apply, ← ModuleCat.hom_comp, ← H,
      ModuleCat.hom_comp, LinearMap.comp_apply, ha'', ha']
  · obtain ⟨a', ha'⟩ := ha
    obtain ⟨a'', ha''⟩ := (ModuleCat.epi_iff_surjective q).1 hq a'
    refine ⟨p a'', ?_⟩
    dsimp at ha' ⊢
    rw [← LinearMap.comp_apply, ← ModuleCat.hom_comp, H, ModuleCat.hom_comp, LinearMap.comp_apply,
      ha'', ha']

end Module

end Pseudoelement

end CategoryTheory.Abelian
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant164186266eefe7672ba235ab73d684a21796936753c4ddba3b28b5a7f97175bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant164186266eefe7672ba235ab73d684a21796936753c4ddba3b28b5a7f97175bb.lean#L438).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4290ecf81731b4641c45d60ada187c237791ab9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
