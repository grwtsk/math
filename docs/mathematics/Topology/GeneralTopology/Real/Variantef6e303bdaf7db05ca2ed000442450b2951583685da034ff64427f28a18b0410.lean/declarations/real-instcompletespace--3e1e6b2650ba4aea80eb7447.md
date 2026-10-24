# Real.instCompleteSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5a17a06b102f7fa82d939b429e7b7fba01bb0b732fd11f0a361439a7f6a469eb",
  "kind": "instance",
  "lexical_name": "Real.instCompleteSpace",
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
  "slug": "real-instcompletespace--3e1e6b2650ba4aea80eb7447",
  "source": {
    "blob": "6400f3365ac01ac8dfd5791a4c7cd104298c6b5d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 23,
    "path": "GRWTSK/Topology/GeneralTopology/Real/Variantef6e303bdaf7db05ca2ed000442450b2951583685da034ff64427f28a18b0410.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3e1e6b2650ba4aea80eb74472938dbc3f02e45afd0ac8230bb17995923ae57d5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Real/Variantef6e303bdaf7db05ca2ed000442450b2951583685da034ff64427f28a18b0410.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5a17a06b102f7fa82d939b429e7b7fba01bb0b732fd11f0a361439a7f6a469eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Real.instCompleteSpace : CompleteSpace ℝ := by
  apply complete_of_cauchySeq_tendsto
  intro u hu
  let c : CauSeq ℝ abs := ⟨u, Metric.cauchySeq_iff'.1 hu⟩
  refine ⟨c.lim, fun s h => ?_⟩
  rcases Metric.mem_nhds_iff.1 h with ⟨ε, ε0, hε⟩
  have := c.equiv_lim ε ε0
  simp only [mem_map, mem_atTop_sets, mem_setOf_eq]
  exact this.imp fun N hN n hn => hε (hN n hn)

namespace NNReal

/-!
### Topology on `ℝ≥0`
All the instances are inherited from the corresponding structures on the reals.

-/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Real/Variantef6e303bdaf7db05ca2ed000442450b2951583685da034ff64427f28a18b0410.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Real/Variantef6e303bdaf7db05ca2ed000442450b2951583685da034ff64427f28a18b0410.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6400f3365ac01ac8dfd5791a4c7cd104298c6b5d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
