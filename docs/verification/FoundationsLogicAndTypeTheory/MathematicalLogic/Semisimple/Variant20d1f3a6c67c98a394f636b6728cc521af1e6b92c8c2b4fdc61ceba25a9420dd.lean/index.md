# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Semisimple.Variant20d1f3a6c67c98a394f636b6728cc521af1e6b92c8c2b4fdc61ceba25a9420dd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "706a1c41f394dba226dfc71dd9ecf222ba5f3ae5",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Semisimple/Variant20d1f3a6c67c98a394f636b6728cc521af1e6b92c8c2b4fdc61ceba25a9420dd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Semisimple/Variant20d1f3a6c67c98a394f636b6728cc521af1e6b92c8c2b4fdc61ceba25a9420dd.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Semisimple/Variant20d1f3a6c67c98a394f636b6728cc521af1e6b92c8c2b4fdc61ceba25a9420dd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `706a1c41f394dba226dfc71dd9ecf222ba5f3ae5`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Semisimple/Variant20d1f3a6c67c98a394f636b6728cc521af1e6b92c8c2b4fdc61ceba25a9420dd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Semisimple/Variant20d1f3a6c67c98a394f636b6728cc521af1e6b92c8c2b4fdc61ceba25a9420dd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.Solvable` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [LieModule.IsIrreducible](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Semisimple/Variant20d1f3a6c67c98a394f636b6728cc521af1e6b92c8c2b4fdc61ceba25a9420dd.lean/declarations/liemodule-isirreducible--3ca50cd28a739441b2e0d386.md) | 35 | `declaration-track:3ca50cd28a739441b2e0d3860be3af070678db0897b874a0633666e6d3615417` |
| 2 | `class` | [IsSimple](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Semisimple/Variant20d1f3a6c67c98a394f636b6728cc521af1e6b92c8c2b4fdc61ceba25a9420dd.lean/declarations/issimple--81b9158165d6c96a989d01ee.md) | 49 | `declaration-track:81b9158165d6c96a989d01ee821f55fec621d3f2e34c0bb448d9f5a60d889207` |
| 3 | `class` | [IsSemisimple](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Semisimple/Variant20d1f3a6c67c98a394f636b6728cc521af1e6b92c8c2b4fdc61ceba25a9420dd.lean/declarations/issemisimple--30417a956554e472d8137ce0.md) | 60 | `declaration-track:30417a956554e472d8137ce0fbe3b25de38f9039b81662cd062d3a189fc657b3` |
| 4 | `theorem` | [isSemisimple_iff_no_solvable_ideals](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Semisimple/Variant20d1f3a6c67c98a394f636b6728cc521af1e6b92c8c2b4fdc61ceba25a9420dd.lean/declarations/issemisimple-iff-no-solvable-ideals--8e48cbaf0d91ccd36d7eed42.md) | 64 | `result-track:8e48cbaf0d91ccd36d7eed42fd79750bdee45900ad9178b6b8b26aa3a96eaa47` |
| 5 | `theorem` | [isSemisimple_iff_no_abelian_ideals](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Semisimple/Variant20d1f3a6c67c98a394f636b6728cc521af1e6b92c8c2b4fdc61ceba25a9420dd.lean/declarations/issemisimple-iff-no-abelian-ideals--73e5e3d6fad5ea20c4a19947.md) | 69 | `result-track:73e5e3d6fad5ea20c4a1994725615f5798df01b65a0ac310c8decc2fee09cd92` |
| 6 | `theorem` | [center_eq_bot_of_semisimple](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Semisimple/Variant20d1f3a6c67c98a394f636b6728cc521af1e6b92c8c2b4fdc61ceba25a9420dd.lean/declarations/center-eq-bot-of-semisimple--b70903cdebaf785b8f3347f6.md) | 79 | `result-track:b70903cdebaf785b8f3347f68c9cb57662e3d24d27ecd3cbce83d60e9bfb8b13` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Semisimple/Variant20d1f3a6c67c98a394f636b6728cc521af1e6b92c8c2b4fdc61ceba25a9420dd.lean/declarations/instance--7a4e7d9912439465b969e48e.md) | 84 | `declaration-track:7a4e7d9912439465b969e48e227060338b3bfee6474fea9e7fd4761672db3679` |
| 8 | `theorem` | [subsingleton_of_semisimple_lie_abelian](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Semisimple/Variant20d1f3a6c67c98a394f636b6728cc521af1e6b92c8c2b4fdc61ceba25a9420dd.lean/declarations/subsingleton-of-semisimple-lie-abelian--385d13c35c3106797aa6b903.md) | 94 | `result-track:385d13c35c3106797aa6b903a0f23894801b85dbe2dda2b51aecdead73f6f1a5` |
| 9 | `theorem` | [abelian_radical_of_semisimple](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Semisimple/Variant20d1f3a6c67c98a394f636b6728cc521af1e6b92c8c2b4fdc61ceba25a9420dd.lean/declarations/abelian-radical-of-semisimple--69c8df533b241af0f4d56999.md) | 100 | `result-track:69c8df533b241af0f4d56999fc0339aa7b8d1ae0b84531a7ffc65b9205397aaf` |
| 10 | `theorem` | [abelian_radical_iff_solvable_is_abelian](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Semisimple/Variant20d1f3a6c67c98a394f636b6728cc521af1e6b92c8c2b4fdc61ceba25a9420dd.lean/declarations/abelian-radical-iff-solvable-is-abelian--d84958c3833614f7744e30ee.md) | 109 | `result-track:d84958c3833614f7744e30ee7ae448b0aeca08dc706ea6adc9243c0a31803d18` |
| 11 | `theorem` | [ad_ker_eq_bot_of_semisimple](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Semisimple/Variant20d1f3a6c67c98a394f636b6728cc521af1e6b92c8c2b4fdc61ceba25a9420dd.lean/declarations/ad-ker-eq-bot-of-semisimple--a5e448ffe26bdd56cbe51ab8.md) | 118 | `result-track:a5e448ffe26bdd56cbe51ab8b29a4f28bae15e54fffd322225889aec25c38ab9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
