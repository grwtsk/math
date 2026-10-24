# Verification target: GRWTSK.Algebra.LinearAlgebra.Disintegration.Variant4e9e5cf7219be41a5cd0bdf5a1e1ba146345b71ffbb11b9e10b3be8aaae70ebf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "90e9ea799ebf8f1c45f9fa929139b9ad01efc97a",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Disintegration/Variant4e9e5cf7219be41a5cd0bdf5a1e1ba146345b71ffbb11b9e10b3be8aaae70ebf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Disintegration/Variant4e9e5cf7219be41a5cd0bdf5a1e1ba146345b71ffbb11b9e10b3be8aaae70ebf.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Disintegration/Variant4e9e5cf7219be41a5cd0bdf5a1e1ba146345b71ffbb11b9e10b3be8aaae70ebf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `90e9ea799ebf8f1c45f9fa929139b9ad01efc97a`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Disintegration/Variant4e9e5cf7219be41a5cd0bdf5a1e1ba146345b71ffbb11b9e10b3be8aaae70ebf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Disintegration/Variant4e9e5cf7219be41a5cd0bdf5a1e1ba146345b71ffbb11b9e10b3be8aaae70ebf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Haar.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.FiniteDimension` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Haar.Unique` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Disintegration/Variant4e9e5cf7219be41a5cd0bdf5a1e1ba146345b71ffbb11b9e10b3be8aaae70ebf.lean/declarations/instance--4b6a8dee58f6077bb7363e3b.md) | 40 | `declaration-track:4b6a8dee58f6077bb7363e3b7533dd801e0f97d8d7538e1718d5fe2eeabad687` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Disintegration/Variant4e9e5cf7219be41a5cd0bdf5a1e1ba146345b71ffbb11b9e10b3be8aaae70ebf.lean/declarations/instance--6fdd8438cfa7712a29e91056.md) | 41 | `declaration-track:6fdd8438cfa7712a29e910563d64931e210f88629a7b3d6eadf4337851b22ad4` |
| 3 | `theorem` | [LinearMap.exists_map_addHaar_eq_smul_addHaar'](../../../../../mathematics/Algebra/LinearAlgebra/Disintegration/Variant4e9e5cf7219be41a5cd0bdf5a1e1ba146345b71ffbb11b9e10b3be8aaae70ebf.lean/declarations/linearmap-exists-map-addhaar-eq-smul-addhaar--61d29ff3a05e914970c5ee7a.md) | 46 | `result-track:61d29ff3a05e914970c5ee7a291b2e62c2dbeb7c0e6f023e8f56c9412a61e31f` |
| 4 | `theorem` | [LinearMap.exists_map_addHaar_eq_smul_addHaar](../../../../../mathematics/Algebra/LinearAlgebra/Disintegration/Variant4e9e5cf7219be41a5cd0bdf5a1e1ba146345b71ffbb11b9e10b3be8aaae70ebf.lean/declarations/linearmap-exists-map-addhaar-eq-smul-addhaar--f5ebca2bd17cb800c727f9e3.md) | 110 | `result-track:f5ebca2bd17cb800c727f9e30282a8af26fa5ea49b88cca8caaf9a65bbd7ad27` |
| 5 | `lemma` | [ae_comp_linearMap_mem_iff](../../../../../mathematics/Algebra/LinearAlgebra/Disintegration/Variant4e9e5cf7219be41a5cd0bdf5a1e1ba146345b71ffbb11b9e10b3be8aaae70ebf.lean/declarations/ae-comp-linearmap-mem-iff--659b53979fadc59af0974124.md) | 119 | `result-track:659b53979fadc59af0974124362752a2deb36b627d9381f46e53f116d8edaa14` |
| 6 | `lemma` | [ae_ae_add_linearMap_mem_iff](../../../../../mathematics/Algebra/LinearAlgebra/Disintegration/Variant4e9e5cf7219be41a5cd0bdf5a1e1ba146345b71ffbb11b9e10b3be8aaae70ebf.lean/declarations/ae-ae-add-linearmap-mem-iff--d88928fecfdbf3db9d5d8034.md) | 131 | `result-track:d88928fecfdbf3db9d5d80344250359e8c2f0e227027ccb055d18d0fa01e7495` |
| 7 | `lemma` | [ae_mem_of_ae_add_linearMap_mem](../../../../../mathematics/Algebra/LinearAlgebra/Disintegration/Variant4e9e5cf7219be41a5cd0bdf5a1e1ba146345b71ffbb11b9e10b3be8aaae70ebf.lean/declarations/ae-mem-of-ae-add-linearmap-mem--a2982d062cc8f8f8db2dabc4.md) | 152 | `result-track:a2982d062cc8f8f8db2dabc4fc6f62ab81a882f3c85aa60ad73874d8b07e9f10` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
