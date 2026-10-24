# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.TorsionPeriodicity.Variantf5588a79d8931d0dfa8ada23d56245bd513a14fcea84e81a109adb5fc138b116

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "09471d6efefb5cc03337d0f9a05fdc08e59fc885",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/TorsionPeriodicity/Variantf5588a79d8931d0dfa8ada23d56245bd513a14fcea84e81a109adb5fc138b116.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/TorsionPeriodicity/Variantf5588a79d8931d0dfa8ada23d56245bd513a14fcea84e81a109adb5fc138b116.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/TorsionPeriodicity/Variantf5588a79d8931d0dfa8ada23d56245bd513a14fcea84e81a109adb5fc138b116.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `09471d6efefb5cc03337d0f9a05fdc08e59fc885`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/TorsionPeriodicity/Variantf5588a79d8931d0dfa8ada23d56245bd513a14fcea84e81a109adb5fc138b116.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/TorsionPeriodicity/Variantf5588a79d8931d0dfa8ada23d56245bd513a14fcea84e81a109adb5fc138b116.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Monodromy.TorsionPeriodicity` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [period_dividing_of_hasOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/TorsionPeriodicity/Variantf5588a79d8931d0dfa8ada23d56245bd513a14fcea84e81a109adb5fc138b116.lean/declarations/period-dividing-of-hasorder--87c61cf9a099b55db6818bf5.md) | 28 | `result-track:87c61cf9a099b55db6818bf56a562c410502557bb349975973ca7c6580635dc0` |
| 2 | `theorem` | [exists_period_dividing_of_isTorsion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/TorsionPeriodicity/Variantf5588a79d8931d0dfa8ada23d56245bd513a14fcea84e81a109adb5fc138b116.lean/declarations/exists-period-dividing-of-istorsion--8accad8b42f44c6f97fa6f46.md) | 40 | `result-track:8accad8b42f44c6f97fa6f46049dabb56792cbdc19e3057c4269a0cee4254931` |
| 3 | `theorem` | [catalan_torsion_period_dividing_of_hasOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/TorsionPeriodicity/Variantf5588a79d8931d0dfa8ada23d56245bd513a14fcea84e81a109adb5fc138b116.lean/declarations/catalan-torsion-period-dividing-of-hasorder--dd93a18503600b6e88ab061d.md) | 52 | `result-track:dd93a18503600b6e88ab061dc318e6c11c3045a08f3636b55a971f7cc119e013` |
| 4 | `theorem` | [catalan_torsion_period_on_transported_of_hasOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/TorsionPeriodicity/Variantf5588a79d8931d0dfa8ada23d56245bd513a14fcea84e81a109adb5fc138b116.lean/declarations/catalan-torsion-period-on-transported-of-hasorder--7537a6986d11eca275823608.md) | 66 | `result-track:7537a6986d11eca2758236086a82d3fe3353aefbd1d6b81b2855e0d8ebb9acfc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
