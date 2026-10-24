# Verification target: GRWTSK.Algebra.LinearAlgebra.WeakDual.Variant1519e95b1b1c2b2155fc94f7233ff37168ce901396a82b3aa15f10b0b42c52d2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ec12ffe16920ff1577d627ad05b1be24b22c2dd9",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/WeakDual/Variant1519e95b1b1c2b2155fc94f7233ff37168ce901396a82b3aa15f10b0b42c52d2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/WeakDual/Variant1519e95b1b1c2b2155fc94f7233ff37168ce901396a82b3aa15f10b0b42c52d2.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/WeakDual/Variant1519e95b1b1c2b2155fc94f7233ff37168ce901396a82b3aa15f10b0b42c52d2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ec12ffe16920ff1577d627ad05b1be24b22c2dd9`.

Source path: `GRWTSK/Algebra/LinearAlgebra/WeakDual/Variant1519e95b1b1c2b2155fc94f7233ff37168ce901396a82b3aa15f10b0b42c52d2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/WeakDual/Variant1519e95b1b1c2b2155fc94f7233ff37168ce901396a82b3aa15f10b0b42c52d2.lean.json)

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
| 1 | `def` | [toSeminorm](../../../../../mathematics/Algebra/LinearAlgebra/WeakDual/Variant1519e95b1b1c2b2155fc94f7233ff37168ce901396a82b3aa15f10b0b42c52d2.lean/declarations/toseminorm--745cb7cf2c4ff703fea27a91.md) | 72 | `declaration-track:745cb7cf2c4ff703fea27a91f58bbd0ba7265842035efb5df02280c612bbbee1` |
| 2 | `theorem` | [coe_toSeminorm](../../../../../mathematics/Algebra/LinearAlgebra/WeakDual/Variant1519e95b1b1c2b2155fc94f7233ff37168ce901396a82b3aa15f10b0b42c52d2.lean/declarations/coe-toseminorm--88a8cc13228be4c7e08f80c2.md) | 75 | `result-track:88a8cc13228be4c7e08f80c26b2dc12b03e22add70eeab108dbb5d0b93d88218` |
| 3 | `theorem` | [toSeminorm_apply](../../../../../mathematics/Algebra/LinearAlgebra/WeakDual/Variant1519e95b1b1c2b2155fc94f7233ff37168ce901396a82b3aa15f10b0b42c52d2.lean/declarations/toseminorm-apply--a483ceb0994ed7694132f1d6.md) | 79 | `result-track:a483ceb0994ed7694132f1d624d07cbe0a82fa06c0429efd75f392578ad1bb97` |
| 4 | `theorem` | [toSeminorm_ball_zero](../../../../../mathematics/Algebra/LinearAlgebra/WeakDual/Variant1519e95b1b1c2b2155fc94f7233ff37168ce901396a82b3aa15f10b0b42c52d2.lean/declarations/toseminorm-ball-zero--63ca6a8a7b4b70b4ee364db1.md) | 82 | `result-track:63ca6a8a7b4b70b4ee364db1b7ea353b44e5cbc528961f73f329a03994f473aa` |
| 5 | `theorem` | [toSeminorm_comp](../../../../../mathematics/Algebra/LinearAlgebra/WeakDual/Variant1519e95b1b1c2b2155fc94f7233ff37168ce901396a82b3aa15f10b0b42c52d2.lean/declarations/toseminorm-comp--01f6d034027a072e3922f4bc.md) | 86 | `result-track:01f6d034027a072e3922f4bc1e043967aab1ddbc1f364119c621d07cf5e2b6c7` |
| 6 | `def` | [toSeminormFamily](../../../../../mathematics/Algebra/LinearAlgebra/WeakDual/Variant1519e95b1b1c2b2155fc94f7233ff37168ce901396a82b3aa15f10b0b42c52d2.lean/declarations/toseminormfamily--b15e6c131e220f9b6c01e770.md) | 92 | `declaration-track:b15e6c131e220f9b6c01e77041ee30f4461ace88d512c2683db6bc4715989c85` |
| 7 | `theorem` | [toSeminormFamily_apply](../../../../../mathematics/Algebra/LinearAlgebra/WeakDual/Variant1519e95b1b1c2b2155fc94f7233ff37168ce901396a82b3aa15f10b0b42c52d2.lean/declarations/toseminormfamily-apply--7ed7dcee5ad1154067e82266.md) | 96 | `result-track:7ed7dcee5ad1154067e82266041da6ae403b8570bbbe92808ad62146b0a32223` |
| 8 | `lemma` | [dualEmbedding_injective_of_separatingRight](../../../../../mathematics/Algebra/LinearAlgebra/WeakDual/Variant1519e95b1b1c2b2155fc94f7233ff37168ce901396a82b3aa15f10b0b42c52d2.lean/declarations/dualembedding-injective-of-separatingright--abd5f4328f54179ce6362a70.md) | 99 | `result-track:abd5f4328f54179ce6362a70a80422af421da711f03ea22e4bb3e4960eb3e05a` |
| 9 | `theorem` | [mem_span_iff_continuous_of_finite](../../../../../mathematics/Algebra/LinearAlgebra/WeakDual/Variant1519e95b1b1c2b2155fc94f7233ff37168ce901396a82b3aa15f10b0b42c52d2.lean/declarations/mem-span-iff-continuous-of-finite--019f4e1acb290d10a6ddd2cc.md) | 121 | `result-track:019f4e1acb290d10a6ddd2ccbe00c005d8210d96acb52f32d9f22e399015bb7f` |
| 10 | `theorem` | [mem_span_iff_continuous](../../../../../mathematics/Algebra/LinearAlgebra/WeakDual/Variant1519e95b1b1c2b2155fc94f7233ff37168ce901396a82b3aa15f10b0b42c52d2.lean/declarations/mem-span-iff-continuous--497124fb0d655dc05c7e5401.md) | 146 | `result-track:497124fb0d655dc05c7e54017858cebdd6bf6cc2e175945c4aba0932ede4aeff` |
| 11 | `theorem` | [mem_span_iff_bound](../../../../../mathematics/Algebra/LinearAlgebra/WeakDual/Variant1519e95b1b1c2b2155fc94f7233ff37168ce901396a82b3aa15f10b0b42c52d2.lean/declarations/mem-span-iff-bound--2ca46df2d13b576f9bc0861a.md) | 171 | `result-track:2ca46df2d13b576f9bc0861a1fa52e73481d8df26c511316ec9f44838349dfd9` |
| 12 | `theorem` | [dualEmbedding_surjective](../../../../../mathematics/Algebra/LinearAlgebra/WeakDual/Variant1519e95b1b1c2b2155fc94f7233ff37168ce901396a82b3aa15f10b0b42c52d2.lean/declarations/dualembedding-surjective--7a2b723d269629cc05527672.md) | 194 | `result-track:7a2b723d269629cc05527672d8eaa0644edb1229f01a8fb02a8388cfc25cc522` |
| 13 | `def` | [rightDualEquiv](../../../../../mathematics/Algebra/LinearAlgebra/WeakDual/Variant1519e95b1b1c2b2155fc94f7233ff37168ce901396a82b3aa15f10b0b42c52d2.lean/declarations/rightdualequiv--610706d4479bee4f03de984d.md) | 203 | `declaration-track:610706d4479bee4f03de984d526ea1a08639492023a16a7c40fe18d2907ec0a9` |
| 14 | `def` | [leftDualEquiv](../../../../../mathematics/Algebra/LinearAlgebra/WeakDual/Variant1519e95b1b1c2b2155fc94f7233ff37168ce901396a82b3aa15f10b0b42c52d2.lean/declarations/leftdualequiv--b0a5e7982b043012fe446f44.md) | 209 | `declaration-track:b0a5e7982b043012fe446f4407b8eb534484587f9e7a386966919e66fe83c8c5` |
| 15 | `theorem` | [LinearMap.weakBilin_withSeminorms](../../../../../mathematics/Algebra/LinearAlgebra/WeakDual/Variant1519e95b1b1c2b2155fc94f7233ff37168ce901396a82b3aa15f10b0b42c52d2.lean/declarations/linearmap-weakbilin-withseminorms--ed1a136cb857dc304ff0e564.md) | 224 | `result-track:ed1a136cb857dc304ff0e564261d1b0b4a2641d316fb6958083798e457eed139` |
| 16 | `theorem` | [LinearMap.hasBasis_weakBilin](../../../../../mathematics/Algebra/LinearAlgebra/WeakDual/Variant1519e95b1b1c2b2155fc94f7233ff37168ce901396a82b3aa15f10b0b42c52d2.lean/declarations/linearmap-hasbasis-weakbilin--b5fbf5715de73b20ef7e9a27.md) | 230 | `result-track:b5fbf5715de73b20ef7e9a27928607b4b166f730ef0a3187e2c63cc1d32b12d8` |
| 17 | `instance` | [WeakBilin.locallyConvexSpace](../../../../../mathematics/Algebra/LinearAlgebra/WeakDual/Variant1519e95b1b1c2b2155fc94f7233ff37168ce901396a82b3aa15f10b0b42c52d2.lean/declarations/weakbilin-locallyconvexspace--2c3837da44e517c2d8351611.md) | 241 | `declaration-track:2c3837da44e517c2d835161181eb05c61be2a7e9f07710d889866a570c7e6488` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
