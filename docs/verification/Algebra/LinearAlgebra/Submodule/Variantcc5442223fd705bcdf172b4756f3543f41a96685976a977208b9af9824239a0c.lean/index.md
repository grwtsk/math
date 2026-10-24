# Verification target: GRWTSK.Algebra.LinearAlgebra.Submodule.Variantcc5442223fd705bcdf172b4756f3543f41a96685976a977208b9af9824239a0c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6f92cb9899921aba27ce8ec68a53a1b9b0f43997",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Submodule/Variantcc5442223fd705bcdf172b4756f3543f41a96685976a977208b9af9824239a0c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantcc5442223fd705bcdf172b4756f3543f41a96685976a977208b9af9824239a0c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantcc5442223fd705bcdf172b4756f3543f41a96685976a977208b9af9824239a0c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6f92cb9899921aba27ce8ec68a53a1b9b0f43997`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Submodule/Variantcc5442223fd705bcdf172b4756f3543f41a96685976a977208b9af9824239a0c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Submodule/Variantcc5442223fd705bcdf172b4756f3543f41a96685976a977208b9af9824239a0c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basis.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mem_submodule_iff](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantcc5442223fd705bcdf172b4756f3543f41a96685976a977208b9af9824239a0c.lean/declarations/mem-submodule-iff--f8a2522a71777bdaa857af4c.md) | 32 | `result-track:f8a2522a71777bdaa857af4c64856503e00b911682d5c1ee4007f972dfe206fc` |
| 2 | `theorem` | [mem_submodule_iff'](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantcc5442223fd705bcdf172b4756f3543f41a96685976a977208b9af9824239a0c.lean/declarations/mem-submodule-iff--59372719450606135211b5f3.md) | 41 | `result-track:59372719450606135211b5f300705a63c2ddb7376516727f5cb24b624f21c50a` |
| 3 | `theorem` | [Basis.eq_bot_of_rank_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantcc5442223fd705bcdf172b4756f3543f41a96685976a977208b9af9824239a0c.lean/declarations/basis-eq-bot-of-rank-eq-zero--12d4f7dc242728b8f1ef0308.md) | 61 | `result-track:12d4f7dc242728b8f1ef0308b18519faeb81ff8cf435ebba087ebe24c31c17b5` |
| 4 | `def` | [Submodule.inductionOnRankAux](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantcc5442223fd705bcdf172b4756f3543f41a96685976a977208b9af9824239a0c.lean/declarations/submodule-inductiononrankaux--97b58d92d3e1f10d7bd89608.md) | 84 | `declaration-track:97b58d92d3e1f10d7bd8960848477da0c6a61cf151131d74cd2079ce82897d8f` |
| 5 | `lemma` | [Basis.mem_center_iff](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantcc5442223fd705bcdf172b4756f3543f41a96685976a977208b9af9824239a0c.lean/declarations/basis-mem-center-iff--4a7b83c2df4c5136663dc6c3.md) | 119 | `result-track:4a7b83c2df4c5136663dc6c349e50ffcd8502cb31d50e572a6ad25d4a97394f0` |
| 6 | `def` | [Basis.restrictScalars](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantcc5442223fd705bcdf172b4756f3543f41a96685976a977208b9af9824239a0c.lean/declarations/basis-restrictscalars--10af93bbffb5472a23e1b3fe.md) | 177 | `declaration-track:10af93bbffb5472a23e1b3fe355925f866ce37ac721c5ad4d1b73d0c8b0deeaa` |
| 7 | `theorem` | [Basis.restrictScalars_apply](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantcc5442223fd705bcdf172b4756f3543f41a96685976a977208b9af9824239a0c.lean/declarations/basis-restrictscalars-apply--0b67f05a3f46c521fb938bec.md) | 181 | `result-track:0b67f05a3f46c521fb938becd30924bf793cc35f7055bdd196aa0420faf0c552` |
| 8 | `theorem` | [Basis.restrictScalars_repr_apply](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantcc5442223fd705bcdf172b4756f3543f41a96685976a977208b9af9824239a0c.lean/declarations/basis-restrictscalars-repr-apply--836f61d55fd6fd4e94557b8d.md) | 185 | `result-track:836f61d55fd6fd4e94557b8d0ad84a01617266d4542ce983e8d2d7d35bb08e2e` |
| 9 | `theorem` | [Basis.mem_span_iff_repr_mem](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantcc5442223fd705bcdf172b4756f3543f41a96685976a977208b9af9824239a0c.lean/declarations/basis-mem-span-iff-repr-mem--83cc6146c06610ff67d8a54f.md) | 199 | `result-track:83cc6146c06610ff67d8a54f391fde71ed71377023f2f34282a6f7cffba541e3` |
| 10 | `def` | [Basis.addSubgroupOfClosure](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantcc5442223fd705bcdf172b4756f3543f41a96685976a977208b9af9824239a0c.lean/declarations/basis-addsubgroupofclosure--1279ec51f49a4769af8f56ea.md) | 221 | `declaration-track:1279ec51f49a4769af8f56ea9906bae03db6129c9f382f92c378af8462f73a56` |
| 11 | `theorem` | [Basis.addSubgroupOfClosure_apply](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantcc5442223fd705bcdf172b4756f3543f41a96685976a977208b9af9824239a0c.lean/declarations/basis-addsubgroupofclosure-apply--42c90e155e0bd3c21b38a54c.md) | 228 | `result-track:42c90e155e0bd3c21b38a54ce2d3b3b092116e809b268da38685be0e54205879` |
| 12 | `theorem` | [Basis.addSubgroupOfClosure_repr_apply](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantcc5442223fd705bcdf172b4756f3543f41a96685976a977208b9af9824239a0c.lean/declarations/basis-addsubgroupofclosure-repr-apply--90092360590861d1f2200c5d.md) | 233 | `result-track:90092360590861d1f2200c5d7a6d133d982ad67caff29894e5b8f600a148ec8f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
