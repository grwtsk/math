# Verification target: GRWTSK.Algebra.CommutativeAlgebra.ScaleRoots.Variant69568b6857b15af3f5cea11ec5147f27f7e9c18c63eca6c80125eb58d4f75ed6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6cf059d83b19f8c6570f3f5a41367af9a595bbc5",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/ScaleRoots/Variant69568b6857b15af3f5cea11ec5147f27f7e9c18c63eca6c80125eb58d4f75ed6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant69568b6857b15af3f5cea11ec5147f27f7e9c18c63eca6c80125eb58d4f75ed6.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant69568b6857b15af3f5cea11ec5147f27f7e9c18c63eca6c80125eb58d4f75ed6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6cf059d83b19f8c6570f3f5a41367af9a595bbc5`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/ScaleRoots/Variant69568b6857b15af3f5cea11ec5147f27f7e9c18c63eca6c80125eb58d4f75ed6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/ScaleRoots/Variant69568b6857b15af3f5cea11ec5147f27f7e9c18c63eca6c80125eb58d4f75ed6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.NonZeroDivisors` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.AlgebraMap` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Coprime.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.AdaptationNote` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [scaleRoots](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant69568b6857b15af3f5cea11ec5147f27f7e9c18c63eca6c80125eb58d4f75ed6.lean/declarations/scaleroots--bda9b68ccc1f7b6f1199109e.md) | 36 | `declaration-track:bda9b68ccc1f7b6f1199109efe930201b86b472ce105f2ccfcfbc41471e95275` |
| 2 | `theorem` | [coeff_scaleRoots](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant69568b6857b15af3f5cea11ec5147f27f7e9c18c63eca6c80125eb58d4f75ed6.lean/declarations/coeff-scaleroots--51eddaec72d441b5e2e4f5af.md) | 40 | `result-track:51eddaec72d441b5e2e4f5afc1f04d2ae0035f37c2366d46bcaebae7de740e6c` |
| 3 | `theorem` | [coeff_scaleRoots_natDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant69568b6857b15af3f5cea11ec5147f27f7e9c18c63eca6c80125eb58d4f75ed6.lean/declarations/coeff-scaleroots-natdegree--71259b91ff97080d9a31ecc5.md) | 44 | `result-track:71259b91ff97080d9a31ecc5224db15079b38003efcc5277b22e1fb871d476d6` |
| 4 | `theorem` | [zero_scaleRoots](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant69568b6857b15af3f5cea11ec5147f27f7e9c18c63eca6c80125eb58d4f75ed6.lean/declarations/zero-scaleroots--1a7b0d4b15d64fb3d6b45f56.md) | 49 | `result-track:1a7b0d4b15d64fb3d6b45f566a4b9d1a517e0f0deb761ea1c0bb0f3c6070bd6d` |
| 5 | `theorem` | [scaleRoots_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant69568b6857b15af3f5cea11ec5147f27f7e9c18c63eca6c80125eb58d4f75ed6.lean/declarations/scaleroots-ne-zero--8b39ffbed8c536428cfa0fb9.md) | 53 | `result-track:8b39ffbed8c536428cfa0fb9c7be4930a1af4fcc94277aabfac946c79b65f62a` |
| 6 | `theorem` | [support_scaleRoots_le](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant69568b6857b15af3f5cea11ec5147f27f7e9c18c63eca6c80125eb58d4f75ed6.lean/declarations/support-scaleroots-le--ab50a96052cd5fc2aebe0272.md) | 61 | `result-track:ab50a96052cd5fc2aebe0272c7ae224aef5190b4e2a30649df63a83595516ffe` |
| 7 | `theorem` | [support_scaleRoots_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant69568b6857b15af3f5cea11ec5147f27f7e9c18c63eca6c80125eb58d4f75ed6.lean/declarations/support-scaleroots-eq--22cd2080475c6722e084392e.md) | 65 | `result-track:22cd2080475c6722e084392eb4d9d6702c3bf4b3b5233d2ef73a3ad1566557a2` |
| 8 | `theorem` | [degree_scaleRoots](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant69568b6857b15af3f5cea11ec5147f27f7e9c18c63eca6c80125eb58d4f75ed6.lean/declarations/degree-scaleroots--75dd93475d6d568598899e19.md) | 75 | `result-track:75dd93475d6d568598899e1974b36949540a7304ba6c82e6f206dd6bf2d4c560` |
| 9 | `theorem` | [natDegree_scaleRoots](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant69568b6857b15af3f5cea11ec5147f27f7e9c18c63eca6c80125eb58d4f75ed6.lean/declarations/natdegree-scaleroots--35b183b0a4b20f78fb6bfd47.md) | 86 | `result-track:35b183b0a4b20f78fb6bfd47b1a37f0e983a55b094231ceb1ca6164f53729619` |
| 10 | `theorem` | [monic_scaleRoots_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant69568b6857b15af3f5cea11ec5147f27f7e9c18c63eca6c80125eb58d4f75ed6.lean/declarations/monic-scaleroots-iff--b5bcd0683dd4f52e4e5a25d8.md) | 89 | `result-track:b5bcd0683dd4f52e4e5a25d8aac2a6e0edbcff1e951a16fa66cea01902dd583a` |
| 11 | `theorem` | [map_scaleRoots](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant69568b6857b15af3f5cea11ec5147f27f7e9c18c63eca6c80125eb58d4f75ed6.lean/declarations/map-scaleroots--3364c11fcff3f773d7f997e0.md) | 92 | `result-track:3364c11fcff3f773d7f997e0a627637eeaad6cca52db49e7492afce3b4a606fd` |
| 12 | `lemma` | [scaleRoots_C](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant69568b6857b15af3f5cea11ec5147f27f7e9c18c63eca6c80125eb58d4f75ed6.lean/declarations/scaleroots-c--74c0c23455b2f4a8a9fb4ee0.md) | 98 | `result-track:74c0c23455b2f4a8a9fb4ee095354f5d6a5f270386002c8869b465e5e54eae5e` |
| 13 | `lemma` | [scaleRoots_one](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant69568b6857b15af3f5cea11ec5147f27f7e9c18c63eca6c80125eb58d4f75ed6.lean/declarations/scaleroots-one--9aca0c0e3c049860427e0ca8.md) | 102 | `result-track:9aca0c0e3c049860427e0ca8d15e5cc306890e49dce8322ef357f4d61fa8c0ab` |
| 14 | `lemma` | [scaleRoots_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant69568b6857b15af3f5cea11ec5147f27f7e9c18c63eca6c80125eb58d4f75ed6.lean/declarations/scaleroots-zero--15c087b1b2a5995131677425.md) | 106 | `result-track:15c087b1b2a599513167742558ed4a081be0967ae3abb7f0293004e7d2c25d14` |
| 15 | `lemma` | [one_scaleRoots](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant69568b6857b15af3f5cea11ec5147f27f7e9c18c63eca6c80125eb58d4f75ed6.lean/declarations/one-scaleroots--b4a2e068199d291e4466f76f.md) | 118 | `result-track:b4a2e068199d291e4466f76f07c138ac935a490aaf5a24741d5e38b7b0f45dc8` |
| 16 | `theorem` | [scaleRoots_eval₂_mul_of_commute](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant69568b6857b15af3f5cea11ec5147f27f7e9c18c63eca6c80125eb58d4f75ed6.lean/declarations/scaleroots-eval-mul-of-commute--d244bb6ae67d5724b9abb8db.md) | 127 | `result-track:d244bb6ae67d5724b9abb8dba629a7c6d44b5978a4cbbae857c371fb494075b9` |
| 17 | `theorem` | [scaleRoots_eval₂_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant69568b6857b15af3f5cea11ec5147f27f7e9c18c63eca6c80125eb58d4f75ed6.lean/declarations/scaleroots-eval-mul--00ab7021108d579b0d523052.md) | 147 | `result-track:00ab7021108d579b0d523052e188a513df3b7f3d17d7dc41d4e2dfb236157cbc` |
| 18 | `theorem` | [scaleRoots_eval₂_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant69568b6857b15af3f5cea11ec5147f27f7e9c18c63eca6c80125eb58d4f75ed6.lean/declarations/scaleroots-eval-eq-zero--e3d9db81f05389e1522eaf3a.md) | 151 | `result-track:e3d9db81f05389e1522eaf3acc1a5a816994a86a2372d08b179d25d758a20d56` |
| 19 | `theorem` | [scaleRoots_aeval_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant69568b6857b15af3f5cea11ec5147f27f7e9c18c63eca6c80125eb58d4f75ed6.lean/declarations/scaleroots-aeval-eq-zero--7546f9a9d4e57188602e1f02.md) | 154 | `result-track:7546f9a9d4e57188602e1f0284dc39400bd1cdeb2f194310b8fa7f3435889e8a` |
| 20 | `theorem` | [scaleRoots_eval₂_eq_zero_of_eval₂_div_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant69568b6857b15af3f5cea11ec5147f27f7e9c18c63eca6c80125eb58d4f75ed6.lean/declarations/scaleroots-eval-eq-zero-of-eval-div-eq-zero--8b9c92b39501253cf6c3f2c5.md) | 160 | `result-track:8b9c92b39501253cf6c3f2c555f0c084a54fbd620ec4fccdb958144f8d02b109` |
| 21 | `theorem` | [scaleRoots_aeval_eq_zero_of_aeval_div_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant69568b6857b15af3f5cea11ec5147f27f7e9c18c63eca6c80125eb58d4f75ed6.lean/declarations/scaleroots-aeval-eq-zero-of-aeval-div-eq-zero--449ebd943324f38d5aceae19.md) | 169 | `result-track:449ebd943324f38d5aceae1931d5b2bbbf84ac34c08bbacfcc0cd8240defb03c` |
| 22 | `lemma` | [scaleRoots_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant69568b6857b15af3f5cea11ec5147f27f7e9c18c63eca6c80125eb58d4f75ed6.lean/declarations/scaleroots-mul--e7722213457ed19efc696e7e.md) | 176 | `result-track:e7722213457ed19efc696e7e9fd74d4c9dfa11da8c8c96336241a8317de143ee` |
| 23 | `lemma` | [mul_scaleRoots](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant69568b6857b15af3f5cea11ec5147f27f7e9c18c63eca6c80125eb58d4f75ed6.lean/declarations/mul-scaleroots--16876707313f851bf34f998c.md) | 182 | `result-track:16876707313f851bf34f998c58a2353bdc2085bd6d5c1c924026ef6bdde815e6` |
| 24 | `lemma` | [mul_scaleRoots'](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant69568b6857b15af3f5cea11ec5147f27f7e9c18c63eca6c80125eb58d4f75ed6.lean/declarations/mul-scaleroots--c069112d54f7760c286a0f3d.md) | 206 | `result-track:c069112d54f7760c286a0f3d847d09fcfdf17bf8c8cc127e7dbe4e9c28ac9eee` |
| 25 | `lemma` | [mul_scaleRoots_of_noZeroDivisors](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant69568b6857b15af3f5cea11ec5147f27f7e9c18c63eca6c80125eb58d4f75ed6.lean/declarations/mul-scaleroots-of-nozerodivisors--9bb0fc8f25cc27126ea0b0b0.md) | 210 | `result-track:9bb0fc8f25cc27126ea0b0b0bfa8086798fa2f2d61caf9764496a3ddca028748` |
| 26 | `lemma` | [add_scaleRoots_of_natDegree_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant69568b6857b15af3f5cea11ec5147f27f7e9c18c63eca6c80125eb58d4f75ed6.lean/declarations/add-scaleroots-of-natdegree-eq--7874158e28b01d2781ecf98b.md) | 217 | `result-track:7874158e28b01d2781ecf98bef2e3a6441551e0ba758feb185f9f68518afff01` |
| 27 | `lemma` | [scaleRoots_dvd'](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant69568b6857b15af3f5cea11ec5147f27f7e9c18c63eca6c80125eb58d4f75ed6.lean/declarations/scaleroots-dvd--9a73aaf531f3b4ec9ac7782d.md) | 231 | `result-track:9a73aaf531f3b4ec9ac7782d2351497f76b083372b5147c90d325b5da21deadd` |
| 28 | `lemma` | [scaleRoots_dvd](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant69568b6857b15af3f5cea11ec5147f27f7e9c18c63eca6c80125eb58d4f75ed6.lean/declarations/scaleroots-dvd--81d9d08a038fd1471285e634.md) | 238 | `result-track:81d9d08a038fd1471285e634019a87a77e8ef8b9c9d716343d344d8e22c240a6` |
| 29 | `lemma` | [scaleRoots_dvd_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant69568b6857b15af3f5cea11ec5147f27f7e9c18c63eca6c80125eb58d4f75ed6.lean/declarations/scaleroots-dvd-iff--f49281f8308e69f28c591f20.md) | 245 | `result-track:f49281f8308e69f28c591f20ad27e2519542405989826a6e81f0af0aeb0c56f9` |
| 30 | `lemma` | [isCoprime_scaleRoots](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant69568b6857b15af3f5cea11ec5147f27f7e9c18c63eca6c80125eb58d4f75ed6.lean/declarations/iscoprime-scaleroots--21927a0ccb6c38acf34c06be.md) | 251 | `result-track:21927a0ccb6c38acf34c06be44864fb0b3fee11ee03ba23a7ecf1c7349c052b6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
