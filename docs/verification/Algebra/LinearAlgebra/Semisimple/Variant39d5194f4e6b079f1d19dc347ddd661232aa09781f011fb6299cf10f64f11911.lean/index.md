# Verification target: GRWTSK.Algebra.LinearAlgebra.Semisimple.Variant39d5194f4e6b079f1d19dc347ddd661232aa09781f011fb6299cf10f64f11911

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c750192c7811a4fb2f6beb84906214afdb067372",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Semisimple/Variant39d5194f4e6b079f1d19dc347ddd661232aa09781f011fb6299cf10f64f11911.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Semisimple/Variant39d5194f4e6b079f1d19dc347ddd661232aa09781f011fb6299cf10f64f11911.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Semisimple/Variant39d5194f4e6b079f1d19dc347ddd661232aa09781f011fb6299cf10f64f11911.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c750192c7811a4fb2f6beb84906214afdb067372`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Semisimple/Variant39d5194f4e6b079f1d19dc347ddd661232aa09781f011fb6299cf10f64f11911.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Semisimple/Variant39d5194f4e6b079f1d19dc347ddd661232aa09781f011fb6299cf10f64f11911.lean.json)

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
| 1 | `lemma` | [isNilpotent_e_aux](../../../../../mathematics/Algebra/LinearAlgebra/Semisimple/Variant39d5194f4e6b079f1d19dc347ddd661232aa09781f011fb6299cf10f64f11911.lean/declarations/isnilpotent-e-aux--2a62936a995a73dbcba5391f.md) | 59 | `result-track:2a62936a995a73dbcba5391fc09a5ef35421c85a964f9cd668253816848fd613` |
| 2 | `lemma` | [isNilpotent_e](../../../../../mathematics/Algebra/LinearAlgebra/Semisimple/Variant39d5194f4e6b079f1d19dc347ddd661232aa09781f011fb6299cf10f64f11911.lean/declarations/isnilpotent-e--e4f69f20e0e7c90e1a97f40e.md) | 106 | `result-track:e4f69f20e0e7c90e1a97f40e4ce8028638ac7df7f82585dadce763a7c6d53a33` |
| 3 | `lemma` | [isNilpotent_f](../../../../../mathematics/Algebra/LinearAlgebra/Semisimple/Variant39d5194f4e6b079f1d19dc347ddd661232aa09781f011fb6299cf10f64f11911.lean/declarations/isnilpotent-f--f8508525aade1e808e89ef3b.md) | 148 | `result-track:f8508525aade1e808e89ef3b36e7d3671db44d40188181930112eafc28f5cb18` |
| 4 | `lemma` | [trace_h_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Semisimple/Variant39d5194f4e6b079f1d19dc347ddd661232aa09781f011fb6299cf10f64f11911.lean/declarations/trace-h-eq-zero--1d24a5fe38e873cc7c22f801.md) | 159 | `result-track:1d24a5fe38e873cc7c22f801b67d8da6410aae55902be3e8309cd079e4f55b5c` |
| 5 | `lemma` | [trace_toEnd_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Semisimple/Variant39d5194f4e6b079f1d19dc347ddd661232aa09781f011fb6299cf10f64f11911.lean/declarations/trace-toend-eq-zero--b59eb3efb155d5d53c2c9e30.md) | 176 | `result-track:b59eb3efb155d5d53c2c9e3051264f5ae330f74212c10a98dbdeb58fde3c6a0f` |
| 6 | `lemma` | [instIsIrreducible_aux₀](../../../../../mathematics/Algebra/LinearAlgebra/Semisimple/Variant39d5194f4e6b079f1d19dc347ddd661232aa09781f011fb6299cf10f64f11911.lean/declarations/instisirreducible-aux--c288738e3f6386081a882ac5.md) | 198 | `result-track:c288738e3f6386081a882ac5cdbd0be9f20e58451dda0c5db504da2370713779` |
| 7 | `lemma` | [instIsIrreducible_aux₁](../../../../../mathematics/Algebra/LinearAlgebra/Semisimple/Variant39d5194f4e6b079f1d19dc347ddd661232aa09781f011fb6299cf10f64f11911.lean/declarations/instisirreducible-aux--24018e9ab8028e3ea4c6a5df.md) | 265 | `result-track:24018e9ab8028e3ea4c6a5df213f35a0250b21e15fff2d012067fc58aa8b1100` |
| 8 | `lemma` | [instIsIrreducible_aux₂](../../../../../mathematics/Algebra/LinearAlgebra/Semisimple/Variant39d5194f4e6b079f1d19dc347ddd661232aa09781f011fb6299cf10f64f11911.lean/declarations/instisirreducible-aux--26c4d30164abbeb9834077e9.md) | 279 | `result-track:26c4d30164abbeb9834077e926bb6d737bb5528d2bc2a0136e0317850776aed7` |
| 9 | `lemma` | [coe_genWeightSpace_zero_eq_span_range_u](../../../../../mathematics/Algebra/LinearAlgebra/Semisimple/Variant39d5194f4e6b079f1d19dc347ddd661232aa09781f011fb6299cf10f64f11911.lean/declarations/coe-genweightspace-zero-eq-span-range-u--6f8bc9b7786fd58f9909b057.md) | 346 | `result-track:6f8bc9b7786fd58f9909b057958cf7ec47f76077d25c571815664f5293110774` |
| 10 | `instance` | [instIsIrreducible](../../../../../mathematics/Algebra/LinearAlgebra/Semisimple/Variant39d5194f4e6b079f1d19dc347ddd661232aa09781f011fb6299cf10f64f11911.lean/declarations/instisirreducible--7a55adab0b156ef98412a977.md) | 367 | `declaration-track:7a55adab0b156ef98412a977d2b8713cee445d622b793f2a667500685608cc4a` |
| 11 | `instance` | [instHasTrivialRadical](../../../../../mathematics/Algebra/LinearAlgebra/Semisimple/Variant39d5194f4e6b079f1d19dc347ddd661232aa09781f011fb6299cf10f64f11911.lean/declarations/insthastrivialradical--02636d1e34f44de8e46c893c.md) | 400 | `declaration-track:02636d1e34f44de8e46c893c600be677b6cd260ae8607fc3d6a27deb0ef3fb25` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
