# Verification target: GRWTSK.Algebra.UniversalAlgebra.Field.Variant9f54f107f5aba3f0699ebe2dc401ae1b28a670032857218a524e7d5059ece02d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "92ab926ecb0e0c89f665410d1080ef595a35d096",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Field/Variant9f54f107f5aba3f0699ebe2dc401ae1b28a670032857218a524e7d5059ece02d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Field/Variant9f54f107f5aba3f0699ebe2dc401ae1b28a670032857218a524e7d5059ece02d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Field/Variant9f54f107f5aba3f0699ebe2dc401ae1b28a670032857218a524e7d5059ece02d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `92ab926ecb0e0c89f665410d1080ef595a35d096`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Field/Variant9f54f107f5aba3f0699ebe2dc401ae1b28a670032857218a524e7d5059ece02d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Field/Variant9f54f107f5aba3f0699ebe2dc401ae1b28a670032857218a524e7d5059ece02d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Field.Canonical` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Nonneg.Ring` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Order.Ring` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [NNRat.cast_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Field/Variant9f54f107f5aba3f0699ebe2dc401ae1b28a670032857218a524e7d5059ece02d.lean/declarations/nnrat-cast-nonneg--36549f5c74faf964dc6ff826.md) | 41 | `result-track:36549f5c74faf964dc6ff8266167bb3161909b068809a4b95c559a4b8e6e7ec6` |
| 2 | `lemma` | [nnqsmul_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Field/Variant9f54f107f5aba3f0699ebe2dc401ae1b28a670032857218a524e7d5059ece02d.lean/declarations/nnqsmul-nonneg--63d908ede6ce455968ddadc0.md) | 44 | `result-track:63d908ede6ce455968ddadc052168b587a8528e181ed8abb9803cc6b79e6e695` |
| 3 | `instance` | [inv](../../../../../mathematics/Algebra/UniversalAlgebra/Field/Variant9f54f107f5aba3f0699ebe2dc401ae1b28a670032857218a524e7d5059ece02d.lean/declarations/inv--3add47bf293801d447cb951d.md) | 55 | `declaration-track:3add47bf293801d447cb951d2680494a15057d39d787557f062313cd017f4400` |
| 4 | `theorem` | [coe_inv](../../../../../mathematics/Algebra/UniversalAlgebra/Field/Variant9f54f107f5aba3f0699ebe2dc401ae1b28a670032857218a524e7d5059ece02d.lean/declarations/coe-inv--7c4100c1190f30382be5bd66.md) | 59 | `result-track:7c4100c1190f30382be5bd66ff3c9ed15a9b35ee3b9f21886b74bf11855ee647` |
| 5 | `theorem` | [inv_mk](../../../../../mathematics/Algebra/UniversalAlgebra/Field/Variant9f54f107f5aba3f0699ebe2dc401ae1b28a670032857218a524e7d5059ece02d.lean/declarations/inv-mk--74ccb907d641d1dc2fae8fb4.md) | 63 | `result-track:74ccb907d641d1dc2fae8fb4050881bda79ebcc90417f37abe8ac17167781d22` |
| 6 | `instance` | [div](../../../../../mathematics/Algebra/UniversalAlgebra/Field/Variant9f54f107f5aba3f0699ebe2dc401ae1b28a670032857218a524e7d5059ece02d.lean/declarations/div--3f7c6b34d07ede18d8703b59.md) | 67 | `declaration-track:3f7c6b34d07ede18d8703b59e271d1d8bcabfa8cfb9c6b2c478ef9f7d5f168ae` |
| 7 | `theorem` | [coe_div](../../../../../mathematics/Algebra/UniversalAlgebra/Field/Variant9f54f107f5aba3f0699ebe2dc401ae1b28a670032857218a524e7d5059ece02d.lean/declarations/coe-div--3fad687afe3d974ea6bff997.md) | 71 | `result-track:3fad687afe3d974ea6bff99729aaced86e990f481937cc698b2426dc2025c5ed` |
| 8 | `theorem` | [mk_div_mk](../../../../../mathematics/Algebra/UniversalAlgebra/Field/Variant9f54f107f5aba3f0699ebe2dc401ae1b28a670032857218a524e7d5059ece02d.lean/declarations/mk-div-mk--15ff196c83431fd28d9c6c8c.md) | 75 | `result-track:15ff196c83431fd28d9c6c8c0ebe800b886936ddee51a0a32f019638403de3db` |
| 9 | `instance` | [zpow](../../../../../mathematics/Algebra/UniversalAlgebra/Field/Variant9f54f107f5aba3f0699ebe2dc401ae1b28a670032857218a524e7d5059ece02d.lean/declarations/zpow--d72ace56b20c493b603f7f2a.md) | 79 | `declaration-track:d72ace56b20c493b603f7f2a37ff340f582370f7216ec40576956b716dc90d75` |
| 10 | `theorem` | [coe_zpow](../../../../../mathematics/Algebra/UniversalAlgebra/Field/Variant9f54f107f5aba3f0699ebe2dc401ae1b28a670032857218a524e7d5059ece02d.lean/declarations/coe-zpow--2073f2e5ef6a821fe610eacc.md) | 83 | `result-track:2073f2e5ef6a821fe610eacc7ceca297ce88f500c5a13ce358c5ede688d79df5` |
| 11 | `theorem` | [mk_zpow](../../../../../mathematics/Algebra/UniversalAlgebra/Field/Variant9f54f107f5aba3f0699ebe2dc401ae1b28a670032857218a524e7d5059ece02d.lean/declarations/mk-zpow--daa9910257ab68eb6af4a73c.md) | 88 | `result-track:daa9910257ab68eb6af4a73c37d48e377f4907993138953a6e06c7359a4fadad` |
| 12 | `instance` | [instNNRatCast](../../../../../mathematics/Algebra/UniversalAlgebra/Field/Variant9f54f107f5aba3f0699ebe2dc401ae1b28a670032857218a524e7d5059ece02d.lean/declarations/instnnratcast--71894907b6c016623b33e111.md) | 92 | `declaration-track:71894907b6c016623b33e1112c63d2a9ea79566c2b366ee8924d58080a30ed6e` |
| 13 | `instance` | [instNNRatSMul](../../../../../mathematics/Algebra/UniversalAlgebra/Field/Variant9f54f107f5aba3f0699ebe2dc401ae1b28a670032857218a524e7d5059ece02d.lean/declarations/instnnratsmul--f0fb7831ea4d59f89c553db6.md) | 93 | `declaration-track:f0fb7831ea4d59f89c553db6ea5043ab48a065f80e4c5cd8243aed5bd755b32b` |
| 14 | `lemma` | [coe_nnratCast](../../../../../mathematics/Algebra/UniversalAlgebra/Field/Variant9f54f107f5aba3f0699ebe2dc401ae1b28a670032857218a524e7d5059ece02d.lean/declarations/coe-nnratcast--f00c95c6879ff6d8ad0ea5eb.md) | 96 | `result-track:f00c95c6879ff6d8ad0ea5eb6bfe9c734ae8c0822cb1c119a0abb9fdda987cb3` |
| 15 | `lemma` | [mk_nnratCast](../../../../../mathematics/Algebra/UniversalAlgebra/Field/Variant9f54f107f5aba3f0699ebe2dc401ae1b28a670032857218a524e7d5059ece02d.lean/declarations/mk-nnratcast--74b908fbdd0cfbc2686f5acb.md) | 97 | `result-track:74b908fbdd0cfbc2686f5acb5f21295f56e3460525b718823b5bbf378bbf599b` |
| 16 | `lemma` | [coe_nnqsmul](../../../../../mathematics/Algebra/UniversalAlgebra/Field/Variant9f54f107f5aba3f0699ebe2dc401ae1b28a670032857218a524e7d5059ece02d.lean/declarations/coe-nnqsmul--b0050569438906a30cd6d82c.md) | 99 | `result-track:b0050569438906a30cd6d82c93726650efb5077931ea5b5ab4fae6d535c0479f` |
| 17 | `lemma` | [mk_nnqsmul](../../../../../mathematics/Algebra/UniversalAlgebra/Field/Variant9f54f107f5aba3f0699ebe2dc401ae1b28a670032857218a524e7d5059ece02d.lean/declarations/mk-nnqsmul--fa10957d8b622c41388bbb02.md) | 101 | `result-track:fa10957d8b622c41388bbb02f9c0d03d4706f6612945a1c15ea67b1f7d46cd66` |
| 18 | `instance` | [semifield](../../../../../mathematics/Algebra/UniversalAlgebra/Field/Variant9f54f107f5aba3f0699ebe2dc401ae1b28a670032857218a524e7d5059ece02d.lean/declarations/semifield--8be7812498fbed73e42eed87.md) | 105 | `declaration-track:8be7812498fbed73e42eed870081a253e3884c7d49e9fa30e3822753f841b473` |
| 19 | `instance` | [linearOrderedCommGroupWithZero](../../../../../mathematics/Algebra/UniversalAlgebra/Field/Variant9f54f107f5aba3f0699ebe2dc401ae1b28a670032857218a524e7d5059ece02d.lean/declarations/linearorderedcommgroupwithzero--8c80297d9f806e1397a9b385.md) | 112 | `declaration-track:8c80297d9f806e1397a9b385b054b3b0284892c582946f8bf65a7312ec20712b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
