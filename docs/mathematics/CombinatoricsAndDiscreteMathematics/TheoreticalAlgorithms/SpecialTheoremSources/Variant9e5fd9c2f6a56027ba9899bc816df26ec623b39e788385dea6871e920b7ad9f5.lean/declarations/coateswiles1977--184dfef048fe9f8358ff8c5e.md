# coatesWiles1977

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:df73a43fff75ab111637fa2348c22260baac3019c2fbca91cf3e13221dc1b4c2",
  "kind": "def",
  "lexical_name": "coatesWiles1977",
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
  "slug": "coateswiles1977--184dfef048fe9f8358ff8c5e",
  "source": {
    "blob": "46857a01da9f46769cc9a1470b90bf135530b596",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 64,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpecialTheoremSources/Variant9e5fd9c2f6a56027ba9899bc816df26ec623b39e788385dea6871e920b7ad9f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:184dfef048fe9f8358ff8c5eec9788101f0ea84188cc943543dbcdf195ed45b7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpecialTheoremSources/Variant9e5fd9c2f6a56027ba9899bc816df26ec623b39e788385dea6871e920b7ad9f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:df73a43fff75ab111637fa2348c22260baac3019c2fbca91cf3e13221dc1b4c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coatesWiles1977 : ArithmeticTheoremSource := {
  sourceId := "coates_wiles_1977"
  sourceKind := ArithmeticSourceKind.bsdSpecialCase
  theoremLabel := "Coates-Wiles BSD-related CM rank-zero theorem surface"
  statementSummary := "Special BSD-related result for CM elliptic curves under stated hypotheses"
  dependencyChain := ["CM elliptic curve", "Hasse-Weil L-function", "nonvanishing condition"]
  authorityStatus := SourceAuthorityStatus.externalTheoremNotImported
  residueAtoms := [
    "bsd.special_case.coates_wiles",
    "bsd.algebraic_rank_surface",
    "bsd.analytic_rank_surface",
    "coates_wiles.proof_import_obligation"
  ]
}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpecialTheoremSources/Variant9e5fd9c2f6a56027ba9899bc816df26ec623b39e788385dea6871e920b7ad9f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpecialTheoremSources/Variant9e5fd9c2f6a56027ba9899bc816df26ec623b39e788385dea6871e920b7ad9f5.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46857a01da9f46769cc9a1470b90bf135530b596` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
