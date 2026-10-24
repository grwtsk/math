# mem_batchLinear

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:769f3cc1-f221-5162-bf82-990ce6921c47",
  "kind": "theorem",
  "lexical_name": "mem_batchLinear",
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
  "slug": "mem-batchlinear--ccabfb21c9a18723057c6197",
  "source": {
    "blob": "23842502f320ce17cecd08e6f6612a781a9ca417",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 161,
    "path": "GRWTSK/Algebra/LinearAlgebra/MatrixNetwork/Variant4ac6b56070b480603a2db0de2808feb72e1b272cab266ec1d2d8cb5b0c82ed9a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ccabfb21c9a18723057c61970b2e4bd23563ff1bd220e28b68f76d0ef9c0574e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/MatrixNetwork/Variant4ac6b56070b480603a2db0de2808feb72e1b272cab266ec1d2d8cb5b0c82ed9a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:769f3cc1-f221-5162-bf82-990ce6921c47`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_batchLinear {outDim inDim batchSize : Nat}
    (W : IntervalMatrix outDim inDim)
    (X : InputBatch inDim batchSize)
    (W_real : Matrix (Fin outDim) (Fin inDim) ℝ)
    (X_real : Matrix (Fin inDim) (Fin batchSize) ℝ)
    (exp : Int)
    (hW : W.mem exp W_real)
    (hX : X.mem exp X_real) :
    (batchLinear W X).mem (exp + exp) (W_real * X_real) :=
  mem_matmul W X W_real X_real exp hW hX

/-- Soundness of attention score computation -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/MatrixNetwork/Variant4ac6b56070b480603a2db0de2808feb72e1b272cab266ec1d2d8cb5b0c82ed9a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/MatrixNetwork/Variant4ac6b56070b480603a2db0de2808feb72e1b272cab266ec1d2d8cb5b0c82ed9a.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23842502f320ce17cecd08e6f6612a781a9ca417` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
