# Verification target: GRWTSK.Algebra.Basic.Variant4ba211b1d99c3727e858122e231acc1415efa92699230bc715c669f87e7c4144

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "351b8e839104a57635276fba9a1a5cb98d85cfcc",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant4ba211b1d99c3727e858122e231acc1415efa92699230bc715c669f87e7c4144.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant4ba211b1d99c3727e858122e231acc1415efa92699230bc715c669f87e7c4144.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant4ba211b1d99c3727e858122e231acc1415efa92699230bc715c669f87e7c4144.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `351b8e839104a57635276fba9a1a5cb98d85cfcc`.

Source path: `GRWTSK/Algebra/Basic/Variant4ba211b1d99c3727e858122e231acc1415efa92699230bc715c669f87e7c4144.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant4ba211b1d99c3727e858122e231acc1415efa92699230bc715c669f87e7c4144.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.FiniteStability` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Quotient.Nilpotent` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Kaehler.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Away.AdjoinRoot` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [FormallyUnramified](../../../../mathematics/Algebra/Basic/Variant4ba211b1d99c3727e858122e231acc1415efa92699230bc715c669f87e7c4144.lean/declarations/formallyunramified--5256e61f4212aa2c6d285aa3.md) | 51 | `declaration-track:5256e61f4212aa2c6d285aa3edd3913d8bd9556efac5ad5e2ec35267c127ec84` |
| 2 | `theorem` | [comp_injective](../../../../mathematics/Algebra/Basic/Variant4ba211b1d99c3727e858122e231acc1415efa92699230bc715c669f87e7c4144.lean/declarations/comp-injective--12f975fc2f38cdbd3d5ea1d9.md) | 66 | `result-track:12f975fc2f38cdbd3d5ea1d9ee0ba6c8ee48f57a3f2fbda47455a654e33363d2` |
| 3 | `theorem` | [iff_comp_injective](../../../../mathematics/Algebra/Basic/Variant4ba211b1d99c3727e858122e231acc1415efa92699230bc715c669f87e7c4144.lean/declarations/iff-comp-injective--28cfb8143b5bac6b1ae7bfb4.md) | 76 | `result-track:28cfb8143b5bac6b1ae7bfb4a3bf1826f7cfa9b24d792cee69021fce4e7d2810` |
| 4 | `theorem` | [lift_unique](../../../../mathematics/Algebra/Basic/Variant4ba211b1d99c3727e858122e231acc1415efa92699230bc715c669f87e7c4144.lean/declarations/lift-unique--5fa1b5a6872806c04ef8f245.md) | 98 | `result-track:5fa1b5a6872806c04ef8f2451e0e4c8cb410c62bb298846d0801d7e199284e91` |
| 5 | `theorem` | [ext](../../../../mathematics/Algebra/Basic/Variant4ba211b1d99c3727e858122e231acc1415efa92699230bc715c669f87e7c4144.lean/declarations/ext--51a2789ec3cd0b733396eb7e.md) | 114 | `result-track:51a2789ec3cd0b733396eb7e4278846399994b5c0536acace0f2630324128b39` |
| 6 | `theorem` | [lift_unique_of_ringHom](../../../../mathematics/Algebra/Basic/Variant4ba211b1d99c3727e858122e231acc1415efa92699230bc715c669f87e7c4144.lean/declarations/lift-unique-of-ringhom--7eed8d969c6f7d7dcf627a1e.md) | 118 | `result-track:7eed8d969c6f7d7dcf627a1e556bd98dc4b4d4e9052a6774b6d455cde8568a5b` |
| 7 | `theorem` | [ext'](../../../../mathematics/Algebra/Basic/Variant4ba211b1d99c3727e858122e231acc1415efa92699230bc715c669f87e7c4144.lean/declarations/ext--40f3c4423971e4d7c688802c.md) | 128 | `result-track:40f3c4423971e4d7c688802caf26b35774ea59ab84f723976ac7844817a51ba1` |
| 8 | `theorem` | [lift_unique'](../../../../mathematics/Algebra/Basic/Variant4ba211b1d99c3727e858122e231acc1415efa92699230bc715c669f87e7c4144.lean/declarations/lift-unique--ed259c2a543010dcd9881a3e.md) | 133 | `result-track:ed259c2a543010dcd9881a3e29023e92e6b2683816c12072bca3147682e5c461` |
| 9 | `theorem` | [ext_of_iInf](../../../../mathematics/Algebra/Basic/Variant4ba211b1d99c3727e858122e231acc1415efa92699230bc715c669f87e7c4144.lean/declarations/ext-of-iinf--4e6e808b60f96893d2ebd167.md) | 138 | `result-track:4e6e808b60f96893d2ebd1672936835875f615597a3cf8d249145d0a2d8f1e02` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant4ba211b1d99c3727e858122e231acc1415efa92699230bc715c669f87e7c4144.lean/declarations/instance--282bd52f870d472d21e4b6e1.md) | 164 | `declaration-track:282bd52f870d472d21e4b6e15c875f078dbdae0ff0ca130c6fc242533352a04b` |
| 11 | `theorem` | [of_equiv](../../../../mathematics/Algebra/Basic/Variant4ba211b1d99c3727e858122e231acc1415efa92699230bc715c669f87e7c4144.lean/declarations/of-equiv--ccd34437a0eddd83038d7621.md) | 174 | `result-track:ccd34437a0eddd83038d7621813c751ef4ea2d359b23684e74258e19599c2967` |
| 12 | `theorem` | [comp](../../../../mathematics/Algebra/Basic/Variant4ba211b1d99c3727e858122e231acc1415efa92699230bc715c669f87e7c4144.lean/declarations/comp--30aa654a7f74b05d3590c145.md) | 191 | `result-track:30aa654a7f74b05d3590c145578a7abea3be643ecf393682a88e98fe2cb9b301` |
| 13 | `theorem` | [of_comp](../../../../mathematics/Algebra/Basic/Variant4ba211b1d99c3727e858122e231acc1415efa92699230bc715c669f87e7c4144.lean/declarations/of-comp--4afafead6250943b2646f3c4.md) | 206 | `result-track:4afafead6250943b2646f3c49e5c65326f952b97331598ac1ac1c705e837da01` |
| 14 | `theorem` | [of_surjective](../../../../mathematics/Algebra/Basic/Variant4ba211b1d99c3727e858122e231acc1415efa92699230bc715c669f87e7c4144.lean/declarations/of-surjective--1c954a6c0ba9f0759a3e8bb0.md) | 224 | `result-track:1c954a6c0ba9f0759a3e8bb0b43e3a33cb84c93a6a3c7b5aad6a5da17f5e69bd` |
| 15 | `instance` | [quotient](../../../../mathematics/Algebra/Basic/Variant4ba211b1d99c3727e858122e231acc1415efa92699230bc715c669f87e7c4144.lean/declarations/quotient--560343ddf7b48a1d5e235848.md) | 235 | `declaration-track:560343ddf7b48a1d5e2358485ca98d1ba0bcb6ad3e7e64112770400b827eb0ff` |
| 16 | `theorem` | [iff_of_equiv](../../../../mathematics/Algebra/Basic/Variant4ba211b1d99c3727e858122e231acc1415efa92699230bc715c669f87e7c4144.lean/declarations/iff-of-equiv--7d50c694e06094e083ee6810.md) | 239 | `result-track:7d50c694e06094e083ee68102827af85eca596b83cb2c429b1478fdf2dc888c7` |
| 17 | `instance` | [base_change](../../../../mathematics/Algebra/Basic/Variant4ba211b1d99c3727e858122e231acc1415efa92699230bc715c669f87e7c4144.lean/declarations/base-change--f3f8054397a586f22c80af5e.md) | 252 | `declaration-track:f3f8054397a586f22c80af5e67d55b5ef92cd0bef9b304556627325529414d8d` |
| 18 | `theorem` | [of_isLocalization](../../../../mathematics/Algebra/Basic/Variant4ba211b1d99c3727e858122e231acc1415efa92699230bc715c669f87e7c4144.lean/declarations/of-islocalization--0eecea81e736da1f6b2306a9.md) | 274 | `result-track:0eecea81e736da1f6b2306a9be26763647da8bfac53d6b671a67d04c64087a99` |
| 19 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant4ba211b1d99c3727e858122e231acc1415efa92699230bc715c669f87e7c4144.lean/declarations/instance--a7e703063618bc303d6f0be6.md) | 282 | `declaration-track:a7e703063618bc303d6f0be61bf54d9ee0c808283a4bd3362630ee107d77145c` |
| 20 | `theorem` | [localization_base](../../../../mathematics/Algebra/Basic/Variant4ba211b1d99c3727e858122e231acc1415efa92699230bc715c669f87e7c4144.lean/declarations/localization-base--06b5efb2a026c4c34df2280f.md) | 292 | `result-track:06b5efb2a026c4c34df2280fa2c8f1068bfaac01d6f1f0e8058d06205d74915f` |
| 21 | `theorem` | [localization_map](../../../../mathematics/Algebra/Basic/Variant4ba211b1d99c3727e858122e231acc1415efa92699230bc715c669f87e7c4144.lean/declarations/localization-map--f55d3e9541199cef92b62311.md) | 297 | `result-track:f55d3e9541199cef92b6231142bc7dac3fe42e0250c0e34ddbae2adfced86994` |
| 22 | `class` | [Unramified](../../../../mathematics/Algebra/Basic/Variant4ba211b1d99c3727e858122e231acc1415efa92699230bc715c669f87e7c4144.lean/declarations/unramified--8cfe9af3e04f2781bc0a38bd.md) | 316 | `declaration-track:8cfe9af3e04f2781bc0a38bd7ac786204a08cdd16a3a01f477086ca779e9b3ae` |
| 23 | `theorem` | [of_equiv](../../../../mathematics/Algebra/Basic/Variant4ba211b1d99c3727e858122e231acc1415efa92699230bc715c669f87e7c4144.lean/declarations/of-equiv--70c4bbc772e34b27cc780ca4.md) | 330 | `result-track:70c4bbc772e34b27cc780ca44a921d75df64c9e2e766ff9528396a50923ba37a` |
| 24 | `theorem` | [of_isLocalization_Away](../../../../mathematics/Algebra/Basic/Variant4ba211b1d99c3727e858122e231acc1415efa92699230bc715c669f87e7c4144.lean/declarations/of-islocalization-away--25b626a7ff34c2238d6f716c.md) | 335 | `result-track:25b626a7ff34c2238d6f716c33065d69f03cbc8d1e0d27d565f2cb80ff2dced8` |
| 25 | `theorem` | [comp](../../../../mathematics/Algebra/Basic/Variant4ba211b1d99c3727e858122e231acc1415efa92699230bc715c669f87e7c4144.lean/declarations/comp--bc752407ab2a64448f7b84d5.md) | 346 | `result-track:bc752407ab2a64448f7b84d5d46dbe9f80b694b32610716e5b67fa9b5b1e1764` |
| 26 | `instance` | [baseChange](../../../../mathematics/Algebra/Basic/Variant4ba211b1d99c3727e858122e231acc1415efa92699230bc715c669f87e7c4144.lean/declarations/basechange--52f662b0ccee6b458d6bb808.md) | 353 | `declaration-track:52f662b0ccee6b458d6bb80845bd91309712f8ccf5703cf0e5fc250d0b369722` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
