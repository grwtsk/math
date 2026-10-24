# Verification target: GRWTSK.Algebra.LinearAlgebra.Basis.Variant6aec7152aff1ecd0d06c437eea31290ff2d8a7a8a29f91106a4e5647910ff0b4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dc1cb2176c8832e77d03c56ff48d81901b4634a4",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basis/Variant6aec7152aff1ecd0d06c437eea31290ff2d8a7a8a29f91106a4e5647910ff0b4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant6aec7152aff1ecd0d06c437eea31290ff2d8a7a8a29f91106a4e5647910ff0b4.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant6aec7152aff1ecd0d06c437eea31290ff2d8a7a8a29f91106a4e5647910ff0b4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dc1cb2176c8832e77d03c56ff48d81901b4634a4`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basis/Variant6aec7152aff1ecd0d06c437eea31290ff2d8a7a8a29f91106a4e5647910ff0b4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basis/Variant6aec7152aff1ecd0d06c437eea31290ff2d8a7a8a29f91106a4e5647910ff0b4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.TensorAlgebra.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeAlgebra` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [equivFreeAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant6aec7152aff1ecd0d06c437eea31290ff2d8a7a8a29f91106a4e5647910ff0b4.lean/declarations/equivfreealgebra--8d483a35028af62ce3709ced.md) | 35 | `declaration-track:8d483a35028af62ce3709ced176f06e91175325976d1c15894f38e93a1d37d53` |
| 2 | `lemma` | [equivFreeAlgebra_ι_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant6aec7152aff1ecd0d06c437eea31290ff2d8a7a8a29f91106a4e5647910ff0b4.lean/declarations/equivfreealgebra-apply--6dbaf5bc1e20431530f44a4d.md) | 44 | `result-track:6dbaf5bc1e20431530f44a4d37d0004a1ca7c7d6f3151bb249485cf0887b7af6` |
| 3 | `lemma` | [equivFreeAlgebra_symm_ι](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant6aec7152aff1ecd0d06c437eea31290ff2d8a7a8a29f91106a4e5647910ff0b4.lean/declarations/equivfreealgebra-symm--e4a82c220b3c7e29f6c9df5c.md) | 49 | `result-track:e4a82c220b3c7e29f6c9df5cb8f763f09dd4012156caecbfcabb11939dbacca4` |
| 4 | `def` | [_root_.Basis.tensorAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant6aec7152aff1ecd0d06c437eea31290ff2d8a7a8a29f91106a4e5647910ff0b4.lean/declarations/root-basis-tensoralgebra--db850a707851afcbcc888d2a.md) | 55 | `declaration-track:db850a707851afcbcc888d2a2942a3261d3b44ecf7303c1ee91aa17dd94b2340` |
| 5 | `instance` | [instModuleFree](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant6aec7152aff1ecd0d06c437eea31290ff2d8a7a8a29f91106a4e5647910ff0b4.lean/declarations/instmodulefree--ca6ae22d028aa446527edbe5.md) | 60 | `declaration-track:ca6ae22d028aa446527edbe537d88c7369baae09b8668bfdb6a4918e33f7431e` |
| 6 | `instance` | [instNoZeroDivisors](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant6aec7152aff1ecd0d06c437eea31290ff2d8a7a8a29f91106a4e5647910ff0b4.lean/declarations/instnozerodivisors--34484e2cca8d0764e54467c2.md) | 66 | `declaration-track:34484e2cca8d0764e54467c25d5e7ce9e7b2094e9d76ae4a9b26b82024bed65d` |
| 7 | `instance` | [instIsDomain](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant6aec7152aff1ecd0d06c437eea31290ff2d8a7a8a29f91106a4e5647910ff0b4.lean/declarations/instisdomain--be680a21c3473d39b4d70e47.md) | 77 | `declaration-track:be680a21c3473d39b4d70e47820ebc46e23d65e1360aa45bba4b8ee69bd1ebfe` |
| 8 | `lemma` | [rank_eq](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant6aec7152aff1ecd0d06c437eea31290ff2d8a7a8a29f91106a4e5647910ff0b4.lean/declarations/rank-eq--7ba6198be21a5e862d9bb7be.md) | 83 | `result-track:7ba6198be21a5e862d9bb7be979c3527c0cee3d58c1feb762a0fdd222d85439a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
