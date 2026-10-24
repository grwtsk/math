# Verification target: GRWTSK.Topology.GeneralTopology.HalfLine.Variantdc41924987d7713144f7bdc22eaabee4a622c08c28b878a013a3a31c0e82aa3e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "78496b20f1d93444f09cbc25d9b7a1deb96036f2",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/HalfLine/Variantdc41924987d7713144f7bdc22eaabee4a622c08c28b878a013a3a31c0e82aa3e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/HalfLine/Variantdc41924987d7713144f7bdc22eaabee4a622c08c28b878a013a3a31c0e82aa3e.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/HalfLine/Variantdc41924987d7713144f7bdc22eaabee4a622c08c28b878a013a3a31c0e82aa3e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `78496b20f1d93444f09cbc25d9b7a1deb96036f2`.

Source path: `GRWTSK/Topology/GeneralTopology/HalfLine/Variantdc41924987d7713144f7bdc22eaabee4a622c08c28b878a013a3a31c0e82aa3e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/HalfLine/Variantdc41924987d7713144f7bdc22eaabee4a622c08c28b878a013a3a31c0e82aa3e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Bump` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Sobolev` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.L2Space` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ℝ≥0](../../../../../mathematics/Topology/GeneralTopology/HalfLine/Variantdc41924987d7713144f7bdc22eaabee4a622c08c28b878a013a3a31c0e82aa3e.lean/declarations/0--9d782db8723308fe97827c20.md) | 29 | `declaration-track:9d782db8723308fe97827c2039c86a7c0b37a1c83e64d64ce6210eda59481554` |
| 2 | `abbrev` | [μ₊](../../../../../mathematics/Topology/GeneralTopology/HalfLine/Variantdc41924987d7713144f7bdc22eaabee4a622c08c28b878a013a3a31c0e82aa3e.lean/declarations/anonymous--3c21c0a414600e7196878b0d.md) | 32 | `declaration-track:3c21c0a414600e7196878b0deb4b45fb6f66f992af6daa57e576f2d6324f24df` |
| 3 | `abbrev` | [L²](../../../../../mathematics/Topology/GeneralTopology/HalfLine/Variantdc41924987d7713144f7bdc22eaabee4a622c08c28b878a013a3a31c0e82aa3e.lean/declarations/l--35c5b7faa9f44b7f11c67844.md) | 35 | `declaration-track:35c5b7faa9f44b7f11c67844fcedeabd38fd61f09f74f6734520674bf42bb33c` |
| 4 | `def` | [C∞₀_D](../../../../../mathematics/Topology/GeneralTopology/HalfLine/Variantdc41924987d7713144f7bdc22eaabee4a622c08c28b878a013a3a31c0e82aa3e.lean/declarations/c-d--73409fc4ac31a8d2a019ba8e.md) | 43 | `declaration-track:73409fc4ac31a8d2a019ba8ecddbd9d119a0b91fa1aecea784514e3365a6e447` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/HalfLine/Variantdc41924987d7713144f7bdc22eaabee4a622c08c28b878a013a3a31c0e82aa3e.lean/declarations/instance--e4fc94bf28d6d4bf1aa9a094.md) | 47 | `declaration-track:e4fc94bf28d6d4bf1aa9a09451679f9f7e7c7a3e8b23ca3eab8ec6b61c39e606` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/HalfLine/Variantdc41924987d7713144f7bdc22eaabee4a622c08c28b878a013a3a31c0e82aa3e.lean/declarations/instance--a8941a41f07ca3fb37bb5fc9.md) | 48 | `declaration-track:a8941a41f07ca3fb37bb5fc93ad5af8e0778218ca4fef3ce3bae97454e669087` |
| 7 | `def` | [η](../../../../../mathematics/Topology/GeneralTopology/HalfLine/Variantdc41924987d7713144f7bdc22eaabee4a622c08c28b878a013a3a31c0e82aa3e.lean/declarations/anonymous--5450e9cc63aaef3fb029aebd.md) | 53 | `declaration-track:5450e9cc63aaef3fb029aebd10d63aaf2f7028c3876a84f38bdfac8f6bb242e9` |
| 8 | `lemma` | [η_at_zero](../../../../../mathematics/Topology/GeneralTopology/HalfLine/Variantdc41924987d7713144f7bdc22eaabee4a622c08c28b878a013a3a31c0e82aa3e.lean/declarations/at-zero--5a671fec203653ba75387283.md) | 72 | `result-track:5a671fec203653ba753872834809a835655fc94be01d471eeebeffe0c28c10e6` |
| 9 | `lemma` | [dense_L2_halfLine](../../../../../mathematics/Topology/GeneralTopology/HalfLine/Variantdc41924987d7713144f7bdc22eaabee4a622c08c28b878a013a3a31c0e82aa3e.lean/declarations/dense-l2-halfline--e3fdbbe9ef09ba0d01cb3810.md) | 76 | `result-track:e3fdbbe9ef09ba0d01cb3810ee0e175b47e28fbba0b2b942f37fd2160f58fd70` |
| 10 | `lemma` | [mem_H1](../../../../../mathematics/Topology/GeneralTopology/HalfLine/Variantdc41924987d7713144f7bdc22eaabee4a622c08c28b878a013a3a31c0e82aa3e.lean/declarations/mem-h1--eed33159475a6e5e35de81fb.md) | 95 | `result-track:eed33159475a6e5e35de81fbff28771a19b42c3895eaf57af9117366ece7e36c` |
| 11 | `lemma` | [dirichletBC_zero](../../../../../mathematics/Topology/GeneralTopology/HalfLine/Variantdc41924987d7713144f7bdc22eaabee4a622c08c28b878a013a3a31c0e82aa3e.lean/declarations/dirichletbc-zero--a4317a2c2a3891323c747655.md) | 98 | `result-track:a4317a2c2a3891323c747655ea1a632ff1a37a65db2d2ed0ac6247a50d83ec3e` |
| 12 | `lemma` | [V_mul_L2](../../../../../mathematics/Topology/GeneralTopology/HalfLine/Variantdc41924987d7713144f7bdc22eaabee4a622c08c28b878a013a3a31c0e82aa3e.lean/declarations/v-mul-l2--82a0739789564ef338f8036d.md) | 106 | `result-track:82a0739789564ef338f8036dc8d4c6766ee8a81571e1124b45c645a69b48ed0a` |
| 13 | `lemma` | [DirichletDomain_dense](../../../../../mathematics/Topology/GeneralTopology/HalfLine/Variantdc41924987d7713144f7bdc22eaabee4a622c08c28b878a013a3a31c0e82aa3e.lean/declarations/dirichletdomain-dense--9e4c1e6f8a236a6ef8ea4472.md) | 133 | `result-track:9e4c1e6f8a236a6ef8ea4472c5614322b26d4ff3549dee97b1a96427d491b7d3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
