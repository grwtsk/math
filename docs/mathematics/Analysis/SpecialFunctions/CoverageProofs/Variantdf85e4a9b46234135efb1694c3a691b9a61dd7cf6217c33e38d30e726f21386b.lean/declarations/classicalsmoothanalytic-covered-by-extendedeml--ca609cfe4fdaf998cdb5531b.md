# classicalSmoothAnalytic_covered_by_extendedEML

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1ca3954f-8e05-09f6-6bff-46129cefc6d8",
  "kind": "theorem",
  "lexical_name": "classicalSmoothAnalytic_covered_by_extendedEML",
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
  "slug": "classicalsmoothanalytic-covered-by-extendedeml--ca609cfe4fdaf998cdb5531b",
  "source": {
    "blob": "df950505fb8f57e73e1b0da7a4a337631258c420",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 20,
    "line": 13,
    "path": "GRWTSK/Analysis/SpecialFunctions/CoverageProofs/Variantdf85e4a9b46234135efb1694c3a691b9a61dd7cf6217c33e38d30e726f21386b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca609cfe4fdaf998cdb5531b2ced98f6084e2f3ca401ca425721d34c23c93b19",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/CoverageProofs/Variantdf85e4a9b46234135efb1694c3a691b9a61dd7cf6217c33e38d30e726f21386b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1ca3954f-8e05-09f6-6bff-46129cefc6d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 13–20.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem classicalSmoothAnalytic_covered_by_extendedEML :
    ∀ f : ClassicalSmoothAnalyticFunction,
      CoveredByExtendedEMLAt Gamma.classical
        (DeclaredSurfaceObject.classical f) := by
  intro f
  exact coveredClassical Gamma.classical f
    (LogicalFoundation.foundation_refl LogicalFoundation.classical)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/CoverageProofs/Variantdf85e4a9b46234135efb1694c3a691b9a61dd7cf6217c33e38d30e726f21386b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/CoverageProofs/Variantdf85e4a9b46234135efb1694c3a691b9a61dd7cf6217c33e38d30e726f21386b.lean#L13).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df950505fb8f57e73e1b0da7a4a337631258c420` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
