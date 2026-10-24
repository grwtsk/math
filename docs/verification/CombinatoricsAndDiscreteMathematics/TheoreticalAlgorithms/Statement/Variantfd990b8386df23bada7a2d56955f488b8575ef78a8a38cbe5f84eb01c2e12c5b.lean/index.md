# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Statement.Variantfd990b8386df23bada7a2d56955f488b8575ef78a8a38cbe5f84eb01c2e12c5b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b700be4c1ae6b07a907e8d5b2847a96336d0ed80",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Statement/Variantfd990b8386df23bada7a2d56955f488b8575ef78a8a38cbe5f84eb01c2e12c5b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Statement/Variantfd990b8386df23bada7a2d56955f488b8575ef78a8a38cbe5f84eb01c2e12c5b.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Statement/Variantfd990b8386df23bada7a2d56955f488b8575ef78a8a38cbe5f84eb01c2e12c5b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b700be4c1ae6b07a907e8d5b2847a96336d0ed80`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Statement/Variantfd990b8386df23bada7a2d56955f488b8575ef78a8a38cbe5f84eb01c2e12c5b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Statement/Variantfd990b8386df23bada7a2d56955f488b8575ef78a8a38cbe5f84eb01c2e12c5b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Arithmetic.EllipticCurve.LFunction` — import line 6; external provider; requires a separately pinned dependency.
- `Surface.Arithmetic.EllipticCurve.MordellWeil` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Assumptions](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Statement/Variantfd990b8386df23bada7a2d56955f488b8575ef78a8a38cbe5f84eb01c2e12c5b.lean/declarations/assumptions--4199e703bb0ad7c374e33f30.md) | 40 | `declaration-track:4199e703bb0ad7c374e33f3070922ec5b2669dbf2e869f6889022e9c91e0f33c` |
| 2 | `structure` | [FirstPartStatement](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Statement/Variantfd990b8386df23bada7a2d56955f488b8575ef78a8a38cbe5f84eb01c2e12c5b.lean/declarations/firstpartstatement--88a3fce6264e7200d7c348a8.md) | 50 | `declaration-track:88a3fce6264e7200d7c348a847e2431e95279bda36e14c77be5bf580850471af` |
| 3 | `def` | [firstPart](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Statement/Variantfd990b8386df23bada7a2d56955f488b8575ef78a8a38cbe5f84eb01c2e12c5b.lean/declarations/firstpart--84d6d50972b15de9ae56d1ef.md) | 58 | `declaration-track:84d6d50972b15de9ae56d1ef9885c102a168d3fae6488f05701769e8c3cf24b6` |
| 4 | `inductive` | [BSDComponentStatus](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Statement/Variantfd990b8386df23bada7a2d56955f488b8575ef78a8a38cbe5f84eb01c2e12c5b.lean/declarations/bsdcomponentstatus--4605fa643aa7d8ca8f85bf17.md) | 67 | `declaration-track:4605fa643aa7d8ca8f85bf17bbc32a615175471f63f80d01c5801247daf94584` |
| 5 | `structure` | [LeadingCoefficientIdentityData](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Statement/Variantfd990b8386df23bada7a2d56955f488b8575ef78a8a38cbe5f84eb01c2e12c5b.lean/declarations/leadingcoefficientidentitydata--ecec9b90286f39763f55635b.md) | 74 | `declaration-track:ecec9b90286f39763f55635b821062f7c82a7efdb7f685ce46036e3ae3f6f46b` |
| 6 | `def` | [LeadingCoefficientIdentityData.componentsSupplied](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Statement/Variantfd990b8386df23bada7a2d56955f488b8575ef78a8a38cbe5f84eb01c2e12c5b.lean/declarations/leadingcoefficientidentitydata-componentssupplied--f60d35a1887180edc030d126.md) | 85 | `declaration-track:f60d35a1887180edc030d1262a023ecda14abb087d96817c6c201972d0773663` |
| 7 | `structure` | [SecondPartStatement](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Statement/Variantfd990b8386df23bada7a2d56955f488b8575ef78a8a38cbe5f84eb01c2e12c5b.lean/declarations/secondpartstatement--7a4acaf8466c6dd26c5e9cca.md) | 96 | `declaration-track:7a4acaf8466c6dd26c5e9cca8e798d4bd52d0e9f220a3602ae17cc4994622d41` |
| 8 | `def` | [secondPart](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Statement/Variantfd990b8386df23bada7a2d56955f488b8575ef78a8a38cbe5f84eb01c2e12c5b.lean/declarations/secondpart--b730b2122065aacd539ca0b8.md) | 104 | `declaration-track:b730b2122065aacd539ca0b869fa8d9d710ad5de99e22be35003fad3995412a6` |
| 9 | `def` | [SecondPartStatement.componentsSupplied](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Statement/Variantfd990b8386df23bada7a2d56955f488b8575ef78a8a38cbe5f84eb01c2e12c5b.lean/declarations/secondpartstatement-componentssupplied--d4d916c353269c7581980ba5.md) | 112 | `declaration-track:d4d916c353269c7581980ba58738d615c616757567e550a269ef80f7f2575746` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
