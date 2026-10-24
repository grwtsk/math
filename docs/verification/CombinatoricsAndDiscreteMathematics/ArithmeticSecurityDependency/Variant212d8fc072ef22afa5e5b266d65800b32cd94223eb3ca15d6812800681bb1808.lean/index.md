# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.ArithmeticSecurityDependency.Variant212d8fc072ef22afa5e5b266d65800b32cd94223eb3ca15d6812800681bb1808

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "05273f5aaee7c5a6b42e53c34d1c0a24aedc2d91",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityDependency/Variant212d8fc072ef22afa5e5b266d65800b32cd94223eb3ca15d6812800681bb1808.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityDependency/Variant212d8fc072ef22afa5e5b266d65800b32cd94223eb3ca15d6812800681bb1808.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityDependency/Variant212d8fc072ef22afa5e5b266d65800b32cd94223eb3ca15d6812800681bb1808.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `05273f5aaee7c5a6b42e53c34d1c0a24aedc2d91`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityDependency/Variant212d8fc072ef22afa5e5b266d65800b32cd94223eb3ca15d6812800681bb1808.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityDependency/Variant212d8fc072ef22afa5e5b266d65800b32cd94223eb3ca15d6812800681bb1808.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.Resolution.ArithmeticModularityObligation` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ArithmeticSecurityObligation](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityDependency/Variant212d8fc072ef22afa5e5b266d65800b32cd94223eb3ca15d6812800681bb1808.lean/declarations/arithmeticsecurityobligation--f3c727f19864f820c3285269.md) | 14 | `declaration-track:f3c727f19864f820c328526955256f11ae941a617c9f0d591a781711906ac3f5` |
| 2 | `inductive` | [ArithmeticSecurityStage](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityDependency/Variant212d8fc072ef22afa5e5b266d65800b32cd94223eb3ca15d6812800681bb1808.lean/declarations/arithmeticsecuritystage--a862d33f9f5043df1e37143c.md) | 45 | `declaration-track:a862d33f9f5043df1e37143ce4a5dc26028cc87a97c96ba3983f5ee3f89b6fc0` |
| 3 | `def` | [ArithmeticSecurityObligation.stage](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityDependency/Variant212d8fc072ef22afa5e5b266d65800b32cd94223eb3ca15d6812800681bb1808.lean/declarations/arithmeticsecurityobligation-stage--d1965ad7cf218b40c2a9f2b7.md) | 55 | `declaration-track:d1965ad7cf218b40c2a9f2b7cd7479c59671029bec23e50a3e266af605ee239d` |
| 4 | `def` | [ArithmeticSecurityObligation.dependencies](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityDependency/Variant212d8fc072ef22afa5e5b266d65800b32cd94223eb3ca15d6812800681bb1808.lean/declarations/arithmeticsecurityobligation-dependencies--b219764904040830f9a24c82.md) | 87 | `declaration-track:b219764904040830f9a24c82e52a53f8706072096fc63bc74b1edde5457c7c26` |
| 5 | `def` | [arithmeticSecurityBridgeLedger](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityDependency/Variant212d8fc072ef22afa5e5b266d65800b32cd94223eb3ca15d6812800681bb1808.lean/declarations/arithmeticsecuritybridgeledger--5869a131551c9b883f9d78b3.md) | 136 | `declaration-track:5869a131551c9b883f9d78b39a36b5a28a91b2558772b6f37156cbce898d78a6` |
| 6 | `def` | [arithmeticSecurityComputationalLedger](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityDependency/Variant212d8fc072ef22afa5e5b266d65800b32cd94223eb3ca15d6812800681bb1808.lean/declarations/arithmeticsecuritycomputationalledger--2838d01ca5e4bbfe753d87b5.md) | 151 | `declaration-track:2838d01ca5e4bbfe753d87b51df8116875c603b16194c8cbe57becd59fb7cf9c` |
| 7 | `def` | [arithmeticSecurityConservativeFrontier](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityDependency/Variant212d8fc072ef22afa5e5b266d65800b32cd94223eb3ca15d6812800681bb1808.lean/declarations/arithmeticsecurityconservativefrontier--0ec0746f4a9d39390dcbd326.md) | 159 | `declaration-track:0ec0746f4a9d39390dcbd3269ac3c9bca47d90131025ea7e9b94f4acdc4e4966` |
| 8 | `theorem` | [arithmeticSecurityBridgeLedger_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityDependency/Variant212d8fc072ef22afa5e5b266d65800b32cd94223eb3ca15d6812800681bb1808.lean/declarations/arithmeticsecuritybridgeledger-card--a28504affc588dc9c7685fd7.md) | 171 | `result-track:a28504affc588dc9c7685fd74ed0d799eba15607db9f99753349e4fc17afbcae` |
| 9 | `theorem` | [arithmeticSecurityComputationalLedger_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityDependency/Variant212d8fc072ef22afa5e5b266d65800b32cd94223eb3ca15d6812800681bb1808.lean/declarations/arithmeticsecuritycomputationalledger-card--efc4e08cecf83ea91ce16a3a.md) | 175 | `result-track:efc4e08cecf83ea91ce16a3ac6a63550ff214e1748b55977657cc478f3f1a699` |
| 10 | `theorem` | [arithmeticSecurityLedgers_disjoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityDependency/Variant212d8fc072ef22afa5e5b266d65800b32cd94223eb3ca15d6812800681bb1808.lean/declarations/arithmeticsecurityledgers-disjoint--b15418bc849be8605e4a896a.md) | 179 | `result-track:b15418bc849be8605e4a896a239067223e425892f382f3ec6606805d6d1177c6` |
| 11 | `theorem` | [arithmeticSecurityLedgers_complete](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityDependency/Variant212d8fc072ef22afa5e5b266d65800b32cd94223eb3ca15d6812800681bb1808.lean/declarations/arithmeticsecurityledgers-complete--cc52142cd7a886252a37c3a7.md) | 184 | `result-track:cc52142cd7a886252a37c3a7f5c976977c6b54e8208e54ba9cf244309920104d` |
| 12 | `theorem` | [arithmeticSecurityConservativeFrontier_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityDependency/Variant212d8fc072ef22afa5e5b266d65800b32cd94223eb3ca15d6812800681bb1808.lean/declarations/arithmeticsecurityconservativefrontier-card--9fc6047efaefea3f279df7a0.md) | 190 | `result-track:9fc6047efaefea3f279df7a057236b6d028827cfd15150ad7c0ac2373fb93968` |
| 13 | `structure` | [SeparatedCouplingLedgers](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityDependency/Variant212d8fc072ef22afa5e5b266d65800b32cd94223eb3ca15d6812800681bb1808.lean/declarations/separatedcouplingledgers--fb62faa7023f8df2a7da10d0.md) | 195 | `declaration-track:fb62faa7023f8df2a7da10d06ba0829267b188566f38516efac932c19f4b2625` |
| 14 | `def` | [canonicalSeparatedCouplingLedgers](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityDependency/Variant212d8fc072ef22afa5e5b266d65800b32cd94223eb3ca15d6812800681bb1808.lean/declarations/canonicalseparatedcouplingledgers--facf3f07238e816a37f7ece3.md) | 202 | `declaration-track:facf3f07238e816a37f7ece3a47b49f42fc1ca075f517a1d45e4eeb3ffd6bfe5` |
| 15 | `inductive` | [ArithmeticSecurityVerdict](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityDependency/Variant212d8fc072ef22afa5e5b266d65800b32cd94223eb3ca15d6812800681bb1808.lean/declarations/arithmeticsecurityverdict--a6091751865fcc2a2717a2b2.md) | 210 | `declaration-track:a6091751865fcc2a2717a2b2748d1a9b34c21f8616fc42305f314cf9b1ce1db4` |
| 16 | `def` | [IsCertified](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityDependency/Variant212d8fc072ef22afa5e5b266d65800b32cd94223eb3ca15d6812800681bb1808.lean/declarations/iscertified--f73d7e6a636aba30a07e8b2b.md) | 221 | `declaration-track:f73d7e6a636aba30a07e8b2b7d65f3b64313116137728a93a5dc23b7ef334983` |
| 17 | `def` | [IsRefuted](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityDependency/Variant212d8fc072ef22afa5e5b266d65800b32cd94223eb3ca15d6812800681bb1808.lean/declarations/isrefuted--a74b3f317e2e1bd1023277a1.md) | 226 | `declaration-track:a74b3f317e2e1bd1023277a19efa4173e0deeaaca38cfeac9397c61b00a502df` |
| 18 | `def` | [unknowns](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityDependency/Variant212d8fc072ef22afa5e5b266d65800b32cd94223eb3ca15d6812800681bb1808.lean/declarations/unknowns--0590fee8845484a55be6628f.md) | 231 | `declaration-track:0590fee8845484a55be6628fce4d4d433718b80ce233ee40f208f0a808d1a3c5` |
| 19 | `def` | [arithmeticSecurityCouplingVerdict](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityDependency/Variant212d8fc072ef22afa5e5b266d65800b32cd94223eb3ca15d6812800681bb1808.lean/declarations/arithmeticsecuritycouplingverdict--a0bd07130e5f5962ccb0cb21.md) | 244 | `declaration-track:a0bd07130e5f5962ccb0cb21d5c44b17104786b8604a1ecc8874f72af2ca2ef7` |
| 20 | `theorem` | [arithmeticSecurityCouplingVerdict_unknowns](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityDependency/Variant212d8fc072ef22afa5e5b266d65800b32cd94223eb3ca15d6812800681bb1808.lean/declarations/arithmeticsecuritycouplingverdict-unknowns--58102efba7377718e7ae3c7e.md) | 252 | `result-track:58102efba7377718e7ae3c7e63f4570f8edd7d1a69943e5b0111fbcb8b0d734e` |
| 21 | `theorem` | [arithmeticSecurityCouplingVerdict_not_certified](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityDependency/Variant212d8fc072ef22afa5e5b266d65800b32cd94223eb3ca15d6812800681bb1808.lean/declarations/arithmeticsecuritycouplingverdict-not-certified--7fe0b98e857b166b856b7f8f.md) | 259 | `result-track:7fe0b98e857b166b856b7f8f849f97fd2dd58bfaefb36831462f4649e86e86dd` |
| 22 | `theorem` | [arithmeticSecurityCouplingVerdict_not_refuted](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticSecurityDependency/Variant212d8fc072ef22afa5e5b266d65800b32cd94223eb3ca15d6812800681bb1808.lean/declarations/arithmeticsecuritycouplingverdict-not-refuted--c8bae8d818e6a27f2ca5c744.md) | 265 | `result-track:c8bae8d818e6a27f2ca5c744157e5c471e1421339d91202714f9e187741e60d2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
