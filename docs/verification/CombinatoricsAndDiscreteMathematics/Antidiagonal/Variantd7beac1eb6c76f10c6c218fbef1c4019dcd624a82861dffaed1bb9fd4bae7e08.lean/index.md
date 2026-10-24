# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Antidiagonal.Variantd7beac1eb6c76f10c6c218fbef1c4019dcd624a82861dffaed1bb9fd4bae7e08

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7e5c63f197a2813f23ecbb1d3d476ccd5c16eb63",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Antidiagonal/Variantd7beac1eb6c76f10c6c218fbef1c4019dcd624a82861dffaed1bb9fd4bae7e08.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Antidiagonal/Variantd7beac1eb6c76f10c6c218fbef1c4019dcd624a82861dffaed1bb9fd4bae7e08.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Antidiagonal/Variantd7beac1eb6c76f10c6c218fbef1c4019dcd624a82861dffaed1bb9fd4bae7e08.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7e5c63f197a2813f23ecbb1d3d476ccd5c16eb63`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Antidiagonal/Variantd7beac1eb6c76f10c6c218fbef1c4019dcd624a82861dffaed1bb9fd4bae7e08.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Antidiagonal/Variantd7beac1eb6c76f10c6c218fbef1c4019dcd624a82861dffaed1bb9fd4bae7e08.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finsupp.Order` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [antidiagonal'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Antidiagonal/Variantd7beac1eb6c76f10c6c218fbef1c4019dcd624a82861dffaed1bb9fd4bae7e08.lean/declarations/antidiagonal--48dc51628140202444edb030.md) | 34 | `declaration-track:48dc51628140202444edb030ab1e28f4193dcc7e09d1adfc80740fd8e3492e14` |
| 2 | `instance` | [instHasAntidiagonal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Antidiagonal/Variantd7beac1eb6c76f10c6c218fbef1c4019dcd624a82861dffaed1bb9fd4bae7e08.lean/declarations/insthasantidiagonal--7ebbef112c354d1c0e76106e.md) | 40 | `declaration-track:7ebbef112c354d1c0e76106e7ea8defdea2923478e8b453fc183d68fd2f26643` |
| 3 | `theorem` | [antidiagonal_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Antidiagonal/Variantd7beac1eb6c76f10c6c218fbef1c4019dcd624a82861dffaed1bb9fd4bae7e08.lean/declarations/antidiagonal-zero--f12340d96ee86d1582bd4909.md) | 48 | `result-track:f12340d96ee86d1582bd49098fcaed98d0d7730622c023d235b75adb01bddd8d` |
| 4 | `theorem` | [prod_antidiagonal_swap](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Antidiagonal/Variantd7beac1eb6c76f10c6c218fbef1c4019dcd624a82861dffaed1bb9fd4bae7e08.lean/declarations/prod-antidiagonal-swap--39fecf89f84611fb49f4fd4b.md) | 51 | `result-track:39fecf89f84611fb49f4fd4b16a886f503d5dcea796c5c1d1967bea2f0f92de6` |
| 5 | `theorem` | [antidiagonal_single](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Antidiagonal/Variantd7beac1eb6c76f10c6c218fbef1c4019dcd624a82861dffaed1bb9fd4bae7e08.lean/declarations/antidiagonal-single--802583da61f1efb5980f8900.md) | 57 | `result-track:802583da61f1efb5980f89006aa6f71257f33851a705212007e4c62ae4de7547` |
| 6 | `theorem` | [image_prodMap_embDomain_antidiagonal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Antidiagonal/Variantd7beac1eb6c76f10c6c218fbef1c4019dcd624a82861dffaed1bb9fd4bae7e08.lean/declarations/image-prodmap-embdomain-antidiagonal--a94ed210a158ac627466a3dd.md) | 77 | `result-track:a94ed210a158ac627466a3dddf0c45914ffffbdd4562bca428817bfd3b30f290` |
| 7 | `theorem` | [image_sumElim_product_antidiagonal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Antidiagonal/Variantd7beac1eb6c76f10c6c218fbef1c4019dcd624a82861dffaed1bb9fd4bae7e08.lean/declarations/image-sumelim-product-antidiagonal--58795ccd4c5959083081dc58.md) | 93 | `result-track:58795ccd4c5959083081dc581f0a8b7af98f83740de55f5cb245521a64b28081` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
