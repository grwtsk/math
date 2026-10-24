# Verification target: GRWTSK.Analysis.ComplexAnalysis.Complex.Variant8045813a3f3f9471016ab7d7c4d305f68df0badaacdca2e12d5df116be0fbee3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "145f6aeaa6e2bbca2d5bf51e1503b241a61eadb0",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/Complex/Variant8045813a3f3f9471016ab7d7c4d305f68df0badaacdca2e12d5df116be0fbee3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant8045813a3f3f9471016ab7d7c4d305f68df0badaacdca2e12d5df116be0fbee3.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant8045813a3f3f9471016ab7d7c4d305f68df0badaacdca2e12d5df116be0fbee3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `145f6aeaa6e2bbca2d5bf51e1503b241a61eadb0`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/Complex/Variant8045813a3f3f9471016ab7d7c4d305f68df0badaacdca2e12d5df116be0fbee3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/Complex/Variant8045813a3f3f9471016ab7d7c4d305f68df0badaacdca2e12d5df116be0fbee3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Complex.Log` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant8045813a3f3f9471016ab7d7c4d305f68df0badaacdca2e12d5df116be0fbee3.lean/declarations/macro-rules--ea40f1952279e566f2bfbc5a.md) | 16 | `declaration-track:ea40f1952279e566f2bfbc5afd401f5cf9d0bf247c69a455dbbfa8da05114bbf` |
| 2 | `def` | [cpow](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant8045813a3f3f9471016ab7d7c4d305f68df0badaacdca2e12d5df116be0fbee3.lean/declarations/cpow--b1f060a766da36d47032ee9b.md) | 25 | `declaration-track:b1f060a766da36d47032ee9b51042e2aebd3744416695bfae0a9f96627054ad5` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant8045813a3f3f9471016ab7d7c4d305f68df0badaacdca2e12d5df116be0fbee3.lean/declarations/instance--b4f97dbf90e19f3a00504a63.md) | 29 | `declaration-track:b4f97dbf90e19f3a00504a63cb49f4bf6e97bf58591be94ace0662cad763f235` |
| 4 | `theorem` | [cpow_eq_pow](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant8045813a3f3f9471016ab7d7c4d305f68df0badaacdca2e12d5df116be0fbee3.lean/declarations/cpow-eq-pow--1af2bd02679bab89ecb8d13a.md) | 33 | `result-track:1af2bd02679bab89ecb8d13afb047db8feb5a5d238faa6bc78315eda447eb98c` |
| 5 | `theorem` | [cpow_def](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant8045813a3f3f9471016ab7d7c4d305f68df0badaacdca2e12d5df116be0fbee3.lean/declarations/cpow-def--796b924d07dd64f076a2cf8f.md) | 37 | `result-track:796b924d07dd64f076a2cf8f8d32016f4e9b22501cff1d0c7bd881e8d1846ac2` |
| 6 | `theorem` | [cpow_def_of_ne_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant8045813a3f3f9471016ab7d7c4d305f68df0badaacdca2e12d5df116be0fbee3.lean/declarations/cpow-def-of-ne-zero--5d631be8502bc153329c7543.md) | 41 | `result-track:5d631be8502bc153329c75435e4fae4c36a9762c535ad30f6ecc7f8042714e71` |
| 7 | `theorem` | [cpow_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant8045813a3f3f9471016ab7d7c4d305f68df0badaacdca2e12d5df116be0fbee3.lean/declarations/cpow-zero--806d5e8d1f1cabab14036da9.md) | 46 | `result-track:806d5e8d1f1cabab14036da9f6e6c6b22efbbfc339703f152bb86980e287fe33` |
| 8 | `theorem` | [cpow_eq_zero_iff](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant8045813a3f3f9471016ab7d7c4d305f68df0badaacdca2e12d5df116be0fbee3.lean/declarations/cpow-eq-zero-iff--0c4e021ef832c236b5487182.md) | 50 | `result-track:0c4e021ef832c236b5487182813c8a346d5068c882150b9eaa98f052e3e5091d` |
| 9 | `theorem` | [zero_cpow](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant8045813a3f3f9471016ab7d7c4d305f68df0badaacdca2e12d5df116be0fbee3.lean/declarations/zero-cpow--cc048c394d0803bd34c9467a.md) | 56 | `result-track:cc048c394d0803bd34c9467a687fe56f8c45535e5cdb60d95e877baf7f7c823a` |
| 10 | `theorem` | [zero_cpow_eq_iff](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant8045813a3f3f9471016ab7d7c4d305f68df0badaacdca2e12d5df116be0fbee3.lean/declarations/zero-cpow-eq-iff--392241313129a96ce902f0b8.md) | 59 | `result-track:392241313129a96ce902f0b870d460cdc5340e77c91717fe33414c47d9732b91` |
| 11 | `theorem` | [eq_zero_cpow_iff](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant8045813a3f3f9471016ab7d7c4d305f68df0badaacdca2e12d5df116be0fbee3.lean/declarations/eq-zero-cpow-iff--0c67141d2ac08185bf5b082b.md) | 76 | `result-track:0c67141d2ac08185bf5b082bffc90103fd93acbb57c72579abb9d48e0640a2a2` |
| 12 | `theorem` | [cpow_one](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant8045813a3f3f9471016ab7d7c4d305f68df0badaacdca2e12d5df116be0fbee3.lean/declarations/cpow-one--dd99ef1c759f435f8b2ae855.md) | 81 | `result-track:dd99ef1c759f435f8b2ae8559b33cb47d88b09b28d985aaf0e21bf769e2a2d55` |
| 13 | `theorem` | [one_cpow](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant8045813a3f3f9471016ab7d7c4d305f68df0badaacdca2e12d5df116be0fbee3.lean/declarations/one-cpow--2eb14f60e5891b13de418dc9.md) | 87 | `result-track:2eb14f60e5891b13de418dc96a61112fa11a929378f72667ccd600d32163afbc` |
| 14 | `theorem` | [cpow_add](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant8045813a3f3f9471016ab7d7c4d305f68df0badaacdca2e12d5df116be0fbee3.lean/declarations/cpow-add--1184e7d1551c6a5caf042417.md) | 92 | `result-track:1184e7d1551c6a5caf04241794422ddf88cf701728309d90e1e168085a5cb998` |
| 15 | `theorem` | [cpow_mul](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant8045813a3f3f9471016ab7d7c4d305f68df0badaacdca2e12d5df116be0fbee3.lean/declarations/cpow-mul--af5e86a1e80e42f779ab40a1.md) | 97 | `result-track:af5e86a1e80e42f779ab40a175678d6f28fd7c14978915d1fab117d5b10bcf1d` |
| 16 | `theorem` | [cpow_neg](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant8045813a3f3f9471016ab7d7c4d305f68df0badaacdca2e12d5df116be0fbee3.lean/declarations/cpow-neg--29330606111e5b3c840748e5.md) | 103 | `result-track:29330606111e5b3c840748e5dd2c8d4b07860188f3106ea6ed9360d189da3720` |
| 17 | `theorem` | [cpow_sub](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant8045813a3f3f9471016ab7d7c4d305f68df0badaacdca2e12d5df116be0fbee3.lean/declarations/cpow-sub--1d0775b04cd4bc275471ba66.md) | 108 | `result-track:1d0775b04cd4bc275471ba6679582b2adc3ecc65776631428afbb4eb1fc41fd7` |
| 18 | `theorem` | [cpow_neg_one](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant8045813a3f3f9471016ab7d7c4d305f68df0badaacdca2e12d5df116be0fbee3.lean/declarations/cpow-neg-one--847908444f57bc252abc4fa1.md) | 112 | `result-track:847908444f57bc252abc4fa12fa2ef77693e24b2334cf3d97be7ef43a1b1e7b4` |
| 19 | `theorem` | [cpow_nat_cast](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant8045813a3f3f9471016ab7d7c4d305f68df0badaacdca2e12d5df116be0fbee3.lean/declarations/cpow-nat-cast--c3fc80643fa8942c0face81b.md) | 116 | `result-track:c3fc80643fa8942c0face81b02dc10c0a5b21cc3441bb92874ba5feef405c1f7` |
| 20 | `theorem` | [cpow_two](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant8045813a3f3f9471016ab7d7c4d305f68df0badaacdca2e12d5df116be0fbee3.lean/declarations/cpow-two--ab1fe7cfd19064b51e513dae.md) | 126 | `result-track:ab1fe7cfd19064b51e513daebb0b15ab97291fb3695dd71e4b32ec5f12b2b0b9` |
| 21 | `theorem` | [cpow_int_cast](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant8045813a3f3f9471016ab7d7c4d305f68df0badaacdca2e12d5df116be0fbee3.lean/declarations/cpow-int-cast--762146f332913300e2302077.md) | 133 | `result-track:762146f332913300e2302077fc8b82c4031bfb8de9b7e3d949e055e51ca3ffcb` |
| 22 | `theorem` | [cpow_nat_inv_pow](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant8045813a3f3f9471016ab7d7c4d305f68df0badaacdca2e12d5df116be0fbee3.lean/declarations/cpow-nat-inv-pow--1f43ebff256cf85c1b63fd0b.md) | 141 | `result-track:1f43ebff256cf85c1b63fd0b98f7dabb77c751e857868bc5d04e645b54777cb9` |
| 23 | `theorem` | [mul_cpow_ofReal_nonneg](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant8045813a3f3f9471016ab7d7c4d305f68df0badaacdca2e12d5df116be0fbee3.lean/declarations/mul-cpow-ofreal-nonneg--a5d26cdd99181abd6e546b73.md) | 164 | `result-track:a5d26cdd99181abd6e546b739dda124845d3b80982c88149e67ddf2fb9b34d0d` |
| 24 | `theorem` | [inv_cpow_eq_ite](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant8045813a3f3f9471016ab7d7c4d305f68df0badaacdca2e12d5df116be0fbee3.lean/declarations/inv-cpow-eq-ite--e673dcaeec74ea51e88b077d.md) | 178 | `result-track:e673dcaeec74ea51e88b077d90d363ea2d5886e11cbc7eb467ee8629485c581f` |
| 25 | `theorem` | [inv_cpow](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant8045813a3f3f9471016ab7d7c4d305f68df0badaacdca2e12d5df116be0fbee3.lean/declarations/inv-cpow--988ac5db7ca056a49ae6b216.md) | 186 | `result-track:988ac5db7ca056a49ae6b216170b9c232e6e08ac0de9165299801bcbcfe874a2` |
| 26 | `theorem` | [inv_cpow_eq_ite'](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant8045813a3f3f9471016ab7d7c4d305f68df0badaacdca2e12d5df116be0fbee3.lean/declarations/inv-cpow-eq-ite--41cdac13be4da5a45c2942f8.md) | 191 | `result-track:41cdac13be4da5a45c2942f897c00033acfd9aec7fed6d3877564afbb42af325` |
| 27 | `theorem` | [conj_cpow_eq_ite](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant8045813a3f3f9471016ab7d7c4d305f68df0badaacdca2e12d5df116be0fbee3.lean/declarations/conj-cpow-eq-ite--3eab8777128d6ede0457237c.md) | 199 | `result-track:3eab8777128d6ede0457237c4773404cb4a7d14accea0581fa011435e7237055` |
| 28 | `theorem` | [conj_cpow](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant8045813a3f3f9471016ab7d7c4d305f68df0badaacdca2e12d5df116be0fbee3.lean/declarations/conj-cpow--11bd7760ec1ab7e16c4abd92.md) | 206 | `result-track:11bd7760ec1ab7e16c4abd92f86f77bf3a1d27a7312b076f82d4f7fb444a4f02` |
| 29 | `theorem` | [cpow_conj](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant8045813a3f3f9471016ab7d7c4d305f68df0badaacdca2e12d5df116be0fbee3.lean/declarations/cpow-conj--a61e731a99349453b84c3b91.md) | 210 | `result-track:a61e731a99349453b84c3b918442f4aa474105b691700fcfc7d07e07e49e0a6b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
