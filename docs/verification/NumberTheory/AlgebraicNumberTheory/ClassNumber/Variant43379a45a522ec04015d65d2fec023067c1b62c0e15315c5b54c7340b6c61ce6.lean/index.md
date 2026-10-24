# Verification target: GRWTSK.NumberTheory.AlgebraicNumberTheory.ClassNumber.Variant43379a45a522ec04015d65d2fec023067c1b62c0e15315c5b54c7340b6c61ce6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7126a0bb75215cbb9044f7c7aefcca794e543f81",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/ClassNumber/Variant43379a45a522ec04015d65d2fec023067c1b62c0e15315c5b54c7340b6c61ce6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ClassNumber/Variant43379a45a522ec04015d65d2fec023067c1b62c0e15315c5b54c7340b6c61ce6.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ClassNumber/Variant43379a45a522ec04015d65d2fec023067c1b62c0e15315c5b54c7340b6c61ce6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7126a0bb75215cbb9044f7c7aefcca794e543f81`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/ClassNumber/Variant43379a45a522ec04015d65d2fec023067c1b62c0e15315c5b54c7340b6c61ce6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/ClassNumber/Variant43379a45a522ec04015d65d2fec023067c1b62c0e15315c5b54c7340b6c61ce6.lean.json)

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
| 1 | `instance` | [instFintypeClassGroup](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ClassNumber/Variant43379a45a522ec04015d65d2fec023067c1b62c0e15315c5b54c7340b6c61ce6.lean/declarations/instfintypeclassgroup--e274a4040757b4a9b2352307.md) | 58 | `declaration-track:e274a4040757b4a9b23523078400ebedb5313f944d6d6668ba5fb7eff42d5f9d` |
| 2 | `def` | [classNumber](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ClassNumber/Variant43379a45a522ec04015d65d2fec023067c1b62c0e15315c5b54c7340b6c61ce6.lean/declarations/classnumber--3e5e0af71863fc3f8bb08de0.md) | 64 | `declaration-track:3e5e0af71863fc3f8bb08de04fcce4f4b3c45714689bdc4c73e1ca2bccefa81a` |
| 3 | `theorem` | [classNumber_ne_zero](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ClassNumber/Variant43379a45a522ec04015d65d2fec023067c1b62c0e15315c5b54c7340b6c61ce6.lean/declarations/classnumber-ne-zero--ec32c59d44969c7a7976ac8f.md) | 67 | `result-track:ec32c59d44969c7a7976ac8f49e7577eb1d028f87895197f81e51f52c089c9a5` |
| 4 | `theorem` | [classNumber_pos](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ClassNumber/Variant43379a45a522ec04015d65d2fec023067c1b62c0e15315c5b54c7340b6c61ce6.lean/declarations/classnumber-pos--790d683b1936d44ac830372c.md) | 69 | `result-track:790d683b1936d44ac830372c4f71ec358f4404f4329a9ad0a9a0066c2655fdb4` |
| 5 | `theorem` | [classNumber_eq_one_iff](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ClassNumber/Variant43379a45a522ec04015d65d2fec023067c1b62c0e15315c5b54c7340b6c61ce6.lean/declarations/classnumber-eq-one-iff--e889836ce53a8508f45009c4.md) | 74 | `result-track:e889836ce53a8508f45009c4c0d4b31bc9bf5e1294f56bee28b18fcf5902889f` |
| 6 | `theorem` | [exists_ideal_in_class_of_norm_le](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ClassNumber/Variant43379a45a522ec04015d65d2fec023067c1b62c0e15315c5b54c7340b6c61ce6.lean/declarations/exists-ideal-in-class-of-norm-le--ad2c07211e337eba97fbba2c.md) | 77 | `result-track:ad2c07211e337eba97fbba2c575756dd020500ab4b2f47ac366dc075cfca1a42` |
| 7 | `theorem` | [isPrincipalIdealRing_of_isPrincipal_of_norm_le](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ClassNumber/Variant43379a45a522ec04015d65d2fec023067c1b62c0e15315c5b54c7340b6c61ce6.lean/declarations/isprincipalidealring-of-isprincipal-of-norm-le--8229e6ca3e671f6999ad463b.md) | 108 | `result-track:8229e6ca3e671f6999ad463b6cbaabd34157160fbf6b23f4a277f3851e3d0ac4` |
| 8 | `theorem` | [isPrincipalIdealRing_of_isPrincipal_of_norm_le_of_isPrime](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ClassNumber/Variant43379a45a522ec04015d65d2fec023067c1b62c0e15315c5b54c7340b6c61ce6.lean/declarations/isprincipalidealring-of-isprincipal-of-norm-le-of-isprime--6d77117697868b7eb23fb9d2.md) | 116 | `result-track:6d77117697868b7eb23fb9d2560d18f21a8984316a2fe19ae6fab14c18d02186` |
| 9 | `theorem` | [isPrincipalIdealRing_of_isPrincipal_of_pow_le_of_mem_primesOver_of_mem_Icc](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ClassNumber/Variant43379a45a522ec04015d65d2fec023067c1b62c0e15315c5b54c7340b6c61ce6.lean/declarations/isprincipalidealring-of-isprincipal-of-pow-le-of-mem-primesover-of-mem-i--7ce7075786ba0105419c724c.md) | 144 | `result-track:7ce7075786ba0105419c724ca4b9f6202cbdca56f8f4350fe4b787aba18ce146` |
| 10 | `theorem` | [isPrincipalIdealRing_of_isPrincipal_of_lt_or_isPrincipal_of_mem_primesOver_of_mem_Icc](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ClassNumber/Variant43379a45a522ec04015d65d2fec023067c1b62c0e15315c5b54c7340b6c61ce6.lean/declarations/isprincipalidealring-of-isprincipal-of-lt-or-isprincipal-of-mem-primesov--91c4f68abe0f747454a61623.md) | 183 | `result-track:91c4f68abe0f747454a6162307f7e90fba6abf9ab337ffcd3460ac6a3382be0f` |
| 11 | `theorem` | [isPrincipalIdealRing_of_abs_discr_lt](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ClassNumber/Variant43379a45a522ec04015d65d2fec023067c1b62c0e15315c5b54c7340b6c61ce6.lean/declarations/isprincipalidealring-of-abs-discr-lt--64c65f8afc8092fa01265b09.md) | 200 | `result-track:64c65f8afc8092fa01265b095ba0fd340673898c6a84632c4219e40996e85ca6` |
| 12 | `theorem` | [classNumber_eq](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ClassNumber/Variant43379a45a522ec04015d65d2fec023067c1b62c0e15315c5b54c7340b6c61ce6.lean/declarations/classnumber-eq--4ebf6612f05fbfd8a7020061.md) | 218 | `result-track:4ebf6612f05fbfd8a70200612f1bb2d2742f254be686b1ee98d69326e8df4d7f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
