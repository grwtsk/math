# Verification target: GRWTSK.Algebra.LinearAlgebra.PID.Variantb7aaec32c0cf344d34ca97f507c0c69db0b281d717ce5755a06b335f113f8b96

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3d9b27d465dc7b95347a613a6569128035cb87d4",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/PID/Variantb7aaec32c0cf344d34ca97f507c0c69db0b281d717ce5755a06b335f113f8b96.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantb7aaec32c0cf344d34ca97f507c0c69db0b281d717ce5755a06b335f113f8b96.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantb7aaec32c0cf344d34ca97f507c0c69db0b281d717ce5755a06b335f113f8b96.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3d9b27d465dc7b95347a613a6569128035cb87d4`.

Source path: `GRWTSK/Algebra/LinearAlgebra/PID/Variantb7aaec32c0cf344d34ca97f507c0c69db0b281d717ce5755a06b335f113f8b96.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/PID/Variantb7aaec32c0cf344d34ca97f507c0c69db0b281d717ce5755a06b335f113f8b96.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.DedekindDomain` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.PID` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Projective` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Biproducts` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Submodule.isInternal_prime_power_torsion_of_pid](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantb7aaec32c0cf344d34ca97f507c0c69db0b281d717ce5755a06b335f113f8b96.lean/declarations/submodule-isinternal-prime-power-torsion-of-pid--69b378811ce968d72f2817b2.md) | 78 | `result-track:69b378811ce968d72f2817b2810a99e8d465f42064486821f84c44616fe54c76` |
| 2 | `theorem` | [Submodule.exists_isInternal_prime_power_torsion_of_pid](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantb7aaec32c0cf344d34ca97f507c0c69db0b281d717ce5755a06b335f113f8b96.lean/declarations/submodule-exists-isinternal-prime-power-torsion-of-pid--2f39c394b9f261026025f33a.md) | 92 | `result-track:2f39c394b9f261026025f33ad846d43f3ef0546356bc67d2a6269f89b8725a08` |
| 3 | `theorem` | [_root_.GRWTSK.Algebra.LinearAlgebra.SubmoduleIsInternalPrimePowerTorsionOfPid.Variantb052c833bbb249f046294eb93f1b643834227d812aa0d9a1ce050d82e264e928.Ideal.torsionOf_eq_span_pow_pOrder](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantb7aaec32c0cf344d34ca97f507c0c69db0b281d717ce5755a06b335f113f8b96.lean/declarations/root-grwtsk-algebra-linearalgebra-submoduleisinternalprimepowertorsionof--88e43cc91a06aaa106b68d9e.md) | 114 | `result-track:88e43cc91a06aaa106b68d9e1dc3c9fbc8139fe12532e9b35efb6d5505f79170` |
| 4 | `theorem` | [p_pow_smul_lift](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantb7aaec32c0cf344d34ca97f507c0c69db0b281d717ce5755a06b335f113f8b96.lean/declarations/p-pow-smul-lift--10316d77ef2c7f9247b7df08.md) | 130 | `result-track:10316d77ef2c7f9247b7df084bad6a8244f53f304def7c67330849bcbae4e959` |
| 5 | `theorem` | [exists_smul_eq_zero_and_mk_eq](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantb7aaec32c0cf344d34ca97f507c0c69db0b281d717ce5755a06b335f113f8b96.lean/declarations/exists-smul-eq-zero-and-mk-eq--c0a9a885012c223055b5c9bf.md) | 158 | `result-track:c0a9a885012c223055b5c9bf60645481f2094cd98afcbdbeeeaf80be71659a9d` |
| 6 | `theorem` | [torsion_by_prime_power_decomposition](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantb7aaec32c0cf344d34ca97f507c0c69db0b281d717ce5755a06b335f113f8b96.lean/declarations/torsion-by-prime-power-decomposition--fea845ae2a5b1ea1b901dee0.md) | 178 | `result-track:fea845ae2a5b1ea1b901dee0ee892ab3c658b9e25161d6c8040070d4fad7c784` |
| 7 | `theorem` | [equiv_directSum_of_isTorsion](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantb7aaec32c0cf344d34ca97f507c0c69db0b281d717ce5755a06b335f113f8b96.lean/declarations/equiv-directsum-of-istorsion--39ef158544a3c4ee1117e353.md) | 245 | `result-track:39ef158544a3c4ee1117e3531a74d77f7296d43fe854285f46c3bdfd30d05957` |
| 8 | `theorem` | [equiv_free_prod_directSum](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantb7aaec32c0cf344d34ca97f507c0c69db0b281d717ce5755a06b335f113f8b96.lean/declarations/equiv-free-prod-directsum--d75a62309c0b5e3d9bee6c4b.md) | 274 | `result-track:d75a62309c0b5e3d9bee6c4b2bd61973a59b184bb1282f47fb9e72c8f4d88994` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
