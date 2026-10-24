# SheafSpectrumOperator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:120a1e8d1069cc952d2cd0b8f5e3216b75ff189a0921f16fee0b4a332a05bdbe",
  "kind": "structure",
  "lexical_name": "SheafSpectrumOperator",
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
  "slug": "sheafspectrumoperator--35372651014669b97b6e2726",
  "source": {
    "blob": "2113d22ae46ed85d35c4aeb1f6105313d64f61d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 37,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafSpectrumOperator/Variant933e661f785c211871c239166d788101cf7eb7015d1b3bc27d65a1685dfe417e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:35372651014669b97b6e272607ac037dbe9a3e026db0c2e7a31e3e956926ffb6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafSpectrumOperator/Variant933e661f785c211871c239166d788101cf7eb7015d1b3bc27d65a1685dfe417e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:120a1e8d1069cc952d2cd0b8f5e3216b75ff189a0921f16fee0b4a332a05bdbe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SheafSpectrumOperator
    {C : SiteCategory}
    {J : GrothendieckTopology C}
    (F : SheafOfSpectra J) where
  sourceObj : C.Obj
  targetObj : C.Obj
  sourceSpectrum : SpectrumObject := F.presheaf.obj sourceObj
  targetSpectrum : SpectrumObject := F.presheaf.obj targetObj
  morphism : SpectrumMorphism sourceSpectrum targetSpectrum
  fredholmAnalogue : Prop
  fredholmAnalogue_certified : fredholmAnalogue
  diracType : Prop
  diracType_certified : diracType
  label : String

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafSpectrumOperator/Variant933e661f785c211871c239166d788101cf7eb7015d1b3bc27d65a1685dfe417e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafSpectrumOperator/Variant933e661f785c211871c239166d788101cf7eb7015d1b3bc27d65a1685dfe417e.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2113d22ae46ed85d35c4aeb1f6105313d64f61d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
