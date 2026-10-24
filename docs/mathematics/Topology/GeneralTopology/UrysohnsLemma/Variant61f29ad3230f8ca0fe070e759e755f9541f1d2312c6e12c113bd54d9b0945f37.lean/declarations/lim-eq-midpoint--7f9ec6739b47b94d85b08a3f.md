# lim_eq_midpoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:89268456-23e2-651e-4240-6268a84f3696",
  "kind": "theorem",
  "lexical_name": "lim_eq_midpoint",
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
  "slug": "lim-eq-midpoint--7f9ec6739b47b94d85b08a3f",
  "source": {
    "blob": "f22d298c5365aaf720a73578ecadd66f8acf1149",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 270,
    "line": 265,
    "path": "GRWTSK/Topology/GeneralTopology/UrysohnsLemma/Variant61f29ad3230f8ca0fe070e759e755f9541f1d2312c6e12c113bd54d9b0945f37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f9ec6739b47b94d85b08a3fadb45e69a3601e32777834056e15c4582abc5359",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UrysohnsLemma/Variant61f29ad3230f8ca0fe070e759e755f9541f1d2312c6e12c113bd54d9b0945f37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:89268456-23e2-651e-4240-6268a84f3696`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 265–270.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lim_eq_midpoint (c : CU P) (x : X) :
    c.lim x = midpoint ℝ (c.left.lim x) (c.right.lim x) := by
  refine tendsto_nhds_unique (c.tendsto_approx_atTop x) ((tendsto_add_atTop_iff_nat 1).1 ?_)
  simp only [approx]
  exact (c.left.tendsto_approx_atTop x).midpoint (c.right.tendsto_approx_atTop x)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UrysohnsLemma/Variant61f29ad3230f8ca0fe070e759e755f9541f1d2312c6e12c113bd54d9b0945f37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UrysohnsLemma/Variant61f29ad3230f8ca0fe070e759e755f9541f1d2312c6e12c113bd54d9b0945f37.lean#L265).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f22d298c5365aaf720a73578ecadd66f8acf1149` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
