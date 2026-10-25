# mathlibLabels

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:66e443ccf6a4fe7a83e7419d73b9671fda110e5557a34422d5b6f07dd456e617",
  "kind": "def",
  "lexical_name": "mathlibLabels",
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
  "slug": "mathliblabels--059ab05d18a92012a94da52e",
  "source": {
    "blob": "330bea7382d1db0b2a29460b16fccf0ac01eaf92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 92,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Autolabel/Variantac4ad72c3b3aa25cc4d971db77d92546c56ba1c795680ff8a08c35c1b992ca51.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:059ab05d18a92012a94da52ee793bd2ede6b122bbbc6bd3e5b7c4be83f7282a8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Autolabel/Variantac4ad72c3b3aa25cc4d971db77d92546c56ba1c795680ff8a08c35c1b992ca51.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:66e443ccf6a4fe7a83e7419d73b9671fda110e5557a34422d5b6f07dd456e617`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mathlibLabels : Array Label := #[
  .«t-algebra», .«t-algebraic-geometry», .«t-algebraic-topology», .«t-analysis»,
  .«t-category-theory», .«t-combinatorics», .«t-computability», .«t-condensed»,
  .«t-convex-geometry», .«t-data», .«t-differential-geometry», .«t-dynamics»,
  .«t-euclidean-geometry», .«t-geometric-group-theory», .«t-group-theory», .«t-linter»,
  .«t-logic», .«t-measure-probability», .«t-meta», .«t-number-theory», .«t-order»,
  .«t-ring-theory», .«t-set-theory», .«t-topology», .«CI», .«dependency-bump», .«IMO»
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Autolabel/Variantac4ad72c3b3aa25cc4d971db77d92546c56ba1c795680ff8a08c35c1b992ca51.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Autolabel/Variantac4ad72c3b3aa25cc4d971db77d92546c56ba1c795680ff8a08c35c1b992ca51.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `330bea7382d1db0b2a29460b16fccf0ac01eaf92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
