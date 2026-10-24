# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.WellFounded.Variant12eb9fa3938a72b6a2c2dd5bc72c88e07470097590479a4b8e74f0edde157cdf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "72e9c6592033d91b883860698034bda049e8f4c4",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant12eb9fa3938a72b6a2c2dd5bc72c88e07470097590479a4b8e74f0edde157cdf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant12eb9fa3938a72b6a2c2dd5bc72c88e07470097590479a4b8e74f0edde157cdf.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant12eb9fa3938a72b6a2c2dd5bc72c88e07470097590479a4b8e74f0edde157cdf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `72e9c6592033d91b883860698034bda049e8f4c4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant12eb9fa3938a72b6a2c2dd5bc72c88e07470097590479a4b8e74f0edde157cdf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant12eb9fa3938a72b6a2c2dd5bc72c88e07470097590479a4b8e74f0edde157cdf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.DFinsupp.WellFounded` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Lex` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Lex.acc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant12eb9fa3938a72b6a2c2dd5bc72c88e07470097590479a4b8e74f0edde157cdf.lean/declarations/lex-acc--16a55d2f7d424b042b4377ac.md) | 37 | `result-track:16a55d2f7d424b042b4377ac3506b870c34394c6d79829d6f483bedb04c5eb01` |
| 2 | `theorem` | [Lex.wellFounded](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant12eb9fa3938a72b6a2c2dd5bc72c88e07470097590479a4b8e74f0edde157cdf.lean/declarations/lex-wellfounded--b85f95b2f5b07940ca8134e4.md) | 45 | `result-track:b85f95b2f5b07940ca8134e47b1cfb761f7005928705c0dc20a84adaf1c56e3a` |
| 3 | `theorem` | [Lex.wellFounded'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant12eb9fa3938a72b6a2c2dd5bc72c88e07470097590479a4b8e74f0edde157cdf.lean/declarations/lex-wellfounded--b2dacf3ce769d5c327fde40c.md) | 49 | `result-track:b2dacf3ce769d5c327fde40c747e146a0f9d6faa85815a60d85174a76ebda157` |
| 4 | `instance` | [Lex.wellFoundedLT](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant12eb9fa3938a72b6a2c2dd5bc72c88e07470097590479a4b8e74f0edde157cdf.lean/declarations/lex-wellfoundedlt--75f6a37c52e783f0a97bd6d3.md) | 55 | `declaration-track:75f6a37c52e783f0a97bd6d353411b49053dda82186144a07987e41a8e4c9e86` |
| 5 | `theorem` | [Lex.wellFounded_of_finite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant12eb9fa3938a72b6a2c2dd5bc72c88e07470097590479a4b8e74f0edde157cdf.lean/declarations/lex-wellfounded-of-finite--889b8e8e9fa3137a2015f87e.md) | 62 | `result-track:889b8e8e9fa3137a2015f87ec1773a81dbbdf6f3d219ebb38322af1ac8234801` |
| 6 | `theorem` | [Lex.wellFoundedLT_of_finite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant12eb9fa3938a72b6a2c2dd5bc72c88e07470097590479a4b8e74f0edde157cdf.lean/declarations/lex-wellfoundedlt-of-finite--b553f41419788bcc5924711c.md) | 67 | `result-track:b553f41419788bcc5924711c956cf0a340eef5e676da0e3d3cc78042878bcfb9` |
| 7 | `theorem` | [wellFoundedLT](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant12eb9fa3938a72b6a2c2dd5bc72c88e07470097590479a4b8e74f0edde157cdf.lean/declarations/wellfoundedlt--29517fdbb137d48cf2c5b2b7.md) | 72 | `result-track:29517fdbb137d48cf2c5b2b740b7a8508d42099aa82ae305bfb3353e35f06ffe` |
| 8 | `instance` | [wellFoundedLT'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant12eb9fa3938a72b6a2c2dd5bc72c88e07470097590479a4b8e74f0edde157cdf.lean/declarations/wellfoundedlt--8b137892f639d73aba3812ea.md) | 77 | `declaration-track:8b137892f639d73aba3812eaa4b4ca574c645e9adf4996a65250e5eb3cd71dca` |
| 9 | `instance` | [wellFoundedLT_of_finite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant12eb9fa3938a72b6a2c2dd5bc72c88e07470097590479a4b8e74f0edde157cdf.lean/declarations/wellfoundedlt-of-finite--a82926ec99af17ae55461487.md) | 82 | `declaration-track:a82926ec99af17ae55461487c53a420251d15872276f6ca3d4e6aff6ff60edb0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
