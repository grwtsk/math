# Verification target: GRWTSK.Algebra.GroupTheory.Cyclic.Variantf618d1ff1b7276f9d83aec1aea379fac75f5b97901fc74cbe4c2944a1588c6f3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bb80831434b8cbe21d4b6b04c093397cdabe0928",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Cyclic/Variantf618d1ff1b7276f9d83aec1aea379fac75f5b97901fc74cbe4c2944a1588c6f3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Cyclic/Variantf618d1ff1b7276f9d83aec1aea379fac75f5b97901fc74cbe4c2944a1588c6f3.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Cyclic/Variantf618d1ff1b7276f9d83aec1aea379fac75f5b97901fc74cbe4c2944a1588c6f3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bb80831434b8cbe21d4b6b04c093397cdabe0928`.

Source path: `GRWTSK/Algebra/GroupTheory/Cyclic/Variantf618d1ff1b7276f9d83aec1aea379fac75f5b97901fc74cbe4c2944a1588c6f3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Cyclic/Variantf618d1ff1b7276f9d83aec1aea379fac75f5b97901fc74cbe4c2944a1588c6f3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.SpecificGroups.Cyclic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [exists_generator_lt_one](../../../../../mathematics/Algebra/GroupTheory/Cyclic/Variantf618d1ff1b7276f9d83aec1aea379fac75f5b97901fc74cbe4c2944a1588c6f3.lean/declarations/exists-generator-lt-one--222ef721f2da29f19f5d27dd.md) | 39 | `result-track:222ef721f2da29f19f5d27dd2bcd5f1ff189f2204db36a206f845a52ed46f24d` |
| 2 | `def` | [genLTOne](../../../../../mathematics/Algebra/GroupTheory/Cyclic/Variantf618d1ff1b7276f9d83aec1aea379fac75f5b97901fc74cbe4c2944a1588c6f3.lean/declarations/genltone--64b4d0071be5445222d78bee.md) | 52 | `declaration-track:64b4d0071be5445222d78beee4ae400582332ddd20352e4e139cd99b794c26eb` |
| 3 | `lemma` | [genLTOne_lt_one](../../../../../mathematics/Algebra/GroupTheory/Cyclic/Variantf618d1ff1b7276f9d83aec1aea379fac75f5b97901fc74cbe4c2944a1588c6f3.lean/declarations/genltone-lt-one--030e8df61c4bae84f883eba5.md) | 55 | `result-track:030e8df61c4bae84f883eba5c70904d54602994aef395019f5a5ca81f55f6739` |
| 4 | `lemma` | [genLTOne_zpowers_eq_top](../../../../../mathematics/Algebra/GroupTheory/Cyclic/Variantf618d1ff1b7276f9d83aec1aea379fac75f5b97901fc74cbe4c2944a1588c6f3.lean/declarations/genltone-zpowers-eq-top--876dbb160844d0f38ca29ffe.md) | 59 | `result-track:876dbb160844d0f38ca29ffe9c7a8c4ef0916eda5e22dcd27977a10a7aba8e0a` |
| 5 | `def` | [genLTOne](../../../../../mathematics/Algebra/GroupTheory/Cyclic/Variantf618d1ff1b7276f9d83aec1aea379fac75f5b97901fc74cbe4c2944a1588c6f3.lean/declarations/genltone--2c3c4345da9c001d5e3f8cfc.md) | 69 | `declaration-track:2c3c4345da9c001d5e3f8cfc69e9209b3fe8b70b52ce019d136a7ecdbc193f61` |
| 6 | `lemma` | [genLTOne_eq_of_top](../../../../../mathematics/Algebra/GroupTheory/Cyclic/Variantf618d1ff1b7276f9d83aec1aea379fac75f5b97901fc74cbe4c2944a1588c6f3.lean/declarations/genltone-eq-of-top--1599d67632be675a78b312cb.md) | 72 | `result-track:1599d67632be675a78b312cbbb5b83ffb7f586b3a11d19688b4b111195368c09` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
