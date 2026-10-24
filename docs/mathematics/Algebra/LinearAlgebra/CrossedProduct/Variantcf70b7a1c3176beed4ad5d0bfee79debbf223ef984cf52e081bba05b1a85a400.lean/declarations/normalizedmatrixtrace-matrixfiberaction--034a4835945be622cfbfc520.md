# normalizedMatrixTrace_matrixFiberAction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "989d4cc372f55082926aef5333d17df44d7c15cc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 117,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cf/cf70b7a1c3176beed4ad5d0bfee79debbf223ef984cf52e081bba05b1a85a400.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:22c3cbf4-5664-caf4-cccf-c21729ce417e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6c6eb1f2-3ee4-d409-3944-0d599d773c39",
  "kind": "theorem",
  "lexical_name": "normalizedMatrixTrace_matrixFiberAction",
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
  "slug": "normalizedmatrixtrace-matrixfiberaction--034a4835945be622cfbfc520",
  "source": {
    "blob": "989d4cc372f55082926aef5333d17df44d7c15cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 117,
    "path": "GRWTSK/Algebra/LinearAlgebra/CrossedProduct/Variantcf70b7a1c3176beed4ad5d0bfee79debbf223ef984cf52e081bba05b1a85a400.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:034a4835945be622cfbfc520e226b6a643821f0199087e0d6809c9acb01f1873",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CrossedProduct/Variantcf70b7a1c3176beed4ad5d0bfee79debbf223ef984cf52e081bba05b1a85a400.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c6eb1f2-3ee4-d409-3944-0d599d773c39`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalizedMatrixTrace_matrixFiberAction
    {State G : Type}
    [Fintype State] [Fintype G] [Group G]
    {rank : Nat}
    (base :
      CrossedProductRepresentation State G)
    (fiber :
      UnitaryMatrixFiberRepresentation G rank)
    (groupElement : G)
    (coefficient : State → MatrixFiber rank)
    (state : State) :
    normalizedMatrixTrace rank
        (matrixFiberAction
          base fiber groupElement coefficient state) =
      normalizedMatrixTrace rank
        (coefficient
          (base.action (base.inverse groupElement) state)) := by
  unfold normalizedMatrixTrace matrixFiberAction
  congr 1
  rw [Matrix.trace_mul_cycle]
  rw [fiber.leftUnitary groupElement, one_mul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CrossedProduct/Variantcf70b7a1c3176beed4ad5d0bfee79debbf223ef984cf52e081bba05b1a85a400.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CrossedProduct/Variantcf70b7a1c3176beed4ad5d0bfee79debbf223ef984cf52e081bba05b1a85a400.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `989d4cc372f55082926aef5333d17df44d7c15cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
