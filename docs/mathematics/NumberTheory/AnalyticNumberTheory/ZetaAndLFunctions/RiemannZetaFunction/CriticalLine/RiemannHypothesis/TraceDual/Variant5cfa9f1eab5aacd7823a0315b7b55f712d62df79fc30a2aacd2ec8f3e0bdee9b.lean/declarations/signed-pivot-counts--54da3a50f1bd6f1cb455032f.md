# signed_pivot_counts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:70651f90-1008-4bd2-3674-25fe81bf98f7",
  "kind": "theorem",
  "lexical_name": "signed_pivot_counts",
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
  "slug": "signed-pivot-counts--54da3a50f1bd6f1cb455032f",
  "source": {
    "blob": "fa10c99b4a8c6ac086a5b4b131016cea0ba65b9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 149,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TraceDual/Variant5cfa9f1eab5aacd7823a0315b7b55f712d62df79fc30a2aacd2ec8f3e0bdee9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:54da3a50f1bd6f1cb455032fc601b36ce2a65a0b8f284bd9eb31d4511417be64",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TraceDual/Variant5cfa9f1eab5aacd7823a0315b7b55f712d62df79fc30a2aacd2ec8f3e0bdee9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:70651f90-1008-4bd2-3674-25fe81bf98f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem signed_pivot_counts :
    (Finset.univ.filter (fun i : Fin 6 => 0 < pivots i)).card = 4 ∧
      (Finset.univ.filter (fun i : Fin 6 => pivots i < 0)).card = 2 := by
  have hp : (Finset.univ.filter (fun i : Fin 6 => 0 < pivots i)) = {0, 1, 3, 4} := by
    ext i
    fin_cases i <;> norm_num [pivots, Fin.ext_iff]
  have hn : (Finset.univ.filter (fun i : Fin 6 => pivots i < 0)) = {2, 5} := by
    ext i
    fin_cases i <;> norm_num [pivots, Fin.ext_iff]
  rw [hp, hn]
  norm_num [Fin.ext_iff]

end
end GRWTSK.RiemannHypothesis.Conversation.TraceDual
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TraceDual/Variant5cfa9f1eab5aacd7823a0315b7b55f712d62df79fc30a2aacd2ec8f3e0bdee9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TraceDual/Variant5cfa9f1eab5aacd7823a0315b7b55f712d62df79fc30a2aacd2ec8f3e0bdee9b.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa10c99b4a8c6ac086a5b4b131016cea0ba65b9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
