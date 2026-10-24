# Verification target: GRWTSK.Algebra.LocalCohomology.Variant134098f338781c6b212270c89f5ea2033a8c288dc25dfa808b444dafd6c06715

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "778c6c5649e7ad884e1ab5f9baa499c88f452441",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LocalCohomology/Variant134098f338781c6b212270c89f5ea2033a8c288dc25dfa808b444dafd6c06715.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/LocalCohomology/Variant134098f338781c6b212270c89f5ea2033a8c288dc25dfa808b444dafd6c06715.lean/index.md) · [Full source](../../../../mathematics/Algebra/LocalCohomology/Variant134098f338781c6b212270c89f5ea2033a8c288dc25dfa808b444dafd6c06715.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `778c6c5649e7ad884e1ab5f9baa499c88f452441`.

Source path: `GRWTSK/Algebra/LocalCohomology/Variant134098f338781c6b212270c89f5ea2033a8c288dc25dfa808b444dafd6c06715.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LocalCohomology/Variant134098f338781c6b212270c89f5ea2033a8c288dc25dfa808b444dafd6c06715.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Colimits` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Projective` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.Ext` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Final` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness.Ideal` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Quotient.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Noetherian.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ringModIdeals](../../../../mathematics/Algebra/LocalCohomology/Variant134098f338781c6b212270c89f5ea2033a8c288dc25dfa808b444dafd6c06715.lean/declarations/ringmodideals--f0dc5964047955cb4692040e.md) | 68 | `declaration-track:f0dc5964047955cb4692040e4519a821e93aad000c704b8303ee4cc072bcccb1` |
| 2 | `def` | [diagram](../../../../mathematics/Algebra/LocalCohomology/Variant134098f338781c6b212270c89f5ea2033a8c288dc25dfa808b444dafd6c06715.lean/declarations/diagram--7e476536039f31a8ea49d8ff.md) | 74 | `declaration-track:7e476536039f31a8ea49d8ff73ebf11e9ae1648ae7a06154cd88e99f912557de` |
| 3 | `lemma` | [hasColimitDiagram](../../../../mathematics/Algebra/LocalCohomology/Variant134098f338781c6b212270c89f5ea2033a8c288dc25dfa808b444dafd6c06715.lean/declarations/hascolimitdiagram--a00d9e4d2f96679f606dc316.md) | 85 | `result-track:a00d9e4d2f96679f606dc316383bcd8efbc37a952828072cf9c9310e8481d9d2` |
| 4 | `def` | [ofDiagram](../../../../mathematics/Algebra/LocalCohomology/Variant134098f338781c6b212270c89f5ea2033a8c288dc25dfa808b444dafd6c06715.lean/declarations/ofdiagram--d57ceadc06b4ec7087e6bc3c.md) | 98 | `declaration-track:d57ceadc06b4ec7087e6bc3caa07ad7d7757aacf36ed46419106ea361eb26d52` |
| 5 | `def` | [diagramComp](../../../../mathematics/Algebra/LocalCohomology/Variant134098f338781c6b212270c89f5ea2033a8c288dc25dfa808b444dafd6c06715.lean/declarations/diagramcomp--c444ca99d87d08d01bec35dd.md) | 110 | `declaration-track:c444ca99d87d08d01bec35dd44053233578b489245392e32d02d8d480a729f01` |
| 6 | `def` | [isoOfFinal](../../../../mathematics/Algebra/LocalCohomology/Variant134098f338781c6b212270c89f5ea2033a8c288dc25dfa808b444dafd6c06715.lean/declarations/isooffinal--df9a3d6a9b7a6a22e97cd3e4.md) | 115 | `declaration-track:df9a3d6a9b7a6a22e97cd3e48901dbcdb4ece4d148d04e224fce89fe46a18cdd` |
| 7 | `def` | [idealPowersDiagram](../../../../mathematics/Algebra/LocalCohomology/Variant134098f338781c6b212270c89f5ea2033a8c288dc25dfa808b444dafd6c06715.lean/declarations/idealpowersdiagram--119f737477b5f0fd17c9060f.md) | 128 | `declaration-track:119f737477b5f0fd17c9060fe4806384ce28b6f880d6803f96da90b47f141f4a` |
| 8 | `def` | [SelfLERadical](../../../../mathematics/Algebra/LocalCohomology/Variant134098f338781c6b212270c89f5ea2033a8c288dc25dfa808b444dafd6c06715.lean/declarations/selfleradical--76cf78120b2386bce437c632.md) | 133 | `declaration-track:76cf78120b2386bce437c632fe8f9d94fbd06173fed649efc535e37a5258833b` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/LocalCohomology/Variant134098f338781c6b212270c89f5ea2033a8c288dc25dfa808b444dafd6c06715.lean/declarations/instance--2a86ee48e24739f7e5185481.md) | 138 | `declaration-track:2a86ee48e24739f7e5185481a9f97259890bf07e23dd2229b92ba79eb701ff9f` |
| 10 | `instance` | [SelfLERadical.inhabited](../../../../mathematics/Algebra/LocalCohomology/Variant134098f338781c6b212270c89f5ea2033a8c288dc25dfa808b444dafd6c06715.lean/declarations/selfleradical-inhabited--2871554e4486dd9a48de62a4.md) | 141 | `declaration-track:2871554e4486dd9a48de62a4ded5d67ff1292702b6c39dd87e46d91effa6ef88` |
| 11 | `def` | [selfLERadicalDiagram](../../../../mathematics/Algebra/LocalCohomology/Variant134098f338781c6b212270c89f5ea2033a8c288dc25dfa808b444dafd6c06715.lean/declarations/selfleradicaldiagram--f24155dffae94577021fa584.md) | 146 | `declaration-track:f24155dffae94577021fa5843859f0d8542ddf95f807db7f56cb7c7f1bdbc2c6` |
| 12 | `def` | [localCohomology](../../../../mathematics/Algebra/LocalCohomology/Variant134098f338781c6b212270c89f5ea2033a8c288dc25dfa808b444dafd6c06715.lean/declarations/localcohomology--ae234c96e7370c35c9cd2637.md) | 167 | `declaration-track:ae234c96e7370c35c9cd26373c742db44d550603da3cc5c38e670f9ea13b18d7` |
| 13 | `def` | [localCohomology.ofSelfLERadical](../../../../mathematics/Algebra/LocalCohomology/Variant134098f338781c6b212270c89f5ea2033a8c288dc25dfa808b444dafd6c06715.lean/declarations/localcohomology-ofselfleradical--dcb1293dc48c0f236e96235b.md) | 172 | `declaration-track:dcb1293dc48c0f236e96235b13e61c5316b8037f04b61905be86f0c9ae51c7a6` |
| 14 | `def` | [idealPowersToSelfLERadical](../../../../mathematics/Algebra/LocalCohomology/Variant134098f338781c6b212270c89f5ea2033a8c288dc25dfa808b444dafd6c06715.lean/declarations/idealpowerstoselfleradical--263fba04af1e7be9d106c585.md) | 193 | `declaration-track:263fba04af1e7be9d106c5859a411d0d3df2bec55398c8c8553e00a6d3a02dca` |
| 15 | `instance` | [ideal_powers_initial](../../../../mathematics/Algebra/LocalCohomology/Variant134098f338781c6b212270c89f5ea2033a8c288dc25dfa808b444dafd6c06715.lean/declarations/ideal-powers-initial--34f4ccd5ec4a66ffe53863fc.md) | 204 | `declaration-track:34f4ccd5ec4a66ffe53863fc9dba71d1a807e1693703a60873d3c4fdaa64711e` |
| 16 | `example` | [(anonymous)](../../../../mathematics/Algebra/LocalCohomology/Variant134098f338781c6b212270c89f5ea2033a8c288dc25dfa808b444dafd6c06715.lean/declarations/example--320939e7b15cbf5f05a2fab3.md) | 218 | `declaration-track:320939e7b15cbf5f05a2fab3a043668124c446ca76b0f73511a1617aab4d35c3` |
| 17 | `def` | [isoSelfLERadical](../../../../mathematics/Algebra/LocalCohomology/Variant134098f338781c6b212270c89f5ea2033a8c288dc25dfa808b444dafd6c06715.lean/declarations/isoselfleradical--bcabbcae7fd5d07ca9d64edc.md) | 221 | `declaration-track:bcabbcae7fd5d07ca9d64edc43fbf05d1730507c3d1881d2a3cc84ebc5124a58` |
| 18 | `def` | [SelfLERadical.cast](../../../../mathematics/Algebra/LocalCohomology/Variant134098f338781c6b212270c89f5ea2033a8c288dc25dfa808b444dafd6c06715.lean/declarations/selfleradical-cast--510eb354dfd846d9bf6bf1f4.md) | 229 | `declaration-track:510eb354dfd846d9bf6bf1f413aafcd6002f8e441523b2e84dab13778e59c36c` |
| 19 | `def` | [SelfLERadical.castEquivalence](../../../../mathematics/Algebra/LocalCohomology/Variant134098f338781c6b212270c89f5ea2033a8c288dc25dfa808b444dafd6c06715.lean/declarations/selfleradical-castequivalence--96acca1e81cf05398e3d1734.md) | 237 | `declaration-track:96acca1e81cf05398e3d1734bf7442de0a7c351f375d02faa66a09d165bdfcc2` |
| 20 | `instance` | [SelfLERadical.cast_isEquivalence](../../../../mathematics/Algebra/LocalCohomology/Variant134098f338781c6b212270c89f5ea2033a8c288dc25dfa808b444dafd6c06715.lean/declarations/selfleradical-cast-isequivalence--f08e6c440387caa5e14f2714.md) | 244 | `declaration-track:f08e6c440387caa5e14f271451e71af90cd39baba2e8afeb5efd3c41c4d39e55` |
| 21 | `def` | [SelfLERadical.isoOfSameRadical](../../../../mathematics/Algebra/LocalCohomology/Variant134098f338781c6b212270c89f5ea2033a8c288dc25dfa808b444dafd6c06715.lean/declarations/selfleradical-isoofsameradical--e6424e57f5ed51b96ef229d6.md) | 250 | `declaration-track:e6424e57f5ed51b96ef229d66892c79453aa12ccc406053b8e3cfb7df836bb98` |
| 22 | `def` | [isoOfSameRadical](../../../../mathematics/Algebra/LocalCohomology/Variant134098f338781c6b212270c89f5ea2033a8c288dc25dfa808b444dafd6c06715.lean/declarations/isoofsameradical--af26ec5c5d811e0d03ea4be1.md) | 255 | `declaration-track:af26ec5c5d811e0d03ea4be11a27eeca8800714e5ef3abb1122809e8b288f360` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
