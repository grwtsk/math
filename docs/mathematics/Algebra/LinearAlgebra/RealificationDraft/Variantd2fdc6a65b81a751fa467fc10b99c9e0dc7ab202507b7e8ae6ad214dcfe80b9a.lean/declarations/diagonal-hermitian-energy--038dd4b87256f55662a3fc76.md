# diagonal_hermitian_energy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9aadaaa7-fede-3cc0-acbd-51e92cd1cd8e",
  "kind": "theorem",
  "lexical_name": "diagonal_hermitian_energy",
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
  "slug": "diagonal-hermitian-energy--038dd4b87256f55662a3fc76",
  "source": {
    "blob": "194efd35c2e64af376c84f561f9aebf9bcde5395",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 47,
    "path": "GRWTSK/Algebra/LinearAlgebra/RealificationDraft/Variantd2fdc6a65b81a751fa467fc10b99c9e0dc7ab202507b7e8ae6ad214dcfe80b9a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:038dd4b87256f55662a3fc7699b8fb5176cdc6741f786ba94b6ece954a4cf6c2",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/RealificationDraft/Variantd2fdc6a65b81a751fa467fc10b99c9e0dc7ab202507b7e8ae6ad214dcfe80b9a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9aadaaa7-fede-3cc0-acbd-51e92cd1cd8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem diagonal_hermitian_energy (w : σ → ℝ) [DecidableEq σ] (z : σ → ℂ) :
    (star z ⬝ᵥ (Matrix.diagonal (fun i => (w i : ℂ))).mulVec z).re =
      diagonalRealForm w z := by
  rw [diagonalRealForm_apply]
  simp only [Matrix.mulVec_diagonal, dotProduct, Complex.re_sum]
  apply Finset.sum_congr rfl
  intro i _
  simp only [Pi.star_apply, Complex.star_def, Complex.mul_re, Complex.mul_im,
    Complex.conj_re, Complex.conj_im, Complex.ofReal_re, Complex.ofReal_im]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/RealificationDraft/Variantd2fdc6a65b81a751fa467fc10b99c9e0dc7ab202507b7e8ae6ad214dcfe80b9a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/RealificationDraft/Variantd2fdc6a65b81a751fa467fc10b99c9e0dc7ab202507b7e8ae6ad214dcfe80b9a.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `194efd35c2e64af376c84f561f9aebf9bcde5395` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
