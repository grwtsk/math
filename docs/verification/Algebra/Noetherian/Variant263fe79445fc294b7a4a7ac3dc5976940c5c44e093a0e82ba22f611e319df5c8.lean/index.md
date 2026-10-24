# Verification target: GRWTSK.Algebra.Noetherian.Variant263fe79445fc294b7a4a7ac3dc5976940c5c44e093a0e82ba22f611e319df5c8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "80879431c72180b7ffccf141b16bae03844ae2dd",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Noetherian/Variant263fe79445fc294b7a4a7ac3dc5976940c5c44e093a0e82ba22f611e319df5c8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Noetherian/Variant263fe79445fc294b7a4a7ac3dc5976940c5c44e093a0e82ba22f611e319df5c8.lean/index.md) · [Full source](../../../../mathematics/Algebra/Noetherian/Variant263fe79445fc294b7a4a7ac3dc5976940c5c44e093a0e82ba22f611e319df5c8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `80879431c72180b7ffccf141b16bae03844ae2dd`.

Source path: `GRWTSK/Algebra/Noetherian/Variant263fe79445fc294b7a4a7ac3dc5976940c5c44e093a0e82ba22f611e319df5c8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Noetherian/Variant263fe79445fc294b7a4a7ac3dc5976940c5c44e093a0e82ba22f611e319df5c8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.AdicCompletion.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Filtration` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [IsHausdorff.of_le_jacobson](../../../../mathematics/Algebra/Noetherian/Variant263fe79445fc294b7a4a7ac3dc5976940c5c44e093a0e82ba22f611e319df5c8.lean/declarations/ishausdorff-of-le-jacobson--063739a973bd0204eab3967e.md) | 18 | `result-track:063739a973bd0204eab3967e1204e69110101e500600bbaa8e704bf34b6a65d7` |
| 2 | `theorem` | [IsHausdorff.of_isLocalRing](../../../../mathematics/Algebra/Noetherian/Variant263fe79445fc294b7a4a7ac3dc5976940c5c44e093a0e82ba22f611e319df5c8.lean/declarations/ishausdorff-of-islocalring--696d0b8fc5e4e58e5e4ddb6e.md) | 21 | `result-track:696d0b8fc5e4e58e5e4ddb6e7008b209b94f9576774e487b831f174b66804c83` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Noetherian/Variant263fe79445fc294b7a4a7ac3dc5976940c5c44e093a0e82ba22f611e319df5c8.lean/declarations/instance--901b66c3fbffb4b0a905b83b.md) | 24 | `declaration-track:901b66c3fbffb4b0a905b83b9a07befd4422329195061388277f7665e94a030f` |
| 4 | `theorem` | [IsHausdorff.of_noZeroSMulDivisors](../../../../mathematics/Algebra/Noetherian/Variant263fe79445fc294b7a4a7ac3dc5976940c5c44e093a0e82ba22f611e319df5c8.lean/declarations/ishausdorff-of-nozerosmuldivisors--8a87f0987642dcea7085c7bc.md) | 27 | `result-track:8a87f0987642dcea7085c7bcaf192c4afd0d4bcbc4712c1d93bc31c15888380a` |
| 5 | `theorem` | [IsHausdorff.of_isDomain](../../../../mathematics/Algebra/Noetherian/Variant263fe79445fc294b7a4a7ac3dc5976940c5c44e093a0e82ba22f611e319df5c8.lean/declarations/ishausdorff-of-isdomain--5ebb777a86a4bc7cce8e92fe.md) | 30 | `result-track:5ebb777a86a4bc7cce8e92fe883373f057e2bed74084f6ed56a14bbba801a86a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
