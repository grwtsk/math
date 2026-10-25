# ReproductiveAnchorCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:251940a29911ebecba321d8154991333dc23641ae6aa738a66e31d33503d5550",
  "kind": "structure",
  "lexical_name": "ReproductiveAnchorCertificate",
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
  "slug": "reproductiveanchorcertificate--2d524e324b15d92826ed29cd",
  "source": {
    "blob": "317d38961c2dff8e488cb338248cb15f6d809c60",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 59,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Anchor/Variant5a3ba858d1263f00c779047570d6647064e20fe515978cede6a40d206f60ac33.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2d524e324b15d92826ed29cda65df70e525b335f564d302da65c3802597b4be3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Anchor/Variant5a3ba858d1263f00c779047570d6647064e20fe515978cede6a40d206f60ac33.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:251940a29911ebecba321d8154991333dc23641ae6aa738a66e31d33503d5550`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ReproductiveAnchorCertificate
    (Context : Type u)
    (N D : Nat) where
  key : AnchorKey
  targetContext : Context
  anchorState : TensorState N D
  network : OpenMPS N D
  representation :
    MPSRepresentationCertificate anchorState network
  decode : TensorState N D → Option Context
  decodeCorrect : decode anchorState = some targetContext
  behavioralDiameter : ℝ
  reproductiveError : ℝ
  reproductiveError_nonnegative : 0 ≤ reproductiveError
  reproductiveBound :
    behavioralDiameter ≤ reproductiveError
  boundaryObservable : HermitianObservable N D
  boundaryInterval :
    ExpectationIntervalCertificate
      boundaryObservable anchorState
  exitThreshold : ℝ
  boundaryExit :
    OutsideBand boundaryInterval.interval exitThreshold
  errorBudget : AnchorErrorBudget
  allowedError : ℝ
  allowedError_nonnegative : 0 ≤ allowedError
  totalErrorAccepted :
    errorBudget.total ≤ allowedError
  continuationCovered : Prop
  continuationCovered_proved : continuationCovered
  authorityAdmitted : Prop
  authorityAdmitted_proved : authorityAdmitted
  privacyAdmitted : Prop
  privacyAdmitted_proved : privacyAdmitted
  lineageDigest : String
  rollbackDigest : String

/-- Eligible anchors satisfy both semantic and boundary obligations. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Anchor/Variant5a3ba858d1263f00c779047570d6647064e20fe515978cede6a40d206f60ac33.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Anchor/Variant5a3ba858d1263f00c779047570d6647064e20fe515978cede6a40d206f60ac33.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `317d38961c2dff8e488cb338248cb15f6d809c60` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
