# refineMatrix_zero_of_zeroPreserving

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9eaf0939-d431-70a6-ff31-42478b62a280",
  "kind": "theorem",
  "lexical_name": "refineMatrix_zero_of_zeroPreserving",
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
  "slug": "refinematrix-zero-of-zeropreserving--c141803c6c2eea61b558a473",
  "source": {
    "blob": "e2605988f6decd246b07acaaf5d27ad193dafb23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 193,
    "path": "GRWTSK/Algebra/LinearAlgebra/BinaryMatrixRefinement/Variantbf4f8fd3c35c6b00fa0a96e1f1bd779b38fcc7fdfa866e45d85d50ead7657213.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c141803c6c2eea61b558a4732376654ef27bdc1bd9d4c093399f47f569fc1619",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/BinaryMatrixRefinement/Variantbf4f8fd3c35c6b00fa0a96e1f1bd779b38fcc7fdfa866e45d85d50ead7657213.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9eaf0939-d431-70a6-ff31-42478b62a280`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem refineMatrix_zero_of_zeroPreserving
    (R : ZeroPreservingRefinementRule)
    (m n : Nat) :
    refineMatrix R.toBinaryMatrixRefinementRule (Carrier.BinaryMatrix.zero m n) =
      Carrier.BinaryMatrix.zero (m * R.scale) (n * R.scale) := by
  apply congrArg
    (fun A' => Carrier.BinaryMatrix.ofFunction (m * R.scale) (n * R.scale) A')
  funext i j
  change
    R.split 0
      ⟨i.val % R.scale, Nat.mod_lt i.val R.scale_pos⟩
      ⟨j.val % R.scale, Nat.mod_lt j.val R.scale_pos⟩ = 0
  exact R.zero_split _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/BinaryMatrixRefinement/Variantbf4f8fd3c35c6b00fa0a96e1f1bd779b38fcc7fdfa866e45d85d50ead7657213.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/BinaryMatrixRefinement/Variantbf4f8fd3c35c6b00fa0a96e1f1bd779b38fcc7fdfa866e45d85d50ead7657213.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2605988f6decd246b07acaaf5d27ad193dafb23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
