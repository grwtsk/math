# linearGrowthInf_biInf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d2e88535-8832-3d1d-a638-2b06aa80b79d",
  "kind": "lemma",
  "lexical_name": "linearGrowthInf_biInf",
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
  "slug": "lineargrowthinf-biinf--095113e8be7eade97364872b",
  "source": {
    "blob": "b774387bd86b480da7def0ce1e8f3857fbbdf837",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 308,
    "line": 303,
    "path": "GRWTSK/Topology/GeneralTopology/LinearGrowth/Variantbb6eb43dc56feb32dce1a0c6ea56bb18cec8c6ec4d3d2a123fdb0210d1925a67.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:095113e8be7eade97364872ba5a879eec0f89d0c58b41d360de1d7d57511ed22",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LinearGrowth/Variantbb6eb43dc56feb32dce1a0c6ea56bb18cec8c6ec4d3d2a123fdb0210d1925a67.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d2e88535-8832-3d1d-a638-2b06aa80b79d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 303–308.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma linearGrowthInf_biInf {α : Type*} (u : α → ℕ → EReal) {s : Set α} (hs : s.Finite) :
    linearGrowthInf (⨅ x ∈ s, u x) = ⨅ x ∈ s, linearGrowthInf (u x) := by
  have := map_finset_inf linearGrowthInfTopHom hs.toFinset u
  simpa only [linearGrowthInfTopHom, InfTopHom.coe_mk, InfHom.coe_mk, Finset.inf_eq_iInf,
    hs.mem_toFinset, comp_apply]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LinearGrowth/Variantbb6eb43dc56feb32dce1a0c6ea56bb18cec8c6ec4d3d2a123fdb0210d1925a67.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LinearGrowth/Variantbb6eb43dc56feb32dce1a0c6ea56bb18cec8c6ec4d3d2a123fdb0210d1925a67.lean#L303).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b774387bd86b480da7def0ce1e8f3857fbbdf837` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
