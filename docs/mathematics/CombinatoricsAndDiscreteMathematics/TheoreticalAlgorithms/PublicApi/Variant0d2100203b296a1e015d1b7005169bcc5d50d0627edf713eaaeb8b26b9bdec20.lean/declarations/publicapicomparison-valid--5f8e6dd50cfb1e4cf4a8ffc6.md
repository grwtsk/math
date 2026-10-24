# PublicApiComparison.Valid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4cecba414dbdaf7dbeca8bfdb3227f58821a3695058922c8dd713f3fdf9e1610",
  "kind": "def",
  "lexical_name": "PublicApiComparison.Valid",
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
  "slug": "publicapicomparison-valid--5f8e6dd50cfb1e4cf4a8ffc6",
  "source": {
    "blob": "6af43f00db208a12f3e0dbfc80ff328a0e5ba34e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 100,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PublicApi/Variant0d2100203b296a1e015d1b7005169bcc5d50d0627edf713eaaeb8b26b9bdec20.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5f8e6dd50cfb1e4cf4a8ffc6661cf06b3f6ccb7984c1e3da7776b6e852f20210",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PublicApi/Variant0d2100203b296a1e015d1b7005169bcc5d50d0627edf713eaaeb8b26b9bdec20.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4cecba414dbdaf7dbeca8bfdb3227f58821a3695058922c8dd713f3fdf9e1610`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[expose] def PublicApiComparison.Valid (comparison : PublicApiComparison) : Prop :=
  exactPublicNames comparison.before comparison.after = true ∧
    exactPublicTypes comparison.before comparison.after = true ∧
    sourceModulesPreserved comparison.before comparison.after = true ∧
    classificationTagsPreserved comparison.before comparison.after = true ∧
    axiomClosureEqualOrSubset comparison.before comparison.after = true ∧
    comparison.acyclicity.cycle? = none ∧
    noCanonicalQuarantineDependency comparison.imports = true

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PublicApi/Variant0d2100203b296a1e015d1b7005169bcc5d50d0627edf713eaaeb8b26b9bdec20.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PublicApi/Variant0d2100203b296a1e015d1b7005169bcc5d50d0627edf713eaaeb8b26b9bdec20.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6af43f00db208a12f3e0dbfc80ff328a0e5ba34e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
