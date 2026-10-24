# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.WellFounded.Variante654b169747d1da3e35b98141e54b7ef2fcd1a72aafa0a786b02ffb49a3031f4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "50060822c6c72896fa7bff1f1007f2954477efd4",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variante654b169747d1da3e35b98141e54b7ef2fcd1a72aafa0a786b02ffb49a3031f4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variante654b169747d1da3e35b98141e54b7ef2fcd1a72aafa0a786b02ffb49a3031f4.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variante654b169747d1da3e35b98141e54b7ef2fcd1a72aafa0a786b02ffb49a3031f4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `50060822c6c72896fa7bff1f1007f2954477efd4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variante654b169747d1da3e35b98141e54b7ef2fcd1a72aafa0a786b02ffb49a3031f4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variante654b169747d1da3e35b98141e54b7ef2fcd1a72aafa0a786b02ffb49a3031f4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.DFinsupp.WellFounded` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Lex` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Lex.acc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variante654b169747d1da3e35b98141e54b7ef2fcd1a72aafa0a786b02ffb49a3031f4.lean/declarations/lex-acc--6d9427f4d6d91567669270b4.md) | 42 | `result-track:6d9427f4d6d91567669270b48245c1e18050137cdca511e6a09045d6f298911c` |
| 2 | `theorem` | [Lex.wellFounded](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variante654b169747d1da3e35b98141e54b7ef2fcd1a72aafa0a786b02ffb49a3031f4.lean/declarations/lex-wellfounded--f168c6360d16f1ba6532d5db.md) | 50 | `result-track:f168c6360d16f1ba6532d5dbe90cfddbcc0e5d2c8fa83bc941e7e185622dd5bb` |
| 3 | `theorem` | [Lex.wellFounded'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variante654b169747d1da3e35b98141e54b7ef2fcd1a72aafa0a786b02ffb49a3031f4.lean/declarations/lex-wellfounded--18bc7bc7d12b2a12731a8699.md) | 54 | `result-track:18bc7bc7d12b2a12731a86997a69ba2b8802479c2abe64d87c461c558d5ce3ab` |
| 4 | `instance` | [Lex.wellFoundedLT](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variante654b169747d1da3e35b98141e54b7ef2fcd1a72aafa0a786b02ffb49a3031f4.lean/declarations/lex-wellfoundedlt--0e59844b08a97442038fcbdb.md) | 59 | `declaration-track:0e59844b08a97442038fcbdba06e16d2e41bf50e1f7cb67f9f100193b07799c6` |
| 5 | `theorem` | [Lex.wellFounded_of_finite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variante654b169747d1da3e35b98141e54b7ef2fcd1a72aafa0a786b02ffb49a3031f4.lean/declarations/lex-wellfounded-of-finite--13af1dd3afa2aac60d66c161.md) | 66 | `result-track:13af1dd3afa2aac60d66c161fd28eff610a73ff5f82240ed23ae90ece286e3ea` |
| 6 | `theorem` | [Lex.wellFoundedLT_of_finite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variante654b169747d1da3e35b98141e54b7ef2fcd1a72aafa0a786b02ffb49a3031f4.lean/declarations/lex-wellfoundedlt-of-finite--00c553b94eadcc4fbdd4cdfd.md) | 70 | `result-track:00c553b94eadcc4fbdd4cdfd6fe5acb809ff942dbd01491722fbaa689c69307a` |
| 7 | `theorem` | [wellFoundedLT](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variante654b169747d1da3e35b98141e54b7ef2fcd1a72aafa0a786b02ffb49a3031f4.lean/declarations/wellfoundedlt--3031d0b2e0884f8c7c3948f7.md) | 74 | `result-track:3031d0b2e0884f8c7c3948f7bea043ce226ac049778561ea9c41acf7d597d860` |
| 8 | `instance` | [wellFoundedLT'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variante654b169747d1da3e35b98141e54b7ef2fcd1a72aafa0a786b02ffb49a3031f4.lean/declarations/wellfoundedlt--d476b1d0ad729f206d7de383.md) | 78 | `declaration-track:d476b1d0ad729f206d7de38359ae9af5c18508252c1270ad1aadd90e83a88f18` |
| 9 | `instance` | [wellFoundedLT_of_finite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variante654b169747d1da3e35b98141e54b7ef2fcd1a72aafa0a786b02ffb49a3031f4.lean/declarations/wellfoundedlt-of-finite--a4834a4a8cb3f4a93d922eb5.md) | 83 | `declaration-track:a4834a4a8cb3f4a93d922eb50f21d77dabe43db03519d86c6a413a48a3a08b76` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
