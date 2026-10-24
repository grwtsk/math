# Verification target: GRWTSK.Algebra.LinearAlgebra.Lift.Variant515600707890560667cdec9beafe83bf52d0660e47a1d08772a71a42105e5deb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "44cd6e94a1e3374568910ad91c1ae79dd5706e09",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Lift/Variant515600707890560667cdec9beafe83bf52d0660e47a1d08772a71a42105e5deb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Lift/Variant515600707890560667cdec9beafe83bf52d0660e47a1d08772a71a42105e5deb.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Lift/Variant515600707890560667cdec9beafe83bf52d0660e47a1d08772a71a42105e5deb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `44cd6e94a1e3374568910ad91c1ae79dd5706e09`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Lift/Variant515600707890560667cdec9beafe83bf52d0660e47a1d08772a71a42105e5deb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Lift/Variant515600707890560667cdec9beafe83bf52d0660e47a1d08772a71a42105e5deb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BooleanMatrix.Codec.Core` — import line 6; external provider; requires a separately pinned dependency.
- `BooleanMatrix.Matrix.Core` — import line 7; external provider; requires a separately pinned dependency.
- `BooleanMatrix.TypedApplication` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [liftOr](../../../../../mathematics/Algebra/LinearAlgebra/Lift/Variant515600707890560667cdec9beafe83bf52d0660e47a1d08772a71a42105e5deb.lean/declarations/liftor--860295e2b8cae6956efc7095.md) | 30 | `declaration-track:860295e2b8cae6956efc7095ea3ce0c11a5a029b623d043dbae60820d0c1cdc1` |
| 2 | `theorem` | [liftOr_encode](../../../../../mathematics/Algebra/LinearAlgebra/Lift/Variant515600707890560667cdec9beafe83bf52d0660e47a1d08772a71a42105e5deb.lean/declarations/liftor-encode--f9ad0e0ab860b26424fc7747.md) | 42 | `result-track:f9ad0e0ab860b26424fc774776791380c981425f47f9fbf6b161f938a97cd9d9` |
| 3 | `def` | [lift](../../../../../mathematics/Algebra/LinearAlgebra/Lift/Variant515600707890560667cdec9beafe83bf52d0660e47a1d08772a71a42105e5deb.lean/declarations/lift--267917dbfd04366b922d80f9.md) | 54 | `declaration-track:267917dbfd04366b922d80f90ceadf76283e6a8a5ee603238e8c71863833d3e4` |
| 4 | `theorem` | [lift_encode](../../../../../mathematics/Algebra/LinearAlgebra/Lift/Variant515600707890560667cdec9beafe83bf52d0660e47a1d08772a71a42105e5deb.lean/declarations/lift-encode--7dbe63a632b2377c76868f77.md) | 62 | `result-track:7dbe63a632b2377c76868f776927da915979151684cdf21d179f56ec1bf582c8` |
| 5 | `def` | [typedLift](../../../../../mathematics/Algebra/LinearAlgebra/Lift/Variant515600707890560667cdec9beafe83bf52d0660e47a1d08772a71a42105e5deb.lean/declarations/typedlift--929877862611a24558e0ace7.md) | 73 | `declaration-track:929877862611a24558e0ace7301e3c2faaefc80b3d33788e98c07bfc2c338572` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
