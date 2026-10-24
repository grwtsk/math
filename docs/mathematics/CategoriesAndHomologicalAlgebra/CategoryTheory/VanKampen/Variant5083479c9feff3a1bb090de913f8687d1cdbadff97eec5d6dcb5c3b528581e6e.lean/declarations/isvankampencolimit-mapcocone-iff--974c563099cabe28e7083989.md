# IsVanKampenColimit.mapCocone_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:169d97e0-5548-eac3-00ba-fc19c83a9c1a",
  "kind": "theorem",
  "lexical_name": "IsVanKampenColimit.mapCocone_iff",
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
  "slug": "isvankampencolimit-mapcocone-iff--974c563099cabe28e7083989",
  "source": {
    "blob": "84c446cc78642d32e394722750dfdfa6594c127b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 217,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant5083479c9feff3a1bb090de913f8687d1cdbadff97eec5d6dcb5c3b528581e6e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:974c563099cabe28e708398904a5b39818aa884f735d7a6611f81f665ac38a53",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant5083479c9feff3a1bb090de913f8687d1cdbadff97eec5d6dcb5c3b528581e6e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:169d97e0-5548-eac3-00ba-fc19c83a9c1a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsVanKampenColimit.mapCocone_iff (G : C ⥤ D) {F : J ⥤ C} {c : Cocone F}
    [G.IsEquivalence] : IsVanKampenColimit (G.mapCocone c) ↔ IsVanKampenColimit c :=
  ⟨IsVanKampenColimit.of_mapCocone G, fun hc ↦ by
    let e : F ⋙ G ⋙ Functor.inv G ≅ F := NatIso.hcomp (Iso.refl F) G.asEquivalence.unitIso.symm
    apply IsVanKampenColimit.of_mapCocone G.inv
    apply (IsVanKampenColimit.precompose_isIso_iff e.inv).mp
    exact hc.of_iso (Cocones.ext (G.asEquivalence.unitIso.app c.pt) (fun j => (by simp [e])))⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant5083479c9feff3a1bb090de913f8687d1cdbadff97eec5d6dcb5c3b528581e6e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant5083479c9feff3a1bb090de913f8687d1cdbadff97eec5d6dcb5c3b528581e6e.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84c446cc78642d32e394722750dfdfa6594c127b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
