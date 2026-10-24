# oriented_plucker_three

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2313b340f858d5e0c07f65732dcfcc6ed7c164ed",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 43,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/08/08b6d58d0b5b1dde27a4fb13a908f6c3ee344282b15f030212294f3da5e812b2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:72a35df4-a4c6-2420-4c7d-4208ff8cb88c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c1dfe438-2e55-525a-5c85-2c5c7bbb9a3f",
  "kind": "theorem",
  "lexical_name": "oriented_plucker_three",
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
  "slug": "oriented-plucker-three--759a5ef2f66a0a12f26a0b9d",
  "source": {
    "blob": "2313b340f858d5e0c07f65732dcfcc6ed7c164ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 43,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/08b6d58d0b5b1dde27a4fb13a908f6c3ee344282b15f030212294f3da5e812b2Reduction01Faile/Variant08b6d58d0b5b1dde27a4fb13a908f6c3ee344282b15f030212294f3da5e812b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:759a5ef2f66a0a12f26a0b9d21b01443550dc1fca43b01c915ffd056ef0115eb",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/08b6d58d0b5b1dde27a4fb13a908f6c3ee344282b15f030212294f3da5e812b2Reduction01Faile/Variant08b6d58d0b5b1dde27a4fb13a908f6c3ee344282b15f030212294f3da5e812b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c1dfe438-2e55-525a-5c85-2c5c7bbb9a3f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem oriented_plucker_three (M : Matrix (Fin 3) (Fin 3) ℝ) :
    (M 0 2 * M 1 0 - M 0 0 * M 1 2) *
        (M 0 1 * M 2 0 - M 0 0 * M 2 1) -
      (M 0 1 * M 1 0 - M 0 0 * M 1 1) *
        (M 0 2 * M 2 0 - M 0 0 * M 2 2) = -M 0 0 * M.det := by
  rw [Matrix.det_fin_three]
  exact oriented_plucker_three_scalar _ _ _ _ _ _ _ _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/08b6d58d0b5b1dde27a4fb13a908f6c3ee344282b15f030212294f3da5e812b2Reduction01Faile/Variant08b6d58d0b5b1dde27a4fb13a908f6c3ee344282b15f030212294f3da5e812b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/08b6d58d0b5b1dde27a4fb13a908f6c3ee344282b15f030212294f3da5e812b2Reduction01Faile/Variant08b6d58d0b5b1dde27a4fb13a908f6c3ee344282b15f030212294f3da5e812b2.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2313b340f858d5e0c07f65732dcfcc6ed7c164ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
