# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.NatAntidiagonal.Variant4c4d9e7283e3ddc6115838d8f57704d3b7cb739707ce01e60bd37feffd02ee5c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4175f8a6939ce3489681d1c048c8b4c5585fcb1e",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant4c4d9e7283e3ddc6115838d8f57704d3b7cb739707ce01e60bd37feffd02ee5c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant4c4d9e7283e3ddc6115838d8f57704d3b7cb739707ce01e60bd37feffd02ee5c.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant4c4d9e7283e3ddc6115838d8f57704d3b7cb739707ce01e60bd37feffd02ee5c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4175f8a6939ce3489681d1c048c8b4c5585fcb1e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant4c4d9e7283e3ddc6115838d8f57704d3b7cb739707ce01e60bd37feffd02ee5c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant4c4d9e7283e3ddc6115838d8f57704d3b7cb739707ce01e60bd37feffd02ee5c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Fin` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Fin.Tuple` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.NatAntidiagonal` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Fin.Tuple` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [antidiagonalTuple](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant4c4d9e7283e3ddc6115838d8f57704d3b7cb739707ce01e60bd37feffd02ee5c.lean/declarations/antidiagonaltuple--174e66a1da5a880713508dfe.md) | 59 | `declaration-track:174e66a1da5a880713508dfe852bd287ba91a9957525c2985ce2705cd98ad099` |
| 2 | `theorem` | [antidiagonalTuple_zero_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant4c4d9e7283e3ddc6115838d8f57704d3b7cb739707ce01e60bd37feffd02ee5c.lean/declarations/antidiagonaltuple-zero-zero--139c2b4e944bb02259b1efea.md) | 67 | `result-track:139c2b4e944bb02259b1efea3911c46b5e77d54b82f7dc92f090bac27e3bcd3c` |
| 3 | `theorem` | [antidiagonalTuple_zero_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant4c4d9e7283e3ddc6115838d8f57704d3b7cb739707ce01e60bd37feffd02ee5c.lean/declarations/antidiagonaltuple-zero-succ--8428ad0239f147043b43b414.md) | 71 | `result-track:8428ad0239f147043b43b4141f77363bae918fa2f41e111b0311cb70ff329c3c` |
| 4 | `theorem` | [mem_antidiagonalTuple](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant4c4d9e7283e3ddc6115838d8f57704d3b7cb739707ce01e60bd37feffd02ee5c.lean/declarations/mem-antidiagonaltuple--858bbc4014b397215b17baa3.md) | 74 | `result-track:858bbc4014b397215b17baa33966c245b9cb156fca8040a547c49f3e1b6466c5` |
| 5 | `theorem` | [nodup_antidiagonalTuple](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant4c4d9e7283e3ddc6115838d8f57704d3b7cb739707ce01e60bd37feffd02ee5c.lean/declarations/nodup-antidiagonaltuple--a0399a51d326c48e1f7b4e5e.md) | 88 | `result-track:a0399a51d326c48e1f7b4e5ed0256632db22caca7d70b3058ed1d54d080b64d9` |
| 6 | `theorem` | [antidiagonalTuple_zero_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant4c4d9e7283e3ddc6115838d8f57704d3b7cb739707ce01e60bd37feffd02ee5c.lean/declarations/antidiagonaltuple-zero-right--fe99fcd2fd99954eafdbd9ea.md) | 113 | `result-track:fe99fcd2fd99954eafdbd9eaa0904a97522b35287d887abf2eba1af7ac4134e9` |
| 7 | `theorem` | [antidiagonalTuple_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant4c4d9e7283e3ddc6115838d8f57704d3b7cb739707ce01e60bd37feffd02ee5c.lean/declarations/antidiagonaltuple-one--505b0a0d51df86b5f575d6c8.md) | 121 | `result-track:505b0a0d51df86b5f575d6c8b3fc3c6231756f44dc6c58dcf61c194e13814c9a` |
| 8 | `theorem` | [antidiagonalTuple_two](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant4c4d9e7283e3ddc6115838d8f57704d3b7cb739707ce01e60bd37feffd02ee5c.lean/declarations/antidiagonaltuple-two--e2ec713aaed58557fac975d9.md) | 131 | `result-track:e2ec713aaed58557fac975d914b077d007c81ab37c1a6413b2eec5cb22195b3e` |
| 9 | `theorem` | [antidiagonalTuple_pairwise_pi_lex](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant4c4d9e7283e3ddc6115838d8f57704d3b7cb739707ce01e60bd37feffd02ee5c.lean/declarations/antidiagonaltuple-pairwise-pi-lex--00cdbe0f582ce0ff1a49823b.md) | 138 | `result-track:00cdbe0f582ce0ff1a49823b4d99afdaa80def0a921a65262d5e737c01960a9e` |
| 10 | `def` | [antidiagonalTuple](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant4c4d9e7283e3ddc6115838d8f57704d3b7cb739707ce01e60bd37feffd02ee5c.lean/declarations/antidiagonaltuple--ceeeaa189e3e0b68889eba92.md) | 169 | `declaration-track:ceeeaa189e3e0b68889eba921d50a62514f96276cd1b27a4ae7194aaafd92a3e` |
| 11 | `theorem` | [antidiagonalTuple_zero_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant4c4d9e7283e3ddc6115838d8f57704d3b7cb739707ce01e60bd37feffd02ee5c.lean/declarations/antidiagonaltuple-zero-zero--56058f03112dd6a7a060ea03.md) | 173 | `result-track:56058f03112dd6a7a060ea03381487e327139036c15788910d951a295630829f` |
| 12 | `theorem` | [antidiagonalTuple_zero_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant4c4d9e7283e3ddc6115838d8f57704d3b7cb739707ce01e60bd37feffd02ee5c.lean/declarations/antidiagonaltuple-zero-succ--833a12151990285c01f99f00.md) | 177 | `result-track:833a12151990285c01f99f00e4b65e20935eda99d4dc851a527fe22bf0ad230a` |
| 13 | `theorem` | [mem_antidiagonalTuple](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant4c4d9e7283e3ddc6115838d8f57704d3b7cb739707ce01e60bd37feffd02ee5c.lean/declarations/mem-antidiagonaltuple--30caf36a3ff46ff39245c6a2.md) | 180 | `result-track:30caf36a3ff46ff39245c6a2f87bee9c2915c7d9346e5ce0350b9581ebc6619c` |
| 14 | `theorem` | [nodup_antidiagonalTuple](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant4c4d9e7283e3ddc6115838d8f57704d3b7cb739707ce01e60bd37feffd02ee5c.lean/declarations/nodup-antidiagonaltuple--b052cdf1567145524ec2df69.md) | 184 | `result-track:b052cdf1567145524ec2df690c83eea3b1e99c678463eaeb353d13682e19607c` |
| 15 | `theorem` | [antidiagonalTuple_zero_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant4c4d9e7283e3ddc6115838d8f57704d3b7cb739707ce01e60bd37feffd02ee5c.lean/declarations/antidiagonaltuple-zero-right--2ca96b479293717a2811aa5e.md) | 187 | `result-track:2ca96b479293717a2811aa5e6eec05df079512ab24aa65d867c8493b176956c0` |
| 16 | `theorem` | [antidiagonalTuple_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant4c4d9e7283e3ddc6115838d8f57704d3b7cb739707ce01e60bd37feffd02ee5c.lean/declarations/antidiagonaltuple-one--1f4ffaf818feb964688eca61.md) | 191 | `result-track:1f4ffaf818feb964688eca617ed576ea48d297236abfb010d579ff91bb03b8dc` |
| 17 | `theorem` | [antidiagonalTuple_two](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant4c4d9e7283e3ddc6115838d8f57704d3b7cb739707ce01e60bd37feffd02ee5c.lean/declarations/antidiagonaltuple-two--ca2c8908095504278815f290.md) | 194 | `result-track:ca2c8908095504278815f29093db98943d70b1e515d803f4ae0e01299f80e63d` |
| 18 | `def` | [antidiagonalTuple](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant4c4d9e7283e3ddc6115838d8f57704d3b7cb739707ce01e60bd37feffd02ee5c.lean/declarations/antidiagonaltuple--6cc12887c7001d4acb911628.md) | 206 | `declaration-track:6cc12887c7001d4acb91162836ef19a4bdba128e3548c5c686ab8faff1041804` |
| 19 | `theorem` | [antidiagonalTuple_zero_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant4c4d9e7283e3ddc6115838d8f57704d3b7cb739707ce01e60bd37feffd02ee5c.lean/declarations/antidiagonaltuple-zero-zero--3d2c8432bbe060e636698719.md) | 210 | `result-track:3d2c8432bbe060e636698719615c53bc738179c17259a3e66c6b266d1fa254fa` |
| 20 | `theorem` | [antidiagonalTuple_zero_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant4c4d9e7283e3ddc6115838d8f57704d3b7cb739707ce01e60bd37feffd02ee5c.lean/declarations/antidiagonaltuple-zero-succ--68e7c0db0aedd0f0bec0f3f1.md) | 214 | `result-track:68e7c0db0aedd0f0bec0f3f1606f07f2f4d449dce8627ee665d499bc76d1c1de` |
| 21 | `theorem` | [mem_antidiagonalTuple](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant4c4d9e7283e3ddc6115838d8f57704d3b7cb739707ce01e60bd37feffd02ee5c.lean/declarations/mem-antidiagonaltuple--074467e709d40dcfc12cc58c.md) | 217 | `result-track:074467e709d40dcfc12cc58c406605afe99f53a91a942cb52107143c9c76226e` |
| 22 | `theorem` | [antidiagonalTuple_zero_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant4c4d9e7283e3ddc6115838d8f57704d3b7cb739707ce01e60bd37feffd02ee5c.lean/declarations/antidiagonaltuple-zero-right--7f8f50eb8be7911368893d46.md) | 221 | `result-track:7f8f50eb8be7911368893d468c82d68f2efb9c5f5cd00db465dc005bd05fa6ec` |
| 23 | `theorem` | [antidiagonalTuple_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant4c4d9e7283e3ddc6115838d8f57704d3b7cb739707ce01e60bd37feffd02ee5c.lean/declarations/antidiagonaltuple-one--7b65cb08334f0d28932db344.md) | 225 | `result-track:7b65cb08334f0d28932db344ad8c2be050d15f8e93c264b7252c96a394e6cd60` |
| 24 | `theorem` | [antidiagonalTuple_two](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant4c4d9e7283e3ddc6115838d8f57704d3b7cb739707ce01e60bd37feffd02ee5c.lean/declarations/antidiagonaltuple-two--d73c11c8aaad1bb1365bdf44.md) | 228 | `result-track:d73c11c8aaad1bb1365bdf447f94ad60baa2b6204171997dec1de94c1f4f073a` |
| 25 | `def` | [sigmaAntidiagonalTupleEquivTuple](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant4c4d9e7283e3ddc6115838d8f57704d3b7cb739707ce01e60bd37feffd02ee5c.lean/declarations/sigmaantidiagonaltupleequivtuple--fd5df74b470cc5c1e76f92a6.md) | 239 | `declaration-track:fd5df74b470cc5c1e76f92a612283e10c7327c0db50ef1edcbdc2b82c02cb1d2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
