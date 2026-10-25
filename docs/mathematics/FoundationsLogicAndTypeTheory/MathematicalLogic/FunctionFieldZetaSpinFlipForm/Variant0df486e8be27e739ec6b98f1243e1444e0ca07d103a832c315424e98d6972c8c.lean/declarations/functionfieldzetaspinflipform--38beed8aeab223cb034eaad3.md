# FunctionFieldZetaSpinFlipForm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1c675a4c3d35e63bbe3c871b88a7cf8013064e9bfe88fb6908db46788e4a0bbb",
  "kind": "structure",
  "lexical_name": "FunctionFieldZetaSpinFlipForm",
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
  "slug": "functionfieldzetaspinflipform--38beed8aeab223cb034eaad3",
  "source": {
    "blob": "27e68c62099dc39f15ac19077e33d8d9eb29fcc9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 23,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FunctionFieldZetaSpinFlipForm/Variant0df486e8be27e739ec6b98f1243e1444e0ca07d103a832c315424e98d6972c8c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:38beed8aeab223cb034eaad34eb24139b07bc1068fa3f71a2bc291d855dc803d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/FunctionFieldZetaSpinFlipForm/Variant0df486e8be27e739ec6b98f1243e1444e0ca07d103a832c315424e98d6972c8c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1c675a4c3d35e63bbe3c871b88a7cf8013064e9bfe88fb6908db46788e4a0bbb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FunctionFieldZetaSpinFlipForm where
  q : Nat
  genus : Nat
  harmonicSlots : Nat
  harmonicSlots_eq_two_genus : harmonicSlots = 2 * genus
  reciprocalPairing : HarmonicFlipDualityPairing harmonicSlots
  finiteEquation : ZetaSpinFlipFunctionalEquation harmonicSlots
  frobeniusPairingSurface : Bool
  frobeniusPairingSurface_eq_true : frobeniusPairingSurface = true
  poincareDualitySurface : Bool
  poincareDualitySurface_eq_true : poincareDualitySurface = true
  functionFieldFunctionalEquationFormulation : Bool
  functionFieldFunctionalEquationFormulation_eq_true :
    functionFieldFunctionalEquationFormulation = true
  deligneWeilTheoremImported : Bool
  deligneWeilTheoremImported_eq_false : deligneWeilTheoremImported = false
  montgomeryPairCorrelationImported : Bool
  montgomeryPairCorrelationImported_eq_false :
    montgomeryPairCorrelationImported = false
  classicalRiemannZetaTransferClaim : Bool
  classicalRiemannZetaTransferClaim_eq_false :
    classicalRiemannZetaTransferClaim = false
  rhClaim : Bool
  rhClaim_eq_false : rhClaim = false
  theoremPromotionClaim : Bool
  theoremPromotionClaim_eq_false : theoremPromotionClaim = false

/-- The function-field formulation has `2g` spin/flip harmonic slots. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/FunctionFieldZetaSpinFlipForm/Variant0df486e8be27e739ec6b98f1243e1444e0ca07d103a832c315424e98d6972c8c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FunctionFieldZetaSpinFlipForm/Variant0df486e8be27e739ec6b98f1243e1444e0ca07d103a832c315424e98d6972c8c.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27e68c62099dc39f15ac19077e33d8d9eb29fcc9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
