# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Fin2.Variant675653e1be2baa6954777a289cb87fdbc077d51e0e3066749db481b7aa752e9e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0d60b027aac96880859c88763c06c721b64c64d1",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Fin2/Variant675653e1be2baa6954777a289cb87fdbc077d51e0e3066749db481b7aa752e9e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin2/Variant675653e1be2baa6954777a289cb87fdbc077d51e0e3066749db481b7aa752e9e.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin2/Variant675653e1be2baa6954777a289cb87fdbc077d51e0e3066749db481b7aa752e9e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0d60b027aac96880859c88763c06c721b64c64d1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Fin2/Variant675653e1be2baa6954777a289cb87fdbc077d51e0e3066749db481b7aa752e9e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Fin2/Variant675653e1be2baa6954777a289cb87fdbc077d51e0e3066749db481b7aa752e9e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Image` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Notation` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Function.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Fin2](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin2/Variant675653e1be2baa6954777a289cb87fdbc077d51e0e3066749db481b7aa752e9e.lean/declarations/fin2--a469727a2d4a598b23eee605.md) | 37 | `declaration-track:a469727a2d4a598b23eee605a7790f518f1906bf4277b5834e750fdb0db036a7` |
| 2 | `def` | [cases'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin2/Variant675653e1be2baa6954777a289cb87fdbc077d51e0e3066749db481b7aa752e9e.lean/declarations/cases--2e9ee280fe10610ae1147cdf.md) | 48 | `declaration-track:2e9ee280fe10610ae1147cdfafd2fa524624ef1f9a15e7f63e4306a4a82702d3` |
| 3 | `def` | [elim0](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin2/Variant675653e1be2baa6954777a289cb87fdbc077d51e0e3066749db481b7aa752e9e.lean/declarations/elim0--f0f3c99c37959434d5aea3a4.md) | 54 | `declaration-track:f0f3c99c37959434d5aea3a4a76f9a2b6efbb54996b3bf8d0cb2c77060b6ce61` |
| 4 | `def` | [toNat](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin2/Variant675653e1be2baa6954777a289cb87fdbc077d51e0e3066749db481b7aa752e9e.lean/declarations/tonat--004bd33a21ab676b1f5148fa.md) | 57 | `declaration-track:004bd33a21ab676b1f5148face9395ae613b8f30761ee9c26f45329aa46f44b4` |
| 5 | `def` | [optOfNat](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin2/Variant675653e1be2baa6954777a289cb87fdbc077d51e0e3066749db481b7aa752e9e.lean/declarations/optofnat--08de47473e46242ce157cbb3.md) | 62 | `declaration-track:08de47473e46242ce157cbb38535a56cd92231d3c13598f8eef28f240bb853ed` |
| 6 | `def` | [add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin2/Variant675653e1be2baa6954777a289cb87fdbc077d51e0e3066749db481b7aa752e9e.lean/declarations/add--b06872683736c9bb7d4a8a3e.md) | 68 | `declaration-track:b06872683736c9bb7d4a8a3e57986a3fa6cbdcc95d37beb980ad589e9c0b61ec` |
| 7 | `def` | [left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin2/Variant675653e1be2baa6954777a289cb87fdbc077d51e0e3066749db481b7aa752e9e.lean/declarations/left--a849956b4c93c5fe0ae21e5b.md) | 73 | `declaration-track:a849956b4c93c5fe0ae21e5bb44166a17607ac367b8c95f309599e1a29a1b560` |
| 8 | `def` | [insertPerm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin2/Variant675653e1be2baa6954777a289cb87fdbc077d51e0e3066749db481b7aa752e9e.lean/declarations/insertperm--723f565b302febe8ea2dc407.md) | 81 | `declaration-track:723f565b302febe8ea2dc40705def25072278b1e82fdb8b589f38c143848c7f3` |
| 9 | `def` | [remapLeft](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin2/Variant675653e1be2baa6954777a289cb87fdbc077d51e0e3066749db481b7aa752e9e.lean/declarations/remapleft--6b95739b8ab3ed5a7ee7b80c.md) | 93 | `declaration-track:6b95739b8ab3ed5a7ee7b80c69a142c26627d37a0f0c89b841df65b6a15a74ba` |
| 10 | `class` | [IsLT](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin2/Variant675653e1be2baa6954777a289cb87fdbc077d51e0e3066749db481b7aa752e9e.lean/declarations/islt--78d7df2341d5db7e04d9f936.md) | 100 | `declaration-track:78d7df2341d5db7e04d9f936ea91917314a9ce48fab17f0b85352228f9b360fe` |
| 11 | `instance` | [IsLT.zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin2/Variant675653e1be2baa6954777a289cb87fdbc077d51e0e3066749db481b7aa752e9e.lean/declarations/islt-zero--8b5afedc45371a641175f5c9.md) | 104 | `declaration-track:8b5afedc45371a641175f5c979cfe34c748fcae038d5c35264987f37545a251e` |
| 12 | `instance` | [IsLT.succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin2/Variant675653e1be2baa6954777a289cb87fdbc077d51e0e3066749db481b7aa752e9e.lean/declarations/islt-succ--c405d48f1debf075c1494a62.md) | 107 | `declaration-track:c405d48f1debf075c1494a620df6ecf4c4a13d186c87645d08cc228c9635ac67` |
| 13 | `def` | [ofNat'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin2/Variant675653e1be2baa6954777a289cb87fdbc077d51e0e3066749db481b7aa752e9e.lean/declarations/ofnat--e01084f6bf414d79e8836cea.md) | 112 | `declaration-track:e01084f6bf414d79e8836cea2cc766ac3a1b62603cda38a2c159abee288b2bbd` |
| 14 | `def` | [castSucc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin2/Variant675653e1be2baa6954777a289cb87fdbc077d51e0e3066749db481b7aa752e9e.lean/declarations/castsucc--ea19236b104ba38cd77ec567.md) | 118 | `declaration-track:ea19236b104ba38cd77ec5676190c5fbaa3a97ef7814e84c544685eff8372f1a` |
| 15 | `def` | [last](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin2/Variant675653e1be2baa6954777a289cb87fdbc077d51e0e3066749db481b7aa752e9e.lean/declarations/last--eefd92b9fa8ccfc8fdd93aaa.md) | 123 | `declaration-track:eefd92b9fa8ccfc8fdd93aaa46c558cbe315e7310235026891727433e69d5265` |
| 16 | `def` | [rev](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin2/Variant675653e1be2baa6954777a289cb87fdbc077d51e0e3066749db481b7aa752e9e.lean/declarations/rev--db0bddffdc24e532eb3bef41.md) | 128 | `declaration-track:db0bddffdc24e532eb3bef411865eb69e11a811613619a3d6509f161b499f1d3` |
| 17 | `lemma` | [rev_last](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin2/Variant675653e1be2baa6954777a289cb87fdbc077d51e0e3066749db481b7aa752e9e.lean/declarations/rev-last--51c869a2b17079b66e7261e1.md) | 132 | `result-track:51c869a2b17079b66e7261e1608e3f850273ff89c6192d70a171771f2dfcf322` |
| 18 | `lemma` | [rev_castSucc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin2/Variant675653e1be2baa6954777a289cb87fdbc077d51e0e3066749db481b7aa752e9e.lean/declarations/rev-castsucc--6cec406beb4cef67ebb703dd.md) | 135 | `result-track:6cec406beb4cef67ebb703dd7d896ec426debe15cad8453d39571eadfe9104de` |
| 19 | `lemma` | [rev_rev](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin2/Variant675653e1be2baa6954777a289cb87fdbc077d51e0e3066749db481b7aa752e9e.lean/declarations/rev-rev--5650fdbc2974c6d9b2d05784.md) | 138 | `result-track:5650fdbc2974c6d9b2d05784c8808439cf693472f5a3ec1243bc790814947979` |
| 20 | `theorem` | [rev_involutive](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin2/Variant675653e1be2baa6954777a289cb87fdbc077d51e0e3066749db481b7aa752e9e.lean/declarations/rev-involutive--adf62cd2d6df649f08a278ad.md) | 141 | `result-track:adf62cd2d6df649f08a278ad2e4a0ef68acdec0d98f17efeedf4feadd0d99803` |
| 21 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin2/Variant675653e1be2baa6954777a289cb87fdbc077d51e0e3066749db481b7aa752e9e.lean/declarations/instance--5f3620378418c58787165d39.md) | 145 | `declaration-track:5f3620378418c58787165d3993dd0b3d784befd7363e9aca183f5c49645243ed` |
| 22 | `instance` | [instFintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin2/Variant675653e1be2baa6954777a289cb87fdbc077d51e0e3066749db481b7aa752e9e.lean/declarations/instfintype--a9acecda001ed58b60bda415.md) | 148 | `declaration-track:a9acecda001ed58b60bda415a44154ba97c28a8ff535f5e880e963fdb7952506` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
