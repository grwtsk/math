# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Units.Variant0c408c2aeebeaa63c26f8aa715761f4487b54ddc4246b38fa08e05e355d7f0ab

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "048e849cdf5cbcda78a047ddfd86c61adc17f2fa",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Units/Variant0c408c2aeebeaa63c26f8aa715761f4487b54ddc4246b38fa08e05e355d7f0ab.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/Units/Variant0c408c2aeebeaa63c26f8aa715761f4487b54ddc4246b38fa08e05e355d7f0ab.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/Units/Variant0c408c2aeebeaa63c26f8aa715761f4487b54ddc4246b38fa08e05e355d7f0ab.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `048e849cdf5cbcda78a047ddfd86c61adc17f2fa`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Units/Variant0c408c2aeebeaa63c26f8aa715761f4487b54ddc4246b38fa08e05e355d7f0ab.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Units/Variant0c408c2aeebeaa63c26f8aa715761f4487b54ddc4246b38fa08e05e355d7f0ab.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Int.Order.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Units` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupPower.Order` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isUnit_iff_abs_eq](../../../../mathematics/FoundationsLogicAndTypeTheory/Units/Variant0c408c2aeebeaa63c26f8aa715761f4487b54ddc4246b38fa08e05e355d7f0ab.lean/declarations/isunit-iff-abs-eq--6cb41c2e96d3ddedd6ec826a.md) | 27 | `result-track:6cb41c2e96d3ddedd6ec826a7ee9a5cad2aab29c08c53910752f19341f22e480` |
| 2 | `theorem` | [isUnit_sq](../../../../mathematics/FoundationsLogicAndTypeTheory/Units/Variant0c408c2aeebeaa63c26f8aa715761f4487b54ddc4246b38fa08e05e355d7f0ab.lean/declarations/isunit-sq--0b7141b0e3229a630aad4798.md) | 31 | `result-track:0b7141b0e3229a630aad4798a56d89f923b42a46fa43e4f4c83232fe90ad850a` |
| 3 | `theorem` | [units_sq](../../../../mathematics/FoundationsLogicAndTypeTheory/Units/Variant0c408c2aeebeaa63c26f8aa715761f4487b54ddc4246b38fa08e05e355d7f0ab.lean/declarations/units-sq--44170aa5223df5bb1cb0fc91.md) | 35 | `result-track:44170aa5223df5bb1cb0fc917587b9ea99ce5ead936d1dc1c4f1e0432698dfd6` |
| 4 | `theorem` | [units_mul_self](../../../../mathematics/FoundationsLogicAndTypeTheory/Units/Variant0c408c2aeebeaa63c26f8aa715761f4487b54ddc4246b38fa08e05e355d7f0ab.lean/declarations/units-mul-self--4ec7591e0d6f863643708f74.md) | 43 | `result-track:4ec7591e0d6f863643708f74654896814c477c56c4851a6bb684df3b8ef767c0` |
| 5 | `theorem` | [units_inv_eq_self](../../../../mathematics/FoundationsLogicAndTypeTheory/Units/Variant0c408c2aeebeaa63c26f8aa715761f4487b54ddc4246b38fa08e05e355d7f0ab.lean/declarations/units-inv-eq-self--01144e2b4679dec9c76fa111.md) | 47 | `result-track:01144e2b4679dec9c76fa111842683b7c06ed95c5a984dd6b5326f13fe2b0df8` |
| 6 | `theorem` | [units_coe_mul_self](../../../../mathematics/FoundationsLogicAndTypeTheory/Units/Variant0c408c2aeebeaa63c26f8aa715761f4487b54ddc4246b38fa08e05e355d7f0ab.lean/declarations/units-coe-mul-self--4c4c8b6cf3bec3aec0bd4c52.md) | 52 | `result-track:4c4c8b6cf3bec3aec0bd4c5278ed91d2738705d14d9da6c97660b057daab5c33` |
| 7 | `theorem` | [neg_one_pow_ne_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Units/Variant0c408c2aeebeaa63c26f8aa715761f4487b54ddc4246b38fa08e05e355d7f0ab.lean/declarations/neg-one-pow-ne-zero--12d9f7da4278ec32e3bf59df.md) | 57 | `result-track:12d9f7da4278ec32e3bf59df85fc83d65e76bc4fef30e35c600fc515287d8b4d` |
| 8 | `theorem` | [sq_eq_one_of_sq_lt_four](../../../../mathematics/FoundationsLogicAndTypeTheory/Units/Variant0c408c2aeebeaa63c26f8aa715761f4487b54ddc4246b38fa08e05e355d7f0ab.lean/declarations/sq-eq-one-of-sq-lt-four--a65bec05db8dabc03b83d3c2.md) | 61 | `result-track:a65bec05db8dabc03b83d3c252a09fef0c3b79a42006dfd69a254acbe30d9feb` |
| 9 | `theorem` | [sq_eq_one_of_sq_le_three](../../../../mathematics/FoundationsLogicAndTypeTheory/Units/Variant0c408c2aeebeaa63c26f8aa715761f4487b54ddc4246b38fa08e05e355d7f0ab.lean/declarations/sq-eq-one-of-sq-le-three--223e5c3af2c1d7bc9b41575d.md) | 68 | `result-track:223e5c3af2c1d7bc9b41575db189b9145cce943e09137ec7181640c46e321306` |
| 10 | `theorem` | [units_pow_eq_pow_mod_two](../../../../mathematics/FoundationsLogicAndTypeTheory/Units/Variant0c408c2aeebeaa63c26f8aa715761f4487b54ddc4246b38fa08e05e355d7f0ab.lean/declarations/units-pow-eq-pow-mod-two--553f2d3bfa6d858331f9e884.md) | 72 | `result-track:553f2d3bfa6d858331f9e884033c495a61009b9adb209ce84c088a933ba0615a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
