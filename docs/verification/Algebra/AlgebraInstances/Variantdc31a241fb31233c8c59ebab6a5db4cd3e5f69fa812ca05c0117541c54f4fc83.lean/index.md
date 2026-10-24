# Verification target: GRWTSK.Algebra.AlgebraInstances.Variantdc31a241fb31233c8c59ebab6a5db4cd3e5f69fa812ca05c0117541c54f4fc83

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e3a9d823541a92e04b9d2667e81a241ee1b11aa6",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/AlgebraInstances/Variantdc31a241fb31233c8c59ebab6a5db4cd3e5f69fa812ca05c0117541c54f4fc83.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/AlgebraInstances/Variantdc31a241fb31233c8c59ebab6a5db4cd3e5f69fa812ca05c0117541c54f4fc83.lean/index.md) · [Full source](../../../../mathematics/Algebra/AlgebraInstances/Variantdc31a241fb31233c8c59ebab6a5db4cd3e5f69fa812ca05c0117541c54f4fc83.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e3a9d823541a92e04b9d2667e81a241ee1b11aa6`.

Source path: `GRWTSK/Algebra/AlgebraInstances/Variantdc31a241fb31233c8c59ebab6a5db4cd3e5f69fa812ca05c0117541c54f4fc83.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/AlgebraInstances/Variantdc31a241fb31233c8c59ebab6a5db4cd3e5f69fa812ca05c0117541c54f4fc83.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.IntegralClosure.IsIntegralClosure.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Valuation.ValuationSubring` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../mathematics/Algebra/AlgebraInstances/Variantdc31a241fb31233c8c59ebab6a5db4cd3e5f69fa812ca05c0117541c54f4fc83.lean/declarations/instance--789e32aa8a47a3983d1efbbb.md) | 34 | `declaration-track:789e32aa8a47a3983d1efbbb738f4b333b09c3bbc845ceb055331e4f47e72064` |
| 2 | `theorem` | [algebraMap_injective](../../../../mathematics/Algebra/AlgebraInstances/Variantdc31a241fb31233c8c59ebab6a5db4cd3e5f69fa812ca05c0117541c54f4fc83.lean/declarations/algebramap-injective--9f8e541985e9baadfe9fe11f.md) | 36 | `result-track:9f8e541985e9baadfe9fe11f414d05fc3fa0cfa653e1e12d3dd3e968e24043b5` |
| 3 | `theorem` | [isIntegral_of_mem_ringOfIntegers](../../../../mathematics/Algebra/AlgebraInstances/Variantdc31a241fb31233c8c59ebab6a5db4cd3e5f69fa812ca05c0117541c54f4fc83.lean/declarations/isintegral-of-mem-ringofintegers--2ce4554cdb5a36f706505732.md) | 39 | `result-track:2ce4554cdb5a36f7065057325934756560a409969cf0471cbfb1601e3246c930` |
| 4 | `theorem` | [isIntegral_of_mem_ringOfIntegers'](../../../../mathematics/Algebra/AlgebraInstances/Variantdc31a241fb31233c8c59ebab6a5db4cd3e5f69fa812ca05c0117541c54f4fc83.lean/declarations/isintegral-of-mem-ringofintegers--1a072e54a8d1d95dcb442d80.md) | 46 | `result-track:1a072e54a8d1d95dcb442d80227a0c01623b31016232f664b754517c7b33b93d` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/AlgebraInstances/Variantdc31a241fb31233c8c59ebab6a5db4cd3e5f69fa812ca05c0117541c54f4fc83.lean/declarations/instance--b6eb93a0bcef1882017e8606.md) | 52 | `declaration-track:b6eb93a0bcef1882017e8606af9012f2751cd6ae70575cd466dc7305eb041d49` |
| 6 | `instance` | [algebra](../../../../mathematics/Algebra/AlgebraInstances/Variantdc31a241fb31233c8c59ebab6a5db4cd3e5f69fa812ca05c0117541c54f4fc83.lean/declarations/algebra--8f899e6d4e496b8b0c5a41f5.md) | 56 | `declaration-track:8f899e6d4e496b8b0c5a41f5cfac1a632b5899d2d1fbd2a445ee5d23223cdbc8` |
| 7 | `def` | [equiv](../../../../mathematics/Algebra/AlgebraInstances/Variantdc31a241fb31233c8c59ebab6a5db4cd3e5f69fa812ca05c0117541c54f4fc83.lean/declarations/equiv--ef413925cf4879ed19ecc664.md) | 70 | `declaration-track:ef413925cf4879ed19ecc664975595866fb4abca8d77eaf8e90e9cb1e9560933` |
| 8 | `theorem` | [integralClosure_algebraMap_injective](../../../../mathematics/Algebra/AlgebraInstances/Variantdc31a241fb31233c8c59ebab6a5db4cd3e5f69fa812ca05c0117541c54f4fc83.lean/declarations/integralclosure-algebramap-injective--4a83938534aa00f9223c201b.md) | 78 | `result-track:4a83938534aa00f9223c201b94dde84cdcaaf8557c8a78edafb3836612227b49` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
