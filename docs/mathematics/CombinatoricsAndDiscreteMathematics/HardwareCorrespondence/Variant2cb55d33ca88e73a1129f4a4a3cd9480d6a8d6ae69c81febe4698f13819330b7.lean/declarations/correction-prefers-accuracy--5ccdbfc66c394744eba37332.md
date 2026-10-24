# correction_prefers_accuracy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cdad393cfe25aedc825919e4bcdbb1f2afcba0e1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 886,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2c/2cb55d33ca88e73a1129f4a4a3cd9480d6a8d6ae69c81febe4698f13819330b7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f215664a-2d51-8b83-da03-76a7c3aab8e7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f2c2f4ba-4b71-4aaa-e645-a41742b603d6",
  "kind": "theorem",
  "lexical_name": "correction_prefers_accuracy",
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
  "slug": "correction-prefers-accuracy--5ccdbfc66c394744eba37332",
  "source": {
    "blob": "cdad393cfe25aedc825919e4bcdbb1f2afcba0e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 901,
    "line": 886,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/HardwareCorrespondence/Variant2cb55d33ca88e73a1129f4a4a3cd9480d6a8d6ae69c81febe4698f13819330b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ccdbfc66c394744eba3733287d217049dcbd069ff75d15705cfbac1c1ed6a42",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/HardwareCorrespondence/Variant2cb55d33ca88e73a1129f4a4a3cd9480d6a8d6ae69c81febe4698f13819330b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f2c2f4ba-4b71-4aaa-e645-a41742b603d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 886–901.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem correction_prefers_accuracy
    {Agent Request Coordinate Symbol k HardwareNode SymbolicNode : Type*}
    [Fintype Coordinate]
    [Fintype Symbol] [DecidableEq Symbol] [Field k]
    [Fintype HardwareNode] [Fintype SymbolicNode]
    (system : HardwareRealizedNeuralSymbolicSystem
      Agent Request Coordinate Symbol k HardwareNode SymbolicNode) :
    AccuracyPreferred system.correction.reducer.accuracy.target
      (system.correction.reducer.accuracy.candidate.transform
        system.correction.reducer.accuracy.before)
      system.correction.reducer.accuracy.before :=
  system.correction.reducer_prefers_accuracy

end HardwareRealizedNeuralSymbolicSystem

end Cord
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/HardwareCorrespondence/Variant2cb55d33ca88e73a1129f4a4a3cd9480d6a8d6ae69c81febe4698f13819330b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/HardwareCorrespondence/Variant2cb55d33ca88e73a1129f4a4a3cd9480d6a8d6ae69c81febe4698f13819330b7.lean#L886).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cdad393cfe25aedc825919e4bcdbb1f2afcba0e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
