# memLp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5b4a9c9cc147973695cfef46415308ed215424ed",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1316,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e2/e2697946fa3bcbdc7934676f6c21fbbb565291f93c3ca406e3a4956472935833.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:387346af-941b-6f72-90f9-b05929d688d0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e44f3e0b-8da5-6f05-68f9-79f3b3a29353",
  "kind": "theorem",
  "lexical_name": "memLp",
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
  "slug": "memlp--a9af5f9da12d7789f393ad6b",
  "source": {
    "blob": "5b4a9c9cc147973695cfef46415308ed215424ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1320,
    "line": 1316,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variante2697946fa3bcbdc7934676f6c21fbbb565291f93c3ca406e3a4956472935833.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a9af5f9da12d7789f393ad6bef054d0579b06fa1f588396d640210f7580560d3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variante2697946fa3bcbdc7934676f6c21fbbb565291f93c3ca406e3a4956472935833.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e44f3e0b-8da5-6f05-68f9-79f3b3a29353`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1316–1320.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem memLp (f : 𝓢(E, F)) (p : ℝ≥0∞) (μ : Measure E := by volume_tac)
    [hμ : μ.HasTemperateGrowth] : MemLp f p μ :=
  f.eLpNorm_lt_top p μ

/-- Map a Schwartz function to an `Lp` function for any `p`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variante2697946fa3bcbdc7934676f6c21fbbb565291f93c3ca406e3a4956472935833.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variante2697946fa3bcbdc7934676f6c21fbbb565291f93c3ca406e3a4956472935833.lean#L1316).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b4a9c9cc147973695cfef46415308ed215424ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
