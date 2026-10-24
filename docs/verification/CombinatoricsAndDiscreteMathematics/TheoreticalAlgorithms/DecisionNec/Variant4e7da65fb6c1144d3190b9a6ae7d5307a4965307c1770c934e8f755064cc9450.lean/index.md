# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DecisionNec.Variant4e7da65fb6c1144d3190b9a6ae7d5307a4965307c1770c934e8f755064cc9450

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "95c7b937b82e0e3ee8f292cdcc1f3db7a063940d",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecisionNec/Variant4e7da65fb6c1144d3190b9a6ae7d5307a4965307c1770c934e8f755064cc9450.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecisionNec/Variant4e7da65fb6c1144d3190b9a6ae7d5307a4965307c1770c934e8f755064cc9450.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecisionNec/Variant4e7da65fb6c1144d3190b9a6ae7d5307a4965307c1770c934e8f755064cc9450.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `95c7b937b82e0e3ee8f292cdcc1f3db7a063940d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecisionNec/Variant4e7da65fb6c1144d3190b9a6ae7d5307a4965307c1770c934e8f755064cc9450.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecisionNec/Variant4e7da65fb6c1144d3190b9a6ae7d5307a4965307c1770c934e8f755064cc9450.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Archive.MiuLanguage.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.ModEq` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [CountEquivOrEquivTwoMulMod3](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecisionNec/Variant4e7da65fb6c1144d3190b9a6ae7d5307a4965307c1770c934e8f755064cc9450.lean/declarations/countequivorequivtwomulmod3--ffc7c33e7d4b9d1bf831b956.md) | 41 | `declaration-track:ffc7c33e7d4b9d1bf831b9565741f44c7ee045b0528fdbd029f6a2f66675a0d8` |
| 2 | `example` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecisionNec/Variant4e7da65fb6c1144d3190b9a6ae7d5307a4965307c1770c934e8f755064cc9450.lean/declarations/example--753a4bcb0746aec7d8711e28.md) | 46 | `declaration-track:753a4bcb0746aec7d8711e285b4476667c5b9a60d241ad5ea616eccb637ee488` |
| 3 | `example` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecisionNec/Variant4e7da65fb6c1144d3190b9a6ae7d5307a4965307c1770c934e8f755064cc9450.lean/declarations/example--073af1e3344659a4fd5b6d70.md) | 49 | `declaration-track:073af1e3344659a4fd5b6d70a863fce7fbaaac5028fed046dad5264e54c8083b` |
| 4 | `theorem` | [mod3_eq_1_or_mod3_eq_2](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecisionNec/Variant4e7da65fb6c1144d3190b9a6ae7d5307a4965307c1770c934e8f755064cc9450.lean/declarations/mod3-eq-1-or-mod3-eq-2--3a29a8d59610d9ee3eaa1736.md) | 54 | `result-track:3a29a8d59610d9ee3eaa17369101621050f54d225bad37a476834d08d9f58e79` |
| 5 | `theorem` | [count_equiv_one_or_two_mod3_of_derivable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecisionNec/Variant4e7da65fb6c1144d3190b9a6ae7d5307a4965307c1770c934e8f755064cc9450.lean/declarations/count-equiv-one-or-two-mod3-of-derivable--129e50a6a3d528891eee052c.md) | 65 | `result-track:129e50a6a3d528891eee052c8172bdd24e6d8d0cf377171d7dbfb1c735bf35b6` |
| 6 | `theorem` | [not_derivable_mu](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecisionNec/Variant4e7da65fb6c1144d3190b9a6ae7d5307a4965307c1770c934e8f755064cc9450.lean/declarations/not-derivable-mu--41d384362bc2e587e0caef71.md) | 91 | `result-track:41d384362bc2e587e0caef717e96eef7b5c9339aa0b72a0a60fab543030bb9a6` |
| 7 | `def` | [Goodm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecisionNec/Variant4e7da65fb6c1144d3190b9a6ae7d5307a4965307c1770c934e8f755064cc9450.lean/declarations/goodm--c5acf645ce173f6b81ee6727.md) | 105 | `declaration-track:c5acf645ce173f6b81ee67272506cde25ce946cb9dcf11a5a2fb57b86c812de1` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecisionNec/Variant4e7da65fb6c1144d3190b9a6ae7d5307a4965307c1770c934e8f755064cc9450.lean/declarations/instance--b0034f178d328c713af685c8.md) | 108 | `declaration-track:b0034f178d328c713af685c84fc1fac0644a15adc2baf6a8adb42038ec799729` |
| 9 | `theorem` | [goodmi](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecisionNec/Variant4e7da65fb6c1144d3190b9a6ae7d5307a4965307c1770c934e8f755064cc9450.lean/declarations/goodmi--83ffe3a8071165432110fb08.md) | 112 | `result-track:83ffe3a8071165432110fb0889c1848cdefd73536aa13cbc0a83387c035eb055` |
| 10 | `theorem` | [goodm_of_rule1](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecisionNec/Variant4e7da65fb6c1144d3190b9a6ae7d5307a4965307c1770c934e8f755064cc9450.lean/declarations/goodm-of-rule1--494096d9d8023b29541ed12e.md) | 123 | `result-track:494096d9d8023b29541ed12e8723fa3b0a88689d923edee609fc71fe7756707e` |
| 11 | `theorem` | [goodm_of_rule2](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecisionNec/Variant4e7da65fb6c1144d3190b9a6ae7d5307a4965307c1770c934e8f755064cc9450.lean/declarations/goodm-of-rule2--06cd4d27fbc062d639b288d3.md) | 133 | `result-track:06cd4d27fbc062d639b288d31757cbb6af20e0ea75c76602645da3d628329620` |
| 12 | `theorem` | [goodm_of_rule3](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecisionNec/Variant4e7da65fb6c1144d3190b9a6ae7d5307a4965307c1770c934e8f755064cc9450.lean/declarations/goodm-of-rule3--150f2bc07603b79db6e7a242.md) | 142 | `result-track:150f2bc07603b79db6e7a242c2a991b5245285a9fa8644a7b5ed650380f90564` |
| 13 | `theorem` | [goodm_of_rule4](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecisionNec/Variant4e7da65fb6c1144d3190b9a6ae7d5307a4965307c1770c934e8f755064cc9450.lean/declarations/goodm-of-rule4--819a274b04a1040415ec32a4.md) | 160 | `result-track:819a274b04a1040415ec32a4c35dc917a27ec7dbb123bab1d89e077abf6da606` |
| 14 | `theorem` | [goodm_of_derivable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecisionNec/Variant4e7da65fb6c1144d3190b9a6ae7d5307a4965307c1770c934e8f755064cc9450.lean/declarations/goodm-of-derivable--52254f7fe91c39f7950dd469.md) | 175 | `result-track:52254f7fe91c39f7950dd469f39feff4307d3b8c31cd0862a7a21733ab31bdb3` |
| 15 | `def` | [Decstr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecisionNec/Variant4e7da65fb6c1144d3190b9a6ae7d5307a4965307c1770c934e8f755064cc9450.lean/declarations/decstr--5b656c59c9ea00464cc54c1d.md) | 194 | `declaration-track:5b656c59c9ea00464cc54c1d3ef51f1997a62acffe07f890a41fe7737ecf01c8` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecisionNec/Variant4e7da65fb6c1144d3190b9a6ae7d5307a4965307c1770c934e8f755064cc9450.lean/declarations/instance--badfe9f677ec651795927397.md) | 197 | `declaration-track:badfe9f677ec65179592739789eb81956d59f6eeda18053bcb613243c5e1c142` |
| 17 | `theorem` | [decstr_of_der](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecisionNec/Variant4e7da65fb6c1144d3190b9a6ae7d5307a4965307c1770c934e8f755064cc9450.lean/declarations/decstr-of-der--686659c2c12fb6fb2844c0ec.md) | 201 | `result-track:686659c2c12fb6fb2844c0ecf4d50544ddc6bc3aafd2d919bd8f3c3bd62e32b6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
