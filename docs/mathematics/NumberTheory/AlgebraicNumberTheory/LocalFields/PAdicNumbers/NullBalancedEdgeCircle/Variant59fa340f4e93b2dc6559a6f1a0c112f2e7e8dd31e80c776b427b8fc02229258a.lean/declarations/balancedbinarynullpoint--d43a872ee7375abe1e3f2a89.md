# BalancedBinaryNullPoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f9617dcc70014dd7ce57da1b4267305295d38c3eba9f227258d3554582d71a2d",
  "kind": "structure",
  "lexical_name": "BalancedBinaryNullPoint",
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
  "slug": "balancedbinarynullpoint--d43a872ee7375abe1e3f2a89",
  "source": {
    "blob": "c1c5f3fced35f66b4b5f0f7630cde9a9ce18379e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 79,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/NullBalancedEdgeCircle/Variant59fa340f4e93b2dc6559a6f1a0c112f2e7e8dd31e80c776b427b8fc02229258a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d43a872ee7375abe1e3f2a89e972050de5ab0272d9b7cdee2be4596f72a4c5c1",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/NullBalancedEdgeCircle/Variant59fa340f4e93b2dc6559a6f1a0c112f2e7e8dd31e80c776b427b8fc02229258a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f9617dcc70014dd7ce57da1b4267305295d38c3eba9f227258d3554582d71a2d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure BalancedBinaryNullPoint where
  mass : BinaryCylinder → DyadicMass
  zeroHalf : mass BinaryCylinder.zero = halfMass
  oneHalf : mass BinaryCylinder.one = halfMass
  zeroOneQuarter : mass BinaryCylinder.zeroOne = quarterMass
  oneZeroQuarter : mass BinaryCylinder.oneZero = quarterMass
  /-- Centered balance: interpreting 0 as negative and 1 as positive gives
  zero barycentric mass. This is the formal null-point proposition. -/
  centeredBalance : Prop
  centeredBalanceProof : centeredBalance
  /-- Directed balance: the two opposite directed transitions have equal
  mass. -/
  directedTransitionBalance : Prop
  directedTransitionBalanceProof : directedTransitionBalance

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/NullBalancedEdgeCircle/Variant59fa340f4e93b2dc6559a6f1a0c112f2e7e8dd31e80c776b427b8fc02229258a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/NullBalancedEdgeCircle/Variant59fa340f4e93b2dc6559a6f1a0c112f2e7e8dd31e80c776b427b8fc02229258a.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1c5f3fced35f66b4b5f0f7630cde9a9ce18379e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
