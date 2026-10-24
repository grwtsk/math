# Verification target: GRWTSK.Algebra.GroupTheory.Opposite.Variant4caf83e41aae1d28611bd0a820d1b942b7bb713117a8744f3862045b535e52d8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aff72013405545586d1aa15335216f14d9b0c7f0",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Opposite/Variant4caf83e41aae1d28611bd0a820d1b942b7bb713117a8744f3862045b535e52d8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant4caf83e41aae1d28611bd0a820d1b942b7bb713117a8744f3862045b535e52d8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant4caf83e41aae1d28611bd0a820d1b942b7bb713117a8744f3862045b535e52d8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aff72013405545586d1aa15335216f14d9b0c7f0`.

Source path: `GRWTSK/Algebra/GroupTheory/Opposite/Variant4caf83e41aae1d28611bd0a820d1b942b7bb713117a8744f3862045b535e52d8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Opposite/Variant4caf83e41aae1d28611bd0a820d1b942b7bb713117a8744f3862045b535e52d8.lean.json)

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
| 1 | `def` | [Units.opEquiv](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant4caf83e41aae1d28611bd0a820d1b942b7bb713117a8744f3862045b535e52d8.lean/declarations/units-opequiv--c18cab921d4d4bf13ff973d7.md) | 34 | `declaration-track:c18cab921d4d4bf13ff973d7627e8944093b524916077d99270a32574f8a660f` |
| 2 | `theorem` | [Units.coe_unop_opEquiv](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant4caf83e41aae1d28611bd0a820d1b942b7bb713117a8744f3862045b535e52d8.lean/declarations/units-coe-unop-opequiv--bf5e6761cdd76f3be5faa995.md) | 40 | `result-track:bf5e6761cdd76f3be5faa995a2aeab3af5e85ed0a0916a0c2ec2ac29932e9c98` |
| 3 | `theorem` | [Units.coe_opEquiv_symm](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant4caf83e41aae1d28611bd0a820d1b942b7bb713117a8744f3862045b535e52d8.lean/declarations/units-coe-opequiv-symm--b96b876c63caaca9a6d691c7.md) | 45 | `result-track:b96b876c63caaca9a6d691c72b28fa90f68662136aa18b8c7b7ef21142a30239` |
| 4 | `theorem` | [IsUnit.op](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant4caf83e41aae1d28611bd0a820d1b942b7bb713117a8744f3862045b535e52d8.lean/declarations/isunit-op--58ffbf41cb28d04e94dafe66.md) | 50 | `result-track:58ffbf41cb28d04e94dafe66c357200eb9d793f0f3fc4765780d2c2b6a028e0c` |
| 5 | `theorem` | [IsUnit.unop](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant4caf83e41aae1d28611bd0a820d1b942b7bb713117a8744f3862045b535e52d8.lean/declarations/isunit-unop--c2de185d2ff7acc3f1b1fb6c.md) | 55 | `result-track:c2de185d2ff7acc3f1b1fb6c8c175aedf2695246f75638aebbf7d5a6a39d9466` |
| 6 | `theorem` | [isUnit_op](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant4caf83e41aae1d28611bd0a820d1b942b7bb713117a8744f3862045b535e52d8.lean/declarations/isunit-op--4e27cf4cf83f78c3661962de.md) | 60 | `result-track:4e27cf4cf83f78c3661962de3070daf2c90de8e801cebfa37ac9972d04d377f7` |
| 7 | `theorem` | [isUnit_unop](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant4caf83e41aae1d28611bd0a820d1b942b7bb713117a8744f3862045b535e52d8.lean/declarations/isunit-unop--08c470c8db01dc0fb3f171d9.md) | 64 | `result-track:08c470c8db01dc0fb3f171d93204daa15a2e7b07e72ced1e7c02c2e3f94d5a18` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
