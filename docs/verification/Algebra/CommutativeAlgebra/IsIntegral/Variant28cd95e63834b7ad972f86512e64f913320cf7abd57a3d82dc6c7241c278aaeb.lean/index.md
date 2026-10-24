# Verification target: GRWTSK.Algebra.CommutativeAlgebra.IsIntegral.Variant28cd95e63834b7ad972f86512e64f913320cf7abd57a3d82dc6c7241c278aaeb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bbc502bd3519daec2cbe79849ec282023b4ae4f3",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/IsIntegral/Variant28cd95e63834b7ad972f86512e64f913320cf7abd57a3d82dc6c7241c278aaeb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/IsIntegral/Variant28cd95e63834b7ad972f86512e64f913320cf7abd57a3d82dc6c7241c278aaeb.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/IsIntegral/Variant28cd95e63834b7ad972f86512e64f913320cf7abd57a3d82dc6c7241c278aaeb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bbc502bd3519daec2cbe79849ec282023b4ae4f3`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/IsIntegral/Variant28cd95e63834b7ad972f86512e64f913320cf7abd57a3d82dc6c7241c278aaeb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/IsIntegral/Variant28cd95e63834b7ad972f86512e64f913320cf7abd57a3d82dc6c7241c278aaeb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Choose.Dvd` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.IntegrallyClosed` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Norm` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Cyclotomic.Expand` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cyclotomic_comp_X_add_one_isEisensteinAt](../../../../../mathematics/Algebra/CommutativeAlgebra/IsIntegral/Variant28cd95e63834b7ad972f86512e64f913320cf7abd57a3d82dc6c7241c278aaeb.lean/declarations/cyclotomic-comp-x-add-one-iseisensteinat--86b0658c687b220bdef0f80a.md) | 44 | `result-track:86b0658c687b220bdef0f80a95ddb4382821ff07d55815e2be422c91aa0075e8` |
| 2 | `theorem` | [cyclotomic_prime_pow_comp_X_add_one_isEisensteinAt](../../../../../mathematics/Algebra/CommutativeAlgebra/IsIntegral/Variant28cd95e63834b7ad972f86512e64f913320cf7abd57a3d82dc6c7241c278aaeb.lean/declarations/cyclotomic-prime-pow-comp-x-add-one-iseisensteinat--006cb1a9aef91f5e3966358c.md) | 77 | `result-track:006cb1a9aef91f5e3966358c58ca1ec825d2045d6b2782fbe94e74f078b57861` |
| 3 | `theorem` | [dvd_coeff_zero_of_aeval_eq_prime_smul_of_minpoly_isEisensteinAt](../../../../../mathematics/Algebra/CommutativeAlgebra/IsIntegral/Variant28cd95e63834b7ad972f86512e64f913320cf7abd57a3d82dc6c7241c278aaeb.lean/declarations/dvd-coeff-zero-of-aeval-eq-prime-smul-of-minpoly-iseisensteinat--674a4156dddbb4f68b561c3a.md) | 139 | `result-track:674a4156dddbb4f68b561c3ab18ccd394b0243a6755861f1b891f9108306872e` |
| 4 | `theorem` | [mem_adjoin_of_dvd_coeff_of_dvd_aeval](../../../../../mathematics/Algebra/CommutativeAlgebra/IsIntegral/Variant28cd95e63834b7ad972f86512e64f913320cf7abd57a3d82dc6c7241c278aaeb.lean/declarations/mem-adjoin-of-dvd-coeff-of-dvd-aeval--bdc17e7c517ac07c39f23453.md) | 219 | `result-track:bdc17e7c517ac07c39f234530e9be6c0e674ea6942a5010d255558e4cac65a9f` |
| 5 | `theorem` | [mem_adjoin_of_smul_prime_smul_of_minpoly_isEisensteinAt](../../../../../mathematics/Algebra/CommutativeAlgebra/IsIntegral/Variant28cd95e63834b7ad972f86512e64f913320cf7abd57a3d82dc6c7241c278aaeb.lean/declarations/mem-adjoin-of-smul-prime-smul-of-minpoly-iseisensteinat--7873af9b503f07379a07f082.md) | 241 | `result-track:7873af9b503f07379a07f0822c2ad1952c735fde8e69ac3598e134834ed9245a` |
| 6 | `theorem` | [mem_adjoin_of_smul_prime_pow_smul_of_minpoly_isEisensteinAt](../../../../../mathematics/Algebra/CommutativeAlgebra/IsIntegral/Variant28cd95e63834b7ad972f86512e64f913320cf7abd57a3d82dc6c7241c278aaeb.lean/declarations/mem-adjoin-of-smul-prime-pow-smul-of-minpoly-iseisensteinat--ed7f7485ed002619dc69dfdd.md) | 384 | `result-track:ed7f7485ed002619dc69dfddaad40b99946bb1bf9ce4640afa8ec6e425e43580` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
