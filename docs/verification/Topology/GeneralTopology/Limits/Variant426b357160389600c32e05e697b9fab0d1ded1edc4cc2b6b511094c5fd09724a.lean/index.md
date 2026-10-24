# Verification target: GRWTSK.Topology.GeneralTopology.Limits.Variant426b357160389600c32e05e697b9fab0d1ded1edc4cc2b6b511094c5fd09724a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b74f98fc3935cb50d5a4fe1399e30e5f1d03fcd2",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Limits/Variant426b357160389600c32e05e697b9fab0d1ded1edc4cc2b6b511094c5fd09724a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant426b357160389600c32e05e697b9fab0d1ded1edc4cc2b6b511094c5fd09724a.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant426b357160389600c32e05e697b9fab0d1ded1edc4cc2b6b511094c5fd09724a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b74f98fc3935cb50d5a4fe1399e30e5f1d03fcd2`.

Source path: `GRWTSK/Topology/GeneralTopology/Limits/Variant426b357160389600c32e05e697b9fab0d1ded1edc4cc2b6b511094c5fd09724a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Limits/Variant426b357160389600c32e05e697b9fab0d1ded1edc4cc2b6b511094c5fd09724a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toFiniteQuotientFunctor](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant426b357160389600c32e05e697b9fab0d1ded1edc4cc2b6b511094c5fd09724a.lean/declarations/tofinitequotientfunctor--450d9acecbd68195cb1e95ef.md) | 48 | `declaration-track:450d9acecbd68195cb1e95ef4b1d88a4d943b1578f4617668003ef7686bdd626` |
| 2 | `def` | [diagram](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant426b357160389600c32e05e697b9fab0d1ded1edc4cc2b6b511094c5fd09724a.lean/declarations/diagram--4543214355ef2ace9f5b0c83.md) | 58 | `declaration-track:4543214355ef2ace9f5b0c837d030939c52e211af9c7d9bb8cff55fc46e53a9b` |
| 3 | `def` | [toLimitFun](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant426b357160389600c32e05e697b9fab0d1ded1edc4cc2b6b511094c5fd09724a.lean/declarations/tolimitfun--ad3817dcd05dfe635d3c8191.md) | 65 | `declaration-track:ad3817dcd05dfe635d3c81919c3a6a97c27363fa39115ec7a290906f359bb7ba` |
| 4 | `lemma` | [toLimitFun_continuous](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant426b357160389600c32e05e697b9fab0d1ded1edc4cc2b6b511094c5fd09724a.lean/declarations/tolimitfun-continuous--fb62c4d46ad1fcbfac6fd366.md) | 72 | `result-track:fb62c4d46ad1fcbfac6fd366e6729431583e1acd3e6fcb27380442a89af6206d` |
| 5 | `def` | [toLimit](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant426b357160389600c32e05e697b9fab0d1ded1edc4cc2b6b511094c5fd09724a.lean/declarations/tolimit--8bbb40d40af67ea862e20918.md) | 92 | `declaration-track:8bbb40d40af67ea862e20918fe3f8ba450f60ac811897279022bd49f8bbe5874` |
| 6 | `theorem` | [denseRange_toLimit](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant426b357160389600c32e05e697b9fab0d1ded1edc4cc2b6b511094c5fd09724a.lean/declarations/denserange-tolimit--53971061bdfd1a3052a45bee.md) | 97 | `result-track:53971061bdfd1a3052a45beebc5eb77a4973e2ede3e93196f9602bf45b5db5e4` |
| 7 | `theorem` | [toLimit_surjective](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant426b357160389600c32e05e697b9fab0d1ded1edc4cc2b6b511094c5fd09724a.lean/declarations/tolimit-surjective--a2d676a121da424079b2b7d5.md) | 120 | `result-track:a2d676a121da424079b2b7d5a74bab22a143a3d250241125c66e076c95062ec8` |
| 8 | `theorem` | [toLimit_injective](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant426b357160389600c32e05e697b9fab0d1ded1edc4cc2b6b511094c5fd09724a.lean/declarations/tolimit-injective--91240b6194929136ffdcd59e.md) | 127 | `result-track:91240b6194929136ffdcd59e37aecdf852b29bbee17020c3a3ffa354ee37d8f7` |
| 9 | `def` | [continuousMulEquivLimittoFiniteQuotientFunctor](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant426b357160389600c32e05e697b9fab0d1ded1edc4cc2b6b511094c5fd09724a.lean/declarations/continuousmulequivlimittofinitequotientfunctor--e7270b40873fdb8ab645b8cb.md) | 138 | `declaration-track:e7270b40873fdb8ab645b8cbe2a369f518425fd9e0fcb38d2e708bd4dc0eea67` |
| 10 | `instance` | [isIso_toLimit](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant426b357160389600c32e05e697b9fab0d1ded1edc4cc2b6b511094c5fd09724a.lean/declarations/isiso-tolimit--3c38b0b6b3143df60676c9bb.md) | 145 | `declaration-track:3c38b0b6b3143df60676c9bbb7ecd09147a789d28e4beb73c392135474ce8de1` |
| 11 | `def` | [isoLimittoFiniteQuotientFunctor](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant426b357160389600c32e05e697b9fab0d1ded1edc4cc2b6b511094c5fd09724a.lean/declarations/isolimittofinitequotientfunctor--4d67a6882b2baf209798a038.md) | 151 | `declaration-track:4d67a6882b2baf209798a0380610e6eb841c14e0b3bc6533440cfa2b488b2237` |
| 12 | `def` | [proj](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant426b357160389600c32e05e697b9fab0d1ded1edc4cc2b6b511094c5fd09724a.lean/declarations/proj--82429668e28a0feea9889eef.md) | 158 | `declaration-track:82429668e28a0feea9889eef9257389a370e2963ad4943ea700feb63ce79d2a3` |
| 13 | `def` | [cone](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant426b357160389600c32e05e697b9fab0d1ded1edc4cc2b6b511094c5fd09724a.lean/declarations/cone--af0b855bc6945123b1e325cb.md) | 169 | `declaration-track:af0b855bc6945123b1e325cb45e617f46e598a342c9e23059efaa2e7a9e47cb2` |
| 14 | `def` | [isLimitCone](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant426b357160389600c32e05e697b9fab0d1ded1edc4cc2b6b511094c5fd09724a.lean/declarations/islimitcone--ca2e868ba59de8a77367c254.md) | 174 | `declaration-track:ca2e868ba59de8a77367c254008a1ee44bfbdc483ba6b3b8afbe9373421772d4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
