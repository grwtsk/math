# Verification target: GRWTSK.Analysis.Ray.Variant9a84530da6f52fda3fb851eaa564fbecc584ab479239ef9b911045b31f5da0f6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f01da59497153752db2068310185b8fd74c026a9",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Ray/Variant9a84530da6f52fda3fb851eaa564fbecc584ab479239ef9b911045b31f5da0f6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Ray/Variant9a84530da6f52fda3fb851eaa564fbecc584ab479239ef9b911045b31f5da0f6.lean/index.md) · [Full source](../../../../mathematics/Analysis/Ray/Variant9a84530da6f52fda3fb851eaa564fbecc584ab479239ef9b911045b31f5da0f6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f01da59497153752db2068310185b8fd74c026a9`.

Source path: `GRWTSK/Analysis/Ray/Variant9a84530da6f52fda3fb851eaa564fbecc584ab479239ef9b911045b31f5da0f6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Ray/Variant9a84530da6f52fda3fb851eaa564fbecc584ab479239ef9b911045b31f5da0f6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Ray` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.Real` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [norm_add](../../../../mathematics/Analysis/Ray/Variant9a84530da6f52fda3fb851eaa564fbecc584ab479239ef9b911045b31f5da0f6.lean/declarations/norm-add--9f1ddbc6d437f09635140af6.md) | 30 | `result-track:9f1ddbc6d437f09635140af61c4d2af0f401167fd25cb9a8d99239cd697d2f31` |
| 2 | `theorem` | [norm_sub](../../../../mathematics/Analysis/Ray/Variant9a84530da6f52fda3fb851eaa564fbecc584ab479239ef9b911045b31f5da0f6.lean/declarations/norm-sub--c2dfe5e10b9db280238cf3e3.md) | 35 | `result-track:c2dfe5e10b9db280238cf3e3fe5c9ec062f2e1d0e5625a74ad7bcee763d9d07f` |
| 3 | `theorem` | [norm_smul_eq](../../../../mathematics/Analysis/Ray/Variant9a84530da6f52fda3fb851eaa564fbecc584ab479239ef9b911045b31f5da0f6.lean/declarations/norm-smul-eq--b391f52484388985bdfacc17.md) | 45 | `result-track:b391f52484388985bdfacc171e361feb79fede1bb1340f05d0e996f15368ec2f` |
| 4 | `theorem` | [norm_injOn_ray_left](../../../../mathematics/Analysis/Ray/Variant9a84530da6f52fda3fb851eaa564fbecc584ab479239ef9b911045b31f5da0f6.lean/declarations/norm-injon-ray-left--d92c2fea400b3ee7a22e0a95.md) | 54 | `result-track:d92c2fea400b3ee7a22e0a956d8b98c427a3be53e6bac22d73e988d3ce74d76a` |
| 5 | `theorem` | [norm_injOn_ray_right](../../../../mathematics/Analysis/Ray/Variant9a84530da6f52fda3fb851eaa564fbecc584ab479239ef9b911045b31f5da0f6.lean/declarations/norm-injon-ray-right--1efe43d70b561429e48002b3.md) | 62 | `result-track:1efe43d70b561429e48002b312b2e58f60de55fd92e0c111eaaec54fc69b6a2b` |
| 6 | `theorem` | [sameRay_iff_norm_smul_eq](../../../../mathematics/Analysis/Ray/Variant9a84530da6f52fda3fb851eaa564fbecc584ab479239ef9b911045b31f5da0f6.lean/declarations/sameray-iff-norm-smul-eq--555e50b0e9f9c82339881d52.md) | 65 | `result-track:555e50b0e9f9c82339881d5291fa091d2ee7283263af7c2c0a7dd10fa0482fd9` |
| 7 | `theorem` | [sameRay_iff_inv_norm_smul_eq_of_ne](../../../../mathematics/Analysis/Ray/Variant9a84530da6f52fda3fb851eaa564fbecc584ab479239ef9b911045b31f5da0f6.lean/declarations/sameray-iff-inv-norm-smul-eq-of-ne--efd54fbabd2538712c03817d.md) | 72 | `result-track:efd54fbabd2538712c03817d045d3bc3584dd6b3112924bc79e03cf626e248a0` |
| 8 | `theorem` | [sameRay_iff_inv_norm_smul_eq](../../../../mathematics/Analysis/Ray/Variant9a84530da6f52fda3fb851eaa564fbecc584ab479239ef9b911045b31f5da0f6.lean/declarations/sameray-iff-inv-norm-smul-eq--f8244b5c3c8f1dbb7657cbb8.md) | 81 | `result-track:f8244b5c3c8f1dbb7657cbb817effe6979521baa91d250ebefad88fa3a75bc06` |
| 9 | `theorem` | [sameRay_iff_of_norm_eq](../../../../mathematics/Analysis/Ray/Variant9a84530da6f52fda3fb851eaa564fbecc584ab479239ef9b911045b31f5da0f6.lean/declarations/sameray-iff-of-norm-eq--002b10cc84a28e5085018fcd.md) | 87 | `result-track:002b10cc84a28e5085018fcd91d2b86f0a10571d655a3eb37d61acf8de96e13a` |
| 10 | `theorem` | [not_sameRay_iff_of_norm_eq](../../../../mathematics/Analysis/Ray/Variant9a84530da6f52fda3fb851eaa564fbecc584ab479239ef9b911045b31f5da0f6.lean/declarations/not-sameray-iff-of-norm-eq--909a48e9ff5f0303abeb1b83.md) | 93 | `result-track:909a48e9ff5f0303abeb1b83f99783de310e89f8d102dc1785931e02896308a0` |
| 11 | `theorem` | [SameRay.eq_of_norm_eq](../../../../mathematics/Analysis/Ray/Variant9a84530da6f52fda3fb851eaa564fbecc584ab479239ef9b911045b31f5da0f6.lean/declarations/sameray-eq-of-norm-eq--03740543e15120279d151bbb.md) | 97 | `result-track:03740543e15120279d151bbbd9e045e31885e5530cb25cdbc639d6c965ab7258` |
| 12 | `theorem` | [SameRay.norm_eq_iff](../../../../mathematics/Analysis/Ray/Variant9a84530da6f52fda3fb851eaa564fbecc584ab479239ef9b911045b31f5da0f6.lean/declarations/sameray-norm-eq-iff--8a9739780beea1af16102b96.md) | 101 | `result-track:8a9739780beea1af16102b96eb914d6826cf1da31bd5457989eb35e58cbd6899` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
