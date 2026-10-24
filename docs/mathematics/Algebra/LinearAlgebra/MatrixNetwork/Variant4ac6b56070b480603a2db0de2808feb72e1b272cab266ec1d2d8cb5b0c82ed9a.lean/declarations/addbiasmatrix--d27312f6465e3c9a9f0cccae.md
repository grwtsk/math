# addBiasMatrix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:514938207513bd642f7d4acbb680e133eaf3dfc89089aefe2af7792be550539d",
  "kind": "def",
  "lexical_name": "addBiasMatrix",
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
  "slug": "addbiasmatrix--d27312f6465e3c9a9f0cccae",
  "source": {
    "blob": "23842502f320ce17cecd08e6f6612a781a9ca417",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 137,
    "path": "GRWTSK/Algebra/LinearAlgebra/MatrixNetwork/Variant4ac6b56070b480603a2db0de2808feb72e1b272cab266ec1d2d8cb5b0c82ed9a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d27312f6465e3c9a9f0cccae80c933263a5407682cb10d22597112e6df428221",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/MatrixNetwork/Variant4ac6b56070b480603a2db0de2808feb72e1b272cab266ec1d2d8cb5b0c82ed9a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:514938207513bd642f7d4acbb680e133eaf3dfc89089aefe2af7792be550539d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def addBiasMatrix {outDim batchSize : Nat}
    (M : IntervalMatrix outDim batchSize)
    (bias_lo bias_hi : Fin outDim → Int) :
    IntervalMatrix outDim batchSize :=
  IntervalMatrix.ofFn fun i j =>
    let (m_lo, m_hi) := M.getBounds i j i.isLt j.isLt
    (m_lo + bias_lo i, m_hi + bias_hi i)

/-! ### Full Layer Forward (Matrix version) -/

/-- Forward pass through a layer with batch input.
    Computes ReLU(W × X + b) where X is a batch. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/MatrixNetwork/Variant4ac6b56070b480603a2db0de2808feb72e1b272cab266ec1d2d8cb5b0c82ed9a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/MatrixNetwork/Variant4ac6b56070b480603a2db0de2808feb72e1b272cab266ec1d2d8cb5b0c82ed9a.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23842502f320ce17cecd08e6f6612a781a9ca417` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
