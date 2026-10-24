# Verification target: GRWTSK.Algebra.LinearAlgebra.PID.Variant39ad844fc425eeba5713ebe57d1f9b07b88b00862c955a51e7bdbfeea493ca54

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8f94121215755d154f05d25670befb11796985b0",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/PID/Variant39ad844fc425eeba5713ebe57d1f9b07b88b00862c955a51e7bdbfeea493ca54.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variant39ad844fc425eeba5713ebe57d1f9b07b88b00862c955a51e7bdbfeea493ca54.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variant39ad844fc425eeba5713ebe57d1f9b07b88b00862c955a51e7bdbfeea493ca54.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8f94121215755d154f05d25670befb11796985b0`.

Source path: `GRWTSK/Algebra/LinearAlgebra/PID/Variant39ad844fc425eeba5713ebe57d1f9b07b88b00862c955a51e7bdbfeea493ca54.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/PID/Variant39ad844fc425eeba5713ebe57d1f9b07b88b00862c955a51e7bdbfeea493ca54.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.DedekindDomain` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.PID` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Projective` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Biproducts` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.SimpleModule.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Submodule.isSemisimple_torsionBy_of_irreducible](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variant39ad844fc425eeba5713ebe57d1f9b07b88b00862c955a51e7bdbfeea493ca54.lean/declarations/submodule-issemisimple-torsionby-of-irreducible--02818f903889e1323a8b6ec8.md) | 63 | `result-track:02818f903889e1323a8b6ec807d3c7dba0c4d23e448d64de1ee4db5158a4c90c` |
| 2 | `theorem` | [Submodule.isInternal_prime_power_torsion_of_pid](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variant39ad844fc425eeba5713ebe57d1f9b07b88b00862c955a51e7bdbfeea493ca54.lean/declarations/submodule-isinternal-prime-power-torsion-of-pid--68e4f9459534f3cbed936739.md) | 73 | `result-track:68e4f9459534f3cbed936739125cad8bb3432aea9c6b4223b4229e805b9be2a6` |
| 3 | `theorem` | [Submodule.exists_isInternal_prime_power_torsion_of_pid](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variant39ad844fc425eeba5713ebe57d1f9b07b88b00862c955a51e7bdbfeea493ca54.lean/declarations/submodule-exists-isinternal-prime-power-torsion-of-pid--0bc6f34efa680aac35bc9bed.md) | 86 | `result-track:0bc6f34efa680aac35bc9bed023766a4af6ac7bcd0efb57c6bd2e558e7d87d82` |
| 4 | `theorem` | [_root_.Ideal.torsionOf_eq_span_pow_pOrder](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variant39ad844fc425eeba5713ebe57d1f9b07b88b00862c955a51e7bdbfeea493ca54.lean/declarations/root-ideal-torsionof-eq-span-pow-porder--9dcae1eda5ba3e9c59ca83e3.md) | 109 | `result-track:9dcae1eda5ba3e9c59ca83e3ff301d61caec8cf44d52caaf09e2e8f236783967` |
| 5 | `theorem` | [p_pow_smul_lift](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variant39ad844fc425eeba5713ebe57d1f9b07b88b00862c955a51e7bdbfeea493ca54.lean/declarations/p-pow-smul-lift--b169177215ed259de9122213.md) | 123 | `result-track:b169177215ed259de912221359a6f23294b950b3243ab39114a0aa23000de4fb` |
| 6 | `theorem` | [exists_smul_eq_zero_and_mk_eq](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variant39ad844fc425eeba5713ebe57d1f9b07b88b00862c955a51e7bdbfeea493ca54.lean/declarations/exists-smul-eq-zero-and-mk-eq--f1fd371769762c6c84370450.md) | 149 | `result-track:f1fd371769762c6c843704506cdf678511aa70c38f322afa3bbce188a52bd929` |
| 7 | `theorem` | [torsion_by_prime_power_decomposition](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variant39ad844fc425eeba5713ebe57d1f9b07b88b00862c955a51e7bdbfeea493ca54.lean/declarations/torsion-by-prime-power-decomposition--61aacd63df77fc06a1d936a7.md) | 168 | `result-track:61aacd63df77fc06a1d936a7ffb17bba70e2db1bcae77d7b42141a458f92fa74` |
| 8 | `theorem` | [equiv_directSum_of_isTorsion](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variant39ad844fc425eeba5713ebe57d1f9b07b88b00862c955a51e7bdbfeea493ca54.lean/declarations/equiv-directsum-of-istorsion--df870bfca852f72bf2c0fb52.md) | 228 | `result-track:df870bfca852f72bf2c0fb5277223b63ca91e14e916239f4e67c53fdbe68d1ec` |
| 9 | `theorem` | [equiv_free_prod_directSum](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variant39ad844fc425eeba5713ebe57d1f9b07b88b00862c955a51e7bdbfeea493ca54.lean/declarations/equiv-free-prod-directsum--4b45511c6888f20a220248f4.md) | 255 | `result-track:4b45511c6888f20a220248f4533e619f4ef3bb32c80570ae2d8b02932b59313a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
