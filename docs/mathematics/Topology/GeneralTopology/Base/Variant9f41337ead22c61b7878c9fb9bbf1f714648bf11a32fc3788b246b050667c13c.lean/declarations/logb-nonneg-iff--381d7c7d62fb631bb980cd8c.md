# logb_nonneg_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cbb61f90-461c-0211-4a85-22de427ff499",
  "kind": "theorem",
  "lexical_name": "logb_nonneg_iff",
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
  "slug": "logb-nonneg-iff--381d7c7d62fb631bb980cd8c",
  "source": {
    "blob": "3ee5470937fbb52c07b61ef294bdd7721d55b5ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 235,
    "path": "GRWTSK/Topology/GeneralTopology/Base/Variant9f41337ead22c61b7878c9fb9bbf1f714648bf11a32fc3788b246b050667c13c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:381d7c7d62fb631bb980cd8c9608158a2667aca751f578db83968daa8f42461a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Base/Variant9f41337ead22c61b7878c9fb9bbf1f714648bf11a32fc3788b246b050667c13c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cbb61f90-461c-0211-4a85-22de427ff499`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 235–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logb_nonneg_iff (hx : 0 < x) : 0 ≤ logb b x ↔ 1 ≤ x := by
  rw [← not_lt, logb_neg_iff hb hx, not_lt]
#align real.logb_nonneg_iff Real.logb_nonneg_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Base/Variant9f41337ead22c61b7878c9fb9bbf1f714648bf11a32fc3788b246b050667c13c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Base/Variant9f41337ead22c61b7878c9fb9bbf1f714648bf11a32fc3788b246b050667c13c.lean#L235).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ee5470937fbb52c07b61ef294bdd7721d55b5ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
