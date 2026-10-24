# exactPeriodPerm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5df2934fd0645a785de5d8db16132ec54959ffd9dbbcc4861d082f38ae4ddd81",
  "kind": "def",
  "lexical_name": "exactPeriodPerm",
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
  "slug": "exactperiodperm--1cb016d188f4a1122f825a74",
  "source": {
    "blob": "802c13e5788a5bbadabeb4d0a63ebf17625e3cf2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 292,
    "line": 280,
    "path": "GRWTSK/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FixedPointCounting/BooleanPermutationCycles/Variant3c830f470ac69f39/ExactPeriodsAndCompleteCycles.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1cb016d188f4a1122f825a74e2b37602ffea72ab46580db7868ea142983579e1",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FixedPointCounting/BooleanPermutationCycles/Variant3c830f470ac69f39/ExactPeriodsAndCompleteCycles.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5df2934fd0645a785de5d8db16132ec54959ffd9dbbcc4861d082f38ae4ddd81`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 280–292.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def exactPeriodPerm {n : Nat}
    (H : BitPerm n)
    (r : Nat) : Equiv.Perm (ExactPoint H r) where
  toFun x := ⟨H x, (mem_exactPeriodPoints_iff H r (H x)).2 <|
    hasExactPeriod_apply H
      ((mem_exactPeriodPoints_iff H r x).1 x.property)⟩
  invFun x := ⟨H.symm x, (mem_exactPeriodPoints_iff H r (H.symm x)).2 <|
    hasExactPeriod_symm_apply H
      ((mem_exactPeriodPoints_iff H r x).1 x.property)⟩
  left_inv x := by ext; simp
  right_inv x := by ext; simp

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FixedPointCounting/BooleanPermutationCycles/Variant3c830f470ac69f39/ExactPeriodsAndCompleteCycles.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FixedPointCounting/BooleanPermutationCycles/Variant3c830f470ac69f39/ExactPeriodsAndCompleteCycles.lean#L280).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `802c13e5788a5bbadabeb4d0a63ebf17625e3cf2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
