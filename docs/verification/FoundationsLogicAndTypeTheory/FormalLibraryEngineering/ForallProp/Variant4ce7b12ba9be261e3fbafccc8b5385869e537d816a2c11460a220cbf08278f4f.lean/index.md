# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ForallProp.Variant4ce7b12ba9be261e3fbafccc8b5385869e537d816a2c11460a220cbf08278f4f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8c4cb487edadd9bb9fbb2ea3356f06c94ac803a9",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForallProp/Variant4ce7b12ba9be261e3fbafccc8b5385869e537d816a2c11460a220cbf08278f4f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForallProp/Variant4ce7b12ba9be261e3fbafccc8b5385869e537d816a2c11460a220cbf08278f4f.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForallProp/Variant4ce7b12ba9be261e3fbafccc8b5385869e537d816a2c11460a220cbf08278f4f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8c4cb487edadd9bb9fbb2ea3356f06c94ac803a9`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForallProp/Variant4ce7b12ba9be261e3fbafccc8b5385869e537d816a2c11460a220cbf08278f4f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForallProp/Variant4ce7b12ba9be261e3fbafccc8b5385869e537d816a2c11460a220cbf08278f4f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Simproc` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Grind.Norm` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Internalize` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Anchor` — import line 17; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.EqResolution` — import line 18; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.SynthInstance` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Grind.Lemmas` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [propagateForallPropUp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForallProp/Variant4ce7b12ba9be261e3fbafccc8b5385869e537d816a2c11460a220cbf08278f4f.lean/declarations/propagateforallpropup--2c58b349a282a6bf438c1522.md) | 31 | `declaration-track:2c58b349a282a6bf438c1522020b923260f5d2780ad2c3c22f18c5de24eba69f` |
| 2 | `def` | [mkEMatchTheoremWithKind'?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForallProp/Variant4ce7b12ba9be261e3fbafccc8b5385869e537d816a2c11460a220cbf08278f4f.lean/declarations/mkematchtheoremwithkind--055b3570e5b4609558ab77b2.md) | 66 | `declaration-track:055b3570e5b4609558ab77b2ee3a2d1a42b428063ed9b7ef65c23dbc0449b2b6` |
| 3 | `def` | [isNewPat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForallProp/Variant4ce7b12ba9be261e3fbafccc8b5385869e537d816a2c11460a220cbf08278f4f.lean/declarations/isnewpat--0d8546d535a0477295c8f405.md) | 75 | `declaration-track:0d8546d535a0477295c8f40522be4282f81d626eb3d42b70a2b69f4fd27ebe3b` |
| 4 | `def` | [getOrigin](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForallProp/Variant4ce7b12ba9be261e3fbafccc8b5385869e537d816a2c11460a220cbf08278f4f.lean/declarations/getorigin--788dd677d43fd93ed298111a.md) | 78 | `declaration-track:788dd677d43fd93ed298111a73ffae96333948c1e7a2cbd7e3e6fc697e770f70` |
| 5 | `def` | [checkAnchorRefsEMatchTheoremProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForallProp/Variant4ce7b12ba9be261e3fbafccc8b5385869e537d816a2c11460a220cbf08278f4f.lean/declarations/checkanchorrefsematchtheoremproof--3a976418a317403c28bc82f2.md) | 94 | `declaration-track:3a976418a317403c28bc82f2848cdd5d7357f5e2d4d7f90e6dbcced3440a6183` |
| 6 | `def` | [addLocalEMatchTheorems](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForallProp/Variant4ce7b12ba9be261e3fbafccc8b5385869e537d816a2c11460a220cbf08278f4f.lean/declarations/addlocalematchtheorems--ff1927ac403dd10120d7e616.md) | 99 | `declaration-track:ff1927ac403dd10120d7e61678f5ca28a017665d0a9bd2804133bb1513fad991` |
| 7 | `def` | [propagateForallPropDown](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForallProp/Variant4ce7b12ba9be261e3fbafccc8b5385869e537d816a2c11460a220cbf08278f4f.lean/declarations/propagateforallpropdown--5b30f6696c3f74c503e5bf83.md) | 130 | `declaration-track:5b30f6696c3f74c503e5bf835d0fff920329382a0cb30d3c29548ae6ee0cd1b0` |
| 8 | `def` | [isForallOrNot?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForallProp/Variant4ce7b12ba9be261e3fbafccc8b5385869e537d816a2c11460a220cbf08278f4f.lean/declarations/isforallornot--4b9650e5e7f6ad612147943c.md) | 178 | `declaration-track:4b9650e5e7f6ad612147943c98eea06745177867658d6d0eeb47ce6a59a8ca04` |
| 9 | `def` | [addForallSimproc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForallProp/Variant4ce7b12ba9be261e3fbafccc8b5385869e537d816a2c11460a220cbf08278f4f.lean/declarations/addforallsimproc--00b7a9935018965f4d2824e7.md) | 315 | `declaration-track:00b7a9935018965f4d2824e709b406f0b138293390dadc7f95609f196fd7ecd8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
