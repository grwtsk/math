# _root_.GRWTSK.Topology.GeneralTopology.HasEval.Variant8e8d2a4bc9275ec1e011698d7f13b57d881b00406bf4a2e389dddcf40b46b4c4.MvPolynomial.toMvPowerSeries_isUniformInducing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:65624c07-1573-d11d-f28d-e348aee95297",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.HasEval.Variant8e8d2a4bc9275ec1e011698d7f13b57d881b00406bf4a2e389dddcf40b46b4c4.MvPolynomial.toMvPowerSeries_isUniformInducing",
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
  "slug": "root-grwtsk-topology-generaltopology-haseval-variant8e8d2a4bc9275ec1e011--1eda2b87986bfa7a9abd4535",
  "source": {
    "blob": "a703a6d70ade1897182e5811a24cff2c0696d0b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 146,
    "path": "GRWTSK/Topology/GeneralTopology/Evaluation/Variante6e3e41355a581183c15edc425b594ea35ce38136932237dab6b99aead4682df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1eda2b87986bfa7a9abd453598e502c9fb2bf07a86215a192a7b0019c5ef5797",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Evaluation/Variante6e3e41355a581183c15edc425b594ea35ce38136932237dab6b99aead4682df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:65624c07-1573-d11d-f28d-e348aee95297`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Topology.GeneralTopology.HasEval.Variant8e8d2a4bc9275ec1e011698d7f13b57d881b00406bf4a2e389dddcf40b46b4c4.MvPolynomial.toMvPowerSeries_isUniformInducing :
    IsUniformInducing (toMvPowerSeries (σ := σ) (R := R)) :=
  (isUniformInducing_iff toMvPowerSeries).mpr rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Evaluation/Variante6e3e41355a581183c15edc425b594ea35ce38136932237dab6b99aead4682df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Evaluation/Variante6e3e41355a581183c15edc425b594ea35ce38136932237dab6b99aead4682df.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a703a6d70ade1897182e5811a24cff2c0696d0b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
