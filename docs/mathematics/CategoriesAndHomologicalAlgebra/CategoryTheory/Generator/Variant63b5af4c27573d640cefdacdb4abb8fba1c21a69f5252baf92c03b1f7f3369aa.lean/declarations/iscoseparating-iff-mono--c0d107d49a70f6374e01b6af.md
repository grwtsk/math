# isCoseparating_iff_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7d0ec6c2-eeaa-edc4-a483-fd5796ebe6e2",
  "kind": "theorem",
  "lexical_name": "isCoseparating_iff_mono",
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
  "slug": "iscoseparating-iff-mono--c0d107d49a70f6374e01b6af",
  "source": {
    "blob": "514fda0a493b8817781bf2258b55d4d977a84098",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 289,
    "line": 275,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Generator/Variant63b5af4c27573d640cefdacdb4abb8fba1c21a69f5252baf92c03b1f7f3369aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c0d107d49a70f6374e01b6afa3a841c56f339c8dceb17580b0033dab6b3e561f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Generator/Variant63b5af4c27573d640cefdacdb4abb8fba1c21a69f5252baf92c03b1f7f3369aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7d0ec6c2-eeaa-edc4-a483-fd5796ebe6e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 275–289.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isCoseparating_iff_mono (𝒢 : Set C)
    [∀ A : C, HasProduct fun f : ΣG : 𝒢, A ⟶ (G : C) => (f.1 : C)] :
    IsCoseparating 𝒢 ↔ ∀ A : C, Mono (Pi.lift (@Sigma.snd 𝒢 fun G => A ⟶ (G : C))) := by
  refine' ⟨fun h A => ⟨fun u v huv => h _ _ fun G hG f => _⟩, fun h X Y f g hh => _⟩
  · simpa using huv =≫ Pi.π (fun f : ΣG : 𝒢, A ⟶ (G : C) => (f.1 : C)) ⟨⟨G, hG⟩, f⟩
  · haveI := h Y
    refine' (cancel_mono (Pi.lift (@Sigma.snd 𝒢 fun G => Y ⟶ (G : C)))).1 (limit.hom_ext fun j => _)
    simpa using hh j.as.1.1 j.as.1.2 j.as.2
#align category_theory.is_coseparating_iff_mono CategoryTheory.isCoseparating_iff_mono

/-- An ingredient of the proof of the Special Adjoint Functor Theorem: a complete well-powered
    category with a small coseparating set has an initial object.

    In fact, it follows from the Special Adjoint Functor Theorem that `C` is already cocomplete,
    see `hasColimits_of_hasLimits_of_isCoseparating`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Generator/Variant63b5af4c27573d640cefdacdb4abb8fba1c21a69f5252baf92c03b1f7f3369aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Generator/Variant63b5af4c27573d640cefdacdb4abb8fba1c21a69f5252baf92c03b1f7f3369aa.lean#L275).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `514fda0a493b8817781bf2258b55d4d977a84098` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
