# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e3a75f254d30515eee6c1e470f33053ffc88dff839c79990c2bdd59e866e48b5",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--577fbe603a4f25c9901ee5f4",
  "source": {
    "blob": "83e6c39d7488285969c6a0770ce826a1ecd2fe23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 261,
    "line": 249,
    "path": "GRWTSK/Algebra/UniversalAlgebra/ValuedCSP/Variant80f714a4eb6e1d0a63212a2d5e7a6e6f358aa0b2971f5b4c499f1129efca4fb6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:577fbe603a4f25c9901ee5f45806ae77efbac2a5b28b9a47b279b114d69538c6",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/ValuedCSP/Variant80f714a4eb6e1d0a63212a2d5e7a6e6f358aa0b2971f5b4c499f1129efca4fb6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e3a75f254d30515eee6c1e470f33053ffc88dff839c79990c2bdd59e866e48b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 249–261.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example : ¬exampleCrispCspInstance.IsOptimumSolution exampleSolutionIncorrect4 := by
  unfold ValuedCSP.Instance.IsOptimumSolution
  push_neg
  use exampleSolutionCorrect0
  rfl

/-
           0
          / \
         1---2
          \ /
           1
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/ValuedCSP/Variant80f714a4eb6e1d0a63212a2d5e7a6e6f358aa0b2971f5b4c499f1129efca4fb6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/ValuedCSP/Variant80f714a4eb6e1d0a63212a2d5e7a6e6f358aa0b2971f5b4c499f1129efca4fb6.lean#L249).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83e6c39d7488285969c6a0770ce826a1ecd2fe23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
