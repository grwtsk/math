# Verification target: GRWTSK.Algebra.UniversalAlgebra.DualNumber.Variantd0a2908a7f56212349e5b5f61934a6901c2ed5c669628672d8cbf4eb85321734

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2e378003953c6e580eca92e69275d5f7ea4f3e52",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/DualNumber/Variantd0a2908a7f56212349e5b5f61934a6901c2ed5c669628672d8cbf4eb85321734.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/DualNumber/Variantd0a2908a7f56212349e5b5f61934a6901c2ed5c669628672d8cbf4eb85321734.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/DualNumber/Variantd0a2908a7f56212349e5b5f61934a6901c2ed5c669628672d8cbf4eb85321734.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2e378003953c6e580eca92e69275d5f7ea4f3e52`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/DualNumber/Variantd0a2908a7f56212349e5b5f61934a6901c2ed5c669628672d8cbf4eb85321734.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/DualNumber/Variantd0a2908a7f56212349e5b5f61934a6901c2ed5c669628672d8cbf4eb85321734.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.TrivSqZeroExt` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [DualNumber](../../../../../mathematics/Algebra/UniversalAlgebra/DualNumber/Variantd0a2908a7f56212349e5b5f61934a6901c2ed5c669628672d8cbf4eb85321734.lean/declarations/dualnumber--423c17a4222d6cff74de3409.md) | 43 | `declaration-track:423c17a4222d6cff74de340928f1462afb7f4ba896165651303db7cdd065327a` |
| 2 | `def` | [DualNumber.eps](../../../../../mathematics/Algebra/UniversalAlgebra/DualNumber/Variantd0a2908a7f56212349e5b5f61934a6901c2ed5c669628672d8cbf4eb85321734.lean/declarations/dualnumber-eps--fde5d17ce8569fc883366319.md) | 48 | `declaration-track:fde5d17ce8569fc883366319c4e176338a215bf145f846978ae931e364a6331d` |
| 3 | `theorem` | [fst_eps](../../../../../mathematics/Algebra/UniversalAlgebra/DualNumber/Variantd0a2908a7f56212349e5b5f61934a6901c2ed5c669628672d8cbf4eb85321734.lean/declarations/fst-eps--06eea3dea218523f4ff72fe7.md) | 65 | `result-track:06eea3dea218523f4ff72fe757ffec1837052f370eb39f4e3a71dcc43473ab98` |
| 4 | `theorem` | [snd_eps](../../../../../mathematics/Algebra/UniversalAlgebra/DualNumber/Variantd0a2908a7f56212349e5b5f61934a6901c2ed5c669628672d8cbf4eb85321734.lean/declarations/snd-eps--d972265c06448318f8844a3e.md) | 70 | `result-track:d972265c06448318f8844a3e282ac50b1d9faf7bccd8ffe4c2d4b56423607895` |
| 5 | `theorem` | [snd_mul](../../../../../mathematics/Algebra/UniversalAlgebra/DualNumber/Variantd0a2908a7f56212349e5b5f61934a6901c2ed5c669628672d8cbf4eb85321734.lean/declarations/snd-mul--746af4ecad060878644da55d.md) | 76 | `result-track:746af4ecad060878644da55d3717446f4a7c92d7902be49edfe6318c4274347c` |
| 6 | `theorem` | [eps_mul_eps](../../../../../mathematics/Algebra/UniversalAlgebra/DualNumber/Variantd0a2908a7f56212349e5b5f61934a6901c2ed5c669628672d8cbf4eb85321734.lean/declarations/eps-mul-eps--07d75b4ca52fbe74616cce8a.md) | 81 | `result-track:07d75b4ca52fbe74616cce8a92db49e617e4aba7a11d0f67cb5571931bf569c7` |
| 7 | `theorem` | [inr_eq_smul_eps](../../../../../mathematics/Algebra/UniversalAlgebra/DualNumber/Variantd0a2908a7f56212349e5b5f61934a6901c2ed5c669628672d8cbf4eb85321734.lean/declarations/inr-eq-smul-eps--fd12e50e805311b313431cf2.md) | 86 | `result-track:fd12e50e805311b313431cf2739b46e201ee375f9f283d014bc9195a8af5fb88` |
| 8 | `theorem` | [algHom_ext](../../../../../mathematics/Algebra/UniversalAlgebra/DualNumber/Variantd0a2908a7f56212349e5b5f61934a6901c2ed5c669628672d8cbf4eb85321734.lean/declarations/alghom-ext--0e258e9075793ef04412eff6.md) | 92 | `result-track:0e258e9075793ef04412eff684dde0a1de09d3c52af774e0f98702785729b357` |
| 9 | `def` | [lift](../../../../../mathematics/Algebra/UniversalAlgebra/DualNumber/Variantd0a2908a7f56212349e5b5f61934a6901c2ed5c669628672d8cbf4eb85321734.lean/declarations/lift--8ca5c2bd83529a23bf185300.md) | 104 | `declaration-track:8ca5c2bd83529a23bf1853006d750d9fc2e9538a4da28365c24466b08af29ecc` |
| 10 | `theorem` | [lift_apply_eps](../../../../../mathematics/Algebra/UniversalAlgebra/DualNumber/Variantd0a2908a7f56212349e5b5f61934a6901c2ed5c669628672d8cbf4eb85321734.lean/declarations/lift-apply-eps--043b7e2aec3fe4e42ad70aa5.md) | 116 | `result-track:043b7e2aec3fe4e42ad70aa5a55b70432450f75a18fe2c5939ce7fee992c6cba` |
| 11 | `theorem` | [lift_eps](../../../../../mathematics/Algebra/UniversalAlgebra/DualNumber/Variantd0a2908a7f56212349e5b5f61934a6901c2ed5c669628672d8cbf4eb85321734.lean/declarations/lift-eps--75a1636b19ec755d32a3830f.md) | 122 | `result-track:75a1636b19ec755d32a3830f5a30fe5b93b1188b21bf20178ae540707fe306cc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
