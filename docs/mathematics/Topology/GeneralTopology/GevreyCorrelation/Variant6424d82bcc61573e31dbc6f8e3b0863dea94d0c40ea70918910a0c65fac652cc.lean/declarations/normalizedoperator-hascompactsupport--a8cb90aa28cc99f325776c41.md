# normalizedOperator_hasCompactSupport

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1e32651d-dbb7-b380-e19d-e64338ac57f0",
  "kind": "theorem",
  "lexical_name": "normalizedOperator_hasCompactSupport",
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
  "slug": "normalizedoperator-hascompactsupport--a8cb90aa28cc99f325776c41",
  "source": {
    "blob": "6db8ae53708139ec792306a735e8d99b5d0a8dbb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 86,
    "path": "GRWTSK/Topology/GeneralTopology/GevreyCorrelation/Variant6424d82bcc61573e31dbc6f8e3b0863dea94d0c40ea70918910a0c65fac652cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a8cb90aa28cc99f325776c4182a05310b20d890d1b1bddbc03633e8ad5d9e881",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/GevreyCorrelation/Variant6424d82bcc61573e31dbc6f8e3b0863dea94d0c40ea70918910a0c65fac652cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1e32651d-dbb7-b380-e19d-e64338ac57f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalizedOperator_hasCompactSupport {h : ℝ → ℝ}
    (hs : support h ⊆ Icc (-1) 1) {A : ℝ} (hA : 0 < A) :
    HasCompactSupport (normalizedOperator h A) :=
  HasCompactSupport.of_support_subset_isCompact isCompact_Icc
    (normalizedOperator_support hs hA)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/GevreyCorrelation/Variant6424d82bcc61573e31dbc6f8e3b0863dea94d0c40ea70918910a0c65fac652cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/GevreyCorrelation/Variant6424d82bcc61573e31dbc6f8e3b0863dea94d0c40ea70918910a0c65fac652cc.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6db8ae53708139ec792306a735e8d99b5d0a8dbb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
