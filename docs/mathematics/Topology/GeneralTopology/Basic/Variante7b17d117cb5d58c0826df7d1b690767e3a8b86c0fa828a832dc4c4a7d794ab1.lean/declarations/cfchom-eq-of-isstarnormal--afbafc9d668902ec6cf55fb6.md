# cfcHom_eq_of_isStarNormal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:64ff2cf4-71e2-0fb5-fb66-7524802fe90b",
  "kind": "lemma",
  "lexical_name": "cfcHom_eq_of_isStarNormal",
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
  "slug": "cfchom-eq-of-isstarnormal--afbafc9d668902ec6cf55fb6",
  "source": {
    "blob": "9a232de5f4356748e118239022ae71b016052f5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 183,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variante7b17d117cb5d58c0826df7d1b690767e3a8b86c0fa828a832dc4c4a7d794ab1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:afbafc9d668902ec6cf55fb61d66d8519a01c691981ca4b2252c9b6fdeff6b7e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variante7b17d117cb5d58c0826df7d1b690767e3a8b86c0fa828a832dc4c4a7d794ab1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:64ff2cf4-71e2-0fb5-fb66-7524802fe90b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma cfcHom_eq_of_isStarNormal {A : Type*} [CStarAlgebra A] (a : A) [ha : IsStarNormal a] :
    cfcHom ha = (StarAlgebra.elemental ℂ a).subtype.comp (continuousFunctionalCalculus a) := by
  refine cfcHom_eq_of_continuous_of_map_id ha _ ?_ ?_
  · exact continuous_subtype_val.comp <|
      (StarAlgEquiv.isometry (continuousFunctionalCalculus a)).continuous
  · simp [continuousFunctionalCalculus_map_id a]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variante7b17d117cb5d58c0826df7d1b690767e3a8b86c0fa828a832dc4c4a7d794ab1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variante7b17d117cb5d58c0826df7d1b690767e3a8b86c0fa828a832dc4c4a7d794ab1.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a232de5f4356748e118239022ae71b016052f5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
