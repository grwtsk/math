# HomClass.map_constants

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0f885549835f714a60c7b4794235bc68bfebe561",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 266,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/34/34cfefd88fa1f51e7ae15d0f3d50a758e9d5910a37a4396a1a13fd4dcb6b624d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ed181737-aa56-550e-3f42-c4b22bbfae06",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9b7afbe4-4644-d502-2c3d-4d3d6849e55c",
  "kind": "theorem",
  "lexical_name": "HomClass.map_constants",
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
  "slug": "homclass-map-constants--29640e969ae808cfa259512e",
  "source": {
    "blob": "0f885549835f714a60c7b4794235bc68bfebe561",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 280,
    "line": 266,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant34cfefd88fa1f51e7ae15d0f3d50a758e9d5910a37a4396a1a13fd4dcb6b624d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:29640e969ae808cfa259512e26c48684f3c9f98f44834a0d03a1c52786779cb9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant34cfefd88fa1f51e7ae15d0f3d50a758e9d5910a37a4396a1a13fd4dcb6b624d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b7afbe4-4644-d502-2c3d-4d3d6849e55c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 266–280.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HomClass.map_constants {F M N} [L.Structure M] [L.Structure N] [FunLike F M N]
    [HomClass L F M N] (φ : F) (c : L.Constants) : φ c = c :=
  (HomClass.map_fun φ c default).trans (congr rfl (funext default))

attribute [inherit_doc FirstOrder.Language.Hom.map_fun'] FirstOrder.Language.Embedding.map_fun'
  FirstOrder.Language.HomClass.map_fun FirstOrder.Language.StrongHomClass.map_fun
  FirstOrder.Language.Equiv.map_fun'

attribute [inherit_doc FirstOrder.Language.Hom.map_rel'] FirstOrder.Language.Embedding.map_rel'
  FirstOrder.Language.HomClass.map_rel FirstOrder.Language.StrongHomClass.map_rel
  FirstOrder.Language.Equiv.map_rel'

namespace Hom

@[macro_inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant34cfefd88fa1f51e7ae15d0f3d50a758e9d5910a37a4396a1a13fd4dcb6b624d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant34cfefd88fa1f51e7ae15d0f3d50a758e9d5910a37a4396a1a13fd4dcb6b624d.lean#L266).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f885549835f714a60c7b4794235bc68bfebe561` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
