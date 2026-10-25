# bottom_totalization_does_not_remove_undefinedness

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:87b70ce0-83c6-56d9-c58d-e564748621af",
  "kind": "theorem",
  "lexical_name": "bottom_totalization_does_not_remove_undefinedness",
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
  "slug": "bottom-totalization-does-not-remove-undefinedness--09d43c0744a8cb2a33cdf2db",
  "source": {
    "blob": "e311c7482c7450f00f4077bce7bb4bd182dc65ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 819,
    "line": 812,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/InterpreterExactness/Variant449999532a37c55a38ea56301b6dddfc43c44e3f64fbd58d28d2f7ddf5f29e18.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09d43c0744a8cb2a33cdf2db5c11e7fcd34805e5ecd4dc4bce914b7f27605c37",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/InterpreterExactness/Variant449999532a37c55a38ea56301b6dddfc43c44e3f64fbd58d28d2f7ddf5f29e18.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:87b70ce0-83c6-56d9-c58d-e564748621af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 812–819.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bottom_totalization_does_not_remove_undefinedness :
    partialPredecessor 0 = none ∧
      bottomTotalize 0 partialPredecessor 0 = 0 := by
  exact ⟨rfl, rfl⟩

end NatCounterexamples

end Cord
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/InterpreterExactness/Variant449999532a37c55a38ea56301b6dddfc43c44e3f64fbd58d28d2f7ddf5f29e18.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/InterpreterExactness/Variant449999532a37c55a38ea56301b6dddfc43c44e3f64fbd58d28d2f7ddf5f29e18.lean#L812).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e311c7482c7450f00f4077bce7bb4bd182dc65ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
