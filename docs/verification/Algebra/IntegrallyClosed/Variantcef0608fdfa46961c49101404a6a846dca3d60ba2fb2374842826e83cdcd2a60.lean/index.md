# Verification target: GRWTSK.Algebra.IntegrallyClosed.Variantcef0608fdfa46961c49101404a6a846dca3d60ba2fb2374842826e83cdcd2a60

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c7955b3e62909568fd97f5f2a6e023bc87ccc6f8",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/IntegrallyClosed/Variantcef0608fdfa46961c49101404a6a846dca3d60ba2fb2374842826e83cdcd2a60.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/IntegrallyClosed/Variantcef0608fdfa46961c49101404a6a846dca3d60ba2fb2374842826e83cdcd2a60.lean/index.md) · [Full source](../../../../mathematics/Algebra/IntegrallyClosed/Variantcef0608fdfa46961c49101404a6a846dca3d60ba2fb2374842826e83cdcd2a60.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c7955b3e62909568fd97f5f2a6e023bc87ccc6f8`.

Source path: `GRWTSK/Algebra/IntegrallyClosed/Variantcef0608fdfa46961c49101404a6a846dca3d60ba2fb2374842826e83cdcd2a60.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/IntegrallyClosed/Variantcef0608fdfa46961c49101404a6a846dca3d60ba2fb2374842826e83cdcd2a60.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.IntegralClosure` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Integral` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsIntegrallyClosed](../../../../mathematics/Algebra/IntegrallyClosed/Variantcef0608fdfa46961c49101404a6a846dca3d60ba2fb2374842826e83cdcd2a60.lean/declarations/isintegrallyclosed--19a871826b23ece28b395a77.md) | 37 | `declaration-track:19a871826b23ece28b395a77ab69e9405ddf536fafc033410d94aafa72e466e3` |
| 2 | `theorem` | [isIntegrallyClosed_iff](../../../../mathematics/Algebra/IntegrallyClosed/Variantcef0608fdfa46961c49101404a6a846dca3d60ba2fb2374842826e83cdcd2a60.lean/declarations/isintegrallyclosed-iff--7be7a6ceec0ae2766fdbbe6f.md) | 51 | `result-track:7be7a6ceec0ae2766fdbbe6f24f551c493db439f991e3b3c76a11364e80883f7` |
| 3 | `theorem` | [isIntegrallyClosed_iff_isIntegralClosure](../../../../mathematics/Algebra/IntegrallyClosed/Variantcef0608fdfa46961c49101404a6a846dca3d60ba2fb2374842826e83cdcd2a60.lean/declarations/isintegrallyclosed-iff-isintegralclosure--cb50b89403551306d9b66e89.md) | 66 | `result-track:cb50b89403551306d9b66e8999b5f41242ca49bf1f03e8e22aa14f32e24a2267` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/IntegrallyClosed/Variantcef0608fdfa46961c49101404a6a846dca3d60ba2fb2374842826e83cdcd2a60.lean/declarations/instance--e2a86510bc407821ba6bf182.md) | 86 | `declaration-track:e2a86510bc407821ba6bf18221732645a80e7823961e20aeadcb297a5c967325` |
| 5 | `theorem` | [isIntegral_iff](../../../../mathematics/Algebra/IntegrallyClosed/Variantcef0608fdfa46961c49101404a6a846dca3d60ba2fb2374842826e83cdcd2a60.lean/declarations/isintegral-iff--08b821b42e1e9c4349b41e98.md) | 89 | `result-track:08b821b42e1e9c4349b41e9853db1bd56699cd1145b1d159c97b36d040b6efdf` |
| 6 | `theorem` | [exists_algebraMap_eq_of_isIntegral_pow](../../../../mathematics/Algebra/IntegrallyClosed/Variantcef0608fdfa46961c49101404a6a846dca3d60ba2fb2374842826e83cdcd2a60.lean/declarations/exists-algebramap-eq-of-isintegral-pow--8fe6f51dce3fc8f7f374a27e.md) | 93 | `result-track:8fe6f51dce3fc8f7f374a27ed0e6a305fd2c2071748b7ec380224c67ca72189b` |
| 7 | `theorem` | [exists_algebraMap_eq_of_pow_mem_subalgebra](../../../../mathematics/Algebra/IntegrallyClosed/Variantcef0608fdfa46961c49101404a6a846dca3d60ba2fb2374842826e83cdcd2a60.lean/declarations/exists-algebramap-eq-of-pow-mem-subalgebra--b3cee465fe62e5fdbb8d67af.md) | 98 | `result-track:b3cee465fe62e5fdbb8d67afd9ea2f20b5a2429a44aa92b524910b9770dc3f11` |
| 8 | `theorem` | [integralClosure_eq_bot_iff](../../../../mathematics/Algebra/IntegrallyClosed/Variantcef0608fdfa46961c49101404a6a846dca3d60ba2fb2374842826e83cdcd2a60.lean/declarations/integralclosure-eq-bot-iff--89ac60c900a6f397db761374.md) | 106 | `result-track:89ac60c900a6f397db761374d27158baec987d6e5d5f87dc19f9a5eba4ffe531` |
| 9 | `theorem` | [integralClosure_eq_bot](../../../../mathematics/Algebra/IntegrallyClosed/Variantcef0608fdfa46961c49101404a6a846dca3d60ba2fb2374842826e83cdcd2a60.lean/declarations/integralclosure-eq-bot--c0c36aead7bdf1733c301830.md) | 120 | `result-track:c0c36aead7bdf1733c301830b792e7e5d728b9ad7c27048b4462f2f525ac0e46` |
| 10 | `theorem` | [isIntegrallyClosedOfFiniteExtension](../../../../mathematics/Algebra/IntegrallyClosed/Variantcef0608fdfa46961c49101404a6a846dca3d60ba2fb2374842826e83cdcd2a60.lean/declarations/isintegrallyclosedoffiniteextension--715653e7dec81cd045d787e6.md) | 139 | `result-track:715653e7dec81cd045d787e6d9bcff36154e027efa91a75e58c875453b2f7a6c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
