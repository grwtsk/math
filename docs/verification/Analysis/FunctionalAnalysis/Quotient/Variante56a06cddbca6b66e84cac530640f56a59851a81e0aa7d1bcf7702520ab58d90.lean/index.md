# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Quotient.Variante56a06cddbca6b66e84cac530640f56a59851a81e0aa7d1bcf7702520ab58d90

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "87178ec584f863f55c2dd99d08789dca1357986c",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Quotient/Variante56a06cddbca6b66e84cac530640f56a59851a81e0aa7d1bcf7702520ab58d90.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Quotient/Variante56a06cddbca6b66e84cac530640f56a59851a81e0aa7d1bcf7702520ab58d90.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Quotient/Variante56a06cddbca6b66e84cac530640f56a59851a81e0aa7d1bcf7702520ab58d90.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `87178ec584f863f55c2dd99d08789dca1357986c`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Quotient/Variante56a06cddbca6b66e84cac530640f56a59851a81e0aa7d1bcf7702520ab58d90.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Quotient/Variante56a06cddbca6b66e84cac530640f56a59851a81e0aa7d1bcf7702520ab58d90.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `MathDiscovery.Hilbert.Null` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Quotient.Basic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PreKernelSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/Quotient/Variante56a06cddbca6b66e84cac530640f56a59851a81e0aa7d1bcf7702520ab58d90.lean/declarations/prekernelspace--0cae732c2d5d10a3b2848d22.md) | 24 | `declaration-track:0cae732c2d5d10a3b2848d223c1ce0e300d2dd4af43665297ea9d235cfb6a25b` |
| 2 | `def` | [preKernelMk](../../../../../mathematics/Analysis/FunctionalAnalysis/Quotient/Variante56a06cddbca6b66e84cac530640f56a59851a81e0aa7d1bcf7702520ab58d90.lean/declarations/prekernelmk--f3678c3dbfbaa584964efe79.md) | 28 | `declaration-track:f3678c3dbfbaa584964efe79381ba2529cbf5cbec5b4cf91a7a42abfd769d64b` |
| 3 | `theorem` | [rawInner_respects_quotient](../../../../../mathematics/Analysis/FunctionalAnalysis/Quotient/Variante56a06cddbca6b66e84cac530640f56a59851a81e0aa7d1bcf7702520ab58d90.lean/declarations/rawinner-respects-quotient--a0e6dd70552aef35f4ef5d2d.md) | 33 | `result-track:a0e6dd70552aef35f4ef5d2d4ca02bf501286a4d6954a7ba716ce07259626f44` |
| 4 | `def` | [preKernelInner](../../../../../mathematics/Analysis/FunctionalAnalysis/Quotient/Variante56a06cddbca6b66e84cac530640f56a59851a81e0aa7d1bcf7702520ab58d90.lean/declarations/prekernelinner--56040a1f6594181f933da174.md) | 50 | `declaration-track:56040a1f6594181f933da1744ddcfe29a5e12b297e67bd7902fd091d363b9744` |
| 5 | `theorem` | [preKernelInner_wellDefined](../../../../../mathematics/Analysis/FunctionalAnalysis/Quotient/Variante56a06cddbca6b66e84cac530640f56a59851a81e0aa7d1bcf7702520ab58d90.lean/declarations/prekernelinner-welldefined--85a25e4b48515ae43d5ceb47.md) | 58 | `result-track:85a25e4b48515ae43d5ceb473f594e384d74d97314fcbea75528f1c43768fc4d` |
| 6 | `def` | [preKernelPreCore](../../../../../mathematics/Analysis/FunctionalAnalysis/Quotient/Variante56a06cddbca6b66e84cac530640f56a59851a81e0aa7d1bcf7702520ab58d90.lean/declarations/prekernelprecore--4109e53a153e20a19d63d8a9.md) | 66 | `declaration-track:4109e53a153e20a19d63d8a9ea0b7b747e46e7ba70b64b72745bcef50918416d` |
| 7 | `def` | [preKernelCore](../../../../../mathematics/Analysis/FunctionalAnalysis/Quotient/Variante56a06cddbca6b66e84cac530640f56a59851a81e0aa7d1bcf7702520ab58d90.lean/declarations/prekernelcore--f84a020f4f2a9d4a6dd56bda.md) | 114 | `declaration-track:f84a020f4f2a9d4a6dd56bda6d811d700fc8ca50b9bc67d8768a77850f742ae7` |
| 8 | `instance` | [instPreKernelNormedAddCommGroup](../../../../../mathematics/Analysis/FunctionalAnalysis/Quotient/Variante56a06cddbca6b66e84cac530640f56a59851a81e0aa7d1bcf7702520ab58d90.lean/declarations/instprekernelnormedaddcommgroup--3f0a9ad9a0a6f4e0df5d6a7b.md) | 126 | `declaration-track:3f0a9ad9a0a6f4e0df5d6a7b1f63ad01f709bfa2a6531e3f50cd4b119963b6b0` |
| 9 | `instance` | [instPreKernelInnerProductSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/Quotient/Variante56a06cddbca6b66e84cac530640f56a59851a81e0aa7d1bcf7702520ab58d90.lean/declarations/instprekernelinnerproductspace--ea98e38434c0113266188d1f.md) | 133 | `declaration-track:ea98e38434c0113266188d1fea7a0f9d04db1598f68cfedfb027e3728d885e7c` |
| 10 | `theorem` | [preKernel_inner_self_eq_zero_iff](../../../../../mathematics/Analysis/FunctionalAnalysis/Quotient/Variante56a06cddbca6b66e84cac530640f56a59851a81e0aa7d1bcf7702520ab58d90.lean/declarations/prekernel-inner-self-eq-zero-iff--5c8cfa2356fc938bf1949767.md) | 138 | `result-track:5c8cfa2356fc938bf19497674d66dca8e4efbf85f99c004b2a510e6bffb1933c` |
| 11 | `theorem` | [preKernelMk_eq_zero_iff](../../../../../mathematics/Analysis/FunctionalAnalysis/Quotient/Variante56a06cddbca6b66e84cac530640f56a59851a81e0aa7d1bcf7702520ab58d90.lean/declarations/prekernelmk-eq-zero-iff--d1ff1d80d3e1821ed077ee95.md) | 146 | `result-track:d1ff1d80d3e1821ed077ee954171cff9c01dda5b8ebeaae31b00e1cab1fb6145` |
| 12 | `theorem` | [preKernelInner_basisVector](../../../../../mathematics/Analysis/FunctionalAnalysis/Quotient/Variante56a06cddbca6b66e84cac530640f56a59851a81e0aa7d1bcf7702520ab58d90.lean/declarations/prekernelinner-basisvector--93614b39043bbdb562679521.md) | 155 | `result-track:93614b39043bbdb56267952193b6e09a606ac98cce9d5df7c6b0693165123ddd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
