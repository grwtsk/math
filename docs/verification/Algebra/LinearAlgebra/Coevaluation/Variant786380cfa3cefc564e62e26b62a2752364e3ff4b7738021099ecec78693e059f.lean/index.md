# Verification target: GRWTSK.Algebra.LinearAlgebra.Coevaluation.Variant786380cfa3cefc564e62e26b62a2752364e3ff4b7738021099ecec78693e059f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "101d02ac2eabf2e35133b8e6c6b98e456a4c866d",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Coevaluation/Variant786380cfa3cefc564e62e26b62a2752364e3ff4b7738021099ecec78693e059f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Coevaluation/Variant786380cfa3cefc564e62e26b62a2752364e3ff4b7738021099ecec78693e059f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Coevaluation/Variant786380cfa3cefc564e62e26b62a2752364e3ff4b7738021099ecec78693e059f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `101d02ac2eabf2e35133b8e6c6b98e456a4c866d`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Coevaluation/Variant786380cfa3cefc564e62e26b62a2752364e3ff4b7738021099ecec78693e059f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Coevaluation/Variant786380cfa3cefc564e62e26b62a2752364e3ff4b7738021099ecec78693e059f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Contraction` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coevaluation](../../../../../mathematics/Algebra/LinearAlgebra/Coevaluation/Variant786380cfa3cefc564e62e26b62a2752364e3ff4b7738021099ecec78693e059f.lean/declarations/coevaluation--7847ec684a678ce3991c5267.md) | 47 | `declaration-track:7847ec684a678ce3991c5267b34a5dbbd35d4638ab0705743a46053aefdd7c8f` |
| 2 | `theorem` | [coevaluation_apply_one](../../../../../mathematics/Algebra/LinearAlgebra/Coevaluation/Variant786380cfa3cefc564e62e26b62a2752364e3ff4b7738021099ecec78693e059f.lean/declarations/coevaluation-apply-one--0d7bc102133dbba16f70c49a.md) | 52 | `result-track:0d7bc102133dbba16f70c49ab40ce95cc55a541be5b524a2099ec91f5fe6f310` |
| 3 | `theorem` | [contractLeft_assoc_coevaluation](../../../../../mathematics/Algebra/LinearAlgebra/Coevaluation/Variant786380cfa3cefc564e62e26b62a2752364e3ff4b7738021099ecec78693e059f.lean/declarations/contractleft-assoc-coevaluation--ddd7f22629aa3b1ea97a3d9d.md) | 65 | `result-track:ddd7f22629aa3b1ea97a3d9d34b2a849de43a8821ffbb9e7b272155c6faf82d6` |
| 4 | `theorem` | [contractLeft_assoc_coevaluation'](../../../../../mathematics/Algebra/LinearAlgebra/Coevaluation/Variant786380cfa3cefc564e62e26b62a2752364e3ff4b7738021099ecec78693e059f.lean/declarations/contractleft-assoc-coevaluation--909608108f5c7a63dbd9640b.md) | 84 | `result-track:909608108f5c7a63dbd9640b95419e33a6462f60139a330c625e0439ad0a9561` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
