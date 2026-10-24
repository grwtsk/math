# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.Central.Variantaadd213661f6a904992b9cd0b576601a81f59fb174d213d85347c4abfdd64e57

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "51cee52b66426f8eb3c302419b7cb28a596d7cb6",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variantaadd213661f6a904992b9cd0b576601a81f59fb174d213d85347c4abfdd64e57.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variantaadd213661f6a904992b9cd0b576601a81f59fb174d213d85347c4abfdd64e57.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variantaadd213661f6a904992b9cd0b576601a81f59fb174d213d85347c4abfdd64e57.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `51cee52b66426f8eb3c302419b7cb28a596d7cb6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variantaadd213661f6a904992b9cd0b576601a81f59fb174d213d85347c4abfdd64e57.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variantaadd213661f6a904992b9cd0b576601a81f59fb174d213d85347c4abfdd64e57.lean.json)

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
| 1 | `def` | [centralBinom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variantaadd213661f6a904992b9cd0b576601a81f59fb174d213d85347c4abfdd64e57.lean/declarations/centralbinom--198ae9d8b1489e013f35971f.md) | 36 | `declaration-track:198ae9d8b1489e013f35971f43a00dd8fb7e7dff5e6268169e3fdb3b88905a47` |
| 2 | `theorem` | [centralBinom_eq_two_mul_choose](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variantaadd213661f6a904992b9cd0b576601a81f59fb174d213d85347c4abfdd64e57.lean/declarations/centralbinom-eq-two-mul-choose--2e7dc994b64c5a00b02ee315.md) | 39 | `result-track:2e7dc994b64c5a00b02ee315a948e582c51e5f5941e1ce404e79eb55ff7ba874` |
| 3 | `theorem` | [centralBinom_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variantaadd213661f6a904992b9cd0b576601a81f59fb174d213d85347c4abfdd64e57.lean/declarations/centralbinom-pos--963d0e170f399114585ff4e5.md) | 42 | `result-track:963d0e170f399114585ff4e5603f416226f47553f48ecd0980a59085dc619ea5` |
| 4 | `theorem` | [centralBinom_ne_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variantaadd213661f6a904992b9cd0b576601a81f59fb174d213d85347c4abfdd64e57.lean/declarations/centralbinom-ne-zero--25b20014712b404cf6943d5a.md) | 45 | `result-track:25b20014712b404cf6943d5a9f86b904d102a4b0a6377800c123fcdf0b2ebb71` |
| 5 | `theorem` | [centralBinom_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variantaadd213661f6a904992b9cd0b576601a81f59fb174d213d85347c4abfdd64e57.lean/declarations/centralbinom-zero--f0e13e7fa498b4965d8eaa16.md) | 49 | `result-track:f0e13e7fa498b4965d8eaa16eb9e1a2a8b5f81e1b41e5cb581f79f4dc11ddffa` |
| 6 | `theorem` | [choose_le_centralBinom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variantaadd213661f6a904992b9cd0b576601a81f59fb174d213d85347c4abfdd64e57.lean/declarations/choose-le-centralbinom--df18e3944d8095fbfb754a47.md) | 54 | `result-track:df18e3944d8095fbfb754a473927d88a60322251aac50421b57021b7796e1813` |
| 7 | `theorem` | [centralBinom_strictMono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variantaadd213661f6a904992b9cd0b576601a81f59fb174d213d85347c4abfdd64e57.lean/declarations/centralbinom-strictmono--c68aa4b77b41868dd4eb19d4.md) | 59 | `result-track:c68aa4b77b41868dd4eb19d4c4ddac8dfc1a9535444e4b0f88fbbf7d2f8e36fb` |
| 8 | `theorem` | [two_le_centralBinom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variantaadd213661f6a904992b9cd0b576601a81f59fb174d213d85347c4abfdd64e57.lean/declarations/two-le-centralbinom--bed846b661731e8ddcdd91bf.md) | 62 | `result-track:bed846b661731e8ddcdd91bf071dc970632e9bcc89ea521c78f5e7f0904b6d69` |
| 9 | `theorem` | [centralBinom_le_four_pow](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variantaadd213661f6a904992b9cd0b576601a81f59fb174d213d85347c4abfdd64e57.lean/declarations/centralbinom-le-four-pow--153cdeec8bd942302cf3a294.md) | 68 | `result-track:153cdeec8bd942302cf3a29463ec065af5841d6756d25525f8d6626c089f5e48` |
| 10 | `theorem` | [centralBinom_lt_four_pow](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variantaadd213661f6a904992b9cd0b576601a81f59fb174d213d85347c4abfdd64e57.lean/declarations/centralbinom-lt-four-pow--6e4c8bfe4206ee7a6cdbd71c.md) | 71 | `result-track:6e4c8bfe4206ee7a6cdbd71c8c45cd59c32b9a82c25ac74d82ff7a0a28857748` |
| 11 | `theorem` | [succ_mul_centralBinom_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variantaadd213661f6a904992b9cd0b576601a81f59fb174d213d85347c4abfdd64e57.lean/declarations/succ-mul-centralbinom-succ--20dcb9726361dc82de9dd2a7.md) | 78 | `result-track:20dcb9726361dc82de9dd2a78d06365ad31a3cc1d48924dd6dcc0f4d49ad57a9` |
| 12 | `theorem` | [four_pow_lt_mul_centralBinom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variantaadd213661f6a904992b9cd0b576601a81f59fb174d213d85347c4abfdd64e57.lean/declarations/four-pow-lt-mul-centralbinom--68b2a878fe5a60f4a1191a83.md) | 93 | `result-track:68b2a878fe5a60f4a1191a83a17c1ef379de8b23de150494a17132530b1623e4` |
| 13 | `theorem` | [four_pow_le_two_mul_self_mul_centralBinom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variantaadd213661f6a904992b9cd0b576601a81f59fb174d213d85347c4abfdd64e57.lean/declarations/four-pow-le-two-mul-self-mul-centralbinom--cad4f8b2f7502d93a0a65071.md) | 110 | `result-track:cad4f8b2f7502d93a0a65071df65687eddcf0df0c711b77c67ce08574d8978c6` |
| 14 | `theorem` | [four_pow_le_two_mul_add_one_mul_centralBinom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variantaadd213661f6a904992b9cd0b576601a81f59fb174d213d85347c4abfdd64e57.lean/declarations/four-pow-le-two-mul-add-one-mul-centralbinom--e2049cdca7959c94695b24f1.md) | 123 | `result-track:e2049cdca7959c94695b24f14492452a17ec8a0667a9d6202ffb16db68690896` |
| 15 | `theorem` | [four_pow_le_two_mul_add_one_mul_central_binom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variantaadd213661f6a904992b9cd0b576601a81f59fb174d213d85347c4abfdd64e57.lean/declarations/four-pow-le-two-mul-add-one-mul-central-binom--852669effe5ba0112a7706fa.md) | 132 | `result-track:852669effe5ba0112a7706fa9e807fe9818df697283cd42d2a604797698fed41` |
| 16 | `theorem` | [two_dvd_centralBinom_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variantaadd213661f6a904992b9cd0b576601a81f59fb174d213d85347c4abfdd64e57.lean/declarations/two-dvd-centralbinom-succ--5e3c470943e29c5366ac200a.md) | 136 | `result-track:5e3c470943e29c5366ac200aaf133dfe9bc9850eb5078352df986a7870696d40` |
| 17 | `theorem` | [two_dvd_centralBinom_of_one_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variantaadd213661f6a904992b9cd0b576601a81f59fb174d213d85347c4abfdd64e57.lean/declarations/two-dvd-centralbinom-of-one-le--8820af472752e6e450f5302a.md) | 141 | `result-track:8820af472752e6e450f5302a5ac2f41b59d4b467cb2032f52d9b858889501b95` |
| 18 | `theorem` | [succ_dvd_centralBinom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variantaadd213661f6a904992b9cd0b576601a81f59fb174d213d85347c4abfdd64e57.lean/declarations/succ-dvd-centralbinom--7e7e61cf685d9d436bb9bd16.md) | 147 | `result-track:7e7e61cf685d9d436bb9bd16ac11d671e64f2d252048f0553ed76d4d06277bf1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
