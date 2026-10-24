# norm_mul_mem_unitary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:44a138e6-aa02-fefd-fb9f-1d86bc7d7599",
  "kind": "theorem",
  "lexical_name": "norm_mul_mem_unitary",
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
  "slug": "norm-mul-mem-unitary--c7f54f90a1f373e00a2c49b4",
  "source": {
    "blob": "d5fadad4a0094a2895f8d5ac3468311a3a39cc41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 276,
    "line": 266,
    "path": "GRWTSK/Topology/MetricTopology/Basic/Variant4350fdde00f5e8bcaf2560b5222b0b36babb9240b4d05311be469cbafcd45ff8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c7f54f90a1f373e00a2c49b4e0fd42435a568482a9919051e3ab8681e39c77d4",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Basic/Variant4350fdde00f5e8bcaf2560b5222b0b36babb9240b4d05311be469cbafcd45ff8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:44a138e6-aa02-fefd-fb9f-1d86bc7d7599`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 266–276.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_mul_mem_unitary (A : E) {U : E} (hU : U ∈ unitary E) : ‖A * U‖ = ‖A‖ :=
  norm_mul_coe_unitary A ⟨U, hU⟩

end Unital

end CStarRing

section SelfAdjoint

variable [NormedRing E] [StarRing E] [CStarRing E]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Basic/Variant4350fdde00f5e8bcaf2560b5222b0b36babb9240b4d05311be469cbafcd45ff8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Basic/Variant4350fdde00f5e8bcaf2560b5222b0b36babb9240b4d05311be469cbafcd45ff8.lean#L266).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5fadad4a0094a2895f8d5ac3468311a3a39cc41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
