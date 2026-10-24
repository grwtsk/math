# Verification target: GRWTSK.Analysis.AbelRuffini.Variant71899a9dca9cacbeea5de0c4541f8ebfd5bbf98967f6d6877e370aa3d3197f3d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "79ce2b28fb13359b00642d8e3d260cc9bdaad170",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AbelRuffini/Variant71899a9dca9cacbeea5de0c4541f8ebfd5bbf98967f6d6877e370aa3d3197f3d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/AbelRuffini/Variant71899a9dca9cacbeea5de0c4541f8ebfd5bbf98967f6d6877e370aa3d3197f3d.lean/index.md) · [Full source](../../../../mathematics/Analysis/AbelRuffini/Variant71899a9dca9cacbeea5de0c4541f8ebfd5bbf98967f6d6877e370aa3d3197f3d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `79ce2b28fb13359b00642d8e3d260cc9bdaad170`.

Source path: `GRWTSK/Analysis/AbelRuffini/Variant71899a9dca9cacbeea5de0c4541f8ebfd5bbf98967f6d6877e370aa3d3197f3d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AbelRuffini/Variant71899a9dca9cacbeea5de0c4541f8ebfd5bbf98967f6d6877e370aa3d3197f3d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.LocalExtr.Polynomial` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.AbelRuffini` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.RootsOfUnity.Minpoly` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.EisensteinCriterion` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../mathematics/Analysis/AbelRuffini/Variant71899a9dca9cacbeea5de0c4541f8ebfd5bbf98967f6d6877e370aa3d3197f3d.lean/declarations/macro-rules--cd1b8095f6af45fb5c5f198b.md) | 34 | `declaration-track:cd1b8095f6af45fb5c5f198beb571d3f3d5506c10faf33bbecd19d0a7a9b36e2` |
| 2 | `def` | [Φ](../../../../mathematics/Analysis/AbelRuffini/Variant71899a9dca9cacbeea5de0c4541f8ebfd5bbf98967f6d6877e370aa3d3197f3d.lean/declarations/anonymous--c6d5e7aedb4d39b24d754266.md) | 45 | `declaration-track:c6d5e7aedb4d39b24d754266378c778d4dfd47569fa9f4b6a8e8e52d3750429b` |
| 3 | `theorem` | [map_Phi](../../../../mathematics/Analysis/AbelRuffini/Variant71899a9dca9cacbeea5de0c4541f8ebfd5bbf98967f6d6877e370aa3d3197f3d.lean/declarations/map-phi--8b4c402e543fd136171d8db9.md) | 52 | `result-track:8b4c402e543fd136171d8db9528f051fcc3825490ba4fd46382f197f78e8ecb5` |
| 4 | `theorem` | [coeff_zero_Phi](../../../../mathematics/Analysis/AbelRuffini/Variant71899a9dca9cacbeea5de0c4541f8ebfd5bbf98967f6d6877e370aa3d3197f3d.lean/declarations/coeff-zero-phi--7b5364d77dad7a0e0a243ccd.md) | 56 | `result-track:7b5364d77dad7a0e0a243ccd915ffc2b7122a7dec1ceb8e34d499ca812522204` |
| 5 | `theorem` | [coeff_five_Phi](../../../../mathematics/Analysis/AbelRuffini/Variant71899a9dca9cacbeea5de0c4541f8ebfd5bbf98967f6d6877e370aa3d3197f3d.lean/declarations/coeff-five-phi--a53703cb6e634a9c1cc2cb70.md) | 60 | `result-track:a53703cb6e634a9c1cc2cb70073af872ca3bf124a6f2ae2f1ca6e9ccd81c6159` |
| 6 | `theorem` | [degree_Phi](../../../../mathematics/Analysis/AbelRuffini/Variant71899a9dca9cacbeea5de0c4541f8ebfd5bbf98967f6d6877e370aa3d3197f3d.lean/declarations/degree-phi--80d6507f5ea67672cca39bbb.md) | 66 | `result-track:80d6507f5ea67672cca39bbb092cdcb17897c4300b859e9f03abae91682f86f8` |
| 7 | `theorem` | [natDegree_Phi](../../../../mathematics/Analysis/AbelRuffini/Variant71899a9dca9cacbeea5de0c4541f8ebfd5bbf98967f6d6877e370aa3d3197f3d.lean/declarations/natdegree-phi--50bc533db7564c9fe7ee2a5c.md) | 74 | `result-track:50bc533db7564c9fe7ee2a5c83fbfb41966d87dba3567c42642e8246393c07b8` |
| 8 | `theorem` | [leadingCoeff_Phi](../../../../mathematics/Analysis/AbelRuffini/Variant71899a9dca9cacbeea5de0c4541f8ebfd5bbf98967f6d6877e370aa3d3197f3d.lean/declarations/leadingcoeff-phi--128ae6b09e45116f91bb323d.md) | 78 | `result-track:128ae6b09e45116f91bb323d121dcbbe2a41af63a5d04585b0e5358365d5fa65` |
| 9 | `theorem` | [monic_Phi](../../../../mathematics/Analysis/AbelRuffini/Variant71899a9dca9cacbeea5de0c4541f8ebfd5bbf98967f6d6877e370aa3d3197f3d.lean/declarations/monic-phi--a71d671467f5697fadae0227.md) | 82 | `result-track:a71d671467f5697fadae0227feab668bfb4b7b3f2a4c6030a70eb18389ad2373` |
| 10 | `theorem` | [irreducible_Phi](../../../../mathematics/Analysis/AbelRuffini/Variant71899a9dca9cacbeea5de0c4541f8ebfd5bbf98967f6d6877e370aa3d3197f3d.lean/declarations/irreducible-phi--c93f42b9c0aabac01ecbc534.md) | 86 | `result-track:c93f42b9c0aabac01ecbc534c42b9e82e0f3bf057a600bfc98fc69c2ffa5ffbd` |
| 11 | `theorem` | [real_roots_Phi_le](../../../../mathematics/Analysis/AbelRuffini/Variant71899a9dca9cacbeea5de0c4541f8ebfd5bbf98967f6d6877e370aa3d3197f3d.lean/declarations/real-roots-phi-le--5e40170a74f9f2cc72f61421.md) | 106 | `result-track:5e40170a74f9f2cc72f61421128cd14402dd17bd1eb5ba30ad51537e41d93768` |
| 12 | `theorem` | [real_roots_Phi_ge_aux](../../../../mathematics/Analysis/AbelRuffini/Variant71899a9dca9cacbeea5de0c4541f8ebfd5bbf98967f6d6877e370aa3d3197f3d.lean/declarations/real-roots-phi-ge-aux--d5c9e5a10752f851e5dc0e58.md) | 117 | `result-track:d5c9e5a10752f851e5dc0e5874a0d52fe7e86de69c8cda4e46d499a403662be4` |
| 13 | `theorem` | [real_roots_Phi_ge](../../../../mathematics/Analysis/AbelRuffini/Variant71899a9dca9cacbeea5de0c4541f8ebfd5bbf98967f6d6877e370aa3d3197f3d.lean/declarations/real-roots-phi-ge--cac1f0e2d8e2aac3a12841da.md) | 149 | `result-track:cac1f0e2d8e2aac3a12841dad488e837cc2e14344ed5e8d6d53fdcde4fb60efa` |
| 14 | `theorem` | [complex_roots_Phi](../../../../mathematics/Analysis/AbelRuffini/Variant71899a9dca9cacbeea5de0c4541f8ebfd5bbf98967f6d6877e370aa3d3197f3d.lean/declarations/complex-roots-phi--1bdac55bc5fa9be5265c3e1c.md) | 159 | `result-track:1bdac55bc5fa9be5265c3e1c4ab6d051112a85ed932fd3d2270d446910e82790` |
| 15 | `theorem` | [gal_Phi](../../../../mathematics/Analysis/AbelRuffini/Variant71899a9dca9cacbeea5de0c4541f8ebfd5bbf98967f6d6877e370aa3d3197f3d.lean/declarations/gal-phi--fd68d9650828050d5995695f.md) | 163 | `result-track:fd68d9650828050d5995695f919ea98c87c188b84336c0710d827a78da4d2b3a` |
| 16 | `theorem` | [not_solvable_by_rad](../../../../mathematics/Analysis/AbelRuffini/Variant71899a9dca9cacbeea5de0c4541f8ebfd5bbf98967f6d6877e370aa3d3197f3d.lean/declarations/not-solvable-by-rad--df1194eb187c8154bbb04833.md) | 173 | `result-track:df1194eb187c8154bbb048335785293db1c73ca023543b454ee444b1247da511` |
| 17 | `theorem` | [not_solvable_by_rad'](../../../../mathematics/Analysis/AbelRuffini/Variant71899a9dca9cacbeea5de0c4541f8ebfd5bbf98967f6d6877e370aa3d3197f3d.lean/declarations/not-solvable-by-rad--cdc82ffa25fc865c4e12b059.md) | 183 | `result-track:cdc82ffa25fc865c4e12b059aaa2c1b1c38be7a91b75bbee4cf5572b497fc813` |
| 18 | `theorem` | [exists_not_solvable_by_rad](../../../../mathematics/Analysis/AbelRuffini/Variant71899a9dca9cacbeea5de0c4541f8ebfd5bbf98967f6d6877e370aa3d3197f3d.lean/declarations/exists-not-solvable-by-rad--55076562148dea90b5ee6a0c.md) | 188 | `result-track:55076562148dea90b5ee6a0c917863f726e382398ff771be84943bb5d756285c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
