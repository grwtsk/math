# ActivationFreeExpr.evaluate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e0e78060e3c6013b321c6bb3c8e8fa2e4ad3f0388d31cf11fc3a430574b7fa02",
  "kind": "def",
  "lexical_name": "ActivationFreeExpr.evaluate",
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
  "slug": "activationfreeexpr-evaluate--e371b51bea42f9c5c0d2c582",
  "source": {
    "blob": "aef33b3529f6513f9a08045056f8b648c60d9ac5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 220,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentResidual/Variant02feb8f23af3423ea668d5d732a612bb7169b421e4809a1c3680bce047633a9d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e371b51bea42f9c5c0d2c58295fc30104374b70fd24d862b58e169341483f522",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentResidual/Variant02feb8f23af3423ea668d5d732a612bb7169b421e4809a1c3680bce047633a9d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e0e78060e3c6013b321c6bb3c8e8fa2e4ad3f0388d31cf11fc3a430574b7fa02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ActivationFreeExpr.evaluate {State : Type*}
    [AddCommGroup State] [Module ℝ State] :
    ActivationFreeExpr State → State → State
  | .constant value => fun _ => value
  | .identity => id
  | .linear map => map
  | .affineOffset map offset => fun state =>
      map state + offset
  | .finiteSum terms => fun state =>
      (terms.map fun term => term.evaluate state).sum
  | .scalarMultiplication scalar term => fun state =>
      scalar • term.evaluate state
  | .matrixMultiplication map term => fun state =>
      map (term.evaluate state)
  | .tensorContraction map term => fun state =>
      map (term.evaluate state)
  | .bilinearInteraction map left right => fun state =>
      map (left.evaluate state) (right.evaluate state)
  | .outerProductUpdate map left right => fun state =>
      map (left.evaluate state) (right.evaluate state)
  | .residualAccumulation map term => fun state =>
      map (term.evaluate state)
  | .operatorModulation map operatorState argument => fun state =>
      map (operatorState.evaluate state) (argument.evaluate state)
  | .composition outer inner => fun state =>
      outer.evaluate (inner.evaluate state)
  | .probabilityKernelSampling kernel term => fun state =>
      kernel.sample (term.evaluate state)
  | .barycentricNormalization retraction term => fun state =>
      retraction.normalize (term.evaluate state)

/-- An exact transition together with a term in the closed grammar and a
proof that the term denotes that transition. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentResidual/Variant02feb8f23af3423ea668d5d732a612bb7169b421e4809a1c3680bce047633a9d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentResidual/Variant02feb8f23af3423ea668d5d732a612bb7169b421e4809a1c3680bce047633a9d.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aef33b3529f6513f9a08045056f8b648c60d9ac5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
