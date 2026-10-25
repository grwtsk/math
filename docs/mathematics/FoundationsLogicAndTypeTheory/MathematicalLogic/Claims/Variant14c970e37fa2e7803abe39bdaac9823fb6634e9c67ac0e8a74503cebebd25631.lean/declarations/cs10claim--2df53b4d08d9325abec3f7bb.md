# CS10Claim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3f6f0fca8ae1a5aabab0d5a125779e44a0c9b712c66b36036fb74251ddf82d3a",
  "kind": "def",
  "lexical_name": "CS10Claim",
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
  "slug": "cs10claim--2df53b4d08d9325abec3f7bb",
  "source": {
    "blob": "9f0964b18cebfbcc6a51a06a81c62c98d7120007",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 284,
    "line": 269,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Claims/Variant14c970e37fa2e7803abe39bdaac9823fb6634e9c67ac0e8a74503cebebd25631.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2df53b4d08d9325abec3f7bb238aca326f608da5a18dc744d5ccdf1410e47259",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Claims/Variant14c970e37fa2e7803abe39bdaac9823fb6634e9c67ac0e8a74503cebebd25631.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3f6f0fca8ae1a5aabab0d5a125779e44a0c9b712c66b36036fb74251ddf82d3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 269–284.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def CS10Claim
    {S : RealizationSystem.{uObj, uHom}}
    {M : ControlledPlaneModel.{uObj, uHom, vObj, vHom, uData} S}
    (D : LosslessDecoder M.observation) : Prop :=
  ∀ x y,
    decodeObserved D
      (M.observedOperation.op
        (combinedObservation M.observation x)
        (combinedObservation M.observation y)) =
      M.sourceOperation.op x y

/--
CS-11: a decoder plus explicit preservation of the entire declared signature,
including its one designated binary operation, yields a signature isomorphism.
The preservation contract is an input and is not derived from the decoder.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Claims/Variant14c970e37fa2e7803abe39bdaac9823fb6634e9c67ac0e8a74503cebebd25631.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Claims/Variant14c970e37fa2e7803abe39bdaac9823fb6634e9c67ac0e8a74503cebebd25631.lean#L269).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f0964b18cebfbcc6a51a06a81c62c98d7120007` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
