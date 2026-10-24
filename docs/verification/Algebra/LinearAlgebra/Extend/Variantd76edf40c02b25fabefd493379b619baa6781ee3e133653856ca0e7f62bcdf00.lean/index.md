# Verification target: GRWTSK.Algebra.LinearAlgebra.Extend.Variantd76edf40c02b25fabefd493379b619baa6781ee3e133653856ca0e7f62bcdf00

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c14fc7dc6813c031883e2b39c8206b46893ec20",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Extend/Variantd76edf40c02b25fabefd493379b619baa6781ee3e133653856ca0e7f62bcdf00.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Extend/Variantd76edf40c02b25fabefd493379b619baa6781ee3e133653856ca0e7f62bcdf00.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Extend/Variantd76edf40c02b25fabefd493379b619baa6781ee3e133653856ca0e7f62bcdf00.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c14fc7dc6813c031883e2b39c8206b46893ec20`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Extend/Variantd76edf40c02b25fabefd493379b619baa6781ee3e133653856ca0e7f62bcdf00.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Extend/Variantd76edf40c02b25fabefd493379b619baa6781ee3e133653856ca0e7f62bcdf00.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.RestrictScalars` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.OperatorNorm.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.RCLike.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [extendTo𝕜'](../../../../../mathematics/Algebra/LinearAlgebra/Extend/Variantd76edf40c02b25fabefd493379b619baa6781ee3e133653856ca0e7f62bcdf00.lean/declarations/extendto--20e8eae2d946c6e6582603a1.md) | 53 | `declaration-track:20e8eae2d946c6e6582603a109dc7117009f12b1dfa4dcbb3da1d35a481732e3` |
| 2 | `theorem` | [extendTo𝕜'_apply](../../../../../mathematics/Algebra/LinearAlgebra/Extend/Variantd76edf40c02b25fabefd493379b619baa6781ee3e133653856ca0e7f62bcdf00.lean/declarations/extendto-apply--0ebbdc0c65fdccf754975006.md) | 87 | `result-track:0ebbdc0c65fdccf754975006c18692c9acc1dbfa69a404b29c6ebce97ff5d9dd` |
| 3 | `theorem` | [extendTo𝕜'_apply_re](../../../../../mathematics/Algebra/LinearAlgebra/Extend/Variantd76edf40c02b25fabefd493379b619baa6781ee3e133653856ca0e7f62bcdf00.lean/declarations/extendto-apply-re--54dd9c6919a01387702a606f.md) | 91 | `result-track:54dd9c6919a01387702a606f9fe5ea07935d7c803a1052a893348108ad224356` |
| 4 | `theorem` | [norm_extendTo𝕜'_apply_sq](../../../../../mathematics/Algebra/LinearAlgebra/Extend/Variantd76edf40c02b25fabefd493379b619baa6781ee3e133653856ca0e7f62bcdf00.lean/declarations/norm-extendto-apply-sq--d8c9d8d417f19e3d07e9932a.md) | 95 | `result-track:d8c9d8d417f19e3d07e9932af3ac50a8b6a17f6429832941b10cf31c86487835` |
| 5 | `theorem` | [norm_extendTo𝕜'_bound](../../../../../mathematics/Algebra/LinearAlgebra/Extend/Variantd76edf40c02b25fabefd493379b619baa6781ee3e133653856ca0e7f62bcdf00.lean/declarations/norm-extendto-bound--fab9433ce253b21faf0d5a49.md) | 111 | `result-track:fab9433ce253b21faf0d5a4957ea868786d22ad0c96cd56e135984b11b176396` |
| 6 | `def` | [extendTo𝕜'](../../../../../mathematics/Algebra/LinearAlgebra/Extend/Variantd76edf40c02b25fabefd493379b619baa6781ee3e133653856ca0e7f62bcdf00.lean/declarations/extendto--ea38497ecb11d2304d5bc313.md) | 125 | `declaration-track:ea38497ecb11d2304d5bc313acaf356a83d01be6b5388bafebb7b12f54557ad0` |
| 7 | `theorem` | [extendTo𝕜'_apply](../../../../../mathematics/Algebra/LinearAlgebra/Extend/Variantd76edf40c02b25fabefd493379b619baa6781ee3e133653856ca0e7f62bcdf00.lean/declarations/extendto-apply--e25b9f661f9e338d6d2e2988.md) | 128 | `result-track:e25b9f661f9e338d6d2e2988f4f529ce001b9d80e77fe5cbf456f1165b59f19e` |
| 8 | `theorem` | [norm_extendTo𝕜'](../../../../../mathematics/Algebra/LinearAlgebra/Extend/Variantd76edf40c02b25fabefd493379b619baa6781ee3e133653856ca0e7f62bcdf00.lean/declarations/norm-extendto--3c20f6ae93d19f32bc360c99.md) | 132 | `result-track:3c20f6ae93d19f32bc360c99f7dd2108a5c7d7685d144991102937c8c9687106` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Extend/Variantd76edf40c02b25fabefd493379b619baa6781ee3e133653856ca0e7f62bcdf00.lean/declarations/instance--11e69b60de2eb0679572668d.md) | 143 | `declaration-track:11e69b60de2eb0679572668dbcc0be79504e40862cac823ae25bf3c094dc1bfa` |
| 10 | `def` | [LinearMap.extendTo𝕜](../../../../../mathematics/Algebra/LinearAlgebra/Extend/Variantd76edf40c02b25fabefd493379b619baa6781ee3e133653856ca0e7f62bcdf00.lean/declarations/linearmap-extendto--cf0570fc8a558991cd161961.md) | 148 | `declaration-track:cf0570fc8a558991cd161961619f1fdef767e99a4a3f66642d7bbdee73164dec` |
| 11 | `theorem` | [LinearMap.extendTo𝕜_apply](../../../../../mathematics/Algebra/LinearAlgebra/Extend/Variantd76edf40c02b25fabefd493379b619baa6781ee3e133653856ca0e7f62bcdf00.lean/declarations/linearmap-extendto-apply--c0a9a88f84736c4a9a251e42.md) | 151 | `result-track:c0a9a88f84736c4a9a251e42e761e959aafc14701441535298723ab229441b64` |
| 12 | `def` | [ContinuousLinearMap.extendTo𝕜](../../../../../mathematics/Algebra/LinearAlgebra/Extend/Variantd76edf40c02b25fabefd493379b619baa6781ee3e133653856ca0e7f62bcdf00.lean/declarations/continuouslinearmap-extendto--0039622f027bed9ee262909d.md) | 155 | `declaration-track:0039622f027bed9ee262909dc0b88fd7fb8af38fa4fbf19b9b63ed1fa60070f7` |
| 13 | `theorem` | [ContinuousLinearMap.extendTo𝕜_apply](../../../../../mathematics/Algebra/LinearAlgebra/Extend/Variantd76edf40c02b25fabefd493379b619baa6781ee3e133653856ca0e7f62bcdf00.lean/declarations/continuouslinearmap-extendto-apply--9479d3fd905ff24f7a82e9a8.md) | 158 | `result-track:9479d3fd905ff24f7a82e9a86e06431ac460764d301da72d804a75d894a87c85` |
| 14 | `theorem` | [ContinuousLinearMap.norm_extendTo𝕜](../../../../../mathematics/Algebra/LinearAlgebra/Extend/Variantd76edf40c02b25fabefd493379b619baa6781ee3e133653856ca0e7f62bcdf00.lean/declarations/continuouslinearmap-norm-extendto--d5a24fe56d2e26fd556018e3.md) | 162 | `result-track:d5a24fe56d2e26fd556018e3542aec0c8ed77cbf01b82d90927dd02d7c9dcfae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
