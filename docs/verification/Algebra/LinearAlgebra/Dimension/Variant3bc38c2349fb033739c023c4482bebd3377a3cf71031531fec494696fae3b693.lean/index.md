# Verification target: GRWTSK.Algebra.LinearAlgebra.Dimension.Variant3bc38c2349fb033739c023c4482bebd3377a3cf71031531fec494696fae3b693

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8e0e77f4b56862ec05ec5170ca08d3dc22f31bbf",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Dimension/Variant3bc38c2349fb033739c023c4482bebd3377a3cf71031531fec494696fae3b693.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Dimension/Variant3bc38c2349fb033739c023c4482bebd3377a3cf71031531fec494696fae3b693.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Dimension/Variant3bc38c2349fb033739c023c4482bebd3377a3cf71031531fec494696fae3b693.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8e0e77f4b56862ec05ec5170ca08d3dc22f31bbf`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Dimension/Variant3bc38c2349fb033739c023c4482bebd3377a3cf71031531fec494696fae3b693.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Dimension/Variant3bc38c2349fb033739c023c4482bebd3377a3cf71031531fec494696fae3b693.lean.json)

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
| 1 | `def` | [dim](../../../../../mathematics/Algebra/LinearAlgebra/Dimension/Variant3bc38c2349fb033739c023c4482bebd3377a3cf71031531fec494696fae3b693.lean/declarations/dim--93982a121c7de8ae9ad41cc5.md) | 52 | `declaration-track:93982a121c7de8ae9ad41cc5b6a84962767a8ff8c4251418811712a378dcd8bc` |
| 2 | `def` | [finDim](../../../../../mathematics/Algebra/LinearAlgebra/Dimension/Variant3bc38c2349fb033739c023c4482bebd3377a3cf71031531fec494696fae3b693.lean/declarations/findim--6eafb490e8742ca68846a118.md) | 59 | `declaration-track:6eafb490e8742ca68846a1185e52ba3e739a221fd2e2fb8cb8e8002e052c066b` |
| 3 | `theorem` | [dim_bot](../../../../../mathematics/Algebra/LinearAlgebra/Dimension/Variant3bc38c2349fb033739c023c4482bebd3377a3cf71031531fec494696fae3b693.lean/declarations/dim-bot--3002c8eb71773dc9d7ac170a.md) | 63 | `result-track:3002c8eb71773dc9d7ac170a1a7165a0ab295d073dc1a2514e40b406f35b57a9` |
| 4 | `theorem` | [finDim_bot](../../../../../mathematics/Algebra/LinearAlgebra/Dimension/Variant3bc38c2349fb033739c023c4482bebd3377a3cf71031531fec494696fae3b693.lean/declarations/findim-bot--e98e58769e2bef344bfc5da9.md) | 67 | `result-track:e98e58769e2bef344bfc5da975833bd07f048cb4f2939764db12cba73a97d3b2` |
| 5 | `theorem` | [dim_singleton](../../../../../mathematics/Algebra/LinearAlgebra/Dimension/Variant3bc38c2349fb033739c023c4482bebd3377a3cf71031531fec494696fae3b693.lean/declarations/dim-singleton--e42f6795d06c92249b150786.md) | 71 | `result-track:e42f6795d06c92249b15078698cf59a95106a447326031707e66a572a6565808` |
| 6 | `theorem` | [finDim_singleton](../../../../../mathematics/Algebra/LinearAlgebra/Dimension/Variant3bc38c2349fb033739c023c4482bebd3377a3cf71031531fec494696fae3b693.lean/declarations/findim-singleton--a39ee0adfacf2e74ce435ac1.md) | 77 | `result-track:a39ee0adfacf2e74ce435ac11ca7000b0fb1ba3a20fb9f68161a302e340220c7` |
| 7 | `theorem` | [dim_eq_bot_iff](../../../../../mathematics/Algebra/LinearAlgebra/Dimension/Variant3bc38c2349fb033739c023c4482bebd3377a3cf71031531fec494696fae3b693.lean/declarations/dim-eq-bot-iff--95c429aae85d851c539d1803.md) | 81 | `result-track:95c429aae85d851c539d180350bb10fc950df3cd2c4c228a4bf30737d8f9ebd5` |
| 8 | `theorem` | [finDim_eq_bot_iff](../../../../../mathematics/Algebra/LinearAlgebra/Dimension/Variant3bc38c2349fb033739c023c4482bebd3377a3cf71031531fec494696fae3b693.lean/declarations/findim-eq-bot-iff--ad2d9d8b19051395aabd8c3d.md) | 85 | `result-track:ad2d9d8b19051395aabd8c3d335edeac3606b3a11eb2cdf18487ab9b7aeb4914` |
| 9 | `theorem` | [dim_ne_bot_iff](../../../../../mathematics/Algebra/LinearAlgebra/Dimension/Variant3bc38c2349fb033739c023c4482bebd3377a3cf71031531fec494696fae3b693.lean/declarations/dim-ne-bot-iff--7ec19fb3fa19dd3be2ce9d6e.md) | 88 | `result-track:7ec19fb3fa19dd3be2ce9d6e88892841a3d744a131418d35dc610ce5ac9eeb62` |
| 10 | `theorem` | [finDim_ne_bot_iff](../../../../../mathematics/Algebra/LinearAlgebra/Dimension/Variant3bc38c2349fb033739c023c4482bebd3377a3cf71031531fec494696fae3b693.lean/declarations/findim-ne-bot-iff--c44df08f2e3c377e3a14718d.md) | 92 | `result-track:c44df08f2e3c377e3a14718d866056d8cce64ccab73e55531565fc5614850d6d` |
| 11 | `theorem` | [dim_eq_rank](../../../../../mathematics/Algebra/LinearAlgebra/Dimension/Variant3bc38c2349fb033739c023c4482bebd3377a3cf71031531fec494696fae3b693.lean/declarations/dim-eq-rank--c7ee4638e9d8de5621632b88.md) | 96 | `result-track:c7ee4638e9d8de5621632b886c9412e50a430d078e19101dff1582d5976ae7ea` |
| 12 | `theorem` | [finDim_eq_finrank](../../../../../mathematics/Algebra/LinearAlgebra/Dimension/Variant3bc38c2349fb033739c023c4482bebd3377a3cf71031531fec494696fae3b693.lean/declarations/findim-eq-finrank--6a6f41ab2460bd51395eb9c8.md) | 99 | `result-track:6a6f41ab2460bd51395eb9c8c4f1f7c47c2c4ad1035aa1d5dc15589101287d28` |
| 13 | `theorem` | [finDim_eq_finrank_of_not_finite](../../../../../mathematics/Algebra/LinearAlgebra/Dimension/Variant3bc38c2349fb033739c023c4482bebd3377a3cf71031531fec494696fae3b693.lean/declarations/findim-eq-finrank-of-not-finite--9c215c43abb86b1cf0cedf39.md) | 104 | `result-track:9c215c43abb86b1cf0cedf3971cc2585bd80f43d20bbb63393ec07ffc82ed6eb` |
| 14 | `theorem` | [dim_lt_aleph0](../../../../../mathematics/Algebra/LinearAlgebra/Dimension/Variant3bc38c2349fb033739c023c4482bebd3377a3cf71031531fec494696fae3b693.lean/declarations/dim-lt-aleph0--1f8b17c7dbf9da212b426eb7.md) | 113 | `result-track:1f8b17c7dbf9da212b426eb7a6d1b64546fcf93812339facc1fd8c0c222c870f` |
| 15 | `theorem` | [finite_iff_dim_lt_aleph0](../../../../../mathematics/Algebra/LinearAlgebra/Dimension/Variant3bc38c2349fb033739c023c4482bebd3377a3cf71031531fec494696fae3b693.lean/declarations/finite-iff-dim-lt-aleph0--27222ced91b4d08fb8ac2ff3.md) | 118 | `result-track:27222ced91b4d08fb8ac2ff3d2d2d504040667cc665bf467400f8231ab4c8c72` |
| 16 | `theorem` | [finite_of_finDim_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Dimension/Variant3bc38c2349fb033739c023c4482bebd3377a3cf71031531fec494696fae3b693.lean/declarations/finite-of-findim-ne-zero--ef0a5cbd63287328f5fb4b5c.md) | 126 | `result-track:ef0a5cbd63287328f5fb4b5c372cceff96e0d1e7824d084bdcdacaee98d319c8` |
| 17 | `theorem` | [finDim_eq_map_dim_toNat](../../../../../mathematics/Algebra/LinearAlgebra/Dimension/Variant3bc38c2349fb033739c023c4482bebd3377a3cf71031531fec494696fae3b693.lean/declarations/findim-eq-map-dim-tonat--492a50ba226c59717d3f0e7b.md) | 133 | `result-track:492a50ba226c59717d3f0e7b1c90c7b417f67053cf3da05485180f0c66f901b0` |
| 18 | `theorem` | [dim_eq_finDim_unbot](../../../../../mathematics/Algebra/LinearAlgebra/Dimension/Variant3bc38c2349fb033739c023c4482bebd3377a3cf71031531fec494696fae3b693.lean/declarations/dim-eq-findim-unbot--f26538229b5187ae957ffe66.md) | 136 | `result-track:f26538229b5187ae957ffe66f74567e3147bf5c36db26f7a36a55475a8ab2071` |
| 19 | `theorem` | [dim_mono](../../../../../mathematics/Algebra/LinearAlgebra/Dimension/Variant3bc38c2349fb033739c023c4482bebd3377a3cf71031531fec494696fae3b693.lean/declarations/dim-mono--7e6ab3da02d861e0adbf00d7.md) | 143 | `result-track:7e6ab3da02d861e0adbf00d7566c2429fa1e250d4866942ee8917772b7a7953d` |
| 20 | `theorem` | [finDim_mono](../../../../../mathematics/Algebra/LinearAlgebra/Dimension/Variant3bc38c2349fb033739c023c4482bebd3377a3cf71031531fec494696fae3b693.lean/declarations/findim-mono--51d89e189f559ac854d56643.md) | 150 | `result-track:51d89e189f559ac854d56643ff222952208e3582f1c7805cc2a747e87c4b74ae` |
| 21 | `theorem` | [lift_dim_map_le](../../../../../mathematics/Algebra/LinearAlgebra/Dimension/Variant3bc38c2349fb033739c023c4482bebd3377a3cf71031531fec494696fae3b693.lean/declarations/lift-dim-map-le--362f973ad48467d8ad57aaf2.md) | 157 | `result-track:362f973ad48467d8ad57aaf2714c7bcba1e6777267fa54dd2bf508640c591f3a` |
| 22 | `theorem` | [dim_map_le](../../../../../mathematics/Algebra/LinearAlgebra/Dimension/Variant3bc38c2349fb033739c023c4482bebd3377a3cf71031531fec494696fae3b693.lean/declarations/dim-map-le--e302c9921c0bc8efad3ac267.md) | 165 | `result-track:e302c9921c0bc8efad3ac26754103af656182d1f0e99a480495cc477b5f84952` |
| 23 | `theorem` | [finDim_map_le_finDim](../../../../../mathematics/Algebra/LinearAlgebra/Dimension/Variant3bc38c2349fb033739c023c4482bebd3377a3cf71031531fec494696fae3b693.lean/declarations/findim-map-le-findim--f5cfc7aa81c8dbeba6d07d10.md) | 168 | `result-track:f5cfc7aa81c8dbeba6d07d10c06ff5c3be3eee8c09ff89a45794168b7fd656e3` |
| 24 | `theorem` | [lift_dim_map_of_injective](../../../../../mathematics/Algebra/LinearAlgebra/Dimension/Variant3bc38c2349fb033739c023c4482bebd3377a3cf71031531fec494696fae3b693.lean/declarations/lift-dim-map-of-injective--6dff6f22f987c96325e8ba6f.md) | 175 | `result-track:6dff6f22f987c96325e8ba6f42fee0c9ceac177b5c3ad93c9849ecc80de049bd` |
| 25 | `theorem` | [dim_map_of_injective](../../../../../mathematics/Algebra/LinearAlgebra/Dimension/Variant3bc38c2349fb033739c023c4482bebd3377a3cf71031531fec494696fae3b693.lean/declarations/dim-map-of-injective--10bd5677de78007b59eacc0d.md) | 186 | `result-track:10bd5677de78007b59eacc0d1730d53b8a9ed9e6bfe3cb066b57e7fd8918878f` |
| 26 | `theorem` | [finDim_map_of_injective](../../../../../mathematics/Algebra/LinearAlgebra/Dimension/Variant3bc38c2349fb033739c023c4482bebd3377a3cf71031531fec494696fae3b693.lean/declarations/findim-map-of-injective--75af056088aee33d1ba0be1b.md) | 190 | `result-track:75af056088aee33d1ba0be1b22110a2107f1764632a654d89bfcced89428100a` |
| 27 | `theorem` | [dim_le_zero_iff_subsingleton](../../../../../mathematics/Algebra/LinearAlgebra/Dimension/Variant3bc38c2349fb033739c023c4482bebd3377a3cf71031531fec494696fae3b693.lean/declarations/dim-le-zero-iff-subsingleton--177a1f7b604c49047bdb9949.md) | 200 | `result-track:177a1f7b604c49047bdb9949adbac0a3312220f30cf3ac2e5a3ada004ee303ed` |
| 28 | `theorem` | [finDim_le_zero_iff_subsingleton](../../../../../mathematics/Algebra/LinearAlgebra/Dimension/Variant3bc38c2349fb033739c023c4482bebd3377a3cf71031531fec494696fae3b693.lean/declarations/findim-le-zero-iff-subsingleton--be0f6819d56c15412490c756.md) | 207 | `result-track:be0f6819d56c15412490c756641639d7bfe519134033d7b908a5b0310b5f3909` |
| 29 | `theorem` | [finDim_strictMono](../../../../../mathematics/Algebra/LinearAlgebra/Dimension/Variant3bc38c2349fb033739c023c4482bebd3377a3cf71031531fec494696fae3b693.lean/declarations/findim-strictmono--f7f4daf41caf089eaef9a1b9.md) | 222 | `result-track:f7f4daf41caf089eaef9a1b9cc257db859d71c73ba959cf867544bfe63c49e46` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
