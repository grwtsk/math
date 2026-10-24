# coequalizerColimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cef7d84184c0eaff3cdba80ec517d47ae61018ed72f84481f16d6b31c6d1ebb2",
  "kind": "def",
  "lexical_name": "coequalizerColimit",
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
  "slug": "coequalizercolimit--237616aa9f9e70aa345fe970",
  "source": {
    "blob": "ae5f6933d50835813059f1b3b61dd118236aa49e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 530,
    "line": 519,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Shapes/Variant97f5322671c52472b29adfe7a781be77911d149b359fc6673337167f93e2612b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:237616aa9f9e70aa345fe970c2deb36c3d735df960ff5d409aef233458d62942",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Shapes/Variant97f5322671c52472b29adfe7a781be77911d149b359fc6673337167f93e2612b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cef7d84184c0eaff3cdba80ec517d47ae61018ed72f84481f16d6b31c6d1ebb2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 519–530.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coequalizerColimit : Limits.ColimitCocone (parallelPair f g) where
  cocone :=
    Cofork.ofπ (Function.Coequalizer.mk f g) (funext fun x => Function.Coequalizer.condition f g x)
  isColimit :=
    Cofork.IsColimit.mk _
      (fun s ↦ Function.Coequalizer.desc f g s.π s.condition)
      (fun _ ↦ rfl)
      (fun _ _ hm ↦ funext (fun x ↦ Quot.inductionOn x (congr_fun hm)))

/-- If `π : Y ⟶ Z` is an coequalizer for `(f, g)`, and `U ⊆ Y` such that `f ⁻¹' U = g ⁻¹' U`,
then `π ⁻¹' (π '' U) = U`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Shapes/Variant97f5322671c52472b29adfe7a781be77911d149b359fc6673337167f93e2612b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Shapes/Variant97f5322671c52472b29adfe7a781be77911d149b359fc6673337167f93e2612b.lean#L519).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae5f6933d50835813059f1b3b61dd118236aa49e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
