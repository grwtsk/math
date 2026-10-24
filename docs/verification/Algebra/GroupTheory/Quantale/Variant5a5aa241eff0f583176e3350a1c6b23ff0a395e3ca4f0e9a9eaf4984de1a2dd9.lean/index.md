# Verification target: GRWTSK.Algebra.GroupTheory.Quantale.Variant5a5aa241eff0f583176e3350a1c6b23ff0a395e3ca4f0e9a9eaf4984de1a2dd9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e245da2a4846628fcd2490426c7d1b04caa82b1f",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Quantale/Variant5a5aa241eff0f583176e3350a1c6b23ff0a395e3ca4f0e9a9eaf4984de1a2dd9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Quantale/Variant5a5aa241eff0f583176e3350a1c6b23ff0a395e3ca4f0e9a9eaf4984de1a2dd9.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Quantale/Variant5a5aa241eff0f583176e3350a1c6b23ff0a395e3ca4f0e9a9eaf4984de1a2dd9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e245da2a4846628fcd2490426c7d1b04caa82b1f`.

Source path: `GRWTSK/Algebra/GroupTheory/Quantale/Variant5a5aa241eff0f583176e3350a1c6b23ff0a395e3ca4f0e9a9eaf4984de1a2dd9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Quantale/Variant5a5aa241eff0f583176e3350a1c6b23ff0a395e3ca4f0e9a9eaf4984de1a2dd9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Unbundled.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.CompleteLattice.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Variable` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsAddQuantale](../../../../../mathematics/Algebra/GroupTheory/Quantale/Variant5a5aa241eff0f583176e3350a1c6b23ff0a395e3ca4f0e9a9eaf4984de1a2dd9.lean/declarations/isaddquantale--1e3c9c1bd0628351573a0e7a.md) | 71 | `declaration-track:1e3c9c1bd0628351573a0e7a0b1f405bad6e45924f8a16d420bfe09417c40a99` |
| 2 | `structure` | [AddQuantale](../../../../../mathematics/Algebra/GroupTheory/Quantale/Variant5a5aa241eff0f583176e3350a1c6b23ff0a395e3ca4f0e9a9eaf4984de1a2dd9.lean/declarations/addquantale--45a69bd476a2fc306662bbc4.md) | 79 | `declaration-track:45a69bd476a2fc306662bbc47703b6afd6eaf6856aaffb2951f228670cb1de12` |
| 3 | `class` | [IsQuantale](../../../../../mathematics/Algebra/GroupTheory/Quantale/Variant5a5aa241eff0f583176e3350a1c6b23ff0a395e3ca4f0e9a9eaf4984de1a2dd9.lean/declarations/isquantale--ae85acccf5603ce476955db7.md) | 84 | `declaration-track:ae85acccf5603ce476955db7cc6f0145e64175fa23d7614d13c927e217aacba5` |
| 4 | `structure` | [Quantale](../../../../../mathematics/Algebra/GroupTheory/Quantale/Variant5a5aa241eff0f583176e3350a1c6b23ff0a395e3ca4f0e9a9eaf4984de1a2dd9.lean/declarations/quantale--2687c2ced72b29a951216320.md) | 92 | `declaration-track:2687c2ced72b29a951216320586c294c8d90228948d2116610ace987b8cce459` |
| 5 | `theorem` | [mul_sSup_distrib](../../../../../mathematics/Algebra/GroupTheory/Quantale/Variant5a5aa241eff0f583176e3350a1c6b23ff0a395e3ca4f0e9a9eaf4984de1a2dd9.lean/declarations/mul-ssup-distrib--568c3dfe551a0af8728a85d4.md) | 101 | `result-track:568c3dfe551a0af8728a85d4eaa14c7a206382403566787e7ca2c199616ff3a2` |
| 6 | `theorem` | [sSup_mul_distrib](../../../../../mathematics/Algebra/GroupTheory/Quantale/Variant5a5aa241eff0f583176e3350a1c6b23ff0a395e3ca4f0e9a9eaf4984de1a2dd9.lean/declarations/ssup-mul-distrib--0b3735d4b64a0a721b218a78.md) | 104 | `result-track:0b3735d4b64a0a721b218a784188718e3a1870b652a64a9e5bd96a98763b3b18` |
| 7 | `def` | [leftAddResiduation](../../../../../mathematics/Algebra/GroupTheory/Quantale/Variant5a5aa241eff0f583176e3350a1c6b23ff0a395e3ca4f0e9a9eaf4984de1a2dd9.lean/declarations/leftaddresiduation--323d048c1432bd6c248058db.md) | 116 | `declaration-track:323d048c1432bd6c248058db2b8673b36d53426326c95c64c78ef72193ac91f8` |
| 8 | `def` | [rightAddResiduation](../../../../../mathematics/Algebra/GroupTheory/Quantale/Variant5a5aa241eff0f583176e3350a1c6b23ff0a395e3ca4f0e9a9eaf4984de1a2dd9.lean/declarations/rightaddresiduation--61d028b6060476738e8c4a1f.md) | 121 | `declaration-track:61d028b6060476738e8c4a1f01f31bc6f2815fe55c0457f6686bf10d92f94b5c` |
| 9 | `def` | [leftMulResiduation](../../../../../mathematics/Algebra/GroupTheory/Quantale/Variant5a5aa241eff0f583176e3350a1c6b23ff0a395e3ca4f0e9a9eaf4984de1a2dd9.lean/declarations/leftmulresiduation--0aded1ff38a6a6b08e897946.md) | 141 | `declaration-track:0aded1ff38a6a6b08e8979466f6de18c23a4f26c19de28102826fbe23aa6b651` |
| 10 | `def` | [rightMulResiduation](../../../../../mathematics/Algebra/GroupTheory/Quantale/Variant5a5aa241eff0f583176e3350a1c6b23ff0a395e3ca4f0e9a9eaf4984de1a2dd9.lean/declarations/rightmulresiduation--d36028b438cd70a47bf79bc3.md) | 148 | `declaration-track:d36028b438cd70a47bf79bc3524b66878b8037d510f96f227788c88f26ca864d` |
| 11 | `theorem` | [mul_iSup_distrib](../../../../../mathematics/Algebra/GroupTheory/Quantale/Variant5a5aa241eff0f583176e3350a1c6b23ff0a395e3ca4f0e9a9eaf4984de1a2dd9.lean/declarations/mul-isup-distrib--01758b48e5e1f6e366292fa1.md) | 157 | `result-track:01758b48e5e1f6e366292fa1860a2a8f14e75a2ade96a640a8a39b565ca38637` |
| 12 | `theorem` | [iSup_mul_distrib](../../../../../mathematics/Algebra/GroupTheory/Quantale/Variant5a5aa241eff0f583176e3350a1c6b23ff0a395e3ca4f0e9a9eaf4984de1a2dd9.lean/declarations/isup-mul-distrib--0cd98f0b93482c166011615f.md) | 161 | `result-track:0cd98f0b93482c166011615f7aa9acde4b9beacff2996c26c2e41659fddd506f` |
| 13 | `theorem` | [mul_sup_distrib](../../../../../mathematics/Algebra/GroupTheory/Quantale/Variant5a5aa241eff0f583176e3350a1c6b23ff0a395e3ca4f0e9a9eaf4984de1a2dd9.lean/declarations/mul-sup-distrib--efdb326223984b94b3e7846b.md) | 165 | `result-track:efdb326223984b94b3e7846b771fea990713acfd66700b4a5e908a2b072bfd49` |
| 14 | `theorem` | [sup_mul_distrib](../../../../../mathematics/Algebra/GroupTheory/Quantale/Variant5a5aa241eff0f583176e3350a1c6b23ff0a395e3ca4f0e9a9eaf4984de1a2dd9.lean/declarations/sup-mul-distrib--a4e2aca66d94f3bfac1e5781.md) | 169 | `result-track:a4e2aca66d94f3bfac1e57819dfd076fe5935f8af412b7f0b3e33f4c92774e84` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Quantale/Variant5a5aa241eff0f583176e3350a1c6b23ff0a395e3ca4f0e9a9eaf4984de1a2dd9.lean/declarations/instance--1c4bf0bf566302e19ad486bf.md) | 173 | `declaration-track:1c4bf0bf566302e19ad486bf4829e84135dbf3e9991e379e729e340dd368a2bc` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Quantale/Variant5a5aa241eff0f583176e3350a1c6b23ff0a395e3ca4f0e9a9eaf4984de1a2dd9.lean/declarations/instance--96774415402166d8c67b788a.md) | 179 | `declaration-track:96774415402166d8c67b788a60bad07b924ce43c39c2d9d8881beb90d92542bf` |
| 17 | `theorem` | [leftMulResiduation_le_iff_mul_le](../../../../../mathematics/Algebra/GroupTheory/Quantale/Variant5a5aa241eff0f583176e3350a1c6b23ff0a395e3ca4f0e9a9eaf4984de1a2dd9.lean/declarations/leftmulresiduation-le-iff-mul-le--ff335cc1517ee055ef883b15.md) | 185 | `result-track:ff335cc1517ee055ef883b1536c86c37d0d7dfdd5337a92d9f40ea92f1617d1e` |
| 18 | `theorem` | [rightMulResiduation_le_iff_mul_le](../../../../../mathematics/Algebra/GroupTheory/Quantale/Variant5a5aa241eff0f583176e3350a1c6b23ff0a395e3ca4f0e9a9eaf4984de1a2dd9.lean/declarations/rightmulresiduation-le-iff-mul-le--856b7fb80ef05acdefac64c4.md) | 193 | `result-track:856b7fb80ef05acdefac64c40d29012d2e5f48c889f3ad0cce69ed6cfd51ee37` |
| 19 | `theorem` | [bot_mul](../../../../../mathematics/Algebra/GroupTheory/Quantale/Variant5a5aa241eff0f583176e3350a1c6b23ff0a395e3ca4f0e9a9eaf4984de1a2dd9.lean/declarations/bot-mul--d2bfe214c86f59631c6d04fb.md) | 206 | `result-track:d2bfe214c86f59631c6d04fb2b4f765c9849afcf0402646d01327f1eb0bac08a` |
| 20 | `theorem` | [mul_bot](../../../../../mathematics/Algebra/GroupTheory/Quantale/Variant5a5aa241eff0f583176e3350a1c6b23ff0a395e3ca4f0e9a9eaf4984de1a2dd9.lean/declarations/mul-bot--ef54e21946c07581566aa9f1.md) | 211 | `result-track:ef54e21946c07581566aa9f1f564c488a43c2f2b7f58a6b824ac955b7c9e5dbc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
