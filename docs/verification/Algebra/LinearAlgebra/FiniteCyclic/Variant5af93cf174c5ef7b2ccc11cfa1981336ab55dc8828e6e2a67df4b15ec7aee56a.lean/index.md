# Verification target: GRWTSK.Algebra.LinearAlgebra.FiniteCyclic.Variant5af93cf174c5ef7b2ccc11cfa1981336ab55dc8828e6e2a67df4b15ec7aee56a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fc06230dd9825c46f7e26a4eb0730207fd0037ee",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/FiniteCyclic/Variant5af93cf174c5ef7b2ccc11cfa1981336ab55dc8828e6e2a67df4b15ec7aee56a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCyclic/Variant5af93cf174c5ef7b2ccc11cfa1981336ab55dc8828e6e2a67df4b15ec7aee56a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCyclic/Variant5af93cf174c5ef7b2ccc11cfa1981336ab55dc8828e6e2a67df4b15ec7aee56a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fc06230dd9825c46f7e26a4eb0730207fd0037ee`.

Source path: `GRWTSK/Algebra/LinearAlgebra/FiniteCyclic/Variant5af93cf174c5ef7b2ccc11cfa1981336ab55dc8828e6e2a67df4b15ec7aee56a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/FiniteCyclic/Variant5af93cf174c5ef7b2ccc11cfa1981336ab55dc8828e6e2a67df4b15ec7aee56a.lean.json)

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
| 1 | `def` | [coinvariantsTensorResolutionIso](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCyclic/Variant5af93cf174c5ef7b2ccc11cfa1981336ab55dc8828e6e2a67df4b15ec7aee56a.lean/declarations/coinvariantstensorresolutioniso--a7f7dca68766f9323df135b5.md) | 64 | `declaration-track:a7f7dca68766f9323df135b552a929a9a82b6eabc63b227fb21019ed6add6bab` |
| 2 | `abbrev` | [groupHomologyIso₀](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCyclic/Variant5af93cf174c5ef7b2ccc11cfa1981336ab55dc8828e6e2a67df4b15ec7aee56a.lean/declarations/grouphomologyiso--0660b60f7d0bf96920c5c360.md) | 81 | `declaration-track:0660b60f7d0bf96920c5c360e6aaa6aec3b71cde416eeba6d84bd5979214abc0` |
| 3 | `def` | [groupHomologyIsoEven](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCyclic/Variant5af93cf174c5ef7b2ccc11cfa1981336ab55dc8828e6e2a67df4b15ec7aee56a.lean/declarations/grouphomologyisoeven--a49283459d6e43565815a36e.md) | 93 | `declaration-track:a49283459d6e43565815a36e2b8356655dfd55cda2b4d281d9ec102eb81c54d8` |
| 4 | `abbrev` | [groupHomologyπEven](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCyclic/Variant5af93cf174c5ef7b2ccc11cfa1981336ab55dc8828e6e2a67df4b15ec7aee56a.lean/declarations/grouphomology-even--a5276fc1c7ed4cbe809b2e56.md) | 105 | `declaration-track:a5276fc1c7ed4cbe809b2e56cffd6eb394ab61fedbec7a729c7f2b1e0c763ce7` |
| 5 | `lemma` | [groupHomologyπEven_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCyclic/Variant5af93cf174c5ef7b2ccc11cfa1981336ab55dc8828e6e2a67df4b15ec7aee56a.lean/declarations/grouphomology-even-eq-zero-iff--a66d249a9ba2c915ac6afe49.md) | 113 | `result-track:a66d249a9ba2c915ac6afe49e2e6afc99112bac5e1cad0b8c3b077e10391eb6f` |
| 6 | `lemma` | [groupHomologyπEven_eq_iff](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCyclic/Variant5af93cf174c5ef7b2ccc11cfa1981336ab55dc8828e6e2a67df4b15ec7aee56a.lean/declarations/grouphomology-even-eq-iff--e0c2cfe41cc429a159206d51.md) | 121 | `result-track:e0c2cfe41cc429a159206d51c8ecde7cf19c4b48e4948d9b0002f93b6d3b71c8` |
| 7 | `def` | [groupHomologyIsoOdd](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCyclic/Variant5af93cf174c5ef7b2ccc11cfa1981336ab55dc8828e6e2a67df4b15ec7aee56a.lean/declarations/grouphomologyisoodd--7e73258ee46f1e44de1d83dd.md) | 130 | `declaration-track:7e73258ee46f1e44de1d83dd6f8a6b5532cddfab9280695193734de25c100153` |
| 8 | `abbrev` | [groupHomologyπOdd](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCyclic/Variant5af93cf174c5ef7b2ccc11cfa1981336ab55dc8828e6e2a67df4b15ec7aee56a.lean/declarations/grouphomology-odd--34e47880dc12454de3bb87f2.md) | 140 | `declaration-track:34e47880dc12454de3bb87f251c02733204298a78c4601024abe159ed54f6897` |
| 9 | `lemma` | [groupHomologyπOdd_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCyclic/Variant5af93cf174c5ef7b2ccc11cfa1981336ab55dc8828e6e2a67df4b15ec7aee56a.lean/declarations/grouphomology-odd-eq-zero-iff--eece523f78df824b8024b23b.md) | 147 | `result-track:eece523f78df824b8024b23ba6cc187222b932dbb16a8a376e55eaaeefe342df` |
| 10 | `lemma` | [groupHomologyπOdd_eq_iff](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCyclic/Variant5af93cf174c5ef7b2ccc11cfa1981336ab55dc8828e6e2a67df4b15ec7aee56a.lean/declarations/grouphomology-odd-eq-iff--e56bbc470fd6f672e09b1bc8.md) | 153 | `result-track:e56bbc470fd6f672e09b1bc846bbb78ab53f1216175eced42c5474220f929a9b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
