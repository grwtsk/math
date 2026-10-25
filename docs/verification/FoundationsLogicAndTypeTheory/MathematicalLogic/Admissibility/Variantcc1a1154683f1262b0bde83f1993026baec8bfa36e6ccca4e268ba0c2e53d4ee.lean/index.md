# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Admissibility.Variantcc1a1154683f1262b0bde83f1993026baec8bfa36e6ccca4e268ba0c2e53d4ee

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d8637c4d31b119253d71e0eadcc7f782e8bf2448",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Admissibility/Variantcc1a1154683f1262b0bde83f1993026baec8bfa36e6ccca4e268ba0c2e53d4ee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Admissibility/Variantcc1a1154683f1262b0bde83f1993026baec8bfa36e6ccca4e268ba0c2e53d4ee.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Admissibility/Variantcc1a1154683f1262b0bde83f1993026baec8bfa36e6ccca4e268ba0c2e53d4ee.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d8637c4d31b119253d71e0eadcc7f782e8bf2448`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Admissibility/Variantcc1a1154683f1262b0bde83f1993026baec8bfa36e6ccca4e268ba0c2e53d4ee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Admissibility/Variantcc1a1154683f1262b0bde83f1993026baec8bfa36e6ccca4e268ba0c2e53d4ee.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.GraphAccess.RelationScope` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AdmissibilityProfile](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Admissibility/Variantcc1a1154683f1262b0bde83f1993026baec8bfa36e6ccca4e268ba0c2e53d4ee.lean/declarations/admissibilityprofile--a522504118e96729bc968173.md) | 13 | `declaration-track:a522504118e96729bc9681736b721f5f2837973df472f47ca41a46bb0eb1b027` |
| 2 | `def` | [NodeAdmissible](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Admissibility/Variantcc1a1154683f1262b0bde83f1993026baec8bfa36e6ccca4e268ba0c2e53d4ee.lean/declarations/nodeadmissible--18a411f4058e19215c2f9bf5.md) | 23 | `declaration-track:18a411f4058e19215c2f9bf5bf5f40995d70cf820e7efa41826d0bcc3f4555cc` |
| 3 | `def` | [EdgeAdmissible](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Admissibility/Variantcc1a1154683f1262b0bde83f1993026baec8bfa36e6ccca4e268ba0c2e53d4ee.lean/declarations/edgeadmissible--abfde779a48121a14c42caab.md) | 29 | `declaration-track:abfde779a48121a14c42caab76319fea1330ca91a3a480f597a4bb394b588810` |
| 4 | `def` | [ArcAdmissible](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Admissibility/Variantcc1a1154683f1262b0bde83f1993026baec8bfa36e6ccca4e268ba0c2e53d4ee.lean/declarations/arcadmissible--f444de774e9c3f0b86697e14.md) | 35 | `declaration-track:f444de774e9c3f0b86697e144d800553a807aeda53f87d4c38467704c1a1dd61` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Admissibility/Variantcc1a1154683f1262b0bde83f1993026baec8bfa36e6ccca4e268ba0c2e53d4ee.lean/declarations/instance--82db60ba4b787cb5abe302b9.md) | 41 | `declaration-track:82db60ba4b787cb5abe302b9a9ef9a1aa4ba736627420a8b141081ffe1f371ca` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Admissibility/Variantcc1a1154683f1262b0bde83f1993026baec8bfa36e6ccca4e268ba0c2e53d4ee.lean/declarations/instance--80228358148415d36f206561.md) | 50 | `declaration-track:80228358148415d36f20656177d0ccd500b686d7492a712245b8cd33d8af53ff` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Admissibility/Variantcc1a1154683f1262b0bde83f1993026baec8bfa36e6ccca4e268ba0c2e53d4ee.lean/declarations/instance--398e0d7cd1bc2ab3f2406e13.md) | 59 | `declaration-track:398e0d7cd1bc2ab3f2406e1302a19f198be757c24b1a7517c03463d806285547` |
| 8 | `theorem` | [ArcAdmissible.endpoints](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Admissibility/Variantcc1a1154683f1262b0bde83f1993026baec8bfa36e6ccca4e268ba0c2e53d4ee.lean/declarations/arcadmissible-endpoints--2e0b539a7431c91b6e51cf57.md) | 68 | `result-track:2e0b539a7431c91b6e51cf574bc8d31042a1ac51598eaed13cf65221c9f928bf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
