# epi_iff_surjective_on_stonean

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2a2a992d-4d88-a940-4334-a7f898fd9068",
  "kind": "lemma",
  "lexical_name": "epi_iff_surjective_on_stonean",
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
  "slug": "epi-iff-surjective-on-stonean--2abfd684ada633f5fc99d5b0",
  "source": {
    "blob": "8560f1131ded5cdad872f101f8e3f80a551f894d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 66,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Epi/Variant53183856a13589c150e838d17dca0e7b11d7b4e87d3c76d7683c5d1915fe0a60.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2abfd684ada633f5fc99d5b0be2a9063880963a17451eea2d6e8bec1a7c8b721",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Epi/Variant53183856a13589c150e838d17dca0e7b11d7b4e87d3c76d7683c5d1915fe0a60.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a2a992d-4d88-a940-4334-a7f898fd9068`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma epi_iff_surjective_on_stonean : Epi f ↔
    ∀ (S : Stonean), Function.Surjective (f.hom.app (op S.compHaus)) := by
  rw [← (StoneanCompHaus.equivalence A).inverse.epi_map_iff_epi,
    ← Presheaf.coherentExtensiveEquivalence.functor.epi_map_iff_epi,
    ← isLocallySurjective_iff_epi']
  exact extensiveTopology.isLocallySurjective_iff (D := A) _

end Condensed

namespace CondensedSet

variable {X Y : CondensedSet.{u}} (f : X ⟶ Y)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Epi/Variant53183856a13589c150e838d17dca0e7b11d7b4e87d3c76d7683c5d1915fe0a60.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Epi/Variant53183856a13589c150e838d17dca0e7b11d7b4e87d3c76d7683c5d1915fe0a60.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8560f1131ded5cdad872f101f8e3f80a551f894d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
