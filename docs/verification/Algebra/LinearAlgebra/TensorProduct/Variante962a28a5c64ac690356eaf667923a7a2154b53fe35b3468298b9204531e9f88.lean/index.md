# Verification target: GRWTSK.Algebra.LinearAlgebra.TensorProduct.Variante962a28a5c64ac690356eaf667923a7a2154b53fe35b3468298b9204531e9f88

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d6df8861b4de7ddaf14ecfe4f41beda487dd4895",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variante962a28a5c64ac690356eaf667923a7a2154b53fe35b3468298b9204531e9f88.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante962a28a5c64ac690356eaf667923a7a2154b53fe35b3468298b9204531e9f88.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante962a28a5c64ac690356eaf667923a7a2154b53fe35b3468298b9204531e9f88.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d6df8861b4de7ddaf14ecfe4f41beda487dd4895`.

Source path: `GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variante962a28a5c64ac690356eaf667923a7a2154b53fe35b3468298b9204531e9f88.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/TensorProduct/Variante962a28a5c64ac690356eaf667923a7a2154b53fe35b3468298b9204531e9f88.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.TensorProduct.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Multilinear.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [domCoprodDep](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante962a28a5c64ac690356eaf667923a7a2154b53fe35b3468298b9204531e9f88.lean/declarations/domcoproddep--8f32de268be8bedba9a0c9ff.md) | 45 | `declaration-track:8f32de268be8bedba9a0c9ff59cb933dc620ec79c76bb13e6c745c91762b7d81` |
| 2 | `def` | [domCoprodDep'](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante962a28a5c64ac690356eaf667923a7a2154b53fe35b3468298b9204531e9f88.lean/declarations/domcoproddep--a21fe458f790be406288a72f.md) | 60 | `declaration-track:a21fe458f790be406288a72fc9fc5bbebd499ec3271f0dc609f7b1d996e8a979` |
| 3 | `theorem` | [domCoprodDep'_apply](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante962a28a5c64ac690356eaf667923a7a2154b53fe35b3468298b9204531e9f88.lean/declarations/domcoproddep-apply--c5c8e80958fc6d8dcff48643.md) | 67 | `result-track:c5c8e80958fc6d8dcff4864327b7c6c78447418ec13e573b8309b2625748e9f4` |
| 4 | `def` | [domCoprod](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante962a28a5c64ac690356eaf667923a7a2154b53fe35b3468298b9204531e9f88.lean/declarations/domcoprod--a494e5a6617304b13523a6d4.md) | 90 | `declaration-track:a494e5a6617304b13523a6d42dcc9fb114f80bd03138164204341fe9f2954c1a` |
| 5 | `def` | [domCoprod'](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante962a28a5c64ac690356eaf667923a7a2154b53fe35b3468298b9204531e9f88.lean/declarations/domcoprod--85290054d3eb0abfff19d6c0.md) | 97 | `declaration-track:85290054d3eb0abfff19d6c0b772fc74848e3e092b859e8f39d643c48a9ce43c` |
| 6 | `theorem` | [domCoprod'_apply](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante962a28a5c64ac690356eaf667923a7a2154b53fe35b3468298b9204531e9f88.lean/declarations/domcoprod-apply--40f3a4fea7a937d507148a73.md) | 103 | `result-track:40f3a4fea7a937d507148a73e931c902fc0e82c49dd0c3b9a52d710f28fad826` |
| 7 | `theorem` | [domCoprod_domDomCongr_sumCongr](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variante962a28a5c64ac690356eaf667923a7a2154b53fe35b3468298b9204531e9f88.lean/declarations/domcoprod-domdomcongr-sumcongr--67ecd7af6b183a5f0df35742.md) | 109 | `result-track:67ecd7af6b183a5f0df35742ac2d8a60b598b1cfd6db5087f811ebe17064f3f2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
