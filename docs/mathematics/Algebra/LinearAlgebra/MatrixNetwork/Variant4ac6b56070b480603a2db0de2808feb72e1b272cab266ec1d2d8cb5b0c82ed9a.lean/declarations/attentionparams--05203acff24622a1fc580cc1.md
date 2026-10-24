# AttentionParams

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:55d4689f7530da0501ff4e6e208cfd59d740701fd5b556857360545f779e022f",
  "kind": "structure",
  "lexical_name": "AttentionParams",
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
  "slug": "attentionparams--05203acff24622a1fc580cc1",
  "source": {
    "blob": "23842502f320ce17cecd08e6f6612a781a9ca417",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 99,
    "path": "GRWTSK/Algebra/LinearAlgebra/MatrixNetwork/Variant4ac6b56070b480603a2db0de2808feb72e1b272cab266ec1d2d8cb5b0c82ed9a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:05203acff24622a1fc580cc1afa75f470d60cd58739232bd90170b1bf4cb966b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/MatrixNetwork/Variant4ac6b56070b480603a2db0de2808feb72e1b272cab266ec1d2d8cb5b0c82ed9a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:55d4689f7530da0501ff4e6e208cfd59d740701fd5b556857360545f779e022f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure AttentionParams (dModel numHeads : Nat) where
  /-- Query projection weights (dModel, dModel) -/
  wQ : IntervalMatrix dModel dModel
  /-- Key projection weights (dModel, dModel) -/
  wK : IntervalMatrix dModel dModel
  /-- Value projection weights (dModel, dModel) -/
  wV : IntervalMatrix dModel dModel
  /-- Output projection weights (dModel, dModel) -/
  wO : IntervalMatrix dModel dModel

/-- Project input to Q, K, V matrices.
    Input X : (seq_len, d_model)
    Returns (Q, K, V) each of shape (seq_len, d_model) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/MatrixNetwork/Variant4ac6b56070b480603a2db0de2808feb72e1b272cab266ec1d2d8cb5b0c82ed9a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/MatrixNetwork/Variant4ac6b56070b480603a2db0de2808feb72e1b272cab266ec1d2d8cb5b0c82ed9a.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23842502f320ce17cecd08e6f6612a781a9ca417` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
