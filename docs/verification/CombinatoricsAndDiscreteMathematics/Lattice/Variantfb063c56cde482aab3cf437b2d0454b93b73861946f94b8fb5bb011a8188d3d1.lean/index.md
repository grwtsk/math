# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Lattice.Variantfb063c56cde482aab3cf437b2d0454b93b73861946f94b8fb5bb011a8188d3d1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "49da3f57244df4539145d38d5f32bca79349587b",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Lattice/Variantfb063c56cde482aab3cf437b2d0454b93b73861946f94b8fb5bb011a8188d3d1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variantfb063c56cde482aab3cf437b2d0454b93b73861946f94b8fb5bb011a8188d3d1.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variantfb063c56cde482aab3cf437b2d0454b93b73861946f94b8fb5bb011a8188d3d1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `49da3f57244df4539145d38d5f32bca79349587b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Lattice/Variantfb063c56cde482aab3cf437b2d0454b93b73861946f94b8fb5bb011a8188d3d1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Lattice/Variantfb063c56cde482aab3cf437b2d0454b93b73861946f94b8fb5bb011a8188d3d1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Multiset.FinsetOps` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.Fold` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variantfb063c56cde482aab3cf437b2d0454b93b73861946f94b8fb5bb011a8188d3d1.lean/declarations/sup--1058babaaf50a5d53c83e988.md) | 29 | `declaration-track:1058babaaf50a5d53c83e988451e446aa394f94ab59dca92da5a7abfa4dcffd6` |
| 2 | `theorem` | [sup_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variantfb063c56cde482aab3cf437b2d0454b93b73861946f94b8fb5bb011a8188d3d1.lean/declarations/sup-coe--6a2f8f12b1c882bec3b27730.md) | 34 | `result-track:6a2f8f12b1c882bec3b27730aed47ef84acd6a6fc4ce3d9f340d3a78eacbe365` |
| 3 | `theorem` | [sup_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variantfb063c56cde482aab3cf437b2d0454b93b73861946f94b8fb5bb011a8188d3d1.lean/declarations/sup-zero--a43eb8fa8b0b759872dc18e1.md) | 39 | `result-track:a43eb8fa8b0b759872dc18e14379af4876ab433b04b16b65a0f44c5adab71307` |
| 4 | `theorem` | [sup_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variantfb063c56cde482aab3cf437b2d0454b93b73861946f94b8fb5bb011a8188d3d1.lean/declarations/sup-cons--7fe760884419043a0ebb10ff.md) | 44 | `result-track:7fe760884419043a0ebb10ff58f7fcaa03845015a2fe8b63e128888843baae60` |
| 5 | `theorem` | [sup_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variantfb063c56cde482aab3cf437b2d0454b93b73861946f94b8fb5bb011a8188d3d1.lean/declarations/sup-singleton--64413a6be595b284015e17c4.md) | 49 | `result-track:64413a6be595b284015e17c4a4c3ad0793f319c6699b81c78b1eab3e2107d714` |
| 6 | `theorem` | [sup_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variantfb063c56cde482aab3cf437b2d0454b93b73861946f94b8fb5bb011a8188d3d1.lean/declarations/sup-add--e453ed1b7c7a2825afe0d686.md) | 54 | `result-track:e453ed1b7c7a2825afe0d686028f21fcc84fa6ecdadca66a8cde30bfe18404bb` |
| 7 | `theorem` | [sup_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variantfb063c56cde482aab3cf437b2d0454b93b73861946f94b8fb5bb011a8188d3d1.lean/declarations/sup-le--851ba06a3751fdf42801442e.md) | 58 | `result-track:851ba06a3751fdf42801442e513b0197745c2a55c185ba7fadae7e1000c0c765` |
| 8 | `theorem` | [le_sup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variantfb063c56cde482aab3cf437b2d0454b93b73861946f94b8fb5bb011a8188d3d1.lean/declarations/le-sup--5e73ece249e0850b4da2447a.md) | 63 | `result-track:5e73ece249e0850b4da2447a9ba3aa9ea3c81189758c413bf6ca00862048dc9a` |
| 9 | `theorem` | [sup_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variantfb063c56cde482aab3cf437b2d0454b93b73861946f94b8fb5bb011a8188d3d1.lean/declarations/sup-mono--a3e74a736e0598f1a684c370.md) | 67 | `result-track:a3e74a736e0598f1a684c370fee56381b769493118277bcd01883b508f762e09` |
| 10 | `theorem` | [sup_dedup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variantfb063c56cde482aab3cf437b2d0454b93b73861946f94b8fb5bb011a8188d3d1.lean/declarations/sup-dedup--95bd30fd2bc8c178e78af783.md) | 74 | `result-track:95bd30fd2bc8c178e78af783519374e835dcbc18a94908135c1f868abbd9379e` |
| 11 | `theorem` | [sup_ndunion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variantfb063c56cde482aab3cf437b2d0454b93b73861946f94b8fb5bb011a8188d3d1.lean/declarations/sup-ndunion--95981602488f50efe14cc8ba.md) | 79 | `result-track:95981602488f50efe14cc8ba31df5ebc3b2cb87de069e133a8bc0869a727bf7b` |
| 12 | `theorem` | [sup_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variantfb063c56cde482aab3cf437b2d0454b93b73861946f94b8fb5bb011a8188d3d1.lean/declarations/sup-union--df957cec6f1f0a5565d0ef0f.md) | 84 | `result-track:df957cec6f1f0a5565d0ef0fa21e768b7cc91a689285376bdf24335e53ac9bd8` |
| 13 | `theorem` | [sup_ndinsert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variantfb063c56cde482aab3cf437b2d0454b93b73861946f94b8fb5bb011a8188d3d1.lean/declarations/sup-ndinsert--2f004b814eea7393039cb195.md) | 89 | `result-track:2f004b814eea7393039cb195192e19d87635f063c7e17b599be48fbbd363b336` |
| 14 | `theorem` | [nodup_sup_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variantfb063c56cde482aab3cf437b2d0454b93b73861946f94b8fb5bb011a8188d3d1.lean/declarations/nodup-sup-iff--7c77540ee2e4cae15d5f351a.md) | 93 | `result-track:7c77540ee2e4cae15d5f351aae9ceffaf6b4942f17ed6d7dddf6ef63c9ea663c` |
| 15 | `def` | [inf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variantfb063c56cde482aab3cf437b2d0454b93b73861946f94b8fb5bb011a8188d3d1.lean/declarations/inf--b34559b265c2b5e29155e122.md) | 113 | `declaration-track:b34559b265c2b5e29155e1220f49e9908458789f29be0a56ef77a8999dae17aa` |
| 16 | `theorem` | [inf_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variantfb063c56cde482aab3cf437b2d0454b93b73861946f94b8fb5bb011a8188d3d1.lean/declarations/inf-coe--a2aadc8451ac4e0cb38022c4.md) | 118 | `result-track:a2aadc8451ac4e0cb38022c41a97a455224d03767f47e299ddad3f3c91f67741` |
| 17 | `theorem` | [inf_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variantfb063c56cde482aab3cf437b2d0454b93b73861946f94b8fb5bb011a8188d3d1.lean/declarations/inf-zero--1b5ca957fb3437cb64a18cbe.md) | 123 | `result-track:1b5ca957fb3437cb64a18cbe2dd441b20fae8d1ece0b9db7508b1251c17beb74` |
| 18 | `theorem` | [inf_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variantfb063c56cde482aab3cf437b2d0454b93b73861946f94b8fb5bb011a8188d3d1.lean/declarations/inf-cons--1e6ffe5312230ead3d154782.md) | 128 | `result-track:1e6ffe5312230ead3d1547827df65b71bc8e2ba8a26b9826f1495b748b2c7a00` |
| 19 | `theorem` | [inf_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variantfb063c56cde482aab3cf437b2d0454b93b73861946f94b8fb5bb011a8188d3d1.lean/declarations/inf-singleton--846f5990f8312a9b3781e585.md) | 133 | `result-track:846f5990f8312a9b3781e58536f57faf15b5534e9bdcfbf42b0f963b99e12926` |
| 20 | `theorem` | [inf_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variantfb063c56cde482aab3cf437b2d0454b93b73861946f94b8fb5bb011a8188d3d1.lean/declarations/inf-add--5223651aa41e0d98ff209652.md) | 138 | `result-track:5223651aa41e0d98ff209652f258e555a4724292a3e826445c12a0c14b5b3d8d` |
| 21 | `theorem` | [le_inf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variantfb063c56cde482aab3cf437b2d0454b93b73861946f94b8fb5bb011a8188d3d1.lean/declarations/le-inf--84e82ad7d5c710dd3e4b9460.md) | 142 | `result-track:84e82ad7d5c710dd3e4b94600247a0e441000349ec482d8b2909d545edd789f8` |
| 22 | `theorem` | [inf_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variantfb063c56cde482aab3cf437b2d0454b93b73861946f94b8fb5bb011a8188d3d1.lean/declarations/inf-le--8a8f5cd318e6088e57e8833d.md) | 147 | `result-track:8a8f5cd318e6088e57e8833dee10eb047dbe7b75c363e0863bab9675e5f51192` |
| 23 | `theorem` | [inf_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variantfb063c56cde482aab3cf437b2d0454b93b73861946f94b8fb5bb011a8188d3d1.lean/declarations/inf-mono--29edacf668714fff9c4763a7.md) | 151 | `result-track:29edacf668714fff9c4763a79191b0e99ff2df7a2c582dd17cf3fd6ef6dc149b` |
| 24 | `theorem` | [inf_dedup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variantfb063c56cde482aab3cf437b2d0454b93b73861946f94b8fb5bb011a8188d3d1.lean/declarations/inf-dedup--645ecb7ae287d24e84e4d8af.md) | 158 | `result-track:645ecb7ae287d24e84e4d8af932da8fc0925b0f4fca3c46903d5ec124076a757` |
| 25 | `theorem` | [inf_ndunion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variantfb063c56cde482aab3cf437b2d0454b93b73861946f94b8fb5bb011a8188d3d1.lean/declarations/inf-ndunion--b743270a9c4380ad6a9a37ed.md) | 163 | `result-track:b743270a9c4380ad6a9a37edc5057bf07c1880a845483f1f4ba72bbac3582a91` |
| 26 | `theorem` | [inf_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variantfb063c56cde482aab3cf437b2d0454b93b73861946f94b8fb5bb011a8188d3d1.lean/declarations/inf-union--a719ad540a8a2bb30ee9da36.md) | 168 | `result-track:a719ad540a8a2bb30ee9da362b2aa7d1140fa6d1169462fb1b5737903880789f` |
| 27 | `theorem` | [inf_ndinsert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variantfb063c56cde482aab3cf437b2d0454b93b73861946f94b8fb5bb011a8188d3d1.lean/declarations/inf-ndinsert--94893ae9d38ef98c50f25d00.md) | 173 | `result-track:94893ae9d38ef98c50f25d00c1a937144bff897dd5a8c4e16be79ab59c934b6f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
