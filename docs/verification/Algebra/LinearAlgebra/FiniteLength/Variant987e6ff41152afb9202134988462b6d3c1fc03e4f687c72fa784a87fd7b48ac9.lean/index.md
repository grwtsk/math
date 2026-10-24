# Verification target: GRWTSK.Algebra.LinearAlgebra.FiniteLength.Variant987e6ff41152afb9202134988462b6d3c1fc03e4f687c72fa784a87fd7b48ac9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0b074388e4ebd8dc73d013260c072203e0878386",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/FiniteLength/Variant987e6ff41152afb9202134988462b6d3c1fc03e4f687c72fa784a87fd7b48ac9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/FiniteLength/Variant987e6ff41152afb9202134988462b6d3c1fc03e4f687c72fa784a87fd7b48ac9.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/FiniteLength/Variant987e6ff41152afb9202134988462b6d3c1fc03e4f687c72fa784a87fd7b48ac9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0b074388e4ebd8dc73d013260c072203e0878386`.

Source path: `GRWTSK/Algebra/LinearAlgebra/FiniteLength/Variant987e6ff41152afb9202134988462b6d3c1fc03e4f687c72fa784a87fd7b48ac9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/FiniteLength/Variant987e6ff41152afb9202134988462b6d3c1fc03e4f687c72fa784a87fd7b48ac9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Artinian.Module` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [IsFiniteLength](../../../../../mathematics/Algebra/LinearAlgebra/FiniteLength/Variant987e6ff41152afb9202134988462b6d3c1fc03e4f687c72fa784a87fd7b48ac9.lean/declarations/isfinitelength--f781c0b028350f01e524f171.md) | 34 | `declaration-track:f781c0b028350f01e524f17165fe2adad414d39dd6c9af605c2b344fd152723d` |
| 2 | `theorem` | [LinearEquiv.isFiniteLength](../../../../../mathematics/Algebra/LinearAlgebra/FiniteLength/Variant987e6ff41152afb9202134988462b6d3c1fc03e4f687c72fa784a87fd7b48ac9.lean/declarations/linearequiv-isfinitelength--7ecaa38a4139c43d9863b794.md) | 43 | `result-track:7ecaa38a4139c43d9863b79404dae69588890baab8264dac507819290b22a39f` |
| 3 | `theorem` | [exists_compositionSeries_of_isNoetherian_isArtinian](../../../../../mathematics/Algebra/LinearAlgebra/FiniteLength/Variant987e6ff41152afb9202134988462b6d3c1fc03e4f687c72fa784a87fd7b48ac9.lean/declarations/exists-compositionseries-of-isnoetherian-isartinian--e73b5615d23fd332f525eae8.md) | 54 | `result-track:e73b5615d23fd332f525eae89ff0e28ffa16a502b565d7156fce2d31b9d7454b` |
| 4 | `theorem` | [isFiniteLength_of_exists_compositionSeries](../../../../../mathematics/Algebra/LinearAlgebra/FiniteLength/Variant987e6ff41152afb9202134988462b6d3c1fc03e4f687c72fa784a87fd7b48ac9.lean/declarations/isfinitelength-of-exists-compositionseries--d1fb007105c02aa6f1d7fc9b.md) | 59 | `result-track:d1fb007105c02aa6f1d7fc9bb314204bb64ba2818d05fe16cdd5ce77b518e02d` |
| 5 | `theorem` | [isFiniteLength_iff_isNoetherian_isArtinian](../../../../../mathematics/Algebra/LinearAlgebra/FiniteLength/Variant987e6ff41152afb9202134988462b6d3c1fc03e4f687c72fa784a87fd7b48ac9.lean/declarations/isfinitelength-iff-isnoetherian-isartinian--d30113731f57966329348d31.md) | 76 | `result-track:d30113731f57966329348d31ae913b5c8f292c684b466d0a606ecc1ef21e43d6` |
| 6 | `theorem` | [isFiniteLength_iff_exists_compositionSeries](../../../../../mathematics/Algebra/LinearAlgebra/FiniteLength/Variant987e6ff41152afb9202134988462b6d3c1fc03e4f687c72fa784a87fd7b48ac9.lean/declarations/isfinitelength-iff-exists-compositionseries--4f5ecdb3a3a4d23c01ea397f.md) | 84 | `result-track:4f5ecdb3a3a4d23c01ea397f4b4acb5fc9ce9b95ae99e9cd99b073b1ecd6766c` |
| 7 | `theorem` | [IsSemisimpleModule.finite_tfae](../../../../../mathematics/Algebra/LinearAlgebra/FiniteLength/Variant987e6ff41152afb9202134988462b6d3c1fc03e4f687c72fa784a87fd7b48ac9.lean/declarations/issemisimplemodule-finite-tfae--aa2e24fc273f95c35c23c704.md) | 90 | `result-track:aa2e24fc273f95c35c23c704b3d4c232140b1a57119712e1047b61d95bd6a595` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/FiniteLength/Variant987e6ff41152afb9202134988462b6d3c1fc03e4f687c72fa784a87fd7b48ac9.lean/declarations/instance--7fab962a1d781a4a1634f037.md) | 109 | `declaration-track:7fab962a1d781a4a1634f0373ec458ad80e9b23921a0067146b2493b14d683ac` |
| 9 | `lemma` | [IsFiniteLength.of_injective](../../../../../mathematics/Algebra/LinearAlgebra/FiniteLength/Variant987e6ff41152afb9202134988462b6d3c1fc03e4f687c72fa784a87fd7b48ac9.lean/declarations/isfinitelength-of-injective--15c4ba268163c2abfd4d4270.md) | 114 | `result-track:15c4ba268163c2abfd4d427005ce3e4d37353d547440a8c7fe8987248783bd87` |
| 10 | `lemma` | [IsFiniteLength.of_surjective](../../../../../mathematics/Algebra/LinearAlgebra/FiniteLength/Variant987e6ff41152afb9202134988462b6d3c1fc03e4f687c72fa784a87fd7b48ac9.lean/declarations/isfinitelength-of-surjective--ffb0027193632faceeb71170.md) | 120 | `result-track:ffb0027193632faceeb7117007758a92cc53fea3f44e3d9e437d1da8c427e23e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
