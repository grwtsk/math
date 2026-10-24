# ext_to

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ca7c8de1-1fde-1915-f5c1-089cf5b6685f",
  "kind": "lemma",
  "lexical_name": "ext_to",
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
  "slug": "ext-to--d18aa8c04db3ce1ab2fc96b2",
  "source": {
    "blob": "43ec787b1163378f40577e42768b40d6516ee645",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 157,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/MappingCone/Variantb00dab5e66186d03cd2cacdafabb8365ac90bed40b3f7d95cce5761d6e2859b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d18aa8c04db3ce1ab2fc96b2898046447d17d3926bf4a602f4e7057b5f901c60",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/MappingCone/Variantb00dab5e66186d03cd2cacdafabb8365ac90bed40b3f7d95cce5761d6e2859b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca7c8de1-1fde-1915-f5c1-089cf5b6685f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ext_to (i j : ℤ) (hij : i + 1 = j) {A : C} {f g : A ⟶ (mappingCone φ).X i}
    (h₁ : f ≫ (fst φ).1.v i j hij = g ≫ (fst φ).1.v i j hij)
    (h₂ : f ≫ (snd φ).v i i (add_zero i) = g ≫ (snd φ).v i i (add_zero i)) :
    f = g :=
  homotopyCofiber.ext_to_X φ i j hij h₁ (by simpa [snd] using h₂)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/MappingCone/Variantb00dab5e66186d03cd2cacdafabb8365ac90bed40b3f7d95cce5761d6e2859b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/MappingCone/Variantb00dab5e66186d03cd2cacdafabb8365ac90bed40b3f7d95cce5761d6e2859b2.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43ec787b1163378f40577e42768b40d6516ee645` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
