# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Assert.Variant0686fcbff6e1940a60345812cc98c5aa7a374271649545a411452a5e19ad04a6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "594ada1a082947cdf91e044010ea092a8febbc79",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant0686fcbff6e1940a60345812cc98c5aa7a374271649545a411452a5e19ad04a6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant0686fcbff6e1940a60345812cc98c5aa7a374271649545a411452a5e19ad04a6.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant0686fcbff6e1940a60345812cc98c5aa7a374271649545a411452a5e19ad04a6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `594ada1a082947cdf91e044010ea092a8febbc79`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant0686fcbff6e1940a60345812cc98c5aa7a374271649545a411452a5e19ad04a6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant0686fcbff6e1940a60345812cc98c5aa7a374271649545a411452a5e19ad04a6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Grind.Propagator` — import line 9; external provider; requires a separately pinned dependency.
- `Init.Grind.Order` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.PropagatorAttr` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Order.Util` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Order.Proof` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkProofForPath](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant0686fcbff6e1940a60345812cc98c5aa7a374271649545a411452a5e19ad04a6.lean/declarations/mkproofforpath--febc7da3055b8ae02fbc1880.md) | 19 | `declaration-track:febc7da3055b8ae02fbc188044dea0ad4a7adb7b4258a36f98dee30646b5f9d0` |
| 2 | `def` | [setUnsat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant0686fcbff6e1940a60345812cc98c5aa7a374271649545a411452a5e19ad04a6.lean/declarations/setunsat--ea9ffb2c630e7273b8d70165.md) | 34 | `declaration-track:ea9ffb2c630e7273b8d70165761f6fb6c7d5fb50e3a902ac891fa13c3487c94b` |
| 3 | `def` | [setDist](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant0686fcbff6e1940a60345812cc98c5aa7a374271649545a411452a5e19ad04a6.lean/declarations/setdist--3db6ef6fb7989e992d250b2c.md) | 42 | `declaration-track:3db6ef6fb7989e992d250b2c23f772def3a8e48b6f80813a973024da5a9c5f0a` |
| 4 | `def` | [setProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant0686fcbff6e1940a60345812cc98c5aa7a374271649545a411452a5e19ad04a6.lean/declarations/setproof--cc0dd0ba7d466c32e004dde0.md) | 48 | `declaration-track:cc0dd0ba7d466c32e004dde014e143b9ca03436d4c6ac6ef0a2fc5817984705b` |
| 5 | `def` | [forEachSourceOf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant0686fcbff6e1940a60345812cc98c5aa7a374271649545a411452a5e19ad04a6.lean/declarations/foreachsourceof--06eac889ab272de628860cce.md) | 53 | `declaration-track:06eac889ab272de628860cce5864a802944ca8531ae7199b2ea73ebae1b034ba` |
| 6 | `def` | [forEachTargetOf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant0686fcbff6e1940a60345812cc98c5aa7a374271649545a411452a5e19ad04a6.lean/declarations/foreachtargetof--ef736332d76070325e17e1e0.md) | 56 | `declaration-track:ef736332d76070325e17e1e01d4e83c730adfaeb0e3048d24cc702f7134f3aad` |
| 7 | `def` | [isShorter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant0686fcbff6e1940a60345812cc98c5aa7a374271649545a411452a5e19ad04a6.lean/declarations/isshorter--fd9e20c7d81281e87fea4f7b.md) | 60 | `declaration-track:fd9e20c7d81281e87fea4f7b056946e78bdcd73e063d7a836b538d981e962c90` |
| 8 | `def` | [pushToPropagate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant0686fcbff6e1940a60345812cc98c5aa7a374271649545a411452a5e19ad04a6.lean/declarations/pushtopropagate--db6d0953adfbdd057bf85b36.md) | 67 | `declaration-track:db6d0953adfbdd057bf85b3668e14fdd9fe97ea249b9e399ba173e79b21f4ddb` |
| 9 | `def` | [propagateEqTrue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant0686fcbff6e1940a60345812cc98c5aa7a374271649545a411452a5e19ad04a6.lean/declarations/propagateeqtrue--cafd9715af82d822bb05e386.md) | 71 | `declaration-track:cafd9715af82d822bb05e386cb91c1b3a77e4d457c94cfa76dcdb26b0d8f4a8f` |
| 10 | `def` | [propagateSelfEqTrue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant0686fcbff6e1940a60345812cc98c5aa7a374271649545a411452a5e19ad04a6.lean/declarations/propagateselfeqtrue--edfd35f6ecce11c8026e0cf0.md) | 84 | `declaration-track:edfd35f6ecce11c8026e0cf0f206c1d75a23def81f3d51741e9663592bd640e8` |
| 11 | `def` | [propagateEqFalse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant0686fcbff6e1940a60345812cc98c5aa7a374271649545a411452a5e19ad04a6.lean/declarations/propagateeqfalse--3b9268ca215c53feadd55c07.md) | 96 | `declaration-track:3b9268ca215c53feadd55c074627cc32723ad2e4bda74d250474206cb13878c5` |
| 12 | `def` | [propagateSelfEqFalse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant0686fcbff6e1940a60345812cc98c5aa7a374271649545a411452a5e19ad04a6.lean/declarations/propagateselfeqfalse--26cc6db8817b98e85d4f286d.md) | 109 | `declaration-track:26cc6db8817b98e85d4f286dd3cd73f6dc5a22362e2bedbb70aa3f86b17b5825` |
| 13 | `def` | [propagatePending](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant0686fcbff6e1940a60345812cc98c5aa7a374271649545a411452a5e19ad04a6.lean/declarations/propagatepending--3ef9a4c53f8fed3d5262b195.md) | 122 | `declaration-track:3ef9a4c53f8fed3d5262b195b1a96fd0d0551b3c83fb45b1fa6de1fa2d4e74aa` |
| 14 | `def` | [isAlreadyTrue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant0686fcbff6e1940a60345812cc98c5aa7a374271649545a411452a5e19ad04a6.lean/declarations/isalreadytrue--1dbc06fa73f71358ed4fd3c5.md) | 171 | `declaration-track:1dbc06fa73f71358ed4fd3c51866ce8b6363449e6bc59500aa6d9146ce88f186` |
| 15 | `def` | [checkEqTrue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant0686fcbff6e1940a60345812cc98c5aa7a374271649545a411452a5e19ad04a6.lean/declarations/checkeqtrue--355ee018ae8775ff125b6cdd.md) | 182 | `declaration-track:355ee018ae8775ff125b6cdd0b164b04eed9675e80ba4c0c093f36539c053700` |
| 16 | `def` | [isAlreadyFalse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant0686fcbff6e1940a60345812cc98c5aa7a374271649545a411452a5e19ad04a6.lean/declarations/isalreadyfalse--c69874391a30d12bbceab816.md) | 193 | `declaration-track:c69874391a30d12bbceab8160ac8ec57d69747d3b31925f52abd563a17063db5` |
| 17 | `def` | [checkEqFalse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant0686fcbff6e1940a60345812cc98c5aa7a374271649545a411452a5e19ad04a6.lean/declarations/checkeqfalse--0de24836a274dded0f113db8.md) | 204 | `declaration-track:0de24836a274dded0f113db8101ab8113f77d3b1942fcaf21bb6b9ff991cb8ee` |
| 18 | `def` | [forEachCnstrsOf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant0686fcbff6e1940a60345812cc98c5aa7a374271649545a411452a5e19ad04a6.lean/declarations/foreachcnstrsof--a513f47317321f653b6f258e.md) | 216 | `declaration-track:a513f47317321f653b6f258e30332834f3b56a684b0696dcdc49dddab72182e8` |
| 19 | `def` | [checkEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant0686fcbff6e1940a60345812cc98c5aa7a374271649545a411452a5e19ad04a6.lean/declarations/checkeq--bc61a9070cc22440c1c7d636.md) | 221 | `declaration-track:bc61a9070cc22440c1c7d6367bda963cd78a10fa60ce3683b836f3991fc91be0` |
| 20 | `def` | [checkToPropagate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant0686fcbff6e1940a60345812cc98c5aa7a374271649545a411452a5e19ad04a6.lean/declarations/checktopropagate--c97451a228793815c1c20d5a.md) | 247 | `declaration-track:c97451a228793815c1c20d5a9aea7656053133a3f8d93c31db112c67078997e5` |
| 21 | `def` | [updateIfShorter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant0686fcbff6e1940a60345812cc98c5aa7a374271649545a411452a5e19ad04a6.lean/declarations/updateifshorter--ee6e7a33efcee64786ce3038.md) | 256 | `declaration-track:ee6e7a33efcee64786ce30385bd76aad0c573bf4b70a326ece3f572a32c87ca7` |
| 22 | `def` | [addEdge](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant0686fcbff6e1940a60345812cc98c5aa7a374271649545a411452a5e19ad04a6.lean/declarations/addedge--5ecd9d359a5f2131c5cc33a5.md) | 267 | `declaration-track:5ecd9d359a5f2131c5cc33a5c0af8257cc96a1c4849885d3a2a85059450fca83` |
| 23 | `def` | [assertIneqTrue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant0686fcbff6e1940a60345812cc98c5aa7a374271649545a411452a5e19ad04a6.lean/declarations/assertineqtrue--fbeae065ad9cc0bb82608340.md) | 299 | `declaration-track:fbeae065ad9cc0bb826083409bf464eb95bef02ddb36cbe624eeb77ad327e382` |
| 24 | `def` | [assertIneqFalse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant0686fcbff6e1940a60345812cc98c5aa7a374271649545a411452a5e19ad04a6.lean/declarations/assertineqfalse--7b97304d3b84da36007152f3.md) | 311 | `declaration-track:7b97304d3b84da36007152f376bd1c4f8fb254b11cd1f648799648b3e2ac7652` |
| 25 | `def` | [getStructIdOf?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant0686fcbff6e1940a60345812cc98c5aa7a374271649545a411452a5e19ad04a6.lean/declarations/getstructidof--e01ca15444ca2dcd5a2a471a.md) | 345 | `declaration-track:e01ca15444ca2dcd5a2a471a45abcc260a95acc6cec886fbb655bf87ba32c87f` |
| 26 | `def` | [propagateIneq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant0686fcbff6e1940a60345812cc98c5aa7a374271649545a411452a5e19ad04a6.lean/declarations/propagateineq--ef9a6911892b9c4409d45a90.md) | 348 | `declaration-track:ef9a6911892b9c4409d45a90d8a11b52a1297666ebb691cd269b628ba9d0a090` |
| 27 | `def` | [processNewEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant0686fcbff6e1940a60345812cc98c5aa7a374271649545a411452a5e19ad04a6.lean/declarations/processneweq--fc11ce8f11a3310c2c616e20.md) | 372 | `declaration-track:fc11ce8f11a3310c2c616e20e1383d16344060c8a1e6c13813069b83f77ad4ca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
