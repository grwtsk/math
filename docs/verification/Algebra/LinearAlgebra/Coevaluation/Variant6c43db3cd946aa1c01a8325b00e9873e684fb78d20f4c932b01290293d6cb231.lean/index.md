# Verification target: GRWTSK.Algebra.LinearAlgebra.Coevaluation.Variant6c43db3cd946aa1c01a8325b00e9873e684fb78d20f4c932b01290293d6cb231

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f05adb4c899072609ed5f6e7130c3ce990e947d4",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Coevaluation/Variant6c43db3cd946aa1c01a8325b00e9873e684fb78d20f4c932b01290293d6cb231.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Coevaluation/Variant6c43db3cd946aa1c01a8325b00e9873e684fb78d20f4c932b01290293d6cb231.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Coevaluation/Variant6c43db3cd946aa1c01a8325b00e9873e684fb78d20f4c932b01290293d6cb231.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f05adb4c899072609ed5f6e7130c3ce990e947d4`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Coevaluation/Variant6c43db3cd946aa1c01a8325b00e9873e684fb78d20f4c932b01290293d6cb231.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Coevaluation/Variant6c43db3cd946aa1c01a8325b00e9873e684fb78d20f4c932b01290293d6cb231.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Contraction` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coevaluation](../../../../../mathematics/Algebra/LinearAlgebra/Coevaluation/Variant6c43db3cd946aa1c01a8325b00e9873e684fb78d20f4c932b01290293d6cb231.lean/declarations/coevaluation--f522ccc4b0bf410aaaff07ca.md) | 42 | `declaration-track:f522ccc4b0bf410aaaff07ca38e56cee35cf5aebe546965c6b1f79495f4e0949` |
| 2 | `theorem` | [coevaluation_apply_one](../../../../../mathematics/Algebra/LinearAlgebra/Coevaluation/Variant6c43db3cd946aa1c01a8325b00e9873e684fb78d20f4c932b01290293d6cb231.lean/declarations/coevaluation-apply-one--78f28f5e88a190838bede881.md) | 48 | `result-track:78f28f5e88a190838bede881c025f0ef497bd3f2b4720a8ed14a2e46dc0758d3` |
| 3 | `theorem` | [contractLeft_assoc_coevaluation](../../../../../mathematics/Algebra/LinearAlgebra/Coevaluation/Variant6c43db3cd946aa1c01a8325b00e9873e684fb78d20f4c932b01290293d6cb231.lean/declarations/contractleft-assoc-coevaluation--081b0ed4704b1b4feae5b08a.md) | 62 | `result-track:081b0ed4704b1b4feae5b08a7c9d906b6c8544caac8dc7341a02ff87fe599365` |
| 4 | `theorem` | [contractLeft_assoc_coevaluation'](../../../../../mathematics/Algebra/LinearAlgebra/Coevaluation/Variant6c43db3cd946aa1c01a8325b00e9873e684fb78d20f4c932b01290293d6cb231.lean/declarations/contractleft-assoc-coevaluation--65e8f524b909106f7c4b6371.md) | 82 | `result-track:65e8f524b909106f7c4b637159d432fac41128b89faec2c76540950bb893fa4f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
