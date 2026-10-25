# ActivationFreeExpr.evaluate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:88f690163cafa6ea232b091c0063e73a00676dda8e890b48f41cad322c036cd8",
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
  "slug": "activationfreeexpr-evaluate--9cc6c7208f8b9abce63e8a28",
  "source": {
    "blob": "f0e7cd52895a2645a53af47c4135a7c4a4275719",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 260,
    "line": 228,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentResidual/Variant7f44aeb506522f0696562dfe54031b9f6542f7586badf6f88420c50db47c7cb5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9cc6c7208f8b9abce63e8a2873285f552c2d7e88bf7b5100899e97c7e3adc1d5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentResidual/Variant7f44aeb506522f0696562dfe54031b9f6542f7586badf6f88420c50db47c7cb5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:88f690163cafa6ea232b091c0063e73a00676dda8e890b48f41cad322c036cd8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–260.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentResidual/Variant7f44aeb506522f0696562dfe54031b9f6542f7586badf6f88420c50db47c7cb5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentResidual/Variant7f44aeb506522f0696562dfe54031b9f6542f7586badf6f88420c50db47c7cb5.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0e7cd52895a2645a53af47c4135a7c4a4275719` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
