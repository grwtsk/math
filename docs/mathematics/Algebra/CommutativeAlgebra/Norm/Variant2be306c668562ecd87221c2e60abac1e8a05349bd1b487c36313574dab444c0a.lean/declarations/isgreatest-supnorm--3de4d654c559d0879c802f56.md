# isGreatest_supNorm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "83ef443ee38947dbe086fbf63b0838f7fe65418a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 89,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2b/2be306c668562ecd87221c2e60abac1e8a05349bd1b487c36313574dab444c0a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:eb10d901-45e4-483e-8882-765f5ab704c7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:92202931-9de4-b9df-4828-f22a58dc6bbb",
  "kind": "lemma",
  "lexical_name": "isGreatest_supNorm",
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
  "slug": "isgreatest-supnorm--3de4d654c559d0879c802f56",
  "source": {
    "blob": "83ef443ee38947dbe086fbf63b0838f7fe65418a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 89,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Norm/Variant2be306c668562ecd87221c2e60abac1e8a05349bd1b487c36313574dab444c0a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3de4d654c559d0879c802f5683274f68d9371f1e9cb8d8f77e835cde269eb63f",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Norm/Variant2be306c668562ecd87221c2e60abac1e8a05349bd1b487c36313574dab444c0a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:92202931-9de4-b9df-4828-f22a58dc6bbb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isGreatest_supNorm : IsGreatest (Set.range (‖p.coeff ·‖)) p.supNorm :=
  ⟨by simpa [eq_comm] using exists_eq_supNorm p, by simpa [mem_upperBounds] using le_supNorm p⟩

/-- The supNorm can also be defined with an iSup. Note that this uses the fact that `norm` is both
a `ZeroHom` and `NonnegHom` so is not _a priori_ true from the `gaussNorm` definition. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Norm/Variant2be306c668562ecd87221c2e60abac1e8a05349bd1b487c36313574dab444c0a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Norm/Variant2be306c668562ecd87221c2e60abac1e8a05349bd1b487c36313574dab444c0a.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83ef443ee38947dbe086fbf63b0838f7fe65418a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
