# Verification target: GRWTSK.NumberTheory.Three.Variantc79cf7838fcb272a31b87fe70a7fa6593be25242bc27a3c2ec2545591050dd15

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "357fac7c61b45cd38232a35196cbb61d79a465ee",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Three/Variantc79cf7838fcb272a31b87fe70a7fa6593be25242bc27a3c2ec2545591050dd15.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Three/Variantc79cf7838fcb272a31b87fe70a7fa6593be25242bc27a3c2ec2545591050dd15.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Three/Variantc79cf7838fcb272a31b87fe70a7fa6593be25242bc27a3c2ec2545591050dd15.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `357fac7c61b45cd38232a35196cbb61d79a465ee`.

Source path: `GRWTSK/NumberTheory/Three/Variantc79cf7838fcb272a31b87fe70a7fa6593be25242bc27a3c2ec2545591050dd15.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Three/Variantc79cf7838fcb272a31b87fe70a7fa6593be25242bc27a3c2ec2545591050dd15.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.Cyclotomic.Embeddings` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Cyclotomic.Rat` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.NumberField.Units.DirichletTheorem` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Fintype` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [coe_eta](../../../../mathematics/NumberTheory/Three/Variantc79cf7838fcb272a31b87fe70a7fa6593be25242bc27a3c2ec2545591050dd15.lean/declarations/coe-eta--f049fed46a04f9529b79cf15.md) | 39 | `result-track:f049fed46a04f9529b79cf15cad21e052d7bcbba7ac7e4ace201f700884bd5de` |
| 2 | `lemma` | [_root_.IsPrimitiveRoot.toInteger_cube_eq_one](../../../../mathematics/NumberTheory/Three/Variantc79cf7838fcb272a31b87fe70a7fa6593be25242bc27a3c2ec2545591050dd15.lean/declarations/root-isprimitiveroot-tointeger-cube-eq-one--11fe7f2d4df19e457dd77538.md) | 41 | `result-track:11fe7f2d4df19e457dd7753832faf0e252dc008a4eb7788f2f23efaadbc294ef` |
| 3 | `theorem` | [Units.mem](../../../../mathematics/NumberTheory/Three/Variantc79cf7838fcb272a31b87fe70a7fa6593be25242bc27a3c2ec2545591050dd15.lean/declarations/units-mem--efaf7939c179c961bc71f8ff.md) | 47 | `result-track:efaf7939c179c961bc71f8ff8bcd5944ea5b48bde8b8c0afee7e4dae529a1f6a` |
| 4 | `lemma` | [lambda_sq](../../../../mathematics/NumberTheory/Three/Variantc79cf7838fcb272a31b87fe70a7fa6593be25242bc27a3c2ec2545591050dd15.lean/declarations/lambda-sq--869bcd7cb1b3b1cc8b5d2b5b.md) | 78 | `result-track:869bcd7cb1b3b1cc8b5d2b5bad9e7fff8fba292fdbab58ff2e0d42f4280a140f` |
| 5 | `lemma` | [eta_sq](../../../../mathematics/NumberTheory/Three/Variantc79cf7838fcb272a31b87fe70a7fa6593be25242bc27a3c2ec2545591050dd15.lean/declarations/eta-sq--c5954707231c0c8440d6c913.md) | 86 | `result-track:c5954707231c0c8440d6c913409ed8df763eb4f0ebd1fc940ca47a8225c8a912` |
| 6 | `theorem` | [eq_one_or_neg_one_of_unit_of_congruent](../../../../mathematics/NumberTheory/Three/Variantc79cf7838fcb272a31b87fe70a7fa6593be25242bc27a3c2ec2545591050dd15.lean/declarations/eq-one-or-neg-one-of-unit-of-congruent--b9c4d0d911162af9a0d5b633.md) | 93 | `result-track:b9c4d0d911162af9a0d5b6331b29e338e610a401448dc6516c427bc625fc525c` |
| 7 | `lemma` | [lambda_dvd_or_dvd_sub_one_or_dvd_add_one](../../../../mathematics/NumberTheory/Three/Variantc79cf7838fcb272a31b87fe70a7fa6593be25242bc27a3c2ec2545591050dd15.lean/declarations/lambda-dvd-or-dvd-sub-one-or-dvd-add-one--06e2a7d6ac258347fa117d8b.md) | 125 | `result-track:06e2a7d6ac258347fa117d8bf51c1a40ea444870a37769e9bd5c2b346b399adb` |
| 8 | `lemma` | [eta_sq_add_eta_add_one](../../../../mathematics/NumberTheory/Three/Variantc79cf7838fcb272a31b87fe70a7fa6593be25242bc27a3c2ec2545591050dd15.lean/declarations/eta-sq-add-eta-add-one--238230a2f0fef19dbf8a6b05.md) | 150 | `result-track:238230a2f0fef19dbf8a6b0557c3ae9aac75b10eb61fc14f178ad300f8246e75` |
| 9 | `lemma` | [cube_sub_one_eq_mul](../../../../mathematics/NumberTheory/Three/Variantc79cf7838fcb272a31b87fe70a7fa6593be25242bc27a3c2ec2545591050dd15.lean/declarations/cube-sub-one-eq-mul--e6f1e8d66d5a050098caf347.md) | 155 | `result-track:e6f1e8d66d5a050098caf3475b646dac0fac3c01afa9fbe3216c80dd6f41c691` |
| 10 | `lemma` | [lambda_dvd_mul_sub_one_mul_sub_eta_add_one](../../../../mathematics/NumberTheory/Three/Variantc79cf7838fcb272a31b87fe70a7fa6593be25242bc27a3c2ec2545591050dd15.lean/declarations/lambda-dvd-mul-sub-one-mul-sub-eta-add-one--9e31ffde71ab384c7e83eea4.md) | 165 | `result-track:9e31ffde71ab384c7e83eea430307a2abfaca10900edd8dbeac73ddbfe1f20a6` |
| 11 | `lemma` | [lambda_pow_four_dvd_cube_sub_one_of_dvd_sub_one](../../../../mathematics/NumberTheory/Three/Variantc79cf7838fcb272a31b87fe70a7fa6593be25242bc27a3c2ec2545591050dd15.lean/declarations/lambda-pow-four-dvd-cube-sub-one-of-dvd-sub-one--7c8b6d7d0ec88b149edf9ba2.md) | 174 | `result-track:7c8b6d7d0ec88b149edf9ba218b3124edba81113b55bd9dab4206faedad0a92f` |
| 12 | `lemma` | [lambda_pow_four_dvd_cube_add_one_of_dvd_add_one](../../../../mathematics/NumberTheory/Three/Variantc79cf7838fcb272a31b87fe70a7fa6593be25242bc27a3c2ec2545591050dd15.lean/declarations/lambda-pow-four-dvd-cube-add-one-of-dvd-add-one--d07d37ef96852e855dafd560.md) | 185 | `result-track:d07d37ef96852e855dafd56001661ae96b6aa24a767e8287d4c9547584d51f81` |
| 13 | `lemma` | [lambda_pow_four_dvd_cube_sub_one_or_add_one_of_lambda_not_dvd](../../../../mathematics/NumberTheory/Three/Variantc79cf7838fcb272a31b87fe70a7fa6593be25242bc27a3c2ec2545591050dd15.lean/declarations/lambda-pow-four-dvd-cube-sub-one-or-add-one-of-lambda-not-dvd--a29bf689098b0a3d16238cf8.md) | 194 | `result-track:a29bf689098b0a3d16238cf81a0bdf6171a6069afc9bdce66539ddec324e816d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
