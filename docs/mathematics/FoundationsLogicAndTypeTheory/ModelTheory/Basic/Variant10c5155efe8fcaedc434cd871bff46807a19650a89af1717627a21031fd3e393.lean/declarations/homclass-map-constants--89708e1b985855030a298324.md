# HomClass.map_constants

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:26e81921-56b6-0e10-ae59-346b87bc1d62",
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
  "slug": "homclass-map-constants--89708e1b985855030a298324",
  "source": {
    "blob": "a6988e18780ea3babae578dffe65260a6442e870",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 288,
    "line": 274,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant10c5155efe8fcaedc434cd871bff46807a19650a89af1717627a21031fd3e393.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:89708e1b985855030a2983247c8553609fe0549460a56a1428bb5779b620e5b3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant10c5155efe8fcaedc434cd871bff46807a19650a89af1717627a21031fd3e393.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:26e81921-56b6-0e10-ae59-346b87bc1d62`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 274–288.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant10c5155efe8fcaedc434cd871bff46807a19650a89af1717627a21031fd3e393.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant10c5155efe8fcaedc434cd871bff46807a19650a89af1717627a21031fd3e393.lean#L274).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6988e18780ea3babae578dffe65260a6442e870` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
