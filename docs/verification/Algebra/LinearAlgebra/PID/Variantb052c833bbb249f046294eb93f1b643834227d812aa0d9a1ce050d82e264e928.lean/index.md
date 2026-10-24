# Verification target: GRWTSK.Algebra.LinearAlgebra.PID.Variantb052c833bbb249f046294eb93f1b643834227d812aa0d9a1ce050d82e264e928

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b405853b85741553a97e968725fa0ebfd692b063",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/PID/Variantb052c833bbb249f046294eb93f1b643834227d812aa0d9a1ce050d82e264e928.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantb052c833bbb249f046294eb93f1b643834227d812aa0d9a1ce050d82e264e928.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantb052c833bbb249f046294eb93f1b643834227d812aa0d9a1ce050d82e264e928.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b405853b85741553a97e968725fa0ebfd692b063`.

Source path: `GRWTSK/Algebra/LinearAlgebra/PID/Variantb052c833bbb249f046294eb93f1b643834227d812aa0d9a1ce050d82e264e928.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/PID/Variantb052c833bbb249f046294eb93f1b643834227d812aa0d9a1ce050d82e264e928.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.DedekindDomain` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.PID` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Projective` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Biproducts` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Submodule.isInternal_prime_power_torsion_of_pid](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantb052c833bbb249f046294eb93f1b643834227d812aa0d9a1ce050d82e264e928.lean/declarations/submodule-isinternal-prime-power-torsion-of-pid--15cfe23aa1ba2d384be1a844.md) | 70 | `result-track:15cfe23aa1ba2d384be1a844a1b25bec554f48dcf04abb31a70b7bcc63156c54` |
| 2 | `theorem` | [Submodule.exists_isInternal_prime_power_torsion_of_pid](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantb052c833bbb249f046294eb93f1b643834227d812aa0d9a1ce050d82e264e928.lean/declarations/submodule-exists-isinternal-prime-power-torsion-of-pid--d044ac1787fd309fbfefaf7a.md) | 84 | `result-track:d044ac1787fd309fbfefaf7a05683fa7b40f0d017bfba2d29860bc5c9808b189` |
| 3 | `theorem` | [_root_.Ideal.torsionOf_eq_span_pow_pOrder](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantb052c833bbb249f046294eb93f1b643834227d812aa0d9a1ce050d82e264e928.lean/declarations/root-ideal-torsionof-eq-span-pow-porder--30c8c959242322e353d38dfd.md) | 106 | `result-track:30c8c959242322e353d38dfd0ecee2af09cf4b1be7b8473a1e2e2e54e421be00` |
| 4 | `theorem` | [p_pow_smul_lift](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantb052c833bbb249f046294eb93f1b643834227d812aa0d9a1ce050d82e264e928.lean/declarations/p-pow-smul-lift--011b6ed437c12a16646437e1.md) | 122 | `result-track:011b6ed437c12a16646437e1815b458a28f0a7731d468b783ccac6815160d168` |
| 5 | `theorem` | [exists_smul_eq_zero_and_mk_eq](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantb052c833bbb249f046294eb93f1b643834227d812aa0d9a1ce050d82e264e928.lean/declarations/exists-smul-eq-zero-and-mk-eq--9eae543b6f8b8b4f3965e131.md) | 150 | `result-track:9eae543b6f8b8b4f3965e1311f16c765ee7e2f92549115321c792ec09130a559` |
| 6 | `theorem` | [torsion_by_prime_power_decomposition](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantb052c833bbb249f046294eb93f1b643834227d812aa0d9a1ce050d82e264e928.lean/declarations/torsion-by-prime-power-decomposition--23f016ca6f997747f6d93530.md) | 170 | `result-track:23f016ca6f997747f6d935305c012c78ca7ae8d27bf965d60016daa367fbdd24` |
| 7 | `theorem` | [equiv_directSum_of_isTorsion](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantb052c833bbb249f046294eb93f1b643834227d812aa0d9a1ce050d82e264e928.lean/declarations/equiv-directsum-of-istorsion--bd923500512215da0685fe8a.md) | 237 | `result-track:bd923500512215da0685fe8a1266cd8eedb343beafadaed3d84ef32c8e18f5d9` |
| 8 | `theorem` | [equiv_free_prod_directSum](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantb052c833bbb249f046294eb93f1b643834227d812aa0d9a1ce050d82e264e928.lean/declarations/equiv-free-prod-directsum--b8533bea882ac43ee6e56392.md) | 266 | `result-track:b8533bea882ac43ee6e563925fe974d3a8ae7f9a8c4e16a3de7563d95e805803` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
