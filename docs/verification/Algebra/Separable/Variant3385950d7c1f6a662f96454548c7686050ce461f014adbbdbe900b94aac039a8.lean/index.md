# Verification target: GRWTSK.Algebra.Separable.Variant3385950d7c1f6a662f96454548c7686050ce461f014adbbdbe900b94aac039a8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "741858a3881583b01f64ac1ce4de1faca4f38f5e",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Separable/Variant3385950d7c1f6a662f96454548c7686050ce461f014adbbdbe900b94aac039a8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Separable/Variant3385950d7c1f6a662f96454548c7686050ce461f014adbbdbe900b94aac039a8.lean/index.md) · [Full source](../../../../mathematics/Algebra/Separable/Variant3385950d7c1f6a662f96454548c7686050ce461f014adbbdbe900b94aac039a8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `741858a3881583b01f64ac1ce4de1faca4f38f5e`.

Source path: `GRWTSK/Algebra/Separable/Variant3385950d7c1f6a662f96454548c7686050ce461f014adbbdbe900b94aac039a8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Separable/Variant3385950d7c1f6a662f96454548c7686050ce461f014adbbdbe900b94aac039a8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [HasSeparableResidueFieldsAt](../../../../mathematics/Algebra/Separable/Variant3385950d7c1f6a662f96454548c7686050ce461f014adbbdbe900b94aac039a8.lean/declarations/hasseparableresiduefieldsat--66b146b2e6eb5f8621da513d.md) | 65 | `declaration-track:66b146b2e6eb5f8621da513dd1a66ca3c5372e7059d12a64f57ae74e202128b0` |
| 2 | `instance` | [HasSeparableResidueFieldsAt.isSeparable](../../../../mathematics/Algebra/Separable/Variant3385950d7c1f6a662f96454548c7686050ce461f014adbbdbe900b94aac039a8.lean/declarations/hasseparableresiduefieldsat-isseparable--7978d44dde936e02073373ea.md) | 73 | `declaration-track:7978d44dde936e02073373eafbef8ab8cf6e0227d3969a6508c444dbe9618048` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Separable/Variant3385950d7c1f6a662f96454548c7686050ce461f014adbbdbe900b94aac039a8.lean/declarations/instance--ce58b5b58a01f457ee7fabfb.md) | 83 | `declaration-track:ce58b5b58a01f457ee7fabfb1d89deb659fd0486dc7218c6972d4bc5acfc3424` |
| 4 | `instance` | [HasSeparableResidueFieldsAt.isSeparable_quotient](../../../../mathematics/Algebra/Separable/Variant3385950d7c1f6a662f96454548c7686050ce461f014adbbdbe900b94aac039a8.lean/declarations/hasseparableresiduefieldsat-isseparable-quotient--c6bd3f5b6499a56facb448ef.md) | 99 | `declaration-track:c6bd3f5b6499a56facb448ef9fabfaf21cfb7278df350e89718cacd385314eba` |
| 5 | `theorem` | [HasSeparableResidueFieldsAt.tower_bot](../../../../mathematics/Algebra/Separable/Variant3385950d7c1f6a662f96454548c7686050ce461f014adbbdbe900b94aac039a8.lean/declarations/hasseparableresiduefieldsat-tower-bot--9f652bcc9dafc7f66cb7a174.md) | 115 | `result-track:9f652bcc9dafc7f66cb7a1745eb994cd4c03167d3bbb5c9ad9d7c07920b7aa13` |
| 6 | `theorem` | [HasSeparableResidueFieldsAt.tower_top](../../../../mathematics/Algebra/Separable/Variant3385950d7c1f6a662f96454548c7686050ce461f014adbbdbe900b94aac039a8.lean/declarations/hasseparableresiduefieldsat-tower-top--de7a70f75ce95c2977d3394a.md) | 129 | `result-track:de7a70f75ce95c2977d3394a3ba9fee4729a79f99b012cf4514252f3a99fc036` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
