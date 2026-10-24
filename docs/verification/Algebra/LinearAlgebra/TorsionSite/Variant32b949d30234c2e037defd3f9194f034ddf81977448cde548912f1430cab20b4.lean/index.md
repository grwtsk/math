# Verification target: GRWTSK.Algebra.LinearAlgebra.TorsionSite.Variant32b949d30234c2e037defd3f9194f034ddf81977448cde548912f1430cab20b4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "72a67f0b629e8f4887b6ec9e2dce9a7c2e99f8b4",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/TorsionSite/Variant32b949d30234c2e037defd3f9194f034ddf81977448cde548912f1430cab20b4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/TorsionSite/Variant32b949d30234c2e037defd3f9194f034ddf81977448cde548912f1430cab20b4.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/TorsionSite/Variant32b949d30234c2e037defd3f9194f034ddf81977448cde548912f1430cab20b4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `72a67f0b629e8f4887b6ec9e2dce9a7c2e99f8b4`.

Source path: `GRWTSK/Algebra/LinearAlgebra/TorsionSite/Variant32b949d30234c2e037defd3f9194f034ddf81977448cde548912f1430cab20b4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/TorsionSite/Variant32b949d30234c2e037defd3f9194f034ddf81977448cde548912f1430cab20b4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Legacy.BinaryLogicMatrix.Symmetry` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [iteratedAction](../../../../../mathematics/Algebra/LinearAlgebra/TorsionSite/Variant32b949d30234c2e037defd3f9194f034ddf81977448cde548912f1430cab20b4.lean/declarations/iteratedaction--5e68b62a8d97cf2822ac5707.md) | 5 | `declaration-track:5e68b62a8d97cf2822ac570746cfd907fc8a7e39591121784282dea658efb92f` |
| 2 | `structure` | [TorsionAtSite](../../../../../mathematics/Algebra/LinearAlgebra/TorsionSite/Variant32b949d30234c2e037defd3f9194f034ddf81977448cde548912f1430cab20b4.lean/declarations/torsionatsite--b4377bda4071146693bb4e24.md) | 12 | `declaration-track:b4377bda4071146693bb4e242d905f95143f2df9a52d87ebc89716650de9c02a` |
| 3 | `theorem` | [torsionAtSite_has_positive_order](../../../../../mathematics/Algebra/LinearAlgebra/TorsionSite/Variant32b949d30234c2e037defd3f9194f034ddf81977448cde548912f1430cab20b4.lean/declarations/torsionatsite-has-positive-order--b0bdd68bc0f850ed29f0f497.md) | 23 | `result-track:b0bdd68bc0f850ed29f0f4974b0bd8c971c10b99feb09bac34b0e87771689c4a` |
| 4 | `theorem` | [torsionAtSite_returns_to_site](../../../../../mathematics/Algebra/LinearAlgebra/TorsionSite/Variant32b949d30234c2e037defd3f9194f034ddf81977448cde548912f1430cab20b4.lean/declarations/torsionatsite-returns-to-site--9cefd683d07b99f305497809.md) | 31 | `result-track:9cefd683d07b99f30549780901f6bafac3556ac392d3056006f74c2a34669794` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
