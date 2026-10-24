# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.CountableDenseLinearOrder.Variant2994efa8ac349b5f58cf15c64a2d574efc8a1bbe9a4e19972732b20c137cf4e5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dcd3b17b5cd06c739512ef9ba00a4f48af355372",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variant2994efa8ac349b5f58cf15c64a2d574efc8a1bbe9a4e19972732b20c137cf4e5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variant2994efa8ac349b5f58cf15c64a2d574efc8a1bbe9a4e19972732b20c137cf4e5.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variant2994efa8ac349b5f58cf15c64a2d574efc8a1bbe9a4e19972732b20c137cf4e5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dcd3b17b5cd06c739512ef9ba00a4f48af355372`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variant2994efa8ac349b5f58cf15c64a2d574efc8a1bbe9a4e19972732b20c137cf4e5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variant2994efa8ac349b5f58cf15c64a2d574efc8a1bbe9a4e19972732b20c137cf4e5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Ideal` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Lattice` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_between_finsets](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variant2994efa8ac349b5f58cf15c64a2d574efc8a1bbe9a4e19972732b20c137cf4e5.lean/declarations/exists-between-finsets--eee830fd905a4c7cc4066eb6.md) | 44 | `result-track:eee830fd905a4c7cc4066eb6b0bfc50426435e8393ac95b16d85870e82469104` |
| 2 | `def` | [PartialIso](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variant2994efa8ac349b5f58cf15c64a2d574efc8a1bbe9a4e19972732b20c137cf4e5.lean/declarations/partialiso--8287a9ae9e9813cee52bc9d1.md) | 75 | `declaration-track:8287a9ae9e9813cee52bc9d12562934b425fb00a39b91c6db988a887a4141240` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variant2994efa8ac349b5f58cf15c64a2d574efc8a1bbe9a4e19972732b20c137cf4e5.lean/declarations/instance--450fd340ed3ee44d619b3dcc.md) | 83 | `declaration-track:450fd340ed3ee44d619b3dccd024a4734d7ea82d75bd088096068f6b96cb2e46` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variant2994efa8ac349b5f58cf15c64a2d574efc8a1bbe9a4e19972732b20c137cf4e5.lean/declarations/instance--6097a5b993e22b8edc0e85bc.md) | 85 | `declaration-track:6097a5b993e22b8edc0e85bcd775efb871f8b22fb2e77c963ff5ac9582c1f8d2` |
| 5 | `theorem` | [exists_across](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variant2994efa8ac349b5f58cf15c64a2d574efc8a1bbe9a4e19972732b20c137cf4e5.lean/declarations/exists-across--8103268c0c5c38c7beb418c4.md) | 94 | `result-track:8103268c0c5c38c7beb418c4c27c5c7f4205cdefba1c5284d99a045480578765` |
| 6 | `def` | [comm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variant2994efa8ac349b5f58cf15c64a2d574efc8a1bbe9a4e19972732b20c137cf4e5.lean/declarations/comm--5198e04f1f4342c865f9a2df.md) | 126 | `declaration-track:5198e04f1f4342c865f9a2dfe011d1a0b9e04df13b05522d63f6be01b4282e29` |
| 7 | `def` | [definedAtLeft](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variant2994efa8ac349b5f58cf15c64a2d574efc8a1bbe9a4e19972732b20c137cf4e5.lean/declarations/definedatleft--f37e241ee7f9dbb6ccb6f257.md) | 143 | `declaration-track:f37e241ee7f9dbb6ccb6f257e8fd47b9f5b539b09efd9916cc63881acb338cd8` |
| 8 | `def` | [definedAtRight](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variant2994efa8ac349b5f58cf15c64a2d574efc8a1bbe9a4e19972732b20c137cf4e5.lean/declarations/definedatright--24cf606a8abbbc37ae638610.md) | 164 | `declaration-track:24cf606a8abbbc37ae63861056354a6f9b677ff32d36f1f9ed3f47cb89735b5f` |
| 9 | `def` | [funOfIdeal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variant2994efa8ac349b5f58cf15c64a2d574efc8a1bbe9a4e19972732b20c137cf4e5.lean/declarations/funofideal--b3e148383f9f917afc7a3976.md) | 181 | `declaration-track:b3e148383f9f917afc7a3976d9fda3a11a2564dc1a9ec84305b5a8a23180775d` |
| 10 | `def` | [invOfIdeal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variant2994efa8ac349b5f58cf15c64a2d574efc8a1bbe9a4e19972732b20c137cf4e5.lean/declarations/invofideal--30f3f744174e4d65c9d9e689.md) | 189 | `declaration-track:30f3f744174e4d65c9d9e689705ea28ef6cb6fcdccd66cde96991e2d87d83da1` |
| 11 | `theorem` | [embedding_from_countable_to_dense](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variant2994efa8ac349b5f58cf15c64a2d574efc8a1bbe9a4e19972732b20c137cf4e5.lean/declarations/embedding-from-countable-to-dense--00c600a5bb80e8443245925a.md) | 202 | `result-track:00c600a5bb80e8443245925a499842764f45715fcf26c324d99d4eb05d978a10` |
| 12 | `theorem` | [iso_of_countable_dense](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variant2994efa8ac349b5f58cf15c64a2d574efc8a1bbe9a4e19972732b20c137cf4e5.lean/declarations/iso-of-countable-dense--5b76877277aacddbb5d36bf4.md) | 220 | `result-track:5b76877277aacddbb5d36bf447a1458bb3e01395affd6bef657c0038d6b2af08` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
