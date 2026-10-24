# Verification target: GRWTSK.Algebra.LinearAlgebra.Defs.Variant8089d1c6358569c19f14fcf60c58b27889c42cd12913ea9a0d356fe02b607315

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e58b688930ba1d11a15c30637890fa6da103e7ee",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variant8089d1c6358569c19f14fcf60c58b27889c42cd12913ea9a0d356fe02b607315.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant8089d1c6358569c19f14fcf60c58b27889c42cd12913ea9a0d356fe02b607315.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant8089d1c6358569c19f14fcf60c58b27889c42cd12913ea9a0d356fe02b607315.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e58b688930ba1d11a15c30637890fa6da103e7ee`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Defs/Variant8089d1c6358569c19f14fcf60c58b27889c42cd12913ea9a0d356fe02b607315.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Defs/Variant8089d1c6358569c19f14fcf60c58b27889c42cd12913ea9a0d356fe02b607315.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.FiniteDimensional.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.BilinearForm` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Trace` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [trace](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant8089d1c6358569c19f14fcf60c58b27889c42cd12913ea9a0d356fe02b607315.lean/declarations/trace--b93e6b6250bcebc8b6df4079.md) | 75 | `declaration-track:b93e6b6250bcebc8b6df40796e3d979ae101bb2950deae70d0d7f30500f3d2b2` |
| 2 | `theorem` | [trace_apply](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant8089d1c6358569c19f14fcf60c58b27889c42cd12913ea9a0d356fe02b607315.lean/declarations/trace-apply--4ccfdeb5b0fda68699c2c9f0.md) | 82 | `result-track:4ccfdeb5b0fda68699c2c9f02cee66c75cff393fd6a2aa4c6fbf86a679c71d4e` |
| 3 | `theorem` | [trace_eq_zero_of_not_exists_basis](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant8089d1c6358569c19f14fcf60c58b27889c42cd12913ea9a0d356fe02b607315.lean/declarations/trace-eq-zero-of-not-exists-basis--0d0e42b379e5babcac24eef9.md) | 85 | `result-track:0d0e42b379e5babcac24eef959640938ea0183c51ce6cdb2c80c9424a38eb971` |
| 4 | `theorem` | [trace_eq_matrix_trace](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant8089d1c6358569c19f14fcf60c58b27889c42cd12913ea9a0d356fe02b607315.lean/declarations/trace-eq-matrix-trace--64b80c6689c3ccada1485403.md) | 91 | `result-track:64b80c6689c3ccada14854039972e8c2e327366f1599e9f7a75e965d9f55458f` |
| 5 | `theorem` | [trace_algebraMap_of_basis](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant8089d1c6358569c19f14fcf60c58b27889c42cd12913ea9a0d356fe02b607315.lean/declarations/trace-algebramap-of-basis--5053f282b657ed89fb60fba0.md) | 96 | `result-track:5053f282b657ed89fb60fba093f37197a796db133281e5b0624f474748df8a8e` |
| 6 | `theorem` | [trace_self](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant8089d1c6358569c19f14fcf60c58b27889c42cd12913ea9a0d356fe02b607315.lean/declarations/trace-self--513f503e90787ee5f3601fcc.md) | 105 | `result-track:513f503e90787ee5f3601fcc68341622453a8fbc01cf746da5f8ba6638bcf913` |
| 7 | `theorem` | [trace_self_apply](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant8089d1c6358569c19f14fcf60c58b27889c42cd12913ea9a0d356fe02b607315.lean/declarations/trace-self-apply--5c0b9ac2190c34480c2f6fad.md) | 108 | `result-track:5c0b9ac2190c34480c2f6fad1755116162357531d5293c61cf8b0d904b7f98e2` |
| 8 | `theorem` | [trace_algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant8089d1c6358569c19f14fcf60c58b27889c42cd12913ea9a0d356fe02b607315.lean/declarations/trace-algebramap--5476eb4cffef5e03d293661a.md) | 115 | `result-track:5476eb4cffef5e03d293661a3fb891d6c45b6b2f91309bb109644bb1888c5287` |
| 9 | `theorem` | [trace_trace_of_basis](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant8089d1c6358569c19f14fcf60c58b27889c42cd12913ea9a0d356fe02b607315.lean/declarations/trace-trace-of-basis--76dfdec5a60d98d9cb326c18.md) | 121 | `result-track:76dfdec5a60d98d9cb326c1858e484ba6c4ab88fcea86989e95fee01459aae98` |
| 10 | `theorem` | [trace_comp_trace_of_basis](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant8089d1c6358569c19f14fcf60c58b27889c42cd12913ea9a0d356fe02b607315.lean/declarations/trace-comp-trace-of-basis--0f1e930e011abe25aaa59adc.md) | 134 | `result-track:0f1e930e011abe25aaa59adca8dfabc74a63352bd87b6dd7decd1d2629004ca1` |
| 11 | `theorem` | [trace_trace](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant8089d1c6358569c19f14fcf60c58b27889c42cd12913ea9a0d356fe02b607315.lean/declarations/trace-trace--9500c8ba9e92ff523bc222ff.md) | 141 | `result-track:9500c8ba9e92ff523bc222ff5e08607d79b4dce26485ad01d6e5c49c4e217038` |
| 12 | `theorem` | [trace_comp_trace](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant8089d1c6358569c19f14fcf60c58b27889c42cd12913ea9a0d356fe02b607315.lean/declarations/trace-comp-trace--019ea30692781821538800a5.md) | 149 | `result-track:019ea30692781821538800a56f5b359ba137ef77df11c976a93807748cc6538e` |
| 13 | `theorem` | [trace_prod_apply](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant8089d1c6358569c19f14fcf60c58b27889c42cd12913ea9a0d356fe02b607315.lean/declarations/trace-prod-apply--a072a668c1cf3f65de8321c8.md) | 155 | `result-track:a072a668c1cf3f65de8321c85612d85c0116c85da095c635250cab8b98a8fa62` |
| 14 | `theorem` | [trace_prod](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant8089d1c6358569c19f14fcf60c58b27889c42cd12913ea9a0d356fe02b607315.lean/declarations/trace-prod--6d7919baae75c427d052d27b.md) | 164 | `result-track:6d7919baae75c427d052d27bae181bb2d3be0399ecd7fbb8779fcd45dac35ded` |
| 15 | `def` | [traceForm](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant8089d1c6358569c19f14fcf60c58b27889c42cd12913ea9a0d356fe02b607315.lean/declarations/traceform--ff810952f2b0e291bd86b041.md) | 175 | `declaration-track:ff810952f2b0e291bd86b0414cfd84e42ca8fdafe43f042e2cd80d2eb85e4dcb` |
| 16 | `theorem` | [traceForm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant8089d1c6358569c19f14fcf60c58b27889c42cd12913ea9a0d356fe02b607315.lean/declarations/traceform-apply--bad2083ca0dacca34101faf5.md) | 182 | `result-track:bad2083ca0dacca34101faf57641aefed71d31f4a48ede505d90e779854b1758` |
| 17 | `theorem` | [traceForm_isSymm](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant8089d1c6358569c19f14fcf60c58b27889c42cd12913ea9a0d356fe02b607315.lean/declarations/traceform-issymm--cad0d1a9d8198c85a01d5c5c.md) | 185 | `result-track:cad0d1a9d8198c85a01d5c5c1173048423566f3770525e8582b90aad2af20cfe` |
| 18 | `theorem` | [traceForm_toMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant8089d1c6358569c19f14fcf60c58b27889c42cd12913ea9a0d356fe02b607315.lean/declarations/traceform-tomatrix--283985cba847b2822dbe9792.md) | 187 | `result-track:283985cba847b2822dbe9792c3261824c561731a2ba6167998d9e297e21850eb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
