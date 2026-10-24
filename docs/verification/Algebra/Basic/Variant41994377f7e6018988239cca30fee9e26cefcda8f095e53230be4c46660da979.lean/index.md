# Verification target: GRWTSK.Algebra.Basic.Variant41994377f7e6018988239cca30fee9e26cefcda8f095e53230be4c46660da979

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dc91ef72f56f72e5f8b8ba2116ad538df8a99c27",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant41994377f7e6018988239cca30fee9e26cefcda8f095e53230be4c46660da979.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant41994377f7e6018988239cca30fee9e26cefcda8f095e53230be4c46660da979.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant41994377f7e6018988239cca30fee9e26cefcda8f095e53230be4c46660da979.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dc91ef72f56f72e5f8b8ba2116ad538df8a99c27`.

Source path: `GRWTSK/Algebra/Basic/Variant41994377f7e6018988239cca30fee9e26cefcda8f095e53230be4c46660da979.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant41994377f7e6018988239cca30fee9e26cefcda8f095e53230be4c46660da979.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Spectrum.Maximal.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Spectrum.Prime.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [equivSubtype](../../../../mathematics/Algebra/Basic/Variant41994377f7e6018988239cca30fee9e26cefcda8f095e53230be4c46660da979.lean/declarations/equivsubtype--de3c418008e3d16b0de145e1.md) | 23 | `declaration-track:de3c418008e3d16b0de145e1ee896b4ab7f76001718ab8ea4baea6dd86500339` |
| 2 | `theorem` | [range_asIdeal](../../../../mathematics/Algebra/Basic/Variant41994377f7e6018988239cca30fee9e26cefcda8f095e53230be4c46660da979.lean/declarations/range-asideal--d786c6af9dabbdeb06a864ab.md) | 29 | `result-track:d786c6af9dabbdeb06a864abf21ad099fb853feed635356909519a5c92cf64a3` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant41994377f7e6018988239cca30fee9e26cefcda8f095e53230be4c46660da979.lean/declarations/instance--e340b663a4587eb3d57c100b.md) | 36 | `declaration-track:e340b663a4587eb3d57c100b0747ebf8dc0e3bf10524697e59d9b1647ca49684` |
| 4 | `def` | [toPrimeSpectrum](../../../../mathematics/Algebra/Basic/Variant41994377f7e6018988239cca30fee9e26cefcda8f095e53230be4c46660da979.lean/declarations/toprimespectrum--7ac5a96fc502f10f644beaa4.md) | 41 | `declaration-track:7ac5a96fc502f10f644beaa43f3c2a662a5194dc51c2f9202cbe281feb55261d` |
| 5 | `theorem` | [toPrimeSpectrum_injective](../../../../mathematics/Algebra/Basic/Variant41994377f7e6018988239cca30fee9e26cefcda8f095e53230be4c46660da979.lean/declarations/toprimespectrum-injective--8a7cea596f89792b6ce3a7c3.md) | 44 | `result-track:8a7cea596f89792b6ce3a7c3890d8e328febc3f8f3a20537146c5da46fa8831c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
