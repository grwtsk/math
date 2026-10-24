# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CountingPrinciples.Bijections.FiniteGlobalLocusCoordinates.Variante4c0e11aa11042f6.OrderedGlobalLoci

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9b0679b3af4c046de3e8a65b813a56d8755eeff9",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/Bijections/FiniteGlobalLocusCoordinates/Variante4c0e11aa11042f6/OrderedGlobalLoci.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/Bijections/FiniteGlobalLocusCoordinates/Variante4c0e11aa11042f6/OrderedGlobalLoci.lean/index.md) · [Full source](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/Bijections/FiniteGlobalLocusCoordinates/Variante4c0e11aa11042f6/OrderedGlobalLoci.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9b0679b3af4c046de3e8a65b813a56d8755eeff9`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/Bijections/FiniteGlobalLocusCoordinates/Variante4c0e11aa11042f6/OrderedGlobalLoci.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/Bijections/FiniteGlobalLocusCoordinates/Variante4c0e11aa11042f6/OrderedGlobalLoci.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.FiniteField.Galois` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Sort` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [MatrixLocus](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/Bijections/FiniteGlobalLocusCoordinates/Variante4c0e11aa11042f6/OrderedGlobalLoci.lean/declarations/matrixlocus--b5eb01c677df05ed02f8f225.md) | 37 | `declaration-track:b5eb01c677df05ed02f8f225fc0ece8b7324779d66f93c01851deb30878cc8d9` |
| 2 | `def` | [rowEmbed](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/Bijections/FiniteGlobalLocusCoordinates/Variante4c0e11aa11042f6/OrderedGlobalLoci.lean/declarations/rowembed--27edbaa686785c8e5eeb8821.md) | 48 | `declaration-track:27edbaa686785c8e5eeb8821800088ea63f6ed7d5b5a1ec67a5f0a905baea3fd` |
| 3 | `def` | [columnEmbed](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/Bijections/FiniteGlobalLocusCoordinates/Variante4c0e11aa11042f6/OrderedGlobalLoci.lean/declarations/columnembed--ef6bd52c2084a20e2829a421.md) | 53 | `declaration-track:ef6bd52c2084a20e2829a42104a24bca7165f6875cbf148671f7b10d17922d0b` |
| 4 | `theorem` | [rowEmbed_mem](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/Bijections/FiniteGlobalLocusCoordinates/Variante4c0e11aa11042f6/OrderedGlobalLoci.lean/declarations/rowembed-mem--ed435faa516218f4953cb5de.md) | 58 | `result-track:ed435faa516218f4953cb5de49043bccc6d14099ea0aed47f7ac31f9af2dab4e` |
| 5 | `theorem` | [columnEmbed_mem](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/Bijections/FiniteGlobalLocusCoordinates/Variante4c0e11aa11042f6/OrderedGlobalLoci.lean/declarations/columnembed-mem--b26e8447dad901710512d80a.md) | 64 | `result-track:b26e8447dad901710512d80a398abdac689e6ccff5ed85c65f406cd8494e1e80` |
| 6 | `theorem` | [rowEmbed_injective](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/Bijections/FiniteGlobalLocusCoordinates/Variante4c0e11aa11042f6/OrderedGlobalLoci.lean/declarations/rowembed-injective--684356e2d20c7327d408f085.md) | 69 | `result-track:684356e2d20c7327d408f085a4611924d02b65a94abb5983b54ed77cc2c50c0a` |
| 7 | `theorem` | [columnEmbed_injective](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/Bijections/FiniteGlobalLocusCoordinates/Variante4c0e11aa11042f6/OrderedGlobalLoci.lean/declarations/columnembed-injective--f04fd587b5a32882de086b55.md) | 74 | `result-track:f04fd587b5a32882de086b55647d6d5495f7483ab15ee31fb2a999dcb7adb078` |
| 8 | `def` | [localRow?](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/Bijections/FiniteGlobalLocusCoordinates/Variante4c0e11aa11042f6/OrderedGlobalLoci.lean/declarations/localrow--20664ec819b6c43d86206e10.md) | 80 | `declaration-track:20664ec819b6c43d86206e10b6d7bba1ecdbca6617379244edf4e8f2f3c6f2cc` |
| 9 | `def` | [localColumn?](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/Bijections/FiniteGlobalLocusCoordinates/Variante4c0e11aa11042f6/OrderedGlobalLoci.lean/declarations/localcolumn--3b3d679e550c068648949e6b.md) | 88 | `declaration-track:3b3d679e550c068648949e6b8466992daae03c8d768c5775b1e3999add5db8a9` |
| 10 | `theorem` | [localRow?_rowEmbed](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/Bijections/FiniteGlobalLocusCoordinates/Variante4c0e11aa11042f6/OrderedGlobalLoci.lean/declarations/localrow-rowembed--73eda443bd6feb09fa76af6c.md) | 97 | `result-track:73eda443bd6feb09fa76af6c7bd380958af7c00b2f7c5db0010b8a04846eda3a` |
| 11 | `theorem` | [localColumn?_columnEmbed](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/Bijections/FiniteGlobalLocusCoordinates/Variante4c0e11aa11042f6/OrderedGlobalLoci.lean/declarations/localcolumn-columnembed--25aaa366297117b785ba6dee.md) | 110 | `result-track:25aaa366297117b785ba6dee6db5707ae2e1eb098fdbb9f117eebbe06f0262f3` |
| 12 | `theorem` | [localRow?_eq_none_iff](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/Bijections/FiniteGlobalLocusCoordinates/Variante4c0e11aa11042f6/OrderedGlobalLoci.lean/declarations/localrow-eq-none-iff--3a9a3b029aa029b493f952c7.md) | 123 | `result-track:3a9a3b029aa029b493f952c7b5e8e6fd3324a68299757ae1d288b60db2cd116e` |
| 13 | `theorem` | [localColumn?_eq_none_iff](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/Bijections/FiniteGlobalLocusCoordinates/Variante4c0e11aa11042f6/OrderedGlobalLoci.lean/declarations/localcolumn-eq-none-iff--79e8e3e8d0b28033e3b23fe2.md) | 128 | `result-track:79e8e3e8d0b28033e3b23fe2b6af56963219cfe8f3ca3ceacb2539c4d6e6f7fd` |
| 14 | `theorem` | [localRow?_eq_some_iff](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/Bijections/FiniteGlobalLocusCoordinates/Variante4c0e11aa11042f6/OrderedGlobalLoci.lean/declarations/localrow-eq-some-iff--aaf8c84a1bb9934a9214b347.md) | 133 | `result-track:aaf8c84a1bb9934a9214b34792af371b1f33b6a1efd088f94a342ddb9ab70264` |
| 15 | `theorem` | [localColumn?_eq_some_iff](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/Bijections/FiniteGlobalLocusCoordinates/Variante4c0e11aa11042f6/OrderedGlobalLoci.lean/declarations/localcolumn-eq-some-iff--cb0b95eeaaeb7ad5b31c45e2.md) | 149 | `result-track:cb0b95eeaaeb7ad5b31c45e2972842d119cc50d2cf5df5c49d2e007f070a4104` |
| 16 | `theorem` | [rowEmbed_range](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/Bijections/FiniteGlobalLocusCoordinates/Variante4c0e11aa11042f6/OrderedGlobalLoci.lean/declarations/rowembed-range--b640b611b8f1a1b272f08101.md) | 165 | `result-track:b640b611b8f1a1b272f081018b87ae0f9385cf5e0d227cec3073163e455adc9a` |
| 17 | `theorem` | [columnEmbed_range](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/Bijections/FiniteGlobalLocusCoordinates/Variante4c0e11aa11042f6/OrderedGlobalLoci.lean/declarations/columnembed-range--fb96c8bd42fd6320776bd859.md) | 170 | `result-track:fb96c8bd42fd6320776bd85927c97d269c9308524b3a834ca5d0fd3035510bb8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
