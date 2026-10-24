# signedDilation_quadratic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:66e52ef6-f485-f53b-f82a-4233e5f43fd0",
  "kind": "theorem",
  "lexical_name": "signedDilation_quadratic",
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
  "slug": "signeddilation-quadratic--b91b7a2f65b7722b1c6df098",
  "source": {
    "blob": "c17c49c15312f83327cc5f16a2a65e6b55ff81e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 53,
    "path": "GRWTSK/Algebra/LinearAlgebra/MangoldtMobiusJacobiBeforeDocstrings/Variant3093ed15987967c0441912f9720b0f88c897d94d98fe0fc79d0db933a445f5f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b91b7a2f65b7722b1c6df098e214455ec34da89911dce4711fe8de25d2abb242",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/MangoldtMobiusJacobiBeforeDocstrings/Variant3093ed15987967c0441912f9720b0f88c897d94d98fe0fc79d0db933a445f5f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:66e52ef6-f485-f53b-f82a-4233e5f43fd0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem signedDilation_quadratic (H : Matrix ι κ ℝ)
    (x : ι → ℝ) (y : κ → ℝ) :
    jointVector x y ⬝ᵥ signedDilation H *ᵥ jointVector x y =
      2 * (x ⬝ᵥ H *ᵥ y) := by
  rw [signedDilation, Matrix.fromBlocks_mulVec, Matrix.dotProduct_block]
  simp only [jointVector, Function.comp_def, Sum.elim_inl, Sum.elim_inr,
    Matrix.zero_mulVec, zero_add, add_zero]
  change (x ⬝ᵥ H *ᵥ y) + (y ⬝ᵥ H.transpose *ᵥ x) = 2 * (x ⬝ᵥ H *ᵥ y)
  rw [Matrix.dotProduct_transpose_mulVec]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/MangoldtMobiusJacobiBeforeDocstrings/Variant3093ed15987967c0441912f9720b0f88c897d94d98fe0fc79d0db933a445f5f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/MangoldtMobiusJacobiBeforeDocstrings/Variant3093ed15987967c0441912f9720b0f88c897d94d98fe0fc79d0db933a445f5f5.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c17c49c15312f83327cc5f16a2a65e6b55ff81e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
