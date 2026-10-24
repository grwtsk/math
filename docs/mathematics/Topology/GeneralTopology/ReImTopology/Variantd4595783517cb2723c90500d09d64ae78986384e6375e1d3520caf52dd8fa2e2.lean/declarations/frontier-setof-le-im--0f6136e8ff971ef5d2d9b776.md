# frontier_setOf_le_im

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c3e80e36-ba84-3c14-24e6-e52efc603b3b",
  "kind": "theorem",
  "lexical_name": "frontier_setOf_le_im",
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
  "slug": "frontier-setof-le-im--0f6136e8ff971ef5d2d9b776",
  "source": {
    "blob": "22204fc1e648b7d7c717cbb94bfe351875c8f178",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 137,
    "path": "GRWTSK/Topology/GeneralTopology/ReImTopology/Variantd4595783517cb2723c90500d09d64ae78986384e6375e1d3520caf52dd8fa2e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f6136e8ff971ef5d2d9b776bcfc44c3ed16a5e788fccd8c4ac0f137d853d782",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ReImTopology/Variantd4595783517cb2723c90500d09d64ae78986384e6375e1d3520caf52dd8fa2e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c3e80e36-ba84-3c14-24e6-e52efc603b3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem frontier_setOf_le_im (a : ℝ) : frontier { z : ℂ | a ≤ z.im } = { z | z.im = a } := by
  simpa only [frontier_Ici] using frontier_preimage_im (Ici a)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ReImTopology/Variantd4595783517cb2723c90500d09d64ae78986384e6375e1d3520caf52dd8fa2e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ReImTopology/Variantd4595783517cb2723c90500d09d64ae78986384e6375e1d3520caf52dd8fa2e2.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22204fc1e648b7d7c717cbb94bfe351875c8f178` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
