# binaryDirectionalNullBalance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ef4a78137121666158732370a6ef10c6a081468243b16f7975d3977cffd6601d",
  "kind": "def",
  "lexical_name": "binaryDirectionalNullBalance",
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
  "slug": "binarydirectionalnullbalance--9823e811d7f5ee85b7bd4bd5",
  "source": {
    "blob": "65b4e41c36b3a7f1a57c2c55cf81d480de9563ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 140,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/NullBalancedEdgeCircle/Variant1913a295ff136521e48bd5a4bfa821fa00c69a205f2d3bf36c6625157e5462c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9823e811d7f5ee85b7bd4bd53429adc3b26ae2fa5b3e651ee24e4301deafc054",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/NullBalancedEdgeCircle/Variant1913a295ff136521e48bd5a4bfa821fa00c69a205f2d3bf36c6625157e5462c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ef4a78137121666158732370a6ef10c6a081468243b16f7975d3977cffd6601d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def binaryDirectionalNullBalance
    (B : BalancedBinaryNullPoint) :
    DirectionalNullBalance DirectionalChain.binaryDirectionSystem where
  edgeMass := fun e =>
    match e with
    | BinaryEdge.zeroToOne => quarterMass
    | BinaryEdge.oneToZero => quarterMass
  vertexMassLabel := fun v =>
    match v with
    | BinaryVertex.zero => "negative/zero endpoint"
    | BinaryVertex.one => "positive/one endpoint"
  nullStatement := B.centeredBalance
  nullProof := B.centeredBalanceProof
  reverseBalance := fun _ => B.directedTransitionBalance
  reverseBalanceProof := fun _ => B.directedTransitionBalanceProof
  polarityCancellation := B.centeredBalance
  polarityCancellationProof := B.centeredBalanceProof

/-! ## B3. Edge relaxation over the null point -/

/--
Directed edge relaxation data over a direction system: a finite Boolean tree
per edge, its relaxed density evaluation, and explicit relaxation
propositions. Finite edge relaxation alone does not produce analytic
completion.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/NullBalancedEdgeCircle/Variant1913a295ff136521e48bd5a4bfa821fa00c69a205f2d3bf36c6625157e5462c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/NullBalancedEdgeCircle/Variant1913a295ff136521e48bd5a4bfa821fa00c69a205f2d3bf36c6625157e5462c4.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65b4e41c36b3a7f1a57c2c55cf81d480de9563ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
