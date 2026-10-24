# EssFiniteType.subalgebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8a4f8c13372826fa7a791868ca4e1f01e5129d150849c6d2b335e75ab4e4c2ec",
  "kind": "abbrev",
  "lexical_name": "EssFiniteType.subalgebra",
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
  "slug": "essfinitetype-subalgebra--3bf9feca69cc959e3918ad56",
  "source": {
    "blob": "b483b3fab0610ec8b4bd6d862a52b9d94dd94652",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 53,
    "path": "GRWTSK/Algebra/EssentialFiniteness/Variant78463e73fc4b39a2b5074a46b379ca54f9a21b3e5176dcf080d2f8c7a8dc02df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3bf9feca69cc959e3918ad56d21a7647bca5ca7d56398b5d36c4837a8f109120",
  "verification": {
    "reference": "docs/verification/Algebra/EssentialFiniteness/Variant78463e73fc4b39a2b5074a46b379ca54f9a21b3e5176dcf080d2f8c7a8dc02df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8a4f8c13372826fa7a791868ca4e1f01e5129d150849c6d2b335e75ab4e4c2ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev EssFiniteType.subalgebra [EssFiniteType R S] : Subalgebra R S :=
  Algebra.adjoin R (finset R S : Set S)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/EssentialFiniteness/Variant78463e73fc4b39a2b5074a46b379ca54f9a21b3e5176dcf080d2f8c7a8dc02df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/EssentialFiniteness/Variant78463e73fc4b39a2b5074a46b379ca54f9a21b3e5176dcf080d2f8c7a8dc02df.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b483b3fab0610ec8b4bd6d862a52b9d94dd94652` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
