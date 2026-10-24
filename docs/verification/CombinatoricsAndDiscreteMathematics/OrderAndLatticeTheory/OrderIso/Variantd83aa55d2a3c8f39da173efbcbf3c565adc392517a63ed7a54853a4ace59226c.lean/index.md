# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.OrderIso.Variantd83aa55d2a3c8f39da173efbcbf3c565adc392517a63ed7a54853a4ace59226c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "869171d0eab654e53f57c0c636cf38256c73a21b",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variantd83aa55d2a3c8f39da173efbcbf3c565adc392517a63ed7a54853a4ace59226c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variantd83aa55d2a3c8f39da173efbcbf3c565adc392517a63ed7a54853a4ace59226c.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variantd83aa55d2a3c8f39da173efbcbf3c565adc392517a63ed7a54853a4ace59226c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `869171d0eab654e53f57c0c636cf38256c73a21b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variantd83aa55d2a3c8f39da173efbcbf3c565adc392517a63ed7a54853a4ace59226c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variantd83aa55d2a3c8f39da173efbcbf3c565adc392517a63ed7a54853a4ace59226c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Bounds.Image` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Set` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [upperBounds_image](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variantd83aa55d2a3c8f39da173efbcbf3c565adc392517a63ed7a54853a4ace59226c.lean/declarations/upperbounds-image--15d7b6649c2d147c6686785b.md) | 19 | `result-track:15d7b6649c2d147c6686785bfd38c43e6add3c1553113325555de0726d35767c` |
| 2 | `theorem` | [lowerBounds_image](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variantd83aa55d2a3c8f39da173efbcbf3c565adc392517a63ed7a54853a4ace59226c.lean/declarations/lowerbounds-image--4220b37535b9ccd1205f9cfd.md) | 25 | `result-track:4220b37535b9ccd1205f9cfd57a39b7a825282f3e5534c280d6bf4d8d4f4a24b` |
| 3 | `theorem` | [isLUB_image](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variantd83aa55d2a3c8f39da173efbcbf3c565adc392517a63ed7a54853a4ace59226c.lean/declarations/islub-image--3d50327a2476d6ca680f139f.md) | 29 | `result-track:3d50327a2476d6ca680f139fb08aa42d5723f48aeb2115e586500756de636a25` |
| 4 | `theorem` | [isLUB_image'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variantd83aa55d2a3c8f39da173efbcbf3c565adc392517a63ed7a54853a4ace59226c.lean/declarations/islub-image--dc65f486c08f430ed7990c71.md) | 33 | `result-track:dc65f486c08f430ed7990c71d3600b8d66dcbb7d5fa447d5520814b9980de5e4` |
| 5 | `theorem` | [isGLB_image](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variantd83aa55d2a3c8f39da173efbcbf3c565adc392517a63ed7a54853a4ace59226c.lean/declarations/isglb-image--a01ec5a3469daff67f66a1a7.md) | 37 | `result-track:a01ec5a3469daff67f66a1a77a6d74b942389dbb2462363dd5098c0a55aab0f6` |
| 6 | `theorem` | [isGLB_image'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variantd83aa55d2a3c8f39da173efbcbf3c565adc392517a63ed7a54853a4ace59226c.lean/declarations/isglb-image--0ffce181cac3eccc7c09fc10.md) | 40 | `result-track:0ffce181cac3eccc7c09fc10e5cf62198ea529894d1b31cb40a654b758ac1b54` |
| 7 | `theorem` | [isLUB_preimage](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variantd83aa55d2a3c8f39da173efbcbf3c565adc392517a63ed7a54853a4ace59226c.lean/declarations/islub-preimage--c144aacbea6f3c47068d4d75.md) | 44 | `result-track:c144aacbea6f3c47068d4d75ba3956f8d994e00859adcd2c9e9e507ff0d652ea` |
| 8 | `theorem` | [isLUB_preimage'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variantd83aa55d2a3c8f39da173efbcbf3c565adc392517a63ed7a54853a4ace59226c.lean/declarations/islub-preimage--e9760c64946bf46f65d2e300.md) | 47 | `result-track:e9760c64946bf46f65d2e30042be47cb947d1bae6f8f5d501ff14ae9ccd5ccb7` |
| 9 | `theorem` | [isGLB_preimage](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variantd83aa55d2a3c8f39da173efbcbf3c565adc392517a63ed7a54853a4ace59226c.lean/declarations/isglb-preimage--2eb4a2c22f9f7c485353b2d6.md) | 51 | `result-track:2eb4a2c22f9f7c485353b2d681c41b41977cf8db380a379e683ee2c2b88997f1` |
| 10 | `theorem` | [isGLB_preimage'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variantd83aa55d2a3c8f39da173efbcbf3c565adc392517a63ed7a54853a4ace59226c.lean/declarations/isglb-preimage--63c5d3a080551cd5425e651d.md) | 54 | `result-track:63c5d3a080551cd5425e651dc129043cae4fac36ebbbae38a97b3214ca326467` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
