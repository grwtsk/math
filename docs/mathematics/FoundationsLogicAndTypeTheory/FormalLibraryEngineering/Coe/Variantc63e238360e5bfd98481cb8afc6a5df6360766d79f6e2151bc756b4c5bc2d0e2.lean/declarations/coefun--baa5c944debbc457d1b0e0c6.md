# CoeFun

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9bc3387813ed83ed7324a556385f8c3fe87e630a245b866651f8f66ba0bb4d17",
  "kind": "class",
  "lexical_name": "CoeFun",
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
  "slug": "coefun--baa5c944debbc457d1b0e0c6",
  "source": {
    "blob": "3284774273cdffc16d027339cc782606235bf993",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 273,
    "line": 267,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coe/Variantc63e238360e5bfd98481cb8afc6a5df6360766d79f6e2151bc756b4c5bc2d0e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:baa5c944debbc457d1b0e0c69b918c829ccdd9bf3d2ec0605105b68d7f655278",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coe/Variantc63e238360e5bfd98481cb8afc6a5df6360766d79f6e2151bc756b4c5bc2d0e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9bc3387813ed83ed7324a556385f8c3fe87e630a245b866651f8f66ba0bb4d17`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 267–273.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class CoeFun (α : Sort u) (γ : outParam (α → Sort v)) where
  /-- Coerces a value `f : α` to type `γ f`, which should be either be a
  function type or another `CoeFun` type, in order to resolve a mistyped
  application `f x`. -/
  coe : (f : α) → γ f
attribute [coe_decl] CoeFun.coe

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coe/Variantc63e238360e5bfd98481cb8afc6a5df6360766d79f6e2151bc756b4c5bc2d0e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coe/Variantc63e238360e5bfd98481cb8afc6a5df6360766d79f6e2151bc756b4c5bc2d0e2.lean#L267).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3284774273cdffc16d027339cc782606235bf993` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
