# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.CoefficientRing.Variant3fb21bfd0859be9e166111a5c1ae3c99488377055e5acae3a99d1075dafe09e5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d6fd64a3e08fdcb5909bf93602ae4a5dff3d49f2",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CoefficientRing/Variant3fb21bfd0859be9e166111a5c1ae3c99488377055e5acae3a99d1075dafe09e5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CoefficientRing/Variant3fb21bfd0859be9e166111a5c1ae3c99488377055e5acae3a99d1075dafe09e5.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CoefficientRing/Variant3fb21bfd0859be9e166111a5c1ae3c99488377055e5acae3a99d1075dafe09e5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d6fd64a3e08fdcb5909bf93602ae4a5dff3d49f2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/CoefficientRing/Variant3fb21bfd0859be9e166111a5c1ae3c99488377055e5acae3a99d1075dafe09e5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/CoefficientRing/Variant3fb21bfd0859be9e166111a5c1ae3c99488377055e5acae3a99d1075dafe09e5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SemiLocalDefect.PlaceInteraction` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RationalQSeries](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CoefficientRing/Variant3fb21bfd0859be9e166111a5c1ae3c99488377055e5acae3a99d1075dafe09e5.lean/declarations/rationalqseries--a91495f32b0258262471d33f.md) | 22 | `declaration-track:a91495f32b0258262471d33fd8a40be956ed874527ee03310d3928a7788764b4` |
| 2 | `def` | [RationalQSeries.evaluateThrough](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CoefficientRing/Variant3fb21bfd0859be9e166111a5c1ae3c99488377055e5acae3a99d1075dafe09e5.lean/declarations/rationalqseries-evaluatethrough--3d14f580b0edabeb6c9c7bcd.md) | 25 | `declaration-track:3d14f580b0edabeb6c9c7bcd44477cc6b211530c00ef18282ecf041e99b7b961` |
| 3 | `structure` | [QInterval](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CoefficientRing/Variant3fb21bfd0859be9e166111a5c1ae3c99488377055e5acae3a99d1075dafe09e5.lean/declarations/qinterval--7a85d986789f57741f66cbf8.md) | 32 | `declaration-track:7a85d986789f57741f66cbf8707bc2cd0a448e8c28e3517e218024ad313351ae` |
| 4 | `inductive` | [CoefficientDomain](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CoefficientRing/Variant3fb21bfd0859be9e166111a5c1ae3c99488377055e5acae3a99d1075dafe09e5.lean/declarations/coefficientdomain--e40c4dbddc3fc9c0fb65596d.md) | 39 | `declaration-track:e40c4dbddc3fc9c0fb65596dbb3f99196ca00aec07385a062072343cc58524ee` |
| 5 | `structure` | [CoefficientDomainCertificate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CoefficientRing/Variant3fb21bfd0859be9e166111a5c1ae3c99488377055e5acae3a99d1075dafe09e5.lean/declarations/coefficientdomaincertificate--b2a2071711694ed99f3a4807.md) | 46 | `declaration-track:b2a2071711694ed99f3a4807546f274b03f386fbef42c4af600878c37e1665b4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
