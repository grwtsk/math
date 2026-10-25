# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Indicator.Variantd04f339df856e3eb5f5619db01e15441f41145bd1786816914eb16b453ba154e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a13403d99b6deca025e859ffe8b85ced609aabc9",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variantd04f339df856e3eb5f5619db01e15441f41145bd1786816914eb16b453ba154e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variantd04f339df856e3eb5f5619db01e15441f41145bd1786816914eb16b453ba154e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variantd04f339df856e3eb5f5619db01e15441f41145bd1786816914eb16b453ba154e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a13403d99b6deca025e859ffe8b85ced609aabc9`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variantd04f339df856e3eb5f5619db01e15441f41145bd1786816914eb16b453ba154e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variantd04f339df856e3eb5f5619db01e15441f41145bd1786816914eb16b453ba154e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finsupp.Single` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [indicator](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variantd04f339df856e3eb5f5619db01e15441f41145bd1786816914eb16b453ba154e.lean/declarations/indicator--6fcf57d85434936985f5002d.md) | 38 | `declaration-track:6fcf57d85434936985f5002d9a009c3428695b11e3e8364605281f840bd44593` |
| 2 | `theorem` | [indicator_of_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variantd04f339df856e3eb5f5619db01e15441f41145bd1786816914eb16b453ba154e.lean/declarations/indicator-of-mem--192dc6805fa8b0e369b58e76.md) | 48 | `result-track:192dc6805fa8b0e369b58e76816e3d5f7eb5f2cbfe317a48d38194a7356e60e9` |
| 3 | `theorem` | [indicator_of_notMem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variantd04f339df856e3eb5f5619db01e15441f41145bd1786816914eb16b453ba154e.lean/declarations/indicator-of-notmem--4ce27ff495029a16f4c3c8ad.md) | 51 | `result-track:4ce27ff495029a16f4c3c8ada8dcffb8ebf0207f35c7929a238c8d66afce0c6f` |
| 4 | `theorem` | [indicator_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variantd04f339df856e3eb5f5619db01e15441f41145bd1786816914eb16b453ba154e.lean/declarations/indicator-apply--f012e5c3c3b4cc211d50d1e8.md) | 59 | `result-track:f012e5c3c3b4cc211d50d1e85c4d7258741cfab476149d6a85df5601f617cad1` |
| 5 | `theorem` | [indicator_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variantd04f339df856e3eb5f5619db01e15441f41145bd1786816914eb16b453ba154e.lean/declarations/indicator-injective--0d939d64c951841d851b824f.md) | 63 | `result-track:0d939d64c951841d851b824f5a3abe21fd6f3fffe8ccf4251b8c1118a1bd8c2a` |
| 6 | `theorem` | [support_indicator_subset](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variantd04f339df856e3eb5f5619db01e15441f41145bd1786816914eb16b453ba154e.lean/declarations/support-indicator-subset--7fc87fddcd54565c4a1cfcae.md) | 69 | `result-track:7fc87fddcd54565c4a1cfcaeae16dd96bc5e292fd78ee7b913c257cc82b693bd` |
| 7 | `lemma` | [single_eq_indicator](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variantd04f339df856e3eb5f5619db01e15441f41145bd1786816914eb16b453ba154e.lean/declarations/single-eq-indicator--a49d2494e2f6a9cae092d3a1.md) | 75 | `result-track:a49d2494e2f6a9cae092d3a1096dc0fc235e264c00b912d9673a054c6bf70fe6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
