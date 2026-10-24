# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.96dcf7cf09eab397917eSourceFactorialAbsoluteLogMoments.Variant40113e75b8602c4db5203b4f00c07cf064089fd7c598c340c3c51177efc9de3e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ed8604a8da8851cbf97b7af7d2e775f71e423a99",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/96dcf7cf09eab397917eSourceFactorialAbsoluteLogMoments/Variant40113e75b8602c4db5203b4f00c07cf064089fd7c598c340c3c51177efc9de3e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/96dcf7cf09eab397917eSourceFactorialAbsoluteLogMoments/Variant40113e75b8602c4db5203b4f00c07cf064089fd7c598c340c3c51177efc9de3e.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/96dcf7cf09eab397917eSourceFactorialAbsoluteLogMoments/Variant40113e75b8602c4db5203b4f00c07cf064089fd7c598c340c3c51177efc9de3e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ed8604a8da8851cbf97b7af7d2e775f71e423a99`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/96dcf7cf09eab397917eSourceFactorialAbsoluteLogMoments/Variant40113e75b8602c4db5203b4f00c07cf064089fd7c598c340c3c51177efc9de3e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/96dcf7cf09eab397917eSourceFactorialAbsoluteLogMoments/Variant40113e75b8602c4db5203b4f00c07cf064089fd7c598c340c3c51177efc9de3e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualFactorialJointCancellation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [fractionalPrimitive_interval_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/96dcf7cf09eab397917eSourceFactorialAbsoluteLogMoments/Variant40113e75b8602c4db5203b4f00c07cf064089fd7c598c340c3c51177efc9de3e.lean/declarations/fractionalprimitive-interval-integrable--56eaf377e0b63fdce4bc10b3.md) | 27 | `result-track:56eaf377e0b63fdce4bc10b3427c57abf983b41ee18fbe8d9beff7453ed3fa90` |
| 2 | `theorem` | [factorialLogDefect_abs_le_one_add_log](../../../../../../mathematics/Analysis/RealAnalysis/Integration/96dcf7cf09eab397917eSourceFactorialAbsoluteLogMoments/Variant40113e75b8602c4db5203b4f00c07cf064089fd7c598c340c3c51177efc9de3e.lean/declarations/factoriallogdefect-abs-le-one-add-log--ff437e900c9566237232e25d.md) | 44 | `result-track:ff437e900c9566237232e25df54db30bdf73867e27447cf2a4ad4768eafeb3c5` |
| 3 | `def` | [factorialAbsLogWeight](../../../../../../mathematics/Analysis/RealAnalysis/Integration/96dcf7cf09eab397917eSourceFactorialAbsoluteLogMoments/Variant40113e75b8602c4db5203b4f00c07cf064089fd7c598c340c3c51177efc9de3e.lean/declarations/factorialabslogweight--47574416aded85ac5eff372e.md) | 66 | `declaration-track:47574416aded85ac5eff372ec57e3453f89f51722ed4096b9ce1afb6311ce2f5` |
| 4 | `def` | [factorialAbsLogMoment](../../../../../../mathematics/Analysis/RealAnalysis/Integration/96dcf7cf09eab397917eSourceFactorialAbsoluteLogMoments/Variant40113e75b8602c4db5203b4f00c07cf064089fd7c598c340c3c51177efc9de3e.lean/declarations/factorialabslogmoment--23a6a2a3e2e065901b351751.md) | 69 | `declaration-track:23a6a2a3e2e065901b35175190fc6bfad9a85e37a9892d3f20bec199e12ba2fd` |
| 5 | `theorem` | [factorialAbsLogWeight_eq_literal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/96dcf7cf09eab397917eSourceFactorialAbsoluteLogMoments/Variant40113e75b8602c4db5203b4f00c07cf064089fd7c598c340c3c51177efc9de3e.lean/declarations/factorialabslogweight-eq-literal--eb79fca4ea2607c8c2216fc0.md) | 72 | `result-track:eb79fca4ea2607c8c2216fc054518abb54295c59355021ad3e8631711f3da25e` |
| 6 | `theorem` | [factorialAbsLogWeight_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/96dcf7cf09eab397917eSourceFactorialAbsoluteLogMoments/Variant40113e75b8602c4db5203b4f00c07cf064089fd7c598c340c3c51177efc9de3e.lean/declarations/factorialabslogweight-measurable--5483880e00830995f48df5cf.md) | 78 | `result-track:5483880e00830995f48df5cfa936cea6552facb7195751ac80f6beca0deef266` |
| 7 | `theorem` | [factorialAbsLogWeight_eq_lower](../../../../../../mathematics/Analysis/RealAnalysis/Integration/96dcf7cf09eab397917eSourceFactorialAbsoluteLogMoments/Variant40113e75b8602c4db5203b4f00c07cf064089fd7c598c340c3c51177efc9de3e.lean/declarations/factorialabslogweight-eq-lower--1202acab4756ea46e0143f45.md) | 87 | `result-track:1202acab4756ea46e0143f4516dd5a3b850990b1157a0d2826f35c3764a7a8bd` |
| 8 | `theorem` | [factorialAbsLogWeight_lower_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/96dcf7cf09eab397917eSourceFactorialAbsoluteLogMoments/Variant40113e75b8602c4db5203b4f00c07cf064089fd7c598c340c3c51177efc9de3e.lean/declarations/factorialabslogweight-lower-integrable--ef18c9cfa34b060e69fb038c.md) | 101 | `result-track:ef18c9cfa34b060e69fb038cfa33a646e054a7524220870370183df4d54b15d6` |
| 9 | `theorem` | [factorialAbsLogWeight_lower_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/96dcf7cf09eab397917eSourceFactorialAbsoluteLogMoments/Variant40113e75b8602c4db5203b4f00c07cf064089fd7c598c340c3c51177efc9de3e.lean/declarations/factorialabslogweight-lower-integral--96d912863fe9102adcbfb34e.md) | 112 | `result-track:96d912863fe9102adcbfb34e7785e6e8f63f91c9d889349050e91c974d995706` |
| 10 | `theorem` | [factorialAbsLogWeight_upper_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/96dcf7cf09eab397917eSourceFactorialAbsoluteLogMoments/Variant40113e75b8602c4db5203b4f00c07cf064089fd7c598c340c3c51177efc9de3e.lean/declarations/factorialabslogweight-upper-le--158e3de89068ac514d303516.md) | 129 | `result-track:158e3de89068ac514d3035169c0341a17207fbb4b87f98facb42db9505ece14a` |
| 11 | `theorem` | [factorialAbsLogWeight_upper_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/96dcf7cf09eab397917eSourceFactorialAbsoluteLogMoments/Variant40113e75b8602c4db5203b4f00c07cf064089fd7c598c340c3c51177efc9de3e.lean/declarations/factorialabslogweight-upper-integrable--377cdd691e30d1f9eb3031cf.md) | 141 | `result-track:377cdd691e30d1f9eb3031cfb280f65ce15afd0fbf945b1707c040749ea00eb9` |
| 12 | `theorem` | [factorialAbsLogWeight_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/96dcf7cf09eab397917eSourceFactorialAbsoluteLogMoments/Variant40113e75b8602c4db5203b4f00c07cf064089fd7c598c340c3c51177efc9de3e.lean/declarations/factorialabslogweight-integrable--af25b2f5ef4686d17b09d980.md) | 152 | `result-track:af25b2f5ef4686d17b09d980fb95b43a79d90ac20f4ae71dc25f9330dadee241` |
| 13 | `theorem` | [factorialAbsLogMoment_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/96dcf7cf09eab397917eSourceFactorialAbsoluteLogMoments/Variant40113e75b8602c4db5203b4f00c07cf064089fd7c598c340c3c51177efc9de3e.lean/declarations/factorialabslogmoment-le--7b12a50cd4ca411e1a194f19.md) | 161 | `result-track:7b12a50cd4ca411e1a194f194ff1f105d137c3bf63ece181654067d7f4c15f28` |
| 14 | `theorem` | [factorialAbsLogMoment_first_three](../../../../../../mathematics/Analysis/RealAnalysis/Integration/96dcf7cf09eab397917eSourceFactorialAbsoluteLogMoments/Variant40113e75b8602c4db5203b4f00c07cf064089fd7c598c340c3c51177efc9de3e.lean/declarations/factorialabslogmoment-first-three--38de3e1fecfc268c59b38644.md) | 181 | `result-track:38de3e1fecfc268c59b386443f8e33bf974fa6d2db71685ba7e5d9c481e2a276` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
