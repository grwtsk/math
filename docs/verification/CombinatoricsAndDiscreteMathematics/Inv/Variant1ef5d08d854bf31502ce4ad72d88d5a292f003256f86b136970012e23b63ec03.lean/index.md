# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Inv.Variant1ef5d08d854bf31502ce4ad72d88d5a292f003256f86b136970012e23b63ec03

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a5c87ed261c7b2c3e0943765ca1ab11fcd4dfc73",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Inv/Variant1ef5d08d854bf31502ce4ad72d88d5a292f003256f86b136970012e23b63ec03.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Inv/Variant1ef5d08d854bf31502ce4ad72d88d5a292f003256f86b136970012e23b63ec03.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Inv/Variant1ef5d08d854bf31502ce4ad72d88d5a292f003256f86b136970012e23b63ec03.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a5c87ed261c7b2c3e0943765ca1ab11fcd4dfc73`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Inv/Variant1ef5d08d854bf31502ce4ad72d88d5a292f003256f86b136970012e23b63ec03.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Inv/Variant1ef5d08d854bf31502ce4ad72d88d5a292f003256f86b136970012e23b63ec03.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [invOfMemRange](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Inv/Variant1ef5d08d854bf31502ce4ad72d88d5a292f003256f86b136970012e23b63ec03.lean/declarations/invofmemrange--621802f1e0a3e4adf424a01c.md) | 47 | `declaration-track:621802f1e0a3e4adf424a01c6325482ae51ff11955fc9d8b33d6d1c44cf1a2ac` |
| 2 | `theorem` | [left_inv_of_invOfMemRange](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Inv/Variant1ef5d08d854bf31502ce4ad72d88d5a292f003256f86b136970012e23b63ec03.lean/declarations/left-inv-of-invofmemrange--976ab00853734636845d168a.md) | 51 | `result-track:976ab00853734636845d168ad333ff6de9991088cf883f07952dbad909ecc1f0` |
| 3 | `theorem` | [right_inv_of_invOfMemRange](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Inv/Variant1ef5d08d854bf31502ce4ad72d88d5a292f003256f86b136970012e23b63ec03.lean/declarations/right-inv-of-invofmemrange--1e9344e004a6fdf487be8fc8.md) | 55 | `result-track:1e9344e004a6fdf487be8fc8bcd04d764a81680842ccfad94481f948377017de` |
| 4 | `theorem` | [invFun_restrict](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Inv/Variant1ef5d08d854bf31502ce4ad72d88d5a292f003256f86b136970012e23b63ec03.lean/declarations/invfun-restrict--55f5ffa9f06798f4a4c50e65.md) | 58 | `result-track:55f5ffa9f06798f4a4c50e654f9fa38a11da4c61099ed2bb7518fbbe66d3072f` |
| 5 | `theorem` | [invOfMemRange_surjective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Inv/Variant1ef5d08d854bf31502ce4ad72d88d5a292f003256f86b136970012e23b63ec03.lean/declarations/invofmemrange-surjective--292aa4cbbb0d9b13cab247fa.md) | 63 | `result-track:292aa4cbbb0d9b13cab247fac00af109efec6a0b75de573a1a8de39f8a7be0ba` |
| 6 | `def` | [invOfMemRange](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Inv/Variant1ef5d08d854bf31502ce4ad72d88d5a292f003256f86b136970012e23b63ec03.lean/declarations/invofmemrange--5fdb34233220dfc48ba65e35.md) | 80 | `declaration-track:5fdb34233220dfc48ba65e35f34ebd2de0a4a78c445fb3cae8b1ffcb1d80a4a0` |
| 7 | `theorem` | [left_inv_of_invOfMemRange](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Inv/Variant1ef5d08d854bf31502ce4ad72d88d5a292f003256f86b136970012e23b63ec03.lean/declarations/left-inv-of-invofmemrange--950725b7b8b63e5580bb74b5.md) | 84 | `result-track:950725b7b8b63e5580bb74b54e9bba138c0db9eb556d3a151557dbd62dbe7ab5` |
| 8 | `theorem` | [right_inv_of_invOfMemRange](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Inv/Variant1ef5d08d854bf31502ce4ad72d88d5a292f003256f86b136970012e23b63ec03.lean/declarations/right-inv-of-invofmemrange--d32604610618eb1141aa6378.md) | 88 | `result-track:d32604610618eb1141aa6378c74e0ae2ecb55fdee102c13da2464e70286aaf1c` |
| 9 | `theorem` | [invFun_restrict](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Inv/Variant1ef5d08d854bf31502ce4ad72d88d5a292f003256f86b136970012e23b63ec03.lean/declarations/invfun-restrict--f6bf14060ddd2f24a8b70fee.md) | 91 | `result-track:f6bf14060ddd2f24a8b70feee7e8a84048fe2f10a79122328c7abe8c3ed3c461` |
| 10 | `theorem` | [invOfMemRange_surjective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Inv/Variant1ef5d08d854bf31502ce4ad72d88d5a292f003256f86b136970012e23b63ec03.lean/declarations/invofmemrange-surjective--80cf0c37f91a93e5d20b3074.md) | 96 | `result-track:80cf0c37f91a93e5d20b3074a0a1319212a22f97b3f384dce866d1b0b5215c93` |
| 11 | `def` | [chooseX](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Inv/Variant1ef5d08d854bf31502ce4ad72d88d5a292f003256f86b136970012e23b63ec03.lean/declarations/choosex--bcdbfd95b2da803008a1f07a.md) | 117 | `declaration-track:bcdbfd95b2da803008a1f07ad6c6846c3b6ee50dfefab9a29524b4cf15402b8c` |
| 12 | `def` | [choose](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Inv/Variant1ef5d08d854bf31502ce4ad72d88d5a292f003256f86b136970012e23b63ec03.lean/declarations/choose--8938ed9ec4dd3dd2de834711.md) | 122 | `declaration-track:8938ed9ec4dd3dd2de83471140b495647a5cd124f9ff036e0bd4b2035716e00a` |
| 13 | `theorem` | [choose_spec](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Inv/Variant1ef5d08d854bf31502ce4ad72d88d5a292f003256f86b136970012e23b63ec03.lean/declarations/choose-spec--baa9c6050c160f2e969d571b.md) | 125 | `result-track:baa9c6050c160f2e969d571b2757e5c8bc475079dc4f013219df15b08a9401ba` |
| 14 | `theorem` | [choose_subtype_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Inv/Variant1ef5d08d854bf31502ce4ad72d88d5a292f003256f86b136970012e23b63ec03.lean/declarations/choose-subtype-eq--f8969fc032b4ce60af304145.md) | 128 | `result-track:f8969fc032b4ce60af304145d86a0481a110448838e5611b14ded2fec4d50b45` |
| 15 | `def` | [bijInv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Inv/Variant1ef5d08d854bf31502ce4ad72d88d5a292f003256f86b136970012e23b63ec03.lean/declarations/bijinv--1d393a7675404d0559e8deae.md) | 145 | `declaration-track:1d393a7675404d0559e8deae8b38720f944b8908f1cbc15e4b558bd97ef07980` |
| 16 | `theorem` | [leftInverse_bijInv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Inv/Variant1ef5d08d854bf31502ce4ad72d88d5a292f003256f86b136970012e23b63ec03.lean/declarations/leftinverse-bijinv--30be587e0eb9606ffca9b9b0.md) | 148 | `result-track:30be587e0eb9606ffca9b9b0e4799a7a78a3dc524420d420cde53f2a2bfdeb5b` |
| 17 | `theorem` | [rightInverse_bijInv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Inv/Variant1ef5d08d854bf31502ce4ad72d88d5a292f003256f86b136970012e23b63ec03.lean/declarations/rightinverse-bijinv--3a1426b7ddc7b125a663ddf1.md) | 151 | `result-track:3a1426b7ddc7b125a663ddf174b385a51aff7631b6c4ff749361ae244a0fbdc2` |
| 18 | `theorem` | [bijective_bijInv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Inv/Variant1ef5d08d854bf31502ce4ad72d88d5a292f003256f86b136970012e23b63ec03.lean/declarations/bijective-bijinv--5920d6ca3e455e2fea8aafab.md) | 154 | `result-track:5920d6ca3e455e2fea8aafab7a1e1fac01fa1dd1a8f0a886ba67d9439613243b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
