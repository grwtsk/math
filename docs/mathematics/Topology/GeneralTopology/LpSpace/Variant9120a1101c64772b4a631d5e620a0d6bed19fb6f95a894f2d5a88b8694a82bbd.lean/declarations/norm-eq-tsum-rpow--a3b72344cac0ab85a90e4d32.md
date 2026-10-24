# norm_eq_tsum_rpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:24aa36e2-c7ab-0c74-9255-647d1747b9f9",
  "kind": "theorem",
  "lexical_name": "norm_eq_tsum_rpow",
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
  "slug": "norm-eq-tsum-rpow--a3b72344cac0ab85a90e4d32",
  "source": {
    "blob": "050c3f648532b059f5db611c7736fbf6fc32faa0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 424,
    "line": 418,
    "path": "GRWTSK/Topology/GeneralTopology/LpSpace/Variant9120a1101c64772b4a631d5e620a0d6bed19fb6f95a894f2d5a88b8694a82bbd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a3b72344cac0ab85a90e4d323cf595d5f2039c4b40107f2b22508d1aa5d8aaeb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LpSpace/Variant9120a1101c64772b4a631d5e620a0d6bed19fb6f95a894f2d5a88b8694a82bbd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:24aa36e2-c7ab-0c74-9255-647d1747b9f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 418–424.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_eq_tsum_rpow (hp : 0 < p.toReal) (f : lp E p) :
    ‖f‖ = (∑' i, ‖f i‖ ^ p.toReal) ^ (1 / p.toReal) := by
  dsimp [norm]
  rw [ENNReal.toReal_pos_iff] at hp
  rw [dif_neg hp.1.ne', if_neg hp.2.ne]
#align lp.norm_eq_tsum_rpow lp.norm_eq_tsum_rpow

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LpSpace/Variant9120a1101c64772b4a631d5e620a0d6bed19fb6f95a894f2d5a88b8694a82bbd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LpSpace/Variant9120a1101c64772b4a631d5e620a0d6bed19fb6f95a894f2d5a88b8694a82bbd.lean#L418).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `050c3f648532b059f5db611c7736fbf6fc32faa0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
