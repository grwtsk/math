# Verification target: GRWTSK.Algebra.LinearAlgebra.EquationalCriterion.Variant8d8f48dd787cc111201f640d9399d9460ea06b419ba6797e4e378ddbc3c56dca

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "efb38c035334c99277479010d811070c82f32d41",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/EquationalCriterion/Variant8d8f48dd787cc111201f640d9399d9460ea06b419ba6797e4e378ddbc3c56dca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/EquationalCriterion/Variant8d8f48dd787cc111201f640d9399d9460ea06b419ba6797e4e378ddbc3c56dca.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/EquationalCriterion/Variant8d8f48dd787cc111201f640d9399d9460ea06b419ba6797e4e378ddbc3c56dca.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `efb38c035334c99277479010d811070c82f32d41`.

Source path: `GRWTSK/Algebra/LinearAlgebra/EquationalCriterion/Variant8d8f48dd787cc111201f640d9399d9460ea06b419ba6797e4e378ddbc3c56dca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/EquationalCriterion/Variant8d8f48dd787cc111201f640d9399d9460ea06b419ba6797e4e378ddbc3c56dca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [IsTrivialRelation](../../../../../mathematics/Algebra/LinearAlgebra/EquationalCriterion/Variant8d8f48dd787cc111201f640d9399d9460ea06b419ba6797e4e378ddbc3c56dca.lean/declarations/istrivialrelation--b6ee8fa7615eda0a15c1e611.md) | 75 | `declaration-track:b6ee8fa7615eda0a15c1e61137d6ded4c746ad051c2b4c6e2f094144ea46f587` |
| 2 | `theorem` | [isTrivialRelation_iff_vanishesTrivially](../../../../../mathematics/Algebra/LinearAlgebra/EquationalCriterion/Variant8d8f48dd787cc111201f640d9399d9460ea06b419ba6797e4e378ddbc3c56dca.lean/declarations/istrivialrelation-iff-vanishestrivially--aed2513d2aeb6e22f5a22257.md) | 83 | `result-track:aed2513d2aeb6e22f5a222571497be787cc6933e897e3e3a12fc6ce60117acc5` |
| 3 | `theorem` | [_root_.Equiv.isTrivialRelation_comp](../../../../../mathematics/Algebra/LinearAlgebra/EquationalCriterion/Variant8d8f48dd787cc111201f640d9399d9460ea06b419ba6797e4e378ddbc3c56dca.lean/declarations/root-equiv-istrivialrelation-comp--7dbfade09f75941163f9c5c9.md) | 87 | `result-track:7dbfade09f75941163f9c5c92539e8a407980caa8ac110957a1981555ebd67d1` |
| 4 | `theorem` | [sum_smul_eq_zero_of_isTrivialRelation](../../../../../mathematics/Algebra/LinearAlgebra/EquationalCriterion/Variant8d8f48dd787cc111201f640d9399d9460ea06b419ba6797e4e378ddbc3c56dca.lean/declarations/sum-smul-eq-zero-of-istrivialrelation--d1cd42c0b283ace52f5731ce.md) | 93 | `result-track:d1cd42c0b283ace52f5731ce29eb16252c2786439cf05a85a0d3d8c1487918d1` |
| 5 | `theorem` | [tfae_equational_criterion](../../../../../mathematics/Algebra/LinearAlgebra/EquationalCriterion/Variant8d8f48dd787cc111201f640d9399d9460ea06b419ba6797e4e378ddbc3c56dca.lean/declarations/tfae-equational-criterion--5917654bfd184f51b3e678b0.md) | 117 | `result-track:5917654bfd184f51b3e678b0ecfa4f5a5ad83a45121a351c61edbcbb97ab2846` |
| 6 | `theorem` | [iff_forall_isTrivialRelation](../../../../../mathematics/Algebra/LinearAlgebra/EquationalCriterion/Variant8d8f48dd787cc111201f640d9399d9460ea06b419ba6797e4e378ddbc3c56dca.lean/declarations/iff-forall-istrivialrelation--425b9bfd0679e7d1a88b1bcc.md) | 169 | `result-track:425b9bfd0679e7d1a88b1bcc4dfeb43c63fec412b4e1ccf24c76b4f720542569` |
| 7 | `theorem` | [isTrivialRelation_of_sum_smul_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/EquationalCriterion/Variant8d8f48dd787cc111201f640d9399d9460ea06b419ba6797e4e378ddbc3c56dca.lean/declarations/istrivialrelation-of-sum-smul-eq-zero--197cca3c1cf869cb0a4202fe.md) | 177 | `result-track:197cca3c1cf869cb0a4202fe4e024df6ec66094e6572cd030e0adae34d3772f8` |
| 8 | `theorem` | [of_forall_isTrivialRelation](../../../../../mathematics/Algebra/LinearAlgebra/EquationalCriterion/Variant8d8f48dd787cc111201f640d9399d9460ea06b419ba6797e4e378ddbc3c56dca.lean/declarations/of-forall-istrivialrelation--78bae9d72d728cf545ebf96e.md) | 186 | `result-track:78bae9d72d728cf545ebf96ecbdd1d04851778b291d807ec4fad70bdf9ba3c6c` |
| 9 | `theorem` | [iff_forall_exists_factorization](../../../../../mathematics/Algebra/LinearAlgebra/EquationalCriterion/Variant8d8f48dd787cc111201f640d9399d9460ea06b419ba6797e4e378ddbc3c56dca.lean/declarations/iff-forall-exists-factorization--76100868c390718f525b0cbb.md) | 197 | `result-track:76100868c390718f525b0cbbadd0b5e55085a0b962564462b4f2eaf14097c092` |
| 10 | `theorem` | [of_forall_exists_factorization](../../../../../mathematics/Algebra/LinearAlgebra/EquationalCriterion/Variant8d8f48dd787cc111201f640d9399d9460ea06b419ba6797e4e378ddbc3c56dca.lean/declarations/of-forall-exists-factorization--3c46541e2f6f228f93aeab93.md) | 209 | `result-track:3c46541e2f6f228f93aeab9328d44383c4d8557efba8b540382398e7fbd25f2d` |
| 11 | `theorem` | [exists_factorization_of_apply_eq_zero_of_free](../../../../../mathematics/Algebra/LinearAlgebra/EquationalCriterion/Variant8d8f48dd787cc111201f640d9399d9460ea06b419ba6797e4e378ddbc3c56dca.lean/declarations/exists-factorization-of-apply-eq-zero-of-free--496a3e9f8f9ae06a86109425.md) | 221 | `result-track:496a3e9f8f9ae06a86109425b3c28e79a3107c8ad3fe32b4d63bb5e3477e1224` |
| 12 | `theorem` | [exists_factorization_of_comp_eq_zero_of_free_aux](../../../../../mathematics/Algebra/LinearAlgebra/EquationalCriterion/Variant8d8f48dd787cc111201f640d9399d9460ea06b419ba6797e4e378ddbc3c56dca.lean/declarations/exists-factorization-of-comp-eq-zero-of-free-aux--7df88148066ab3fe958e9bf5.md) | 229 | `result-track:7df88148066ab3fe958e9bf566c580375118e2cd47568e4901b0f1b61e3d5b51` |
| 13 | `theorem` | [exists_factorization_of_comp_eq_zero_of_free](../../../../../mathematics/Algebra/LinearAlgebra/EquationalCriterion/Variant8d8f48dd787cc111201f640d9399d9460ea06b419ba6797e4e378ddbc3c56dca.lean/declarations/exists-factorization-of-comp-eq-zero-of-free--46cfc7ec0e150b634bc67beb.md) | 256 | `result-track:46cfc7ec0e150b634bc67beb2d1db94909be6cab941d37d9fdd828aaa0ad50c0` |
| 14 | `theorem` | [exists_factorization_of_finitePresentation](../../../../../mathematics/Algebra/LinearAlgebra/EquationalCriterion/Variant8d8f48dd787cc111201f640d9399d9460ea06b419ba6797e4e378ddbc3c56dca.lean/declarations/exists-factorization-of-finitepresentation--49fd2ccf328b884be9cc11c6.md) | 270 | `result-track:49fd2ccf328b884be9cc11c6c45d04e0bb1e6a92b16bea014bf4ed47b4649aa0` |
| 15 | `theorem` | [projective_of_finitePresentation](../../../../../mathematics/Algebra/LinearAlgebra/EquationalCriterion/Variant8d8f48dd787cc111201f640d9399d9460ea06b419ba6797e4e378ddbc3c56dca.lean/declarations/projective-of-finitepresentation--e703d103455124ea32eb8c38.md) | 287 | `result-track:e703d103455124ea32eb8c3837584031b3d0855252f0492b1b0b35dcfc994993` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
