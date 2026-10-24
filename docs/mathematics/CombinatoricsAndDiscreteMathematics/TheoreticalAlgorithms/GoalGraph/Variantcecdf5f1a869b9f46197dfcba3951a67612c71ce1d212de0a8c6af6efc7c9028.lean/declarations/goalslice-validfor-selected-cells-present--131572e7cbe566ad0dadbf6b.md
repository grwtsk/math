# GoalSlice.ValidFor.selected_cells_present

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2008ceef-41a4-b711-a14b-b855364ebdc0",
  "kind": "theorem",
  "lexical_name": "GoalSlice.ValidFor.selected_cells_present",
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
  "slug": "goalslice-validfor-selected-cells-present--131572e7cbe566ad0dadbf6b",
  "source": {
    "blob": "5c3cc918c731775cd6ea2495175b5f7efeb3f8f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 162,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GoalGraph/Variantcecdf5f1a869b9f46197dfcba3951a67612c71ce1d212de0a8c6af6efc7c9028.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:131572e7cbe566ad0dadbf6b60b4e832cf101c0ff2563f23f7465a6101d811ad",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GoalGraph/Variantcecdf5f1a869b9f46197dfcba3951a67612c71ce1d212de0a8c6af6efc7c9028.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2008ceef-41a4-b711-a14b-b855364ebdc0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem GoalSlice.ValidFor.selected_cells_present
    {slice : GoalSlice} {graph : GoalGraph} (h : slice.ValidFor graph) :
    slice.selected.all graph.containsCell = true :=
  h.2.2

/-- Executable identity comparison for the serializable fields of two theorem
tasks.  Proposition equality remains a proof-level concern and is not inferred
from this finite check. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GoalGraph/Variantcecdf5f1a869b9f46197dfcba3951a67612c71ce1d212de0a8c6af6efc7c9028.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GoalGraph/Variantcecdf5f1a869b9f46197dfcba3951a67612c71ce1d212de0a8c6af6efc7c9028.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c3cc918c731775cd6ea2495175b5f7efeb3f8f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
