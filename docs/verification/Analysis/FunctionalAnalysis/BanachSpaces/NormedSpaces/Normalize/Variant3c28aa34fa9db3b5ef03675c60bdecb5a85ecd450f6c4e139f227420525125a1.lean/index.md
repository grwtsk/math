# Verification target: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.Normalize.Variant3c28aa34fa9db3b5ef03675c60bdecb5a85ecd450f6c4e139f227420525125a1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1085d317dec483cecef6a0a5cc1c996ce077778d",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Normalize/Variant3c28aa34fa9db3b5ef03675c60bdecb5a85ecd450f6c4e139f227420525125a1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Normalize/Variant3c28aa34fa9db3b5ef03675c60bdecb5a85ecd450f6c4e139f227420525125a1.lean/index.md) · [Full source](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Normalize/Variant3c28aa34fa9db3b5ef03675c60bdecb5a85ecd450f6c4e139f227420525125a1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1085d317dec483cecef6a0a5cc1c996ce077778d`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Normalize/Variant3c28aa34fa9db3b5ef03675c60bdecb5a85ecd450f6c4e139f227420525125a1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Normalize/Variant3c28aa34fa9db3b5ef03675c60bdecb5a85ecd450f6c4e139f227420525125a1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [NormedSpace.normalize](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Normalize/Variant3c28aa34fa9db3b5ef03675c60bdecb5a85ecd450f6c4e139f227420525125a1.lean/declarations/normedspace-normalize--4ee671d582a34dc00cd481ba.md) | 25 | `declaration-track:4ee671d582a34dc00cd481ba5588b15d36630fcf0313868d38f23dd807575da5` |
| 2 | `theorem` | [normalize_zero_eq_zero](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Normalize/Variant3c28aa34fa9db3b5ef03675c60bdecb5a85ecd450f6c4e139f227420525125a1.lean/declarations/normalize-zero-eq-zero--4a920293ec7f0d4d5b941658.md) | 30 | `result-track:4a920293ec7f0d4d5b9416582ce2f92e2853ca43f34fcb70996060b3102eed48` |
| 3 | `theorem` | [normalize_eq_zero_iff](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Normalize/Variant3c28aa34fa9db3b5ef03675c60bdecb5a85ecd450f6c4e139f227420525125a1.lean/declarations/normalize-eq-zero-iff--c3a64c5bb614b4c67866e3df.md) | 34 | `result-track:c3a64c5bb614b4c67866e3dfc67f6badf9f66ef8c7111d650d9fb19eda0042c0` |
| 4 | `theorem` | [norm_smul_normalize](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Normalize/Variant3c28aa34fa9db3b5ef03675c60bdecb5a85ecd450f6c4e139f227420525125a1.lean/declarations/norm-smul-normalize--e6f1af672f8c00cd4b19cbd6.md) | 38 | `result-track:e6f1af672f8c00cd4b19cbd6b5bbe33bd2c6521aed879507258c08799ae1d029` |
| 5 | `lemma` | [norm_normalize_eq_one_iff](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Normalize/Variant3c28aa34fa9db3b5ef03675c60bdecb5a85ecd450f6c4e139f227420525125a1.lean/declarations/norm-normalize-eq-one-iff--67cc39cd6c0a663722a38981.md) | 42 | `result-track:67cc39cd6c0a663722a389814b7c5e19e8afe0c05ccaef1cae8710075a9ed2a9` |
| 6 | `lemma` | [normalize_eq_self_of_norm_eq_one](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Normalize/Variant3c28aa34fa9db3b5ef03675c60bdecb5a85ecd450f6c4e139f227420525125a1.lean/declarations/normalize-eq-self-of-norm-eq-one--52f29f56617c43eb019c9285.md) | 47 | `result-track:52f29f56617c43eb019c92854b77dc8982693964d3cdfa8f96577831a7f0682a` |
| 7 | `theorem` | [normalize_normalize](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Normalize/Variant3c28aa34fa9db3b5ef03675c60bdecb5a85ecd450f6c4e139f227420525125a1.lean/declarations/normalize-normalize--78141d992055f9278b10e6b0.md) | 51 | `result-track:78141d992055f9278b10e6b04e47bfa6760a7b8dffe75f74ea44f78ad7be3591` |
| 8 | `theorem` | [normalize_neg](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Normalize/Variant3c28aa34fa9db3b5ef03675c60bdecb5a85ecd450f6c4e139f227420525125a1.lean/declarations/normalize-neg--9304c49644f93321e27e98f9.md) | 57 | `result-track:9304c49644f93321e27e98f9627710e190b843aaf0f1e972862434b8debfabac` |
| 9 | `theorem` | [normalize_smul_of_pos](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Normalize/Variant3c28aa34fa9db3b5ef03675c60bdecb5a85ecd450f6c4e139f227420525125a1.lean/declarations/normalize-smul-of-pos--4719372071db1ec763bede00.md) | 60 | `result-track:4719372071db1ec763bede003ad62bc4199b841dad15c125d712c913091b3697` |
| 10 | `theorem` | [normalize_smul_of_neg](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Normalize/Variant3c28aa34fa9db3b5ef03675c60bdecb5a85ecd450f6c4e139f227420525125a1.lean/declarations/normalize-smul-of-neg--b34559c7ae6b21e919cef492.md) | 64 | `result-track:b34559c7ae6b21e919cef492989a025157ebe9acef29099156dba5a3ccf218a3` |
| 11 | `theorem` | [normalize_smul](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Normalize/Variant3c28aa34fa9db3b5ef03675c60bdecb5a85ecd450f6c4e139f227420525125a1.lean/declarations/normalize-smul--68880d2b62a28eef1655c137.md) | 68 | `result-track:68880d2b62a28eef1655c13785ed94b94ad0b7dd5eced57c1461ca00ee76221c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
