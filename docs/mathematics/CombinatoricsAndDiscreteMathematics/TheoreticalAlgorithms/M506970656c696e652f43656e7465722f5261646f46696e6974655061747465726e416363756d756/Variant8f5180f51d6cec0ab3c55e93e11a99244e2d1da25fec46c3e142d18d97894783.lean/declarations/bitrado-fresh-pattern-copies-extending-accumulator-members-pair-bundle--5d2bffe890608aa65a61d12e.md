# bitRado_fresh_pattern_copies_extending_accumulator_members_pair_bundle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3f4955b1-16a6-cdc2-4a22-ccb51127c50b",
  "kind": "theorem",
  "lexical_name": "bitRado_fresh_pattern_copies_extending_accumulator_members_pair_bundle",
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
  "slug": "bitrado-fresh-pattern-copies-extending-accumulator-members-pair-bundle--5d2bffe890608aa65a61d12e",
  "source": {
    "blob": "2cffe9d4f9e9659d7e0e6ce74f986bed2da54bf2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 65,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e416363756d756/Variant8f5180f51d6cec0ab3c55e93e11a99244e2d1da25fec46c3e142d18d97894783.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5d2bffe890608aa65a61d12e35478e16a0aa6dc8e6bdb0e1aaf0308d697ae7a6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e416363756d756/Variant8f5180f51d6cec0ab3c55e93e11a99244e2d1da25fec46c3e142d18d97894783.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f4955b1-16a6-cdc2-4a22-ccb51127c50b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bitRado_fresh_pattern_copies_extending_accumulator_members_pair_bundle
    (x : Nat) (xs forbidden acc : List Nat)
    (t : Nat)
    (hacc : PatternAccumulator x xs forbidden acc) :
    ∃ acc' : List Nat,
      PatternAccumulator x xs forbidden acc' ∧
        (∀ y : Nat, y ∈ acc -> y ∈ acc') ∧
          acc'.length = acc.length + t ∧
            ∀ y : Nat, y ∈ acc' ->
              (y ≠ x ∧ y ∉ xs ∧ y ∉ forbidden) ∧
                (¬ bitRadoEdge y x ∧
                  ∀ v : Nat, v ∈ xs ->
                    (bitRadoEdge y v ↔ bitRadoEdge x v)) := by
  obtain ⟨acc', hacc', hincl, hlen⟩ :=
    bitRado_fresh_pattern_copies_extending_accumulator_of_length
      x xs forbidden acc t hacc
  exact
    ⟨acc', hacc', hincl, hlen,
      fun y hy => pattern_accumulator_member_pair_bundle hacc' hy⟩

end Think.Pipeline.Center.RadoFinitePatternAccumulatorCopies
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e416363756d756/Variant8f5180f51d6cec0ab3c55e93e11a99244e2d1da25fec46c3e142d18d97894783.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e416363756d756/Variant8f5180f51d6cec0ab3c55e93e11a99244e2d1da25fec46c3e142d18d97894783.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2cffe9d4f9e9659d7e0e6ce74f986bed2da54bf2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
