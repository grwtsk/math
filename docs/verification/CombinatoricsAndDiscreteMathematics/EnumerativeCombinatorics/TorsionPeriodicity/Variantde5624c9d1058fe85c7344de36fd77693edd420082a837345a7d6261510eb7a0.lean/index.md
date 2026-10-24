# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.TorsionPeriodicity.Variantde5624c9d1058fe85c7344de36fd77693edd420082a837345a7d6261510eb7a0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d186fc841a7a907e2cee53d279db2cc70daf18f1",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/TorsionPeriodicity/Variantde5624c9d1058fe85c7344de36fd77693edd420082a837345a7d6261510eb7a0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/TorsionPeriodicity/Variantde5624c9d1058fe85c7344de36fd77693edd420082a837345a7d6261510eb7a0.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/TorsionPeriodicity/Variantde5624c9d1058fe85c7344de36fd77693edd420082a837345a7d6261510eb7a0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d186fc841a7a907e2cee53d279db2cc70daf18f1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/TorsionPeriodicity/Variantde5624c9d1058fe85c7344de36fd77693edd420082a837345a7d6261510eb7a0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/TorsionPeriodicity/Variantde5624c9d1058fe85c7344de36fd77693edd420082a837345a7d6261510eb7a0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Monodromy.TorsionPeriodicity` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [period_dividing_of_hasOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/TorsionPeriodicity/Variantde5624c9d1058fe85c7344de36fd77693edd420082a837345a7d6261510eb7a0.lean/declarations/period-dividing-of-hasorder--abb2ef668bd407b9240afdb4.md) | 20 | `result-track:abb2ef668bd407b9240afdb4765198c33e8b93b196d16e7f6f4a7be84edae2fe` |
| 2 | `theorem` | [exists_period_dividing_of_isTorsion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/TorsionPeriodicity/Variantde5624c9d1058fe85c7344de36fd77693edd420082a837345a7d6261510eb7a0.lean/declarations/exists-period-dividing-of-istorsion--a30149f34180b87a3778b118.md) | 32 | `result-track:a30149f34180b87a3778b1180b7729e9fe67b573429a1902d3adddf1bc52470e` |
| 3 | `theorem` | [catalan_torsion_period_dividing_of_hasOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/TorsionPeriodicity/Variantde5624c9d1058fe85c7344de36fd77693edd420082a837345a7d6261510eb7a0.lean/declarations/catalan-torsion-period-dividing-of-hasorder--7e3f1f940cf8dad78181a6d0.md) | 44 | `result-track:7e3f1f940cf8dad78181a6d0a4b22f9357d100944b772e846f3b54ff9ddd217f` |
| 4 | `theorem` | [catalan_torsion_period_on_transported_of_hasOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/TorsionPeriodicity/Variantde5624c9d1058fe85c7344de36fd77693edd420082a837345a7d6261510eb7a0.lean/declarations/catalan-torsion-period-on-transported-of-hasorder--aaf51c0fd88ae5a3bda1d194.md) | 58 | `result-track:aaf51c0fd88ae5a3bda1d194977734290eaf923d8c7e0b57f88c55a7fd2da6c2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
