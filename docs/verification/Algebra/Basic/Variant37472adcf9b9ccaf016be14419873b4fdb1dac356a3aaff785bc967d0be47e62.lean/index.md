# Verification target: GRWTSK.Algebra.Basic.Variant37472adcf9b9ccaf016be14419873b4fdb1dac356a3aaff785bc967d0be47e62

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "587fa1ea4e5bb6a123e5533a4db469ff49ac459c",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant37472adcf9b9ccaf016be14419873b4fdb1dac356a3aaff785bc967d0be47e62.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant37472adcf9b9ccaf016be14419873b4fdb1dac356a3aaff785bc967d0be47e62.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant37472adcf9b9ccaf016be14419873b4fdb1dac356a3aaff785bc967d0be47e62.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `587fa1ea4e5bb6a123e5533a4db469ff49ac459c`.

Source path: `GRWTSK/Algebra/Basic/Variant37472adcf9b9ccaf016be14419873b4fdb1dac356a3aaff785bc967d0be47e62.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant37472adcf9b9ccaf016be14419873b4fdb1dac356a3aaff785bc967d0be47e62.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Bialgebra.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [HopfAlgebraStruct](../../../../mathematics/Algebra/Basic/Variant37472adcf9b9ccaf016be14419873b4fdb1dac356a3aaff785bc967d0be47e62.lean/declarations/hopfalgebrastruct--5a4a6450fb95d042324d6eb2.md) | 57 | `declaration-track:5a4a6450fb95d042324d6eb2f33d54c7dd88f4938a2fb32dc377f28708227e54` |
| 2 | `class` | [HopfAlgebra](../../../../mathematics/Algebra/Basic/Variant37472adcf9b9ccaf016be14419873b4fdb1dac356a3aaff785bc967d0be47e62.lean/declarations/hopfalgebra--e87617c558ba6274b31d8039.md) | 64 | `declaration-track:e87617c558ba6274b31d8039bb06b3af2b4ade5d487b6a01b49441315905bab2` |
| 3 | `theorem` | [mul_antipode_rTensor_comul_apply](../../../../mathematics/Algebra/Basic/Variant37472adcf9b9ccaf016be14419873b4fdb1dac356a3aaff785bc967d0be47e62.lean/declarations/mul-antipode-rtensor-comul-apply--7f760efb3408b9b0e769b854.md) | 80 | `result-track:7f760efb3408b9b0e769b854e3348da2f1b59456906b3e1dcf6fca7b53a35b28` |
| 4 | `theorem` | [mul_antipode_lTensor_comul_apply](../../../../mathematics/Algebra/Basic/Variant37472adcf9b9ccaf016be14419873b4fdb1dac356a3aaff785bc967d0be47e62.lean/declarations/mul-antipode-ltensor-comul-apply--4ad70d925c92e886a8c2061d.md) | 86 | `result-track:4ad70d925c92e886a8c2061d5b322a60816dcad5619d088f5236f4330680b4e6` |
| 5 | `theorem` | [antipode_one](../../../../mathematics/Algebra/Basic/Variant37472adcf9b9ccaf016be14419873b4fdb1dac356a3aaff785bc967d0be47e62.lean/declarations/antipode-one--a57da19e4346375530dbe3f0.md) | 92 | `result-track:a57da19e4346375530dbe3f08b588b6c8b10929818afec42c945e6232b1adf38` |
| 6 | `lemma` | [sum_antipode_mul_eq](../../../../mathematics/Algebra/Basic/Variant37472adcf9b9ccaf016be14419873b4fdb1dac356a3aaff785bc967d0be47e62.lean/declarations/sum-antipode-mul-eq--c6ec80b6b7cc5b72993935ca.md) | 99 | `result-track:c6ec80b6b7cc5b72993935cadb8c4cf7cf738411cf6d228afe5b0b4047538cde` |
| 7 | `lemma` | [sum_mul_antipode_eq](../../../../mathematics/Algebra/Basic/Variant37472adcf9b9ccaf016be14419873b4fdb1dac356a3aaff785bc967d0be47e62.lean/declarations/sum-mul-antipode-eq--5bad26daa3651043c4a7e3ce.md) | 105 | `result-track:5bad26daa3651043c4a7e3ceaa9e7b2372c2f2df0ec8e492db8b8a8abfc1333f` |
| 8 | `lemma` | [sum_antipode_mul_eq_smul](../../../../mathematics/Algebra/Basic/Variant37472adcf9b9ccaf016be14419873b4fdb1dac356a3aaff785bc967d0be47e62.lean/declarations/sum-antipode-mul-eq-smul--f94b8f0b07bb61033a7c6b6f.md) | 110 | `result-track:f94b8f0b07bb61033a7c6b6fa99eeb84a36cfb6364c094cbdcfac7758f96ae12` |
| 9 | `lemma` | [sum_mul_antipode_eq_smul](../../../../mathematics/Algebra/Basic/Variant37472adcf9b9ccaf016be14419873b4fdb1dac356a3aaff785bc967d0be47e62.lean/declarations/sum-mul-antipode-eq-smul--ebb05f66a90cc632dff9dc3b.md) | 115 | `result-track:ebb05f66a90cc632dff9dc3bd0abbe8f2ad24bccdca5204585323189e639364f` |
| 10 | `instance` | [toHopfAlgebra](../../../../mathematics/Algebra/Basic/Variant37472adcf9b9ccaf016be14419873b4fdb1dac356a3aaff785bc967d0be47e62.lean/declarations/tohopfalgebra--08f478e197363e6ea628d5ea.md) | 129 | `declaration-track:08f478e197363e6ea628d5ea460f4695fbe6af845b220afad7a8cd61b41c3aa5` |
| 11 | `theorem` | [antipode_eq_id](../../../../mathematics/Algebra/Basic/Variant37472adcf9b9ccaf016be14419873b4fdb1dac356a3aaff785bc967d0be47e62.lean/declarations/antipode-eq-id--c0b4b7d6b25595b7d9a0706b.md) | 135 | `result-track:c0b4b7d6b25595b7d9a0706b1e2551f659a6922fbfa6ac9e17a0d940c52c724d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
