# Verification target: GRWTSK.Algebra.PFilter.Variantb15a3ad8e90f43dd8fa63ef6c3bf1dc7cf4bae1d1157797f07ea5635bc00cf90

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d4611745445506434ce3aa04840886576dc38712",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/PFilter/Variantb15a3ad8e90f43dd8fa63ef6c3bf1dc7cf4bae1d1157797f07ea5635bc00cf90.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/PFilter/Variantb15a3ad8e90f43dd8fa63ef6c3bf1dc7cf4bae1d1157797f07ea5635bc00cf90.lean/index.md) · [Full source](../../../../mathematics/Algebra/PFilter/Variantb15a3ad8e90f43dd8fa63ef6c3bf1dc7cf4bae1d1157797f07ea5635bc00cf90.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d4611745445506434ce3aa04840886576dc38712`.

Source path: `GRWTSK/Algebra/PFilter/Variantb15a3ad8e90f43dd8fa63ef6c3bf1dc7cf4bae1d1157797f07ea5635bc00cf90.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/PFilter/Variantb15a3ad8e90f43dd8fa63ef6c3bf1dc7cf4bae1d1157797f07ea5635bc00cf90.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Ideal` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PFilter](../../../../mathematics/Algebra/PFilter/Variantb15a3ad8e90f43dd8fa63ef6c3bf1dc7cf4bae1d1157797f07ea5635bc00cf90.lean/declarations/pfilter--b24b4294ebd80fae46504351.md) | 41 | `declaration-track:b24b4294ebd80fae46504351a0410243c6d4e81109ba00fba67a74e71ce89c50` |
| 2 | `def` | [IsPFilter](../../../../mathematics/Algebra/PFilter/Variantb15a3ad8e90f43dd8fa63ef6c3bf1dc7cf4bae1d1157797f07ea5635bc00cf90.lean/declarations/ispfilter--5b5d4c33f4f0f55ac3c462c2.md) | 47 | `declaration-track:5b5d4c33f4f0f55ac3c462c2635d1e8409c382a3af13379c441d093fae3ed12d` |
| 3 | `theorem` | [IsPFilter.of_def](../../../../mathematics/Algebra/PFilter/Variantb15a3ad8e90f43dd8fa63ef6c3bf1dc7cf4bae1d1157797f07ea5635bc00cf90.lean/declarations/ispfilter-of-def--71a8e5e3850b8b23c0015fb7.md) | 50 | `result-track:71a8e5e3850b8b23c0015fb7d17bf894a3ccfdce67874881937291d43a778a9d` |
| 4 | `def` | [IsPFilter.toPFilter](../../../../mathematics/Algebra/PFilter/Variantb15a3ad8e90f43dd8fa63ef6c3bf1dc7cf4bae1d1157797f07ea5635bc00cf90.lean/declarations/ispfilter-topfilter--1fcb38165b708ca843a9bd84.md) | 57 | `declaration-track:1fcb38165b708ca843a9bd8492831f52dee00f12828e4b22fb3398a6aa6d313e` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/PFilter/Variantb15a3ad8e90f43dd8fa63ef6c3bf1dc7cf4bae1d1157797f07ea5635bc00cf90.lean/declarations/instance--17ff84a40a7e9886d2be8128.md) | 66 | `declaration-track:17ff84a40a7e9886d2be812879f9893691ddf3c1cab92681acfc0872acfbb351` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/PFilter/Variantb15a3ad8e90f43dd8fa63ef6c3bf1dc7cf4bae1d1157797f07ea5635bc00cf90.lean/declarations/instance--267daceab2dbf4ac3809c07e.md) | 69 | `declaration-track:267daceab2dbf4ac3809c07e488d2e8463a376a9adbd33a0d724b5706636cd16` |
| 7 | `theorem` | [isPFilter](../../../../mathematics/Algebra/PFilter/Variantb15a3ad8e90f43dd8fa63ef6c3bf1dc7cf4bae1d1157797f07ea5635bc00cf90.lean/declarations/ispfilter--5b326f8b5e2db54ede6b2f8f.md) | 73 | `result-track:5b326f8b5e2db54ede6b2f8ff3020a4e2c22dbe5859d83a4ed79dbccf63e4a59` |
| 8 | `theorem` | [nonempty](../../../../mathematics/Algebra/PFilter/Variantb15a3ad8e90f43dd8fa63ef6c3bf1dc7cf4bae1d1157797f07ea5635bc00cf90.lean/declarations/nonempty--2710208bf97a8d7c6affb7c2.md) | 75 | `result-track:2710208bf97a8d7c6affb7c21aee642218658811283926c35d366f97c4ecf2dc` |
| 9 | `theorem` | [directed](../../../../mathematics/Algebra/PFilter/Variantb15a3ad8e90f43dd8fa63ef6c3bf1dc7cf4bae1d1157797f07ea5635bc00cf90.lean/declarations/directed--ecd4ad025d818833d65317f1.md) | 77 | `result-track:ecd4ad025d818833d65317f16a4c3ce9f37c8cd68f061a95aad91401c22d9c83` |
| 10 | `theorem` | [mem_of_le](../../../../mathematics/Algebra/PFilter/Variantb15a3ad8e90f43dd8fa63ef6c3bf1dc7cf4bae1d1157797f07ea5635bc00cf90.lean/declarations/mem-of-le--23a0b802b7402ffe377d3482.md) | 79 | `result-track:23a0b802b7402ffe377d34822f26bb07bb74ee3c916dfe190f245f2bfc5ebaba` |
| 11 | `theorem` | [ext](../../../../mathematics/Algebra/PFilter/Variantb15a3ad8e90f43dd8fa63ef6c3bf1dc7cf4bae1d1157797f07ea5635bc00cf90.lean/declarations/ext--8d99615dc0181da0f67393cf.md) | 83 | `result-track:8d99615dc0181da0f67393cf625b0d2769768304b4a2ae821baf5bfb5985096b` |
| 12 | `theorem` | [mem_of_mem_of_le](../../../../mathematics/Algebra/PFilter/Variantb15a3ad8e90f43dd8fa63ef6c3bf1dc7cf4bae1d1157797f07ea5635bc00cf90.lean/declarations/mem-of-mem-of-le--28278f52724d7b8bc4aa9364.md) | 86 | `result-track:28278f52724d7b8bc4aa93643b19a2b3faa60f2336f6ed7cc4c1974381666207` |
| 13 | `def` | [principal](../../../../mathematics/Algebra/PFilter/Variantb15a3ad8e90f43dd8fa63ef6c3bf1dc7cf4bae1d1157797f07ea5635bc00cf90.lean/declarations/principal--f9dfaa0d76b614af8e42f4d4.md) | 90 | `declaration-track:f9dfaa0d76b614af8e42f4d4010d58bffed41de79e443f068c046c7d085abe8e` |
| 14 | `theorem` | [mem_mk](../../../../mathematics/Algebra/PFilter/Variantb15a3ad8e90f43dd8fa63ef6c3bf1dc7cf4bae1d1157797f07ea5635bc00cf90.lean/declarations/mem-mk--d541b97fa5f14379a9531796.md) | 94 | `result-track:d541b97fa5f14379a9531796c2755e4c7192326bed8c44a33945bbcd64ea80f7` |
| 15 | `theorem` | [principal_le_iff](../../../../mathematics/Algebra/PFilter/Variantb15a3ad8e90f43dd8fa63ef6c3bf1dc7cf4bae1d1157797f07ea5635bc00cf90.lean/declarations/principal-le-iff--7fe37b87fdd6ecca0b0826c4.md) | 98 | `result-track:7fe37b87fdd6ecca0b0826c48a11395272aba0670ccc155b9c37c24de3d8c9b8` |
| 16 | `theorem` | [mem_principal](../../../../mathematics/Algebra/PFilter/Variantb15a3ad8e90f43dd8fa63ef6c3bf1dc7cf4bae1d1157797f07ea5635bc00cf90.lean/declarations/mem-principal--b5c7abe9bf25f71e79f3ab98.md) | 101 | `result-track:b5c7abe9bf25f71e79f3ab985af234a82c4d3052780a45fde87a4952e6392a23` |
| 17 | `theorem` | [principal_le_principal_iff](../../../../mathematics/Algebra/PFilter/Variantb15a3ad8e90f43dd8fa63ef6c3bf1dc7cf4bae1d1157797f07ea5635bc00cf90.lean/declarations/principal-le-principal-iff--af33d1f36dd0a82b575838c8.md) | 103 | `result-track:af33d1f36dd0a82b575838c8e3d1bb88c5c37c84a5b58bebfdf88eceb7419f87` |
| 18 | `theorem` | [antitone_principal](../../../../mathematics/Algebra/PFilter/Variantb15a3ad8e90f43dd8fa63ef6c3bf1dc7cf4bae1d1157797f07ea5635bc00cf90.lean/declarations/antitone-principal--5235c841d9c06bb9d521effd.md) | 106 | `result-track:5235c841d9c06bb9d521effde765f2754d95c3b4bc39044cd9b0c6b9b76a45ad` |
| 19 | `theorem` | [top_mem](../../../../mathematics/Algebra/PFilter/Variantb15a3ad8e90f43dd8fa63ef6c3bf1dc7cf4bae1d1157797f07ea5635bc00cf90.lean/declarations/top-mem--dd889f539910d0935d7e2ce0.md) | 116 | `result-track:dd889f539910d0935d7e2ce0666dc473e8dcc394bdee25681f14aa6ed8d57dbd` |
| 20 | `instance` | [(anonymous)](../../../../mathematics/Algebra/PFilter/Variantb15a3ad8e90f43dd8fa63ef6c3bf1dc7cf4bae1d1157797f07ea5635bc00cf90.lean/declarations/instance--af890ddcbb70628d794b0630.md) | 119 | `declaration-track:af890ddcbb70628d794b06300aece8df6bc00448ad2b90269f3f2ba9751ded1b` |
| 21 | `instance` | [(anonymous)](../../../../mathematics/Algebra/PFilter/Variantb15a3ad8e90f43dd8fa63ef6c3bf1dc7cf4bae1d1157797f07ea5635bc00cf90.lean/declarations/instance--d39d00e4f56255323d3dca08.md) | 126 | `declaration-track:d39d00e4f56255323d3dca08c6c8cc309e7c0be03eb03a4b65dea67bad09b07e` |
| 22 | `theorem` | [inf_mem](../../../../mathematics/Algebra/PFilter/Variantb15a3ad8e90f43dd8fa63ef6c3bf1dc7cf4bae1d1157797f07ea5635bc00cf90.lean/declarations/inf-mem--52a31f4e369141f7598f5e7d.md) | 135 | `result-track:52a31f4e369141f7598f5e7dd3d2886993c07a04e85dfe6794d6c11d055034fd` |
| 23 | `theorem` | [inf_mem_iff](../../../../mathematics/Algebra/PFilter/Variantb15a3ad8e90f43dd8fa63ef6c3bf1dc7cf4bae1d1157797f07ea5635bc00cf90.lean/declarations/inf-mem-iff--b112e1daab12c854b83bf956.md) | 139 | `result-track:b112e1daab12c854b83bf956b9021ba46a12d3c9e482d0df662eaed3ec1ded32` |
| 24 | `theorem` | [sInf_gc](../../../../mathematics/Algebra/PFilter/Variantb15a3ad8e90f43dd8fa63ef6c3bf1dc7cf4bae1d1157797f07ea5635bc00cf90.lean/declarations/sinf-gc--a87e493f4def27db5ec8594e.md) | 148 | `result-track:a87e493f4def27db5ec8594ec959d7608d734c419ed3a3d0d185b9eb2413d8ec` |
| 25 | `def` | [infGi](../../../../mathematics/Algebra/PFilter/Variantb15a3ad8e90f43dd8fa63ef6c3bf1dc7cf4bae1d1157797f07ea5635bc00cf90.lean/declarations/infgi--4eeed696c70288371af80d29.md) | 153 | `declaration-track:4eeed696c70288371af80d298e57d06d7a1c32e0aa084fe609cef3588cb7935a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
