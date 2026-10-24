# defect_eq_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "39054fc0dca9ee68f8850c85fc219ac77319c136",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 240,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/39/3988265e55cc0755125cff7742d131cab53bdd1f0eea5c2c082bf954bb3e1812.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f808b057-a891-d48b-a837-72bf258753d2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c63b8f45-1de3-07c5-bdfb-ad2450126dab",
  "kind": "theorem",
  "lexical_name": "defect_eq_zero_iff",
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
  "slug": "defect-eq-zero-iff--14819b3a34f274b77610f789",
  "source": {
    "blob": "39054fc0dca9ee68f8850c85fc219ac77319c136",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 261,
    "line": 240,
    "path": "GRWTSK/Topology/MetricTopology/Interchange/Variant3988265e55cc0755125cff7742d131cab53bdd1f0eea5c2c082bf954bb3e1812.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:14819b3a34f274b77610f78994c6eb853aab8dd950b052f853ee51d262d8151f",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Interchange/Variant3988265e55cc0755125cff7742d131cab53bdd1f0eea5c2c082bf954bb3e1812.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c63b8f45-1de3-07c5-bdfb-ad2450126dab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 240–261.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem defect_eq_zero_iff
    (square : LinearInterchangeSquare R PrevSources PrevAggregate NowSources Compare) :
    defect square = 0 ↔
      ∀ input,
        square.transportAggregate (square.retrievePrev input) =
          square.retrieveNow (square.transportSources input) := by
  constructor
  · intro h input
    have hInput := congrArg
      (fun map : PrevSources →ₗ[R] Compare => map input) h
    have hSub :
        square.transportAggregate (square.retrievePrev input) -
            square.retrieveNow (square.transportSources input) = 0 := by
      simpa [defect] using hInput
    exact sub_eq_zero.mp hSub
  · intro h
    ext input
    simp [defect, h input]

end LinearInterchangeSquare

end Mathematics.Attention
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Interchange/Variant3988265e55cc0755125cff7742d131cab53bdd1f0eea5c2c082bf954bb3e1812.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Interchange/Variant3988265e55cc0755125cff7742d131cab53bdd1f0eea5c2c082bf954bb3e1812.lean#L240).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39054fc0dca9ee68f8850c85fc219ac77319c136` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
