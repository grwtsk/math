# Verification target: GRWTSK.Algebra.Defs.Variante4cd58c58437baddccb2926e0b8adab129a0db2395a412f49ae57cf137cc6ccc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8b05abf31a9de39fd4f6b3928eb82ea61793b1cb",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Defs/Variante4cd58c58437baddccb2926e0b8adab129a0db2395a412f49ae57cf137cc6ccc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Defs/Variante4cd58c58437baddccb2926e0b8adab129a0db2395a412f49ae57cf137cc6ccc.lean/index.md) · [Full source](../../../../mathematics/Algebra/Defs/Variante4cd58c58437baddccb2926e0b8adab129a0db2395a412f49ae57cf137cc6ccc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8b05abf31a9de39fd4f6b3928eb82ea61793b1cb`.

Source path: `GRWTSK/Algebra/Defs/Variante4cd58c58437baddccb2926e0b8adab129a0db2395a412f49ae57cf137cc6ccc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Defs/Variante4cd58c58437baddccb2926e0b8adab129a0db2395a412f49ae57cf137cc6ccc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.RelClasses` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [EuclideanDomain](../../../../mathematics/Algebra/Defs/Variante4cd58c58437baddccb2926e0b8adab129a0db2395a412f49ae57cf137cc6ccc.lean/declarations/euclideandomain--ced60fa2bfdf3818c76563c7.md) | 77 | `declaration-track:ced60fa2bfdf3818c76563c7d6559c6c90f6a5fbe1fdfa1f6c4a00f9309dfe61` |
| 2 | `instance` | [wellFoundedRelation](../../../../mathematics/Algebra/Defs/Variante4cd58c58437baddccb2926e0b8adab129a0db2395a412f49ae57cf137cc6ccc.lean/declarations/wellfoundedrelation--1120260936a0bfe417e5e4c1.md) | 107 | `declaration-track:1120260936a0bfe417e5e4c17e610a61fdeb226700ad70f57a78e3901b7a4a70` |
| 3 | `instance` | [isWellFounded](../../../../mathematics/Algebra/Defs/Variante4cd58c58437baddccb2926e0b8adab129a0db2395a412f49ae57cf137cc6ccc.lean/declarations/iswellfounded--b77386ce722e4cf641758041.md) | 111 | `declaration-track:b77386ce722e4cf6417580413ed0eb0ffde89f11c71c2a773fd29420b1c25e78` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variante4cd58c58437baddccb2926e0b8adab129a0db2395a412f49ae57cf137cc6ccc.lean/declarations/instance--c7b9f15448337b11a69c79ee.md) | 115 | `declaration-track:c7b9f15448337b11a69c79eeeca8fecd54b2b1fb8c697ce06e33b39bf1e1aa48` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variante4cd58c58437baddccb2926e0b8adab129a0db2395a412f49ae57cf137cc6ccc.lean/declarations/instance--c216032baa816c2e8036b78b.md) | 119 | `declaration-track:c216032baa816c2e8036b78b7cf2178416726a692204fb8b0836e7da252be5aa` |
| 6 | `theorem` | [div_add_mod](../../../../mathematics/Algebra/Defs/Variante4cd58c58437baddccb2926e0b8adab129a0db2395a412f49ae57cf137cc6ccc.lean/declarations/div-add-mod--7a919d7d57ef16801799623a.md) | 122 | `result-track:7a919d7d57ef16801799623a954737315c31163c39ab05244ca24c50f6255e33` |
| 7 | `theorem` | [mod_add_div](../../../../mathematics/Algebra/Defs/Variante4cd58c58437baddccb2926e0b8adab129a0db2395a412f49ae57cf137cc6ccc.lean/declarations/mod-add-div--daab414c3fc8035835d98ee4.md) | 125 | `result-track:daab414c3fc8035835d98ee46e72b53650a14ae526a39a7c9e46eff2a1bda288` |
| 8 | `theorem` | [mod_add_div'](../../../../mathematics/Algebra/Defs/Variante4cd58c58437baddccb2926e0b8adab129a0db2395a412f49ae57cf137cc6ccc.lean/declarations/mod-add-div--1d2bd6c0150b91eb759f935c.md) | 128 | `result-track:1d2bd6c0150b91eb759f935cca73e40d8f26ddc3a08b741b8d7019adacd4b4da` |
| 9 | `theorem` | [div_add_mod'](../../../../mathematics/Algebra/Defs/Variante4cd58c58437baddccb2926e0b8adab129a0db2395a412f49ae57cf137cc6ccc.lean/declarations/div-add-mod--bc10928f75ed17c7b5f6c42a.md) | 132 | `result-track:bc10928f75ed17c7b5f6c42ab2b414ab63e6b30cce25ae0a49b903b8859546ba` |
| 10 | `theorem` | [mod_lt](../../../../mathematics/Algebra/Defs/Variante4cd58c58437baddccb2926e0b8adab129a0db2395a412f49ae57cf137cc6ccc.lean/declarations/mod-lt--d376c36376e64d2041ee78a0.md) | 136 | `result-track:d376c36376e64d2041ee78a0c36becbf8f9b5a14ea3ada6e8fc4e631987dfb7b` |
| 11 | `theorem` | [mul_right_not_lt](../../../../mathematics/Algebra/Defs/Variante4cd58c58437baddccb2926e0b8adab129a0db2395a412f49ae57cf137cc6ccc.lean/declarations/mul-right-not-lt--c6c9053180bd7efd80f84d11.md) | 139 | `result-track:c6c9053180bd7efd80f84d110831e27fc9c50354b85878c2c148a62a8563aa8d` |
| 12 | `theorem` | [mod_zero](../../../../mathematics/Algebra/Defs/Variante4cd58c58437baddccb2926e0b8adab129a0db2395a412f49ae57cf137cc6ccc.lean/declarations/mod-zero--3c2aab98fe4babaa2a554fbf.md) | 144 | `result-track:3c2aab98fe4babaa2a554fbf1ccb694461a87e30552c54f0cc12f9b9933243ce` |
| 13 | `theorem` | [lt_one](../../../../mathematics/Algebra/Defs/Variante4cd58c58437baddccb2926e0b8adab129a0db2395a412f49ae57cf137cc6ccc.lean/declarations/lt-one--dd6705e2dabdaeccc7aedf45.md) | 146 | `result-track:dd6705e2dabdaeccc7aedf45e7b1dc791fdd26f06a2241e0b8b491d0c0a4b4dd` |
| 14 | `theorem` | [div_zero](../../../../mathematics/Algebra/Defs/Variante4cd58c58437baddccb2926e0b8adab129a0db2395a412f49ae57cf137cc6ccc.lean/declarations/div-zero--953df79a8edeb6701e004b21.md) | 151 | `result-track:953df79a8edeb6701e004b21b7c0074e2fc6c69908e369c549e2df2efbf193b3` |
| 15 | `theorem` | [GCD.induction](../../../../mathematics/Algebra/Defs/Variante4cd58c58437baddccb2926e0b8adab129a0db2395a412f49ae57cf137cc6ccc.lean/declarations/gcd-induction--1847fa3bba8e1f62f975164a.md) | 157 | `result-track:1847fa3bba8e1f62f975164a6454bdc1724a4b813a4e5846aa9fc7422f73a51c` |
| 16 | `def` | [gcd](../../../../mathematics/Algebra/Defs/Variante4cd58c58437baddccb2926e0b8adab129a0db2395a412f49ae57cf137cc6ccc.lean/declarations/gcd--aedafd0a583747fe7d962228.md) | 175 | `declaration-track:aedafd0a583747fe7d9622282748bfe589ec741e6c1bcec96e00a35f4fe4d6e2` |
| 17 | `theorem` | [gcd_zero_left](../../../../mathematics/Algebra/Defs/Variante4cd58c58437baddccb2926e0b8adab129a0db2395a412f49ae57cf137cc6ccc.lean/declarations/gcd-zero-left--09c2a7a681484e9aff4b4ce7.md) | 183 | `result-track:09c2a7a681484e9aff4b4ce73dac19a12d6676597b520c0938a78f645da52fcc` |
| 18 | `def` | [xgcdAux](../../../../mathematics/Algebra/Defs/Variante4cd58c58437baddccb2926e0b8adab129a0db2395a412f49ae57cf137cc6ccc.lean/declarations/xgcdaux--7992b005ae4198a6e14ef576.md) | 196 | `declaration-track:7992b005ae4198a6e14ef57643ab7bd69665f045c105b486568d2f820a579a2a` |
| 19 | `theorem` | [xgcd_zero_left](../../../../mathematics/Algebra/Defs/Variante4cd58c58437baddccb2926e0b8adab129a0db2395a412f49ae57cf137cc6ccc.lean/declarations/xgcd-zero-left--c4b250a3d7aeecacc944d279.md) | 205 | `result-track:c4b250a3d7aeecacc944d279db326394ce1991e8d90ad8af9579ba8913cdf3c1` |
| 20 | `theorem` | [xgcdAux_rec](../../../../mathematics/Algebra/Defs/Variante4cd58c58437baddccb2926e0b8adab129a0db2395a412f49ae57cf137cc6ccc.lean/declarations/xgcdaux-rec--3b6f9e1d67eebf71470cfebe.md) | 209 | `result-track:3b6f9e1d67eebf71470cfebedf21c54c0ed53f6753f938000ad073df1e5616f4` |
| 21 | `def` | [xgcd](../../../../mathematics/Algebra/Defs/Variante4cd58c58437baddccb2926e0b8adab129a0db2395a412f49ae57cf137cc6ccc.lean/declarations/xgcd--e40d8f96b24c0c9f1b1815c0.md) | 218 | `declaration-track:e40d8f96b24c0c9f1b1815c0ca66ba1c0ace3b1b4b7d0d4920a36be04b7f3e2d` |
| 22 | `def` | [gcdA](../../../../mathematics/Algebra/Defs/Variante4cd58c58437baddccb2926e0b8adab129a0db2395a412f49ae57cf137cc6ccc.lean/declarations/gcda--77aa012c99976988e5375712.md) | 222 | `declaration-track:77aa012c99976988e5375712f8b8b85f676a30131858216e162a43e82c311669` |
| 23 | `def` | [gcdB](../../../../mathematics/Algebra/Defs/Variante4cd58c58437baddccb2926e0b8adab129a0db2395a412f49ae57cf137cc6ccc.lean/declarations/gcdb--e443ea15e6c086acd309434b.md) | 226 | `declaration-track:e443ea15e6c086acd309434be6bbf558e0d6aa97503ce8a5fbed7c2e5c21fadf` |
| 24 | `theorem` | [gcdA_zero_left](../../../../mathematics/Algebra/Defs/Variante4cd58c58437baddccb2926e0b8adab129a0db2395a412f49ae57cf137cc6ccc.lean/declarations/gcda-zero-left--e8f3b581d2efbcd659794b22.md) | 230 | `result-track:e8f3b581d2efbcd659794b22a2332a7628eb01fa6cb6bfe4c57b01d3ef89c0aa` |
| 25 | `theorem` | [gcdB_zero_left](../../../../mathematics/Algebra/Defs/Variante4cd58c58437baddccb2926e0b8adab129a0db2395a412f49ae57cf137cc6ccc.lean/declarations/gcdb-zero-left--3ec37f5571c71ead1bada94c.md) | 235 | `result-track:3ec37f5571c71ead1bada94c10c1e10300a49565302b1b8d0741247c4d8edaa9` |
| 26 | `theorem` | [xgcd_val](../../../../mathematics/Algebra/Defs/Variante4cd58c58437baddccb2926e0b8adab129a0db2395a412f49ae57cf137cc6ccc.lean/declarations/xgcd-val--17c14e407924ae04dab483f5.md) | 239 | `result-track:17c14e407924ae04dab483f519c909112ef0957a42e099b58cc5a426d13c10b5` |
| 27 | `def` | [lcm](../../../../mathematics/Algebra/Defs/Variante4cd58c58437baddccb2926e0b8adab129a0db2395a412f49ae57cf137cc6ccc.lean/declarations/lcm--bbcbcf0bb165f9abd2144d39.md) | 250 | `declaration-track:bbcbcf0bb165f9abd2144d3988ef7853b5d1ecdc3bb3b61558539129fe007cb5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
