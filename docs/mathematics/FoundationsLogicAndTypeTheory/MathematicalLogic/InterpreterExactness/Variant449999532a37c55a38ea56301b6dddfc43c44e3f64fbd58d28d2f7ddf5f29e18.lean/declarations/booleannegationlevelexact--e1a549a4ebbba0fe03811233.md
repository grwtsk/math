# booleanNegationLevelExact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eba71fc0-5e41-689c-6c65-01fd605c4756",
  "kind": "theorem",
  "lexical_name": "booleanNegationLevelExact",
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
  "slug": "booleannegationlevelexact--e1a549a4ebbba0fe03811233",
  "source": {
    "blob": "e311c7482c7450f00f4077bce7bb4bd182dc65ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 647,
    "line": 634,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/InterpreterExactness/Variant449999532a37c55a38ea56301b6dddfc43c44e3f64fbd58d28d2f7ddf5f29e18.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e1a549a4ebbba0fe03811233d73dd6864edea244ea58a9798fb920587ca6bf43",
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

Occurrence: `result:eba71fc0-5e41-689c-6c65-01fd605c4756`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 634–647.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem booleanNegationLevelExact :
    LevelExact booleanNegationInterpreter := by
  refine ⟨?_, ?_, ?_⟩
  · intro input
    exact Set.mem_univ input
  · intro left right _leftDefined _rightDefined sameOutput
    change (!left) = (!right) at sameOutput
    change left = right
    cases left <;> cases right <;> simp_all
  · intro output
    refine ⟨!output, Set.mem_univ _, ?_⟩
    change (!(!output)) = output
    cases output <;> rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/InterpreterExactness/Variant449999532a37c55a38ea56301b6dddfc43c44e3f64fbd58d28d2f7ddf5f29e18.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/InterpreterExactness/Variant449999532a37c55a38ea56301b6dddfc43c44e3f64fbd58d28d2f7ddf5f29e18.lean#L634).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e311c7482c7450f00f4077bce7bb4bd182dc65ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
