# Verification target: GRWTSK.Algebra.UniversalAlgebra.Lemmas.Variant48da29d30b7e824634dca7109d58e041e5128afc2b5bfd8e0a3f9870217f513d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c6e4527af705f767fc6c34e3acaafac23768af22",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Lemmas/Variant48da29d30b7e824634dca7109d58e041e5128afc2b5bfd8e0a3f9870217f513d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant48da29d30b7e824634dca7109d58e041e5128afc2b5bfd8e0a3f9870217f513d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant48da29d30b7e824634dca7109d58e041e5128afc2b5bfd8e0a3f9870217f513d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c6e4527af705f767fc6c34e3acaafac23768af22`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Lemmas/Variant48da29d30b7e824634dca7109d58e041e5128afc2b5bfd8e0a3f9870217f513d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Lemmas/Variant48da29d30b7e824634dca7109d58e041e5128afc2b5bfd8e0a3f9870217f513d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.Rat` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Indicator` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Action.End` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Field.Rat` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant48da29d30b7e824634dca7109d58e041e5128afc2b5bfd8e0a3f9870217f513d.lean/declarations/instance--56a69658bde276c4054f39bd.md) | 33 | `declaration-track:56a69658bde276c4054f39bdd328d5822a354939fb347aaa35aa3d722cbdd331` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant48da29d30b7e824634dca7109d58e041e5128afc2b5bfd8e0a3f9870217f513d.lean/declarations/instance--5f27266d8d2775f9d96bcbe7.md) | 37 | `declaration-track:5f27266d8d2775f9d96bcbe768679d828b802018f740dbdfbe45d9c020266c0f` |
| 3 | `lemma` | [coe_indicator](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant48da29d30b7e824634dca7109d58e041e5128afc2b5bfd8e0a3f9870217f513d.lean/declarations/coe-indicator--eb840d79fbff8c23afbd9d08.md) | 41 | `result-track:eb840d79fbff8c23afbd9d08d551dd8b6d75bb7e2f8b706df4ccd91dece9b930` |
| 4 | `lemma` | [toNNRat_inv](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant48da29d30b7e824634dca7109d58e041e5128afc2b5bfd8e0a3f9870217f513d.lean/declarations/tonnrat-inv--a2306be25007539da4b7068f.md) | 53 | `result-track:a2306be25007539da4b7068f43054a2e9a47e2b5c2931401026a11000459374b` |
| 5 | `lemma` | [toNNRat_div](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant48da29d30b7e824634dca7109d58e041e5128afc2b5bfd8e0a3f9870217f513d.lean/declarations/tonnrat-div--980bae3fd59b58f1dd802653.md) | 59 | `result-track:980bae3fd59b58f1dd802653a8679ccdbf8ae96d4f99a6ac4365369b3b09d887` |
| 6 | `lemma` | [toNNRat_div'](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant48da29d30b7e824634dca7109d58e041e5128afc2b5bfd8e0a3f9870217f513d.lean/declarations/tonnrat-div--e5474ecbbabeb7af99b619ed.md) | 62 | `result-track:e5474ecbbabeb7af99b619ed8eab30362f4bfb02b78fdd81dfb29e81f3e4f74c` |
| 7 | `def` | [rec](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant48da29d30b7e824634dca7109d58e041e5128afc2b5bfd8e0a3f9870217f513d.lean/declarations/rec--735562bb143e94cb3d80ffed.md) | 74 | `declaration-track:735562bb143e94cb3d80ffeda34126864ad4487eb18d84340312b85270f66242` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
