# Real.singleton_eq_inter_Icc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4c22a396-e339-031d-381b-9aaa24765cc3",
  "kind": "lemma",
  "lexical_name": "Real.singleton_eq_inter_Icc",
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
  "slug": "real-singleton-eq-inter-icc--d31e47fc6c10478d23361c70",
  "source": {
    "blob": "8896af950abbae801da7693a8173b8fdd2e68f82",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 31,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant7532fefe8a8f20aadf4862b010c76151d63e0ee3db515e166938bf8283b2efdc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d31e47fc6c10478d23361c7016a6206155ae81d3975b6344c0bd8de2645c63a7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variant7532fefe8a8f20aadf4862b010c76151d63e0ee3db515e166938bf8283b2efdc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c22a396-e339-031d-381b-9aaa24765cc3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Real.singleton_eq_inter_Icc (b : ℝ) : {b} = ⋂ (r > 0), Icc (b - r) (b + r) := by
  simp [Icc_eq_closedBall, biInter_basis_nhds Metric.nhds_basis_closedBall]

/-- Special case of the sandwich lemma; see `tendsto_of_tendsto_of_tendsto_of_le_of_le'` for the
general case. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variant7532fefe8a8f20aadf4862b010c76151d63e0ee3db515e166938bf8283b2efdc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variant7532fefe8a8f20aadf4862b010c76151d63e0ee3db515e166938bf8283b2efdc.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8896af950abbae801da7693a8173b8fdd2e68f82` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
