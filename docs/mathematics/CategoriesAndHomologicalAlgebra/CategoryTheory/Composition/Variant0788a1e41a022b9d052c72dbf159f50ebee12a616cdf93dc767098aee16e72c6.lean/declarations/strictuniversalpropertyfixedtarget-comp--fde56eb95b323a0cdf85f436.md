# StrictUniversalPropertyFixedTarget.comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d3ee0e6e70ccdcc674027a4840edb9f701db7a0e93c5a003e3c2605e647839e6",
  "kind": "def",
  "lexical_name": "StrictUniversalPropertyFixedTarget.comp",
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
  "slug": "strictuniversalpropertyfixedtarget-comp--fde56eb95b323a0cdf85f436",
  "source": {
    "blob": "288b67a8cc01768d72ed95ffed0b4f50bb9043a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 43,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Composition/Variant0788a1e41a022b9d052c72dbf159f50ebee12a616cdf93dc767098aee16e72c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fde56eb95b323a0cdf85f436b8b9601d39fabc81358b22e33f10647658ed5e03",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Composition/Variant0788a1e41a022b9d052c72dbf159f50ebee12a616cdf93dc767098aee16e72c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d3ee0e6e70ccdcc674027a4840edb9f701db7a0e93c5a003e3c2605e647839e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def StrictUniversalPropertyFixedTarget.comp
    (h₁ : StrictUniversalPropertyFixedTarget L₁ W₁ E)
    (h₂ : StrictUniversalPropertyFixedTarget L₂ W₂ E)
    (W₃ : MorphismProperty C₁) (hW₃ : W₃.IsInvertedBy (L₁ ⋙ L₂))
    (hW₁₃ : W₁ ≤ W₃) (hW₂₃ : W₂ ≤ W₃.map L₁) :
    StrictUniversalPropertyFixedTarget (L₁ ⋙ L₂) W₃ E where
  inverts := hW₃
  lift F hF := h₂.lift (h₁.lift F (MorphismProperty.IsInvertedBy.of_le _ _  F hF hW₁₃)) (by
    refine MorphismProperty.IsInvertedBy.of_le _ _ _ ?_ hW₂₃
    simpa only [MorphismProperty.IsInvertedBy.map_iff, h₁.fac F] using hF)
  fac F hF := by rw [Functor.assoc, h₂.fac, h₁.fac]
  uniq _ _ h := h₂.uniq _ _ (h₁.uniq _ _ (by simpa only [Functor.assoc] using h))

end Localization

open Localization

namespace Functor

namespace IsLocalization

variable (L₁ W₁ L₂ W₂)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Composition/Variant0788a1e41a022b9d052c72dbf159f50ebee12a616cdf93dc767098aee16e72c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Composition/Variant0788a1e41a022b9d052c72dbf159f50ebee12a616cdf93dc767098aee16e72c6.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `288b67a8cc01768d72ed95ffed0b4f50bb9043a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
