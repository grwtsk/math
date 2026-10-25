# rootNodeIntervalSquareSum_eq_shell

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0b79a6da-4cf0-ed6e-4c2c-0cf80c2a99b5",
  "kind": "theorem",
  "lexical_name": "rootNodeIntervalSquareSum_eq_shell",
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
  "slug": "rootnodeintervalsquaresum-eq-shell--ed702d79d7a285e5cb976355",
  "source": {
    "blob": "cf4be16804fe7edab33fbb09a434a6ce1b185b3d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 62,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TransverseSquare/Variantb29f3f8dba335e1f52314b44a477d3340514356c0d70246ed006edc6bc970720.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed702d79d7a285e5cb976355d480a88e93f8d84afe6c42d5ebc1b95e3d30ae70",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TransverseSquare/Variantb29f3f8dba335e1f52314b44a477d3340514356c0d70246ed006edc6bc970720.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0b79a6da-4cf0-ed6e-4c2c-0cf80c2a99b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rootNodeIntervalSquareSum_eq_shell
    {N q : ℕ} {B : TypeIIShellFactorBlock N q}
    (plan : HyperbolicSurgeryPlan N q B)
    (left : B.Left → ℂ) (right : B.Right → ℂ) :
    (plan.evaluate left right).nodeIntervalSquareSum plan.tree.root =
      coefficientIntervalSquareSum left
        (typeIIShellIntervalMatrix B) right := by
  unfold EvaluatedSurgeryTree.nodeIntervalSquareSum
  unfold coefficientIntervalSquareSum
  apply Finset.sum_congr rfl
  intro interval _
  change ‖(plan.evaluate left right).nodeIntervalCorrelation
      plan.tree.root interval‖ ^ 2 = _
  rw [evaluatedRootIntervalCorrelation_eq_shellPairing]

/-- The local transverse/diffuse analytic endpoint.

The two arithmetic vectors are literal fields of `evaluated`; the tree,
intervals, and kernels are fixed by `plan`.  In the intended application,
`evaluated` is formed from diffuse martingale components.  This definition
does not assert that such a bound is available. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TransverseSquare/Variantb29f3f8dba335e1f52314b44a477d3340514356c0d70246ed006edc6bc970720.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TransverseSquare/Variantb29f3f8dba335e1f52314b44a477d3340514356c0d70246ed006edc6bc970720.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf4be16804fe7edab33fbb09a434a6ce1b185b3d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
