# Verification target: GRWTSK.Algebra.GrothendieckGroup.Variant622b878e997c1e977e1581bd3613b761924a8786c93aede8e18e3def54315e9e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d0c8e04021d7503f63bab779f9256b9df8d05be7",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GrothendieckGroup/Variant622b878e997c1e977e1581bd3613b761924a8786c93aede8e18e3def54315e9e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/GrothendieckGroup/Variant622b878e997c1e977e1581bd3613b761924a8786c93aede8e18e3def54315e9e.lean/index.md) · [Full source](../../../../mathematics/Algebra/GrothendieckGroup/Variant622b878e997c1e977e1581bd3613b761924a8786c93aede8e18e3def54315e9e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d0c8e04021d7503f63bab779f9256b9df8d05be7`.

Source path: `GRWTSK/Algebra/GrothendieckGroup/Variant622b878e997c1e977e1581bd3613b761924a8786c93aede8e18e3def54315e9e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GrothendieckGroup/Variant622b878e997c1e977e1581bd3613b761924a8786c93aede8e18e3def54315e9e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.MonoidLocalization.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [GrothendieckGroup](../../../../mathematics/Algebra/GrothendieckGroup/Variant622b878e997c1e977e1581bd3613b761924a8786c93aede8e18e3def54315e9e.lean/declarations/grothendieckgroup--1f191fae595c69fe5382c0ce.md) | 32 | `declaration-track:1f191fae595c69fe5382c0ce2982f829ffb25b1af0cd173b5e8be4014b58b348` |
| 2 | `abbrev` | [of](../../../../mathematics/Algebra/GrothendieckGroup/Variant622b878e997c1e977e1581bd3613b761924a8786c93aede8e18e3def54315e9e.lean/declarations/of--d87cc6109a4933c9504927f6.md) | 43 | `declaration-track:d87cc6109a4933c9504927f6a10cbfac501211b02c2ec87b8affc9a5ada1b64f` |
| 3 | `lemma` | [of_injective](../../../../mathematics/Algebra/GrothendieckGroup/Variant622b878e997c1e977e1581bd3613b761924a8786c93aede8e18e3def54315e9e.lean/declarations/of-injective--eb2880013d5807ad520199f3.md) | 46 | `result-track:eb2880013d5807ad520199f3872d837d6bdf871d0752699a7dff0a5cf6b45817` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GrothendieckGroup/Variant622b878e997c1e977e1581bd3613b761924a8786c93aede8e18e3def54315e9e.lean/declarations/instance--6ff355cd4de3879d81916d59.md) | 50 | `declaration-track:6ff355cd4de3879d81916d59adc33a6e2c1d9615b4d2f7444bbb22f9f046e6c1` |
| 5 | `lemma` | [inv_mk](../../../../mathematics/Algebra/GrothendieckGroup/Variant622b878e997c1e977e1581bd3613b761924a8786c93aede8e18e3def54315e9e.lean/declarations/inv-mk--391f8fcfae3f08c905c58299.md) | 55 | `result-track:391f8fcfae3f08c905c58299607fa7fe6cec8531b97abace039f2b35ef878965` |
| 6 | `instance` | [instCommGroup](../../../../mathematics/Algebra/GrothendieckGroup/Variant622b878e997c1e977e1581bd3613b761924a8786c93aede8e18e3def54315e9e.lean/declarations/instcommgroup--a7168fa1b8a0c37a353889ef.md) | 59 | `declaration-track:a7168fa1b8a0c37a353889efa182e0e497460ee9d4045971724e19d4a1f66371` |
| 7 | `lemma` | [mk_div_mk](../../../../mathematics/Algebra/GrothendieckGroup/Variant622b878e997c1e977e1581bd3613b761924a8786c93aede8e18e3def54315e9e.lean/declarations/mk-div-mk--dc5aaaf5e92468eeb8c3c5d6.md) | 68 | `result-track:dc5aaaf5e92468eeb8c3c5d68649457a49af564b5bcecdf4c22431cddfa1e151` |
| 8 | `def` | [lift](../../../../mathematics/Algebra/GrothendieckGroup/Variant622b878e997c1e977e1581bd3613b761924a8786c93aede8e18e3def54315e9e.lean/declarations/lift--bc46bcd88a4e5a0b2fdbdfe1.md) | 77 | `declaration-track:bc46bcd88a4e5a0b2fdbdfe181d1feb7c12482630fb1742e31515704d066c51b` |
| 9 | `lemma` | [lift_apply](../../../../mathematics/Algebra/GrothendieckGroup/Variant622b878e997c1e977e1581bd3613b761924a8786c93aede8e18e3def54315e9e.lean/declarations/lift-apply--db6934a42c122dc7d8aa559b.md) | 84 | `result-track:db6934a42c122dc7d8aa559bb71024afa9b59add40bf304de93d10385de9bae3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
