# hasColimitsEssentiallySmallSite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:86024237e4602da995018466b06cb6a2ed44c6ac026d344ba1d8132705b510c0",
  "kind": "instance",
  "lexical_name": "hasColimitsEssentiallySmallSite",
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
  "slug": "hascolimitsessentiallysmallsite--7962bd6c4114bf1a3817cfa0",
  "source": {
    "blob": "73e56a6bd446a5fec4ef004b7f6b786a9a734123",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 245,
    "line": 228,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant5fddd3c546e6cd03da8c26c48577d9b8849296a41e9626c7f2af6b15c3f01d0b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7962bd6c4114bf1a3817cfa00a3a67f4894f3bfb4b45e0d7094d77a7a9ae3a31",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant5fddd3c546e6cd03da8c26c48577d9b8849296a41e9626c7f2af6b15c3f01d0b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:86024237e4602da995018466b06cb6a2ed44c6ac026d344ba1d8132705b510c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–245.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance hasColimitsEssentiallySmallSite
    [HasColimits <| Sheaf ((equivSmallModel C).inverse.inducedTopology J) A] :
    HasColimitsOfSize.{max v₃ w, max v₃ w} <| Sheaf J A :=
  Adjunction.has_colimits_of_equivalence ((equivSmallModel C).sheafCongr J
    ((equivSmallModel C).inverse.inducedTopology J) A).functor

end

namespace GrothendieckTopology

variable {A}
variable [G.IsCoverDense J] [G.Full]

section
variable [Functor.IsContinuous G K J] [(G.sheafPushforwardContinuous A K J).EssSurj]

open Localization

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant5fddd3c546e6cd03da8c26c48577d9b8849296a41e9626c7f2af6b15c3f01d0b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant5fddd3c546e6cd03da8c26c48577d9b8849296a41e9626c7f2af6b15c3f01d0b.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73e56a6bd446a5fec4ef004b7f6b786a9a734123` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
