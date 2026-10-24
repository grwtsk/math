# MatrixBlockRealization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3ae4ce52b55c49d1ff0790922507c372276921c95058590496792a3b55f4eaa0",
  "kind": "structure",
  "lexical_name": "MatrixBlockRealization",
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
  "slug": "matrixblockrealization--441b4ffd137255fdd9daeed9",
  "source": {
    "blob": "4b481ee4eca17732aad1656ff6d9ea1124acc3d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 33,
    "path": "GRWTSK/Algebra/LinearAlgebra/MatrixBlockSchur/Variantf276f83840901e4640edeab4d098ae892dea3f50dcb03a5b65e0d788161bd513.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:441b4ffd137255fdd9daeed9fabc75958fb2ae50ddc4cd7a8953a2fb82975845",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/MatrixBlockSchur/Variantf276f83840901e4640edeab4d098ae892dea3f50dcb03a5b65e0d788161bd513.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3ae4ce52b55c49d1ff0790922507c372276921c95058590496792a3b55f4eaa0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure MatrixBlockRealization
    (G : PositiveForm ((ι → ℝ) × (κ → ℝ))) where
  /-- Matrix representing the provenance block of the ambient form. -/
  provenanceMatrix : Matrix ι ι ℝ
  /-- Matrix representing the provenance-autonomous cross block. -/
  crossMatrix : Matrix ι κ ℝ
  /-- Matrix representing the autonomous block of the ambient form. -/
  autonomousMatrix : Matrix κ κ ℝ
  /-- Two-sided inverse of the provenance matrix. -/
  inverseProvenanceMatrix : Matrix ι ι ℝ
  mul_inverse : provenanceMatrix * inverseProvenanceMatrix = 1
  inverse_mul : inverseProvenanceMatrix * provenanceMatrix = 1
  provenance_block : ∀ p q,
    G.form (provenanceInclusion p) (provenanceInclusion q) =
      p ⬝ᵥ provenanceMatrix.mulVec q
  cross_block : ∀ p u,
    G.form (provenanceInclusion p) (autonomousInclusion u) =
      p ⬝ᵥ crossMatrix.mulVec u
  autonomous_block : ∀ u v,
    G.form (autonomousInclusion u) (autonomousInclusion v) =
      u ⬝ᵥ autonomousMatrix.mulVec v

namespace MatrixBlockRealization

variable {G : PositiveForm ((ι → ℝ) × (κ → ℝ))}

/-- The explicit matrix normal-equation solver Ainv * B. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/MatrixBlockSchur/Variantf276f83840901e4640edeab4d098ae892dea3f50dcb03a5b65e0d788161bd513.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/MatrixBlockSchur/Variantf276f83840901e4640edeab4d098ae892dea3f50dcb03a5b65e0d788161bd513.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b481ee4eca17732aad1656ff6d9ea1124acc3d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
