# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.DirichletConvolution.Variantd4ffe981116bc81536167af43877db018122c43106e1ce9a99a0d2735e1a1f60

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ed203e70a5770766786c1851fe5a57422f039e0e",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DirichletConvolution/Variantd4ffe981116bc81536167af43877db018122c43106e1ce9a99a0d2735e1a1f60.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirichletConvolution/Variantd4ffe981116bc81536167af43877db018122c43106e1ce9a99a0d2735e1a1f60.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirichletConvolution/Variantd4ffe981116bc81536167af43877db018122c43106e1ce9a99a0d2735e1a1f60.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ed203e70a5770766786c1851fe5a57422f039e0e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/DirichletConvolution/Variantd4ffe981116bc81536167af43877db018122c43106e1ce9a99a0d2735e1a1f60.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/DirichletConvolution/Variantd4ffe981116bc81536167af43877db018122c43106e1ce9a99a0d2735e1a1f60.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.NumberTheory.MultiplicativeFunction` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.NatDivisors` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dirichletConv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirichletConvolution/Variantd4ffe981116bc81536167af43877db018122c43106e1ce9a99a0d2735e1a1f60.lean/declarations/dirichletconv--17be231c004d77eb161c5efe.md) | 24 | `declaration-track:17be231c004d77eb161c5efeeb0b3887d2f364994794c2164e9f12a80d589b67` |
| 2 | `def` | [dirichletEpsilon](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirichletConvolution/Variantd4ffe981116bc81536167af43877db018122c43106e1ce9a99a0d2735e1a1f60.lean/declarations/dirichletepsilon--f657a971642c5cd39c365985.md) | 29 | `declaration-track:f657a971642c5cd39c36598527c710bfe6612da591cdd04d88bc93beb88efd5e` |
| 3 | `theorem` | [dirichletConv_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirichletConvolution/Variantd4ffe981116bc81536167af43877db018122c43106e1ce9a99a0d2735e1a1f60.lean/declarations/dirichletconv-apply--312f75ef59340e79a3739df1.md) | 33 | `result-track:312f75ef59340e79a3739df12475af6821d14c48c2798c50f3c7938a3ca4f6b2` |
| 4 | `theorem` | [dirichletEpsilon_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirichletConvolution/Variantd4ffe981116bc81536167af43877db018122c43106e1ce9a99a0d2735e1a1f60.lean/declarations/dirichletepsilon-one--227cb19e7939a92b5bc5566b.md) | 41 | `result-track:227cb19e7939a92b5bc5566b72ccc091c9319982df1110dd94f7a976b4892010` |
| 5 | `theorem` | [dirichletEpsilon_of_ne_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirichletConvolution/Variantd4ffe981116bc81536167af43877db018122c43106e1ce9a99a0d2735e1a1f60.lean/declarations/dirichletepsilon-of-ne-one--34835655c5ba3c55cf58f068.md) | 46 | `result-track:34835655c5ba3c55cf58f0684f5f7636cdc300b2d5c4d6d503d57f1657541d4f` |
| 6 | `theorem` | [dirichletConv_epsilon_left_at_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirichletConvolution/Variantd4ffe981116bc81536167af43877db018122c43106e1ce9a99a0d2735e1a1f60.lean/declarations/dirichletconv-epsilon-left-at-one--dcb4a80de5681900f88ae7be.md) | 53 | `result-track:dcb4a80de5681900f88ae7beb069b62547fbcd2436a80f9f7487d656d04983c7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
