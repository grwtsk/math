# Filter.TotallyBounded.isCompact_setOfPred_clusterPt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:12c264c8-dbc0-776e-a3ff-02bd5a701946",
  "kind": "theorem",
  "lexical_name": "Filter.TotallyBounded.isCompact_setOfPred_clusterPt",
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
  "slug": "filter-totallybounded-iscompact-setofpred-clusterpt--3f25ee984abc6d15eff686ba",
  "source": {
    "blob": "181876c1986baad484a4ba0ea2ca2018b7821b1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 766,
    "line": 759,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Cauchy/Variantc03d7191374c39cc812ad89ae3f8e3af82291d6433f400fb74470e087ed6e12c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f25ee984abc6d15eff686bad2c8b6b80136ae85a6d4dab2787882116cec4139",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Cauchy/Variantc03d7191374c39cc812ad89ae3f8e3af82291d6433f400fb74470e087ed6e12c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:12c264c8-dbc0-776e-a3ff-02bd5a701946`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 759–766.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Filter.TotallyBounded.isCompact_setOfPred_clusterPt
    [CompleteSpace α] {f : Filter α} (hf : f.TotallyBounded) : IsCompact {x | ClusterPt x f} :=
  hf.totallyBounded_setOfPred_clusterPt.isCompact_of_isClosed isClosed_setOfPred_clusterPt

@[deprecated (since := "2026-07-09")]
alias Filter.TotallyBounded.isCompact_setOf_clusterPt :=
  Filter.TotallyBounded.isCompact_setOfPred_clusterPt

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Cauchy/Variantc03d7191374c39cc812ad89ae3f8e3af82291d6433f400fb74470e087ed6e12c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Cauchy/Variantc03d7191374c39cc812ad89ae3f8e3af82291d6433f400fb74470e087ed6e12c.lean#L759).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `181876c1986baad484a4ba0ea2ca2018b7821b1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
