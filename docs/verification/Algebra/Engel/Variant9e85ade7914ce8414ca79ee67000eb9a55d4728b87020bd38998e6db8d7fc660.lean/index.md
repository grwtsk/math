# Verification target: GRWTSK.Algebra.Engel.Variant9e85ade7914ce8414ca79ee67000eb9a55d4728b87020bd38998e6db8d7fc660

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "41562237b006546b33436bfdbe8c3458a16e8ef7",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Engel/Variant9e85ade7914ce8414ca79ee67000eb9a55d4728b87020bd38998e6db8d7fc660.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Engel/Variant9e85ade7914ce8414ca79ee67000eb9a55d4728b87020bd38998e6db8d7fc660.lean/index.md) · [Full source](../../../../mathematics/Algebra/Engel/Variant9e85ade7914ce8414ca79ee67000eb9a55d4728b87020bd38998e6db8d7fc660.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `41562237b006546b33436bfdbe8c3458a16e8ef7`.

Source path: `GRWTSK/Algebra/Engel/Variant9e85ade7914ce8414ca79ee67000eb9a55d4728b87020bd38998e6db8d7fc660.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Engel/Variant9e85ade7914ce8414ca79ee67000eb9a55d4728b87020bd38998e6db8d7fc660.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.Nilpotent` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.Normalizer` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_smul_add_of_span_sup_eq_top](../../../../mathematics/Algebra/Engel/Variant9e85ade7914ce8414ca79ee67000eb9a55d4728b87020bd38998e6db8d7fc660.lean/declarations/exists-smul-add-of-span-sup-eq-top--c48140ea92ac1a756dc43efa.md) | 89 | `result-track:c48140ea92ac1a756dc43efad84b8582455b6348abea5de5a18e8133f6dc588e` |
| 2 | `theorem` | [lie_top_eq_of_span_sup_eq_top](../../../../mathematics/Algebra/Engel/Variant9e85ade7914ce8414ca79ee67000eb9a55d4728b87020bd38998e6db8d7fc660.lean/declarations/lie-top-eq-of-span-sup-eq-top--2d9bce1deba32561bcbd10ae.md) | 95 | `result-track:2d9bce1deba32561bcbd10ae2e16071a6ff92a5bd5177e49ed1b142389be0942` |
| 3 | `theorem` | [lcs_le_lcs_of_is_nilpotent_span_sup_eq_top](../../../../mathematics/Algebra/Engel/Variant9e85ade7914ce8414ca79ee67000eb9a55d4728b87020bd38998e6db8d7fc660.lean/declarations/lcs-le-lcs-of-is-nilpotent-span-sup-eq-top--088e751d2fc2a92289f06d34.md) | 110 | `result-track:088e751d2fc2a92289f06d34699cc977476ecc22891ab0d6ed77ef4af9b0f390` |
| 4 | `theorem` | [isNilpotentOfIsNilpotentSpanSupEqTop](../../../../mathematics/Algebra/Engel/Variant9e85ade7914ce8414ca79ee67000eb9a55d4728b87020bd38998e6db8d7fc660.lean/declarations/isnilpotentofisnilpotentspansupeqtop--7c357c94c402844394124c06.md) | 134 | `result-track:7c357c94c402844394124c06c2efc59a236b38973a2d51e0731478dfb97ee43e` |
| 5 | `def` | [LieAlgebra.IsEngelian](../../../../mathematics/Algebra/Engel/Variant9e85ade7914ce8414ca79ee67000eb9a55d4728b87020bd38998e6db8d7fc660.lean/declarations/liealgebra-isengelian--ed43335f8577fd55729e5507.md) | 164 | `declaration-track:ed43335f8577fd55729e55076eca0a4a29a082b38f6d8eddc2481aa12911ba92` |
| 6 | `theorem` | [LieAlgebra.isEngelian_of_subsingleton](../../../../mathematics/Algebra/Engel/Variant9e85ade7914ce8414ca79ee67000eb9a55d4728b87020bd38998e6db8d7fc660.lean/declarations/liealgebra-isengelian-of-subsingleton--1694939d67427e152e870f9f.md) | 170 | `result-track:1694939d67427e152e870f9ff3f583feaf0a528c5a7bc9dc794190720a31be89` |
| 7 | `theorem` | [Function.Surjective.isEngelian](../../../../mathematics/Algebra/Engel/Variant9e85ade7914ce8414ca79ee67000eb9a55d4728b87020bd38998e6db8d7fc660.lean/declarations/function-surjective-isengelian--d0107cd623eed1e00649ebd5.md) | 175 | `result-track:d0107cd623eed1e00649ebd5adf416f7c031b4e2a126bd64c58c82cc1598f037` |
| 8 | `theorem` | [LieEquiv.isEngelian_iff](../../../../mathematics/Algebra/Engel/Variant9e85ade7914ce8414ca79ee67000eb9a55d4728b87020bd38998e6db8d7fc660.lean/declarations/lieequiv-isengelian-iff--af68bdbdae989316fb0402c8.md) | 186 | `result-track:af68bdbdae989316fb0402c817ab6ab72459bf25442daefb802a75b7c74dc2d0` |
| 9 | `theorem` | [LieAlgebra.exists_engelian_lieSubalgebra_of_lt_normalizer](../../../../mathematics/Algebra/Engel/Variant9e85ade7914ce8414ca79ee67000eb9a55d4728b87020bd38998e6db8d7fc660.lean/declarations/liealgebra-exists-engelian-liesubalgebra-of-lt-normalizer--fa79f65f65f80d8ab4c4411a.md) | 190 | `result-track:fa79f65f65f80d8ab4c4411a544327adaa90f22e3c12a57df8c71ac6c6516a12` |
| 10 | `theorem` | [LieAlgebra.isEngelian_of_isNoetherian](../../../../mathematics/Algebra/Engel/Variant9e85ade7914ce8414ca79ee67000eb9a55d4728b87020bd38998e6db8d7fc660.lean/declarations/liealgebra-isengelian-of-isnoetherian--6ff9d19ab0f086e3ac554de3.md) | 225 | `result-track:6ff9d19ab0f086e3ac554de353e7b1eda11f19f5b7e204aa990bd93cc758d894` |
| 11 | `theorem` | [LieModule.isNilpotent_iff_forall](../../../../mathematics/Algebra/Engel/Variant9e85ade7914ce8414ca79ee67000eb9a55d4728b87020bd38998e6db8d7fc660.lean/declarations/liemodule-isnilpotent-iff-forall--5eb2bd35fa77de12a5a2b76d.md) | 276 | `result-track:5eb2bd35fa77de12a5a2b76d075fd0ef0204caf5c697797524a5efaf516a3ef5` |
| 12 | `theorem` | [LieModule.isNilpotent_iff_forall'](../../../../mathematics/Algebra/Engel/Variant9e85ade7914ce8414ca79ee67000eb9a55d4728b87020bd38998e6db8d7fc660.lean/declarations/liemodule-isnilpotent-iff-forall--59798797e1b6d9a96990fa11.md) | 282 | `result-track:59798797e1b6d9a96990fa11d91c6c734baa5fb6eae78d659bd712ca235806b1` |
| 13 | `theorem` | [LieAlgebra.isNilpotent_iff_forall](../../../../mathematics/Algebra/Engel/Variant9e85ade7914ce8414ca79ee67000eb9a55d4728b87020bd38998e6db8d7fc660.lean/declarations/liealgebra-isnilpotent-iff-forall--81a86064c67e06c2e616fd35.md) | 287 | `result-track:81a86064c67e06c2e616fd351ab30a6f4117eeee6470b7715d3904ea12ab58af` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
