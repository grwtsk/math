# skinnerUrban2014

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c3c828d5262c2f1a15ba1ffa020b5584b701dab5eafa01be29c3762727aa62b1",
  "kind": "def",
  "lexical_name": "skinnerUrban2014",
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
  "slug": "skinnerurban2014--9f094ca7e8e1643ceea767d0",
  "source": {
    "blob": "1e002a6d70a2f40f0b9bd23938e913ea2491a56f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 214,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpecialTheoremSources/Variant0372bb13a00a008756c2ae4f4c5aab2bbce018e9415c038bb5ad6dd8a760e312.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9f094ca7e8e1643ceea767d0eadd1384e8895f8ddc4f06536b2a142f170b5fb1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpecialTheoremSources/Variant0372bb13a00a008756c2ae4f4c5aab2bbce018e9415c038bb5ad6dd8a760e312.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c3c828d5262c2f1a15ba1ffa020b5584b701dab5eafa01be29c3762727aa62b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def skinnerUrban2014 : ArithmeticTheoremSource := {
  sourceId := "skinner_urban_2014"
  sourceKind := ArithmeticSourceKind.iwasawa
  theoremLabel := "Skinner-Urban Iwasawa main conjecture BSD-related theorem surface"
  statementSummary := "Iwasawa-theoretic bridge target for BSD-related rank implications"
  dependencyChain := ["Iwasawa main conjecture", "modularity surface", "p-adic L-function"]
  authorityStatus := SourceAuthorityStatus.externalTheoremNotImported
  residueAtoms := [
    "bsd.iwasawa_surface.skinner_urban",
    "bsd.p_adic_lfunction_surface",
    "skinner_urban.proof_import_obligation"
  ]
}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpecialTheoremSources/Variant0372bb13a00a008756c2ae4f4c5aab2bbce018e9415c038bb5ad6dd8a760e312.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpecialTheoremSources/Variant0372bb13a00a008756c2ae4f4c5aab2bbce018e9415c038bb5ad6dd8a760e312.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e002a6d70a2f40f0b9bd23938e913ea2491a56f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
