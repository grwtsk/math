# Verification target: GRWTSK.Algebra.EllipticTorsionAction.Variantcaef688c170fb18d54b95438db2d37d221192c473438b3696346945be1677bd6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "548a8fddb862f256d6d53f5e01695e5daf040f60",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/EllipticTorsionAction/Variantcaef688c170fb18d54b95438db2d37d221192c473438b3696346945be1677bd6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/EllipticTorsionAction/Variantcaef688c170fb18d54b95438db2d37d221192c473438b3696346945be1677bd6.lean/index.md) · [Full source](../../../../mathematics/Algebra/EllipticTorsionAction/Variantcaef688c170fb18d54b95438db2d37d221192c473438b3696346945be1677bd6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `548a8fddb862f256d6d53f5e01695e5daf040f60`.

Source path: `GRWTSK/Algebra/EllipticTorsionAction/Variantcaef688c170fb18d54b95438db2d37d221192c473438b3696346945be1677bd6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/EllipticTorsionAction/Variantcaef688c170fb18d54b95438db2d37d221192c473438b3696346945be1677bd6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Arithmetic.Torsion` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [FiberAut](../../../../mathematics/Algebra/EllipticTorsionAction/Variantcaef688c170fb18d54b95438db2d37d221192c473438b3696346945be1677bd6.lean/declarations/fiberaut--38899ea6f521e75a0de7c025.md) | 27 | `declaration-track:38899ea6f521e75a0de7c0258cc0defba9042dc3b8e1af9d9397f94747ee8fa1` |
| 2 | `structure` | [TorsionAction](../../../../mathematics/Algebra/EllipticTorsionAction/Variantcaef688c170fb18d54b95438db2d37d221192c473438b3696346945be1677bd6.lean/declarations/torsionaction--b81bc732f1b4af40762b93f5.md) | 29 | `declaration-track:b81bc732f1b4af40762b93f54f9f8fe2ae8b407b9457083c42d2328e006e6588` |
| 3 | `structure` | [TorsionPoint](../../../../mathematics/Algebra/EllipticTorsionAction/Variantcaef688c170fb18d54b95438db2d37d221192c473438b3696346945be1677bd6.lean/declarations/torsionpoint--2ddaf7b4a109ddbaaddef0c6.md) | 40 | `declaration-track:2ddaf7b4a109ddbaaddef0c63040cea4a4e52ff596db641926c6224467d9c339` |
| 4 | `def` | [TorsionAction.actTorsion](../../../../mathematics/Algebra/EllipticTorsionAction/Variantcaef688c170fb18d54b95438db2d37d221192c473438b3696346945be1677bd6.lean/declarations/torsionaction-acttorsion--81d34c44fc9b5cd4ff9bcc99.md) | 47 | `declaration-track:81d34c44fc9b5cd4ff9bcc9923c968b8ff76bfa2b39b0c29a55f6419d310c426` |
| 5 | `theorem` | [torsion_action_roundtrip](../../../../mathematics/Algebra/EllipticTorsionAction/Variantcaef688c170fb18d54b95438db2d37d221192c473438b3696346945be1677bd6.lean/declarations/torsion-action-roundtrip--c14f7249278d82fdde7399ea.md) | 57 | `result-track:c14f7249278d82fdde7399eaf68dbec66ef9148c1d1f1e809e09b3e55232dc16` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
