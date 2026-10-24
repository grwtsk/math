# Verification target: GRWTSK.Algebra.Defs.Variantef29c629a5b6cab45918267a562f6b898875f7e0ce775ce5b8a3c3c98443b41a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "97fd64a275e19a64452bfa107f0eccce4c153e6d",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Defs/Variantef29c629a5b6cab45918267a562f6b898875f7e0ce775ce5b8a3c3c98443b41a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Defs/Variantef29c629a5b6cab45918267a562f6b898875f7e0ce775ce5b8a3c3c98443b41a.lean/index.md) · [Full source](../../../../mathematics/Algebra/Defs/Variantef29c629a5b6cab45918267a562f6b898875f7e0ce775ce5b8a3c3c98443b41a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `97fd64a275e19a64452bfa107f0eccce4c153e6d`.

Source path: `GRWTSK/Algebra/Defs/Variantef29c629a5b6cab45918267a562f6b898875f7e0ce775ce5b8a3c3c98443b41a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Defs/Variantef29c629a5b6cab45918267a562f6b898875f7e0ce775ce5b8a3c3c98443b41a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.RelClasses` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [EuclideanDomain](../../../../mathematics/Algebra/Defs/Variantef29c629a5b6cab45918267a562f6b898875f7e0ce775ce5b8a3c3c98443b41a.lean/declarations/euclideandomain--c22093da2a33ef5fb817e668.md) | 69 | `declaration-track:c22093da2a33ef5fb817e668d5797ad05bc40c7d80f7a09d1aa9ead0bf750c31` |
| 2 | `instance` | [wellFoundedRelation](../../../../mathematics/Algebra/Defs/Variantef29c629a5b6cab45918267a562f6b898875f7e0ce775ce5b8a3c3c98443b41a.lean/declarations/wellfoundedrelation--0b96953fd59f5b9c942c7d3c.md) | 99 | `declaration-track:0b96953fd59f5b9c942c7d3c53097bfedbb80acc1a2655f05e9fb7724d9e0ae7` |
| 3 | `instance` | [isWellFounded](../../../../mathematics/Algebra/Defs/Variantef29c629a5b6cab45918267a562f6b898875f7e0ce775ce5b8a3c3c98443b41a.lean/declarations/iswellfounded--c72fd636f114a70b9f0ed68d.md) | 103 | `declaration-track:c72fd636f114a70b9f0ed68da97184f09f89d97ab024a1025f57f357e197125b` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantef29c629a5b6cab45918267a562f6b898875f7e0ce775ce5b8a3c3c98443b41a.lean/declarations/instance--a7704f8a46d200ac683bf8ef.md) | 107 | `declaration-track:a7704f8a46d200ac683bf8ef0aa728702c3490fd8edf4247c392d5373e3b3858` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantef29c629a5b6cab45918267a562f6b898875f7e0ce775ce5b8a3c3c98443b41a.lean/declarations/instance--c80d5cb603109d51f5e9aeab.md) | 111 | `declaration-track:c80d5cb603109d51f5e9aeaba842028830b3fbf4f1cda6a84e6c3f3c89b5fdc8` |
| 6 | `theorem` | [div_add_mod](../../../../mathematics/Algebra/Defs/Variantef29c629a5b6cab45918267a562f6b898875f7e0ce775ce5b8a3c3c98443b41a.lean/declarations/div-add-mod--9e710a483df67ab5b96faf8d.md) | 114 | `result-track:9e710a483df67ab5b96faf8dadccf085a36e3089191abed59134460f6cb6ad97` |
| 7 | `theorem` | [mod_add_div](../../../../mathematics/Algebra/Defs/Variantef29c629a5b6cab45918267a562f6b898875f7e0ce775ce5b8a3c3c98443b41a.lean/declarations/mod-add-div--166819fee70da875f3266f29.md) | 117 | `result-track:166819fee70da875f3266f29d0a6b64edbee80cc57e8208c6bcdaf885f6e6aee` |
| 8 | `theorem` | [mod_add_div'](../../../../mathematics/Algebra/Defs/Variantef29c629a5b6cab45918267a562f6b898875f7e0ce775ce5b8a3c3c98443b41a.lean/declarations/mod-add-div--346b1222009ff0bde2c640e8.md) | 120 | `result-track:346b1222009ff0bde2c640e8ffc36b160b5598591131c919ff3c48e16b480f77` |
| 9 | `theorem` | [div_add_mod'](../../../../mathematics/Algebra/Defs/Variantef29c629a5b6cab45918267a562f6b898875f7e0ce775ce5b8a3c3c98443b41a.lean/declarations/div-add-mod--c47c3d3e825283485dd14973.md) | 124 | `result-track:c47c3d3e825283485dd14973bf93a89f7e06e78dd921a05d660a635593e5803c` |
| 10 | `theorem` | [mod_lt](../../../../mathematics/Algebra/Defs/Variantef29c629a5b6cab45918267a562f6b898875f7e0ce775ce5b8a3c3c98443b41a.lean/declarations/mod-lt--88665a751054e55911e05068.md) | 128 | `result-track:88665a751054e55911e05068dab2fc451d57b2a216626123aa2870e3624e7036` |
| 11 | `theorem` | [mul_right_not_lt](../../../../mathematics/Algebra/Defs/Variantef29c629a5b6cab45918267a562f6b898875f7e0ce775ce5b8a3c3c98443b41a.lean/declarations/mul-right-not-lt--6ff98acb7afc11144ec2f6d7.md) | 131 | `result-track:6ff98acb7afc11144ec2f6d7f66bb3cee7460ef781c7dd1bcf5a45707463cdc9` |
| 12 | `theorem` | [mod_zero](../../../../mathematics/Algebra/Defs/Variantef29c629a5b6cab45918267a562f6b898875f7e0ce775ce5b8a3c3c98443b41a.lean/declarations/mod-zero--8dd762b4aff09c5209cf1a3c.md) | 136 | `result-track:8dd762b4aff09c5209cf1a3cc8f8f6bea3839e19e6f5ac7a676dc5bdf7900fb9` |
| 13 | `theorem` | [lt_one](../../../../mathematics/Algebra/Defs/Variantef29c629a5b6cab45918267a562f6b898875f7e0ce775ce5b8a3c3c98443b41a.lean/declarations/lt-one--e6a8a625ca43f56d75bee269.md) | 138 | `result-track:e6a8a625ca43f56d75bee26931793b9e2fc0e3b242041cfa33556c980cfd20e3` |
| 14 | `theorem` | [div_zero](../../../../mathematics/Algebra/Defs/Variantef29c629a5b6cab45918267a562f6b898875f7e0ce775ce5b8a3c3c98443b41a.lean/declarations/div-zero--89f2a67be9080e9291c7f214.md) | 143 | `result-track:89f2a67be9080e9291c7f21417931cab0cc2aa329eb859a7bfd02e415da3cc40` |
| 15 | `theorem` | [GCD.induction](../../../../mathematics/Algebra/Defs/Variantef29c629a5b6cab45918267a562f6b898875f7e0ce775ce5b8a3c3c98443b41a.lean/declarations/gcd-induction--570436cdc897a8d83e7b3ba6.md) | 149 | `result-track:570436cdc897a8d83e7b3ba6c7ba3efc6046bd78472efe573239123204ba65f1` |
| 16 | `def` | [gcd](../../../../mathematics/Algebra/Defs/Variantef29c629a5b6cab45918267a562f6b898875f7e0ce775ce5b8a3c3c98443b41a.lean/declarations/gcd--31d18f256f724d49f03cb1dd.md) | 167 | `declaration-track:31d18f256f724d49f03cb1dd73b7014589a9e59326639fb90cdb8c83f5a32cb8` |
| 17 | `theorem` | [gcd_zero_left](../../../../mathematics/Algebra/Defs/Variantef29c629a5b6cab45918267a562f6b898875f7e0ce775ce5b8a3c3c98443b41a.lean/declarations/gcd-zero-left--1a5175dee4a5f79939fbdd00.md) | 175 | `result-track:1a5175dee4a5f79939fbdd008fab70ee3d807db28fa6928ec15744f67e59bb74` |
| 18 | `def` | [xgcdAux](../../../../mathematics/Algebra/Defs/Variantef29c629a5b6cab45918267a562f6b898875f7e0ce775ce5b8a3c3c98443b41a.lean/declarations/xgcdaux--abc9c035ba66573fb0d4bea4.md) | 188 | `declaration-track:abc9c035ba66573fb0d4bea49bbc2047fdaaaaf8b31fce84c048ad73dc4076c8` |
| 19 | `theorem` | [xgcd_zero_left](../../../../mathematics/Algebra/Defs/Variantef29c629a5b6cab45918267a562f6b898875f7e0ce775ce5b8a3c3c98443b41a.lean/declarations/xgcd-zero-left--d0ec79e76297e736f2356a35.md) | 197 | `result-track:d0ec79e76297e736f2356a3568662b9b2e166818bac3255391eef4b3661492ef` |
| 20 | `theorem` | [xgcdAux_rec](../../../../mathematics/Algebra/Defs/Variantef29c629a5b6cab45918267a562f6b898875f7e0ce775ce5b8a3c3c98443b41a.lean/declarations/xgcdaux-rec--92a9e8741ad4b22ca793cfad.md) | 201 | `result-track:92a9e8741ad4b22ca793cfada99c7449dc41e44bef7255a56821ade685ef47fb` |
| 21 | `def` | [xgcd](../../../../mathematics/Algebra/Defs/Variantef29c629a5b6cab45918267a562f6b898875f7e0ce775ce5b8a3c3c98443b41a.lean/declarations/xgcd--67931f7577f2181f6e913b20.md) | 210 | `declaration-track:67931f7577f2181f6e913b2001fdb39c425fa0f5d715a108bb0832f44bb11c60` |
| 22 | `def` | [gcdA](../../../../mathematics/Algebra/Defs/Variantef29c629a5b6cab45918267a562f6b898875f7e0ce775ce5b8a3c3c98443b41a.lean/declarations/gcda--9911053cc9a3973cb32150ea.md) | 214 | `declaration-track:9911053cc9a3973cb32150eaf0ceb514757e742ab7b58d6ba37ad9324ea1e598` |
| 23 | `def` | [gcdB](../../../../mathematics/Algebra/Defs/Variantef29c629a5b6cab45918267a562f6b898875f7e0ce775ce5b8a3c3c98443b41a.lean/declarations/gcdb--5cfe2fb2c1310356b0d1e3a5.md) | 218 | `declaration-track:5cfe2fb2c1310356b0d1e3a554333aca886c45ec2f2f65ab5e8b626fbff83b01` |
| 24 | `theorem` | [gcdA_zero_left](../../../../mathematics/Algebra/Defs/Variantef29c629a5b6cab45918267a562f6b898875f7e0ce775ce5b8a3c3c98443b41a.lean/declarations/gcda-zero-left--1e946a5613bc677a534fe489.md) | 222 | `result-track:1e946a5613bc677a534fe489e944b9b260357165c98540fd8da58b0d75425e77` |
| 25 | `theorem` | [gcdB_zero_left](../../../../mathematics/Algebra/Defs/Variantef29c629a5b6cab45918267a562f6b898875f7e0ce775ce5b8a3c3c98443b41a.lean/declarations/gcdb-zero-left--ee36da100e67aeb41a55d4f5.md) | 227 | `result-track:ee36da100e67aeb41a55d4f557555970950bb5b4f2516dc0445f9ed4ec1d8d0b` |
| 26 | `theorem` | [xgcd_val](../../../../mathematics/Algebra/Defs/Variantef29c629a5b6cab45918267a562f6b898875f7e0ce775ce5b8a3c3c98443b41a.lean/declarations/xgcd-val--554bea8c3b9948dd1e8258df.md) | 231 | `result-track:554bea8c3b9948dd1e8258df0e8d34928c80818aab7434afca9b45394e7ca06b` |
| 27 | `def` | [lcm](../../../../mathematics/Algebra/Defs/Variantef29c629a5b6cab45918267a562f6b898875f7e0ce775ce5b8a3c3c98443b41a.lean/declarations/lcm--be4b473f9b26d95577edefd7.md) | 242 | `declaration-track:be4b473f9b26d95577edefd73a8bfce02d3e6faa7af8a14b924aa1b055f63180` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
