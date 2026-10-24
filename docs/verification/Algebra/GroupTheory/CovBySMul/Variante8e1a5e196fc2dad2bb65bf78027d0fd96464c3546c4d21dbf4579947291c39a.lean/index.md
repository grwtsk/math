# Verification target: GRWTSK.Algebra.GroupTheory.CovBySMul.Variante8e1a5e196fc2dad2bb65bf78027d0fd96464c3546c4d21dbf4579947291c39a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e9391e8aa9925da17c0daac3ae848622a0a61ca2",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/CovBySMul/Variante8e1a5e196fc2dad2bb65bf78027d0fd96464c3546c4d21dbf4579947291c39a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/CovBySMul/Variante8e1a5e196fc2dad2bb65bf78027d0fd96464c3546c4d21dbf4579947291c39a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/CovBySMul/Variante8e1a5e196fc2dad2bb65bf78027d0fd96464c3546c4d21dbf4579947291c39a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e9391e8aa9925da17c0daac3ae848622a0a61ca2`.

Source path: `GRWTSK/Algebra/GroupTheory/CovBySMul/Variante8e1a5e196fc2dad2bb65bf78027d0fd96464c3546c4d21dbf4579947291c39a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/CovBySMul/Variante8e1a5e196fc2dad2bb65bf78027d0fd96464c3546c4d21dbf4579947291c39a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Pointwise.Set.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Finset.Scalar` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Finset.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [CovBySMul](../../../../../mathematics/Algebra/GroupTheory/CovBySMul/Variante8e1a5e196fc2dad2bb65bf78027d0fd96464c3546c4d21dbf4579947291c39a.lean/declarations/covbysmul--2227227abf90681277151ce0.md) | 37 | `declaration-track:2227227abf90681277151ce04817c02b83cfa3532368a08d96e52693083c02e3` |
| 2 | `lemma` | [CovBySMul.rfl](../../../../../mathematics/Algebra/GroupTheory/CovBySMul/Variante8e1a5e196fc2dad2bb65bf78027d0fd96464c3546c4d21dbf4579947291c39a.lean/declarations/covbysmul-rfl--a41549e69ba5749fe23322b6.md) | 40 | `result-track:a41549e69ba5749fe23322b6602b89a4530ff4bf548260a91591e7adcf598c59` |
| 3 | `lemma` | [CovBySMul.of_subset](../../../../../mathematics/Algebra/GroupTheory/CovBySMul/Variante8e1a5e196fc2dad2bb65bf78027d0fd96464c3546c4d21dbf4579947291c39a.lean/declarations/covbysmul-of-subset--c6e618792026715c76b0b197.md) | 43 | `result-track:c6e618792026715c76b0b197ad96cdd860e7e8758323853c583d5d596b850713` |
| 4 | `lemma` | [CovBySMul.nonneg](../../../../../mathematics/Algebra/GroupTheory/CovBySMul/Variante8e1a5e196fc2dad2bb65bf78027d0fd96464c3546c4d21dbf4579947291c39a.lean/declarations/covbysmul-nonneg--07aedacb138db3344d3da2f7.md) | 45 | `result-track:07aedacb138db3344d3da2f740fb31b22f3fcf05dcd9dfd54e42ab1687cf9904` |
| 5 | `lemma` | [covBySMul_zero](../../../../../mathematics/Algebra/GroupTheory/CovBySMul/Variante8e1a5e196fc2dad2bb65bf78027d0fd96464c3546c4d21dbf4579947291c39a.lean/declarations/covbysmul-zero--a4a8f6360cd03623617c2b36.md) | 49 | `result-track:a4a8f6360cd03623617c2b360946e61f83f4ec8ce8b4ebcf42cc37e571c7455c` |
| 6 | `lemma` | [CovBySMul.mono](../../../../../mathematics/Algebra/GroupTheory/CovBySMul/Variante8e1a5e196fc2dad2bb65bf78027d0fd96464c3546c4d21dbf4579947291c39a.lean/declarations/covbysmul-mono--bb7ea42b54f0e84707febd96.md) | 52 | `result-track:bb7ea42b54f0e84707febd9670d10a792c94a21a74ce7c9627a4282205140c48` |
| 7 | `lemma` | [CovBySMul.trans](../../../../../mathematics/Algebra/GroupTheory/CovBySMul/Variante8e1a5e196fc2dad2bb65bf78027d0fd96464c3546c4d21dbf4579947291c39a.lean/declarations/covbysmul-trans--e5662fd98d398159f8a3e089.md) | 55 | `result-track:e5662fd98d398159f8a3e08971d606c0cf342a456417e440aed0712eb2985de0` |
| 8 | `lemma` | [CovBySMul.subset_left](../../../../../mathematics/Algebra/GroupTheory/CovBySMul/Variante8e1a5e196fc2dad2bb65bf78027d0fd96464c3546c4d21dbf4579947291c39a.lean/declarations/covbysmul-subset-left--300dea461dae45bfb87f5aa9.md) | 71 | `result-track:300dea461dae45bfb87f5aa9ad71b472bc6428fa98c07d70d055e6a95fbd1587` |
| 9 | `lemma` | [CovBySMul.subset_right](../../../../../mathematics/Algebra/GroupTheory/CovBySMul/Variante8e1a5e196fc2dad2bb65bf78027d0fd96464c3546c4d21dbf4579947291c39a.lean/declarations/covbysmul-subset-right--956e61cb90ed92d477ee9d4a.md) | 75 | `result-track:956e61cb90ed92d477ee9d4a268434e8f25894f08d872ff800ff91076cbaab0f` |
| 10 | `lemma` | [CovBySMul.subset](../../../../../mathematics/Algebra/GroupTheory/CovBySMul/Variante8e1a5e196fc2dad2bb65bf78027d0fd96464c3546c4d21dbf4579947291c39a.lean/declarations/covbysmul-subset--7db5efbc62054b5af1edb7e2.md) | 79 | `result-track:7db5efbc62054b5af1edb7e205abe9153d811dff25347322aa97bc635dd06cdf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
