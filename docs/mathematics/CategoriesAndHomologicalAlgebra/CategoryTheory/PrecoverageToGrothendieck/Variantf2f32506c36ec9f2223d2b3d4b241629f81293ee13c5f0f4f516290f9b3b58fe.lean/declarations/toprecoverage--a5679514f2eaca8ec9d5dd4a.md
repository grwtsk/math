# toPrecoverage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:712347cfb973ec4dfa6290ccaccd3c45dbc82913b50c518337fbdec4476763aa",
  "kind": "def",
  "lexical_name": "toPrecoverage",
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
  "slug": "toprecoverage--a5679514f2eaca8ec9d5dd4a",
  "source": {
    "blob": "d7c620703432aabc66545fd98cbe3f328827336b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 278,
    "line": 276,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PrecoverageToGrothendieck/Variantf2f32506c36ec9f2223d2b3d4b241629f81293ee13c5f0f4f516290f9b3b58fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a5679514f2eaca8ec9d5dd4a85ea1a1777f5f1c23d00e9b608d373534cc3a7e4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PrecoverageToGrothendieck/Variantf2f32506c36ec9f2223d2b3d4b241629f81293ee13c5f0f4f516290f9b3b58fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:712347cfb973ec4dfa6290ccaccd3c45dbc82913b50c518337fbdec4476763aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 276–278.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toPrecoverage (J : GrothendieckTopology C) : Precoverage C where
  coverings S := { R | Sieve.generate R ∈ J S }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PrecoverageToGrothendieck/Variantf2f32506c36ec9f2223d2b3d4b241629f81293ee13c5f0f4f516290f9b3b58fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PrecoverageToGrothendieck/Variantf2f32506c36ec9f2223d2b3d4b241629f81293ee13c5f0f4f516290f9b3b58fe.lean#L276).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7c620703432aabc66545fd98cbe3f328827336b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
