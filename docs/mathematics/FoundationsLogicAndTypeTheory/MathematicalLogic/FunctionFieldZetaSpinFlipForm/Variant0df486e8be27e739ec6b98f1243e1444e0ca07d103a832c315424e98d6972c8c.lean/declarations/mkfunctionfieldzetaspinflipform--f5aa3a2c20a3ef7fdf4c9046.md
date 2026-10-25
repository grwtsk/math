# mkFunctionFieldZetaSpinFlipForm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:657c0b0cac81e0192957e63516b4fb23928329436433460f17af3acd04f9a85f",
  "kind": "def",
  "lexical_name": "mkFunctionFieldZetaSpinFlipForm",
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
  "slug": "mkfunctionfieldzetaspinflipform--f5aa3a2c20a3ef7fdf4c9046",
  "source": {
    "blob": "27e68c62099dc39f15ac19077e33d8d9eb29fcc9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 113,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FunctionFieldZetaSpinFlipForm/Variant0df486e8be27e739ec6b98f1243e1444e0ca07d103a832c315424e98d6972c8c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f5aa3a2c20a3ef7fdf4c90464ac43753bc17185d54b7f350f9ec044434c007fa",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/FunctionFieldZetaSpinFlipForm/Variant0df486e8be27e739ec6b98f1243e1444e0ca07d103a832c315424e98d6972c8c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:657c0b0cac81e0192957e63516b4fb23928329436433460f17af3acd04f9a85f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkFunctionFieldZetaSpinFlipForm
    (q genus harmonicSlots : Nat)
    (hslots : harmonicSlots = 2 * genus)
    (reciprocalPairing : HarmonicFlipDualityPairing harmonicSlots)
    (finiteEquation : ZetaSpinFlipFunctionalEquation harmonicSlots) :
    FunctionFieldZetaSpinFlipForm :=
  { q := q
    genus := genus
    harmonicSlots := harmonicSlots
    harmonicSlots_eq_two_genus := hslots
    reciprocalPairing := reciprocalPairing
    finiteEquation := finiteEquation
    frobeniusPairingSurface := true
    frobeniusPairingSurface_eq_true := rfl
    poincareDualitySurface := true
    poincareDualitySurface_eq_true := rfl
    functionFieldFunctionalEquationFormulation := true
    functionFieldFunctionalEquationFormulation_eq_true := rfl
    deligneWeilTheoremImported := false
    deligneWeilTheoremImported_eq_false := rfl
    montgomeryPairCorrelationImported := false
    montgomeryPairCorrelationImported_eq_false := rfl
    classicalRiemannZetaTransferClaim := false
    classicalRiemannZetaTransferClaim_eq_false := rfl
    rhClaim := false
    rhClaim_eq_false := rfl
    theoremPromotionClaim := false
    theoremPromotionClaim_eq_false := rfl }

/-- A Deligne/Montgomery import request surface without theorem absorption. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/FunctionFieldZetaSpinFlipForm/Variant0df486e8be27e739ec6b98f1243e1444e0ca07d103a832c315424e98d6972c8c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FunctionFieldZetaSpinFlipForm/Variant0df486e8be27e739ec6b98f1243e1444e0ca07d103a832c315424e98d6972c8c.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27e68c62099dc39f15ac19077e33d8d9eb29fcc9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
