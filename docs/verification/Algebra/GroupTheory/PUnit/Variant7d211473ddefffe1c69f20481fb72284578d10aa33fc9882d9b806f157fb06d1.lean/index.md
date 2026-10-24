# Verification target: GRWTSK.Algebra.GroupTheory.PUnit.Variant7d211473ddefffe1c69f20481fb72284578d10aa33fc9882d9b806f157fb06d1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8a8b0aa4ff7a04eafa1323055d2c4c5391e86329",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/PUnit/Variant7d211473ddefffe1c69f20481fb72284578d10aa33fc9882d9b806f157fb06d1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/PUnit/Variant7d211473ddefffe1c69f20481fb72284578d10aa33fc9882d9b806f157fb06d1.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/PUnit/Variant7d211473ddefffe1c69f20481fb72284578d10aa33fc9882d9b806f157fb06d1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8a8b0aa4ff7a04eafa1323055d2c4c5391e86329`.

Source path: `GRWTSK/Algebra/GroupTheory/PUnit/Variant7d211473ddefffe1c69f20481fb72284578d10aa33fc9882d9b806f157fb06d1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/PUnit/Variant7d211473ddefffe1c69f20481fb72284578d10aa33fc9882d9b806f157fb06d1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Defs` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [commGroup](../../../../../mathematics/Algebra/GroupTheory/PUnit/Variant7d211473ddefffe1c69f20481fb72284578d10aa33fc9882d9b806f157fb06d1.lean/declarations/commgroup--7e22a358564496c3b1bac347.md) | 20 | `declaration-track:7e22a358564496c3b1bac3470821f0d6ec00adc277b5cac6cc912fc7b4147626` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/PUnit/Variant7d211473ddefffe1c69f20481fb72284578d10aa33fc9882d9b806f157fb06d1.lean/declarations/instance--15a0cdf42f5502245d7f172f.md) | 34 | `declaration-track:15a0cdf42f5502245d7f172f02330339c8bef885c4738d3a92229b83cb4be735` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/PUnit/Variant7d211473ddefffe1c69f20481fb72284578d10aa33fc9882d9b806f157fb06d1.lean/declarations/instance--7cd489248a1d1fc73dbd9b39.md) | 35 | `declaration-track:7cd489248a1d1fc73dbd9b39e934793f5eb6502956cc29bf7bef95a5e49ad07e` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/PUnit/Variant7d211473ddefffe1c69f20481fb72284578d10aa33fc9882d9b806f157fb06d1.lean/declarations/instance--76d203ff420cf82835b1f8a0.md) | 36 | `declaration-track:76d203ff420cf82835b1f8a0f649db436aaa9a8cb17b39efb5ec1cf181b38fc9` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/PUnit/Variant7d211473ddefffe1c69f20481fb72284578d10aa33fc9882d9b806f157fb06d1.lean/declarations/instance--eba6e5fad89b6b13f8553327.md) | 37 | `declaration-track:eba6e5fad89b6b13f8553327ead529efacefcb8d79a974066389018e4dc2ed7b` |
| 6 | `lemma` | [one_eq](../../../../../mathematics/Algebra/GroupTheory/PUnit/Variant7d211473ddefffe1c69f20481fb72284578d10aa33fc9882d9b806f157fb06d1.lean/declarations/one-eq--e0cc43a77719335de5e0da8b.md) | 39 | `result-track:e0cc43a77719335de5e0da8b4864646313d675d7b0e1b3d49ff69b292b340b92` |
| 7 | `lemma` | [mul_eq](../../../../../mathematics/Algebra/GroupTheory/PUnit/Variant7d211473ddefffe1c69f20481fb72284578d10aa33fc9882d9b806f157fb06d1.lean/declarations/mul-eq--1d642948b93ba5d413cb71c4.md) | 42 | `result-track:1d642948b93ba5d413cb71c418a3998a513987060f7b0d5bd91916f53f7e86a1` |
| 8 | `lemma` | [div_eq](../../../../../mathematics/Algebra/GroupTheory/PUnit/Variant7d211473ddefffe1c69f20481fb72284578d10aa33fc9882d9b806f157fb06d1.lean/declarations/div-eq--beeccf644c42a78566cc69d5.md) | 44 | `result-track:beeccf644c42a78566cc69d5cdc7546974b6ad6376884b466f091a2f818aad4a` |
| 9 | `lemma` | [inv_eq](../../../../../mathematics/Algebra/GroupTheory/PUnit/Variant7d211473ddefffe1c69f20481fb72284578d10aa33fc9882d9b806f157fb06d1.lean/declarations/inv-eq--80ff85d88aaaa1e291ab7be0.md) | 45 | `result-track:80ff85d88aaaa1e291ab7be075e00ed00962863da563e17216386fa575af5e0a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
