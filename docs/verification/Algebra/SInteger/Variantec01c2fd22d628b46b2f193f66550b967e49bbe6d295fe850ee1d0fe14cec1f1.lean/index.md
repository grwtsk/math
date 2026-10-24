# Verification target: GRWTSK.Algebra.SInteger.Variantec01c2fd22d628b46b2f193f66550b967e49bbe6d295fe850ee1d0fe14cec1f1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6f7b6672d611151104d6968032040dee0704a233",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/SInteger/Variantec01c2fd22d628b46b2f193f66550b967e49bbe6d295fe850ee1d0fe14cec1f1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/SInteger/Variantec01c2fd22d628b46b2f193f66550b967e49bbe6d295fe850ee1d0fe14cec1f1.lean/index.md) · [Full source](../../../../mathematics/Algebra/SInteger/Variantec01c2fd22d628b46b2f193f66550b967e49bbe6d295fe850ee1d0fe14cec1f1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6f7b6672d611151104d6968032040dee0704a233`.

Source path: `GRWTSK/Algebra/SInteger/Variantec01c2fd22d628b46b2f193f66550b967e49bbe6d295fe850ee1d0fe14cec1f1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/SInteger/Variantec01c2fd22d628b46b2f193f66550b967e49bbe6d295fe850ee1d0fe14cec1f1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.DedekindDomain.AdicValuation` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [integer](../../../../mathematics/Algebra/SInteger/Variantec01c2fd22d628b46b2f193f66550b967e49bbe6d295fe850ee1d0fe14cec1f1.lean/declarations/integer--ec379bfe8d2a65f775aff7a7.md) | 69 | `declaration-track:ec379bfe8d2a65f775aff7a764d5645845b9b95e1ba17453fbd5b9be9d8ccc10` |
| 2 | `theorem` | [integer_eq](../../../../mathematics/Algebra/SInteger/Variantec01c2fd22d628b46b2f193f66550b967e49bbe6d295fe850ee1d0fe14cec1f1.lean/declarations/integer-eq--15e625a53987df4eb3ddb1e4.md) | 76 | `result-track:15e625a53987df4eb3ddb1e4cbb92b5fc6fdabde520e93a8ddf52b9dfc7e4680` |
| 3 | `theorem` | [integer_valuation_le_one](../../../../mathematics/Algebra/SInteger/Variantec01c2fd22d628b46b2f193f66550b967e49bbe6d295fe850ee1d0fe14cec1f1.lean/declarations/integer-valuation-le-one--e2ec3b649d7b7a3af3485a66.md) | 81 | `result-track:e2ec3b649d7b7a3af3485a663e8e7f3a2bf742745009851a7983b789683fe4e6` |
| 4 | `lemma` | [integer_univ](../../../../mathematics/Algebra/SInteger/Variantec01c2fd22d628b46b2f193f66550b967e49bbe6d295fe850ee1d0fe14cec1f1.lean/declarations/integer-univ--0b016e4fb815e8ccd84333c9.md) | 92 | `result-track:0b016e4fb815e8ccd84333c99cd00c2b08118bd05f1a6b61bd89e4f86401893c` |
| 5 | `lemma` | [integer_empty](../../../../mathematics/Algebra/SInteger/Variantec01c2fd22d628b46b2f193f66550b967e49bbe6d295fe850ee1d0fe14cec1f1.lean/declarations/integer-empty--58666d077ddf2a621a22e9f8.md) | 98 | `result-track:58666d077ddf2a621a22e9f8ae6d478510e7a64bf365f2e4d015a6a93fb5017a` |
| 6 | `def` | [unit](../../../../mathematics/Algebra/SInteger/Variantec01c2fd22d628b46b2f193f66550b967e49bbe6d295fe850ee1d0fe14cec1f1.lean/declarations/unit--92bff08586164dfb049a5a2b.md) | 112 | `declaration-track:92bff08586164dfb049a5a2bece0aaaaf215a6dfc431ea61ea5123153b30b5c1` |
| 7 | `theorem` | [unit_eq](../../../../mathematics/Algebra/SInteger/Variantec01c2fd22d628b46b2f193f66550b967e49bbe6d295fe850ee1d0fe14cec1f1.lean/declarations/unit-eq--4c6d8e6a8ff918c8f168a226.md) | 120 | `result-track:4c6d8e6a8ff918c8f168a22606207ab549170b6251cc4167191ed739375302aa` |
| 8 | `theorem` | [unit_valuation_eq_one](../../../../mathematics/Algebra/SInteger/Variantec01c2fd22d628b46b2f193f66550b967e49bbe6d295fe850ee1d0fe14cec1f1.lean/declarations/unit-valuation-eq-one--928712426b55d367c14c9f34.md) | 124 | `result-track:928712426b55d367c14c9f348b4d1b52b6842f42a8990cc2ce9ab5d96251e92e` |
| 9 | `def` | [unitEquivUnitsInteger](../../../../mathematics/Algebra/SInteger/Variantec01c2fd22d628b46b2f193f66550b967e49bbe6d295fe850ee1d0fe14cec1f1.lean/declarations/unitequivunitsinteger--99017986790f99b1f04e3bb0.md) | 130 | `declaration-track:99017986790f99b1f04e3bb0055e973a5f275912e8ec113b2434468ca0ccee72` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
