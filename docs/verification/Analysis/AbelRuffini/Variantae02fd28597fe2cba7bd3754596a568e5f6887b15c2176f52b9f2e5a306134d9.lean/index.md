# Verification target: GRWTSK.Analysis.AbelRuffini.Variantae02fd28597fe2cba7bd3754596a568e5f6887b15c2176f52b9f2e5a306134d9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6fdb9396eccdb88b829d6e0fae24870a97997923",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AbelRuffini/Variantae02fd28597fe2cba7bd3754596a568e5f6887b15c2176f52b9f2e5a306134d9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/AbelRuffini/Variantae02fd28597fe2cba7bd3754596a568e5f6887b15c2176f52b9f2e5a306134d9.lean/index.md) · [Full source](../../../../mathematics/Analysis/AbelRuffini/Variantae02fd28597fe2cba7bd3754596a568e5f6887b15c2176f52b9f2e5a306134d9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6fdb9396eccdb88b829d6e0fae24870a97997923`.

Source path: `GRWTSK/Analysis/AbelRuffini/Variantae02fd28597fe2cba7bd3754596a568e5f6887b15c2176f52b9f2e5a306134d9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AbelRuffini/Variantae02fd28597fe2cba7bd3754596a568e5f6887b15c2176f52b9f2e5a306134d9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.LocalExtr.Polynomial` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Polynomial.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.AbelRuffini` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Eisenstein.Criterion` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Int.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.RootsOfUnity.Minpoly` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Φ](../../../../mathematics/Analysis/AbelRuffini/Variantae02fd28597fe2cba7bd3754596a568e5f6887b15c2176f52b9f2e5a306134d9.lean/declarations/anonymous--c4b8b23236b00f26acf98650.md) | 42 | `declaration-track:c4b8b23236b00f26acf986501608e30bafd94c4de12091bda8c6bd6e9b43efe4` |
| 2 | `theorem` | [map_Phi](../../../../mathematics/Analysis/AbelRuffini/Variantae02fd28597fe2cba7bd3754596a568e5f6887b15c2176f52b9f2e5a306134d9.lean/declarations/map-phi--84f6d2a0b1e8660ec404cb68.md) | 48 | `result-track:84f6d2a0b1e8660ec404cb68b4e1a557333e34962756a57219046612cfb22347` |
| 3 | `theorem` | [coeff_zero_Phi](../../../../mathematics/Analysis/AbelRuffini/Variantae02fd28597fe2cba7bd3754596a568e5f6887b15c2176f52b9f2e5a306134d9.lean/declarations/coeff-zero-phi--6bd4a07396f699b173634445.md) | 51 | `result-track:6bd4a07396f699b1736344455aafd3cb96fe4fcc14e675b45d92b50eb4a16af6` |
| 4 | `theorem` | [coeff_five_Phi](../../../../mathematics/Analysis/AbelRuffini/Variantae02fd28597fe2cba7bd3754596a568e5f6887b15c2176f52b9f2e5a306134d9.lean/declarations/coeff-five-phi--51d1b640332b0daa38f3ff7b.md) | 54 | `result-track:51d1b640332b0daa38f3ff7bd8f19a708fb5a8b6462aae5906ab2da172a87a9f` |
| 5 | `theorem` | [degree_Phi](../../../../mathematics/Analysis/AbelRuffini/Variantae02fd28597fe2cba7bd3754596a568e5f6887b15c2176f52b9f2e5a306134d9.lean/declarations/degree-phi--bac4869b4e6b47fbec05c120.md) | 59 | `result-track:bac4869b4e6b47fbec05c1208ad82c499da2d99325ec217c3aaa5ea858a9baf7` |
| 6 | `theorem` | [natDegree_Phi](../../../../mathematics/Analysis/AbelRuffini/Variantae02fd28597fe2cba7bd3754596a568e5f6887b15c2176f52b9f2e5a306134d9.lean/declarations/natdegree-phi--2f18c15412ff5ce798783336.md) | 66 | `result-track:2f18c15412ff5ce79878333618371dbfaa605cdfb2a5c291247105ee98fe2f69` |
| 7 | `theorem` | [leadingCoeff_Phi](../../../../mathematics/Analysis/AbelRuffini/Variantae02fd28597fe2cba7bd3754596a568e5f6887b15c2176f52b9f2e5a306134d9.lean/declarations/leadingcoeff-phi--688165bb332fd00873805bb9.md) | 69 | `result-track:688165bb332fd00873805bb9aaf3922f3c3da6f6283316912b2fd6542398cc12` |
| 8 | `theorem` | [monic_Phi](../../../../mathematics/Analysis/AbelRuffini/Variantae02fd28597fe2cba7bd3754596a568e5f6887b15c2176f52b9f2e5a306134d9.lean/declarations/monic-phi--65936fe48b19057d964314c2.md) | 72 | `result-track:65936fe48b19057d964314c28d7004b7e28d195281d47a82c6f480bdec17c23b` |
| 9 | `theorem` | [irreducible_Phi](../../../../mathematics/Analysis/AbelRuffini/Variantae02fd28597fe2cba7bd3754596a568e5f6887b15c2176f52b9f2e5a306134d9.lean/declarations/irreducible-phi--26bceba22a95c8437f114d38.md) | 75 | `result-track:26bceba22a95c8437f114d388118b83bee4d3e683b83401d3f4bf3d81304edb0` |
| 10 | `theorem` | [real_roots_Phi_le](../../../../mathematics/Analysis/AbelRuffini/Variantae02fd28597fe2cba7bd3754596a568e5f6887b15c2176f52b9f2e5a306134d9.lean/declarations/real-roots-phi-le--9ac51ebda39650092e1e92a5.md) | 97 | `result-track:9ac51ebda39650092e1e92a501674d437c97403671027aad3e696764838b6c96` |
| 11 | `theorem` | [real_roots_Phi_ge_aux](../../../../mathematics/Analysis/AbelRuffini/Variantae02fd28597fe2cba7bd3754596a568e5f6887b15c2176f52b9f2e5a306134d9.lean/declarations/real-roots-phi-ge-aux--e98d86813a0ebe4f2906a213.md) | 107 | `result-track:e98d86813a0ebe4f2906a213be04ce253eaa06899d885c30d269760a5bf98329` |
| 12 | `theorem` | [real_roots_Phi_ge](../../../../mathematics/Analysis/AbelRuffini/Variantae02fd28597fe2cba7bd3754596a568e5f6887b15c2176f52b9f2e5a306134d9.lean/declarations/real-roots-phi-ge--d1f442b3562e42c0c8893cb5.md) | 136 | `result-track:d1f442b3562e42c0c8893cb5794b17c9286e2f06126ebf82d967d7b0c816657e` |
| 13 | `theorem` | [complex_roots_Phi](../../../../mathematics/Analysis/AbelRuffini/Variantae02fd28597fe2cba7bd3754596a568e5f6887b15c2176f52b9f2e5a306134d9.lean/declarations/complex-roots-phi--76478a3f40f8c1c27b0354f1.md) | 145 | `result-track:76478a3f40f8c1c27b0354f121fbbacaf9931342843ff6057ea69880b762e44a` |
| 14 | `theorem` | [gal_Phi](../../../../mathematics/Analysis/AbelRuffini/Variantae02fd28597fe2cba7bd3754596a568e5f6887b15c2176f52b9f2e5a306134d9.lean/declarations/gal-phi--eb5ad0ae688b11c1cf826ac4.md) | 148 | `result-track:eb5ad0ae688b11c1cf826ac4faea1c027946933c5e62cfd8cc0acd4e04385964` |
| 15 | `theorem` | [not_solvable_by_rad](../../../../mathematics/Analysis/AbelRuffini/Variantae02fd28597fe2cba7bd3754596a568e5f6887b15c2176f52b9f2e5a306134d9.lean/declarations/not-solvable-by-rad--e76a84aaaf35b1e6df1da826.md) | 157 | `result-track:e76a84aaaf35b1e6df1da826112842f4a1de9cb96cbfdb6313bdc05ce2b0352d` |
| 16 | `theorem` | [not_solvable_by_rad'](../../../../mathematics/Analysis/AbelRuffini/Variantae02fd28597fe2cba7bd3754596a568e5f6887b15c2176f52b9f2e5a306134d9.lean/declarations/not-solvable-by-rad--265da0a6d19b5c3a7370b83f.md) | 166 | `result-track:265da0a6d19b5c3a7370b83f99b28e8497ad607056c031f0a7631683702660be` |
| 17 | `theorem` | [exists_not_solvable_by_rad](../../../../mathematics/Analysis/AbelRuffini/Variantae02fd28597fe2cba7bd3754596a568e5f6887b15c2176f52b9f2e5a306134d9.lean/declarations/exists-not-solvable-by-rad--c59a6309e3ecd3f4d1af01e7.md) | 170 | `result-track:c59a6309e3ecd3f4d1af01e774b572bf5d57e9e9c90ca73c30fbbc531a05b69d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
