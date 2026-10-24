# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.DivisorSum.Variantebc79c06356adeb3a82155cb16d9bd66d6d138959a579a19688848de70c8bfec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aebbfd11f073003953e54eb659775be6a03ca0d2",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DivisorSum/Variantebc79c06356adeb3a82155cb16d9bd66d6d138959a579a19688848de70c8bfec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DivisorSum/Variantebc79c06356adeb3a82155cb16d9bd66d6d138959a579a19688848de70c8bfec.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DivisorSum/Variantebc79c06356adeb3a82155cb16d9bd66d6d138959a579a19688848de70c8bfec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aebbfd11f073003953e54eb659775be6a03ca0d2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/DivisorSum/Variantebc79c06356adeb3a82155cb16d9bd66d6d138959a579a19688848de70c8bfec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/DivisorSum/Variantebc79c06356adeb3a82155cb16d9bd66d6d138959a579a19688848de70c8bfec.lean.json)

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
| 1 | `def` | [divisorSum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DivisorSum/Variantebc79c06356adeb3a82155cb16d9bd66d6d138959a579a19688848de70c8bfec.lean/declarations/divisorsum--436d4937425b4324ce9bdc7d.md) | 24 | `declaration-track:436d4937425b4324ce9bdc7d37aa1164cd78c29770e0d3c21e442ec5e9220a17` |
| 2 | `theorem` | [divisorSum_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DivisorSum/Variantebc79c06356adeb3a82155cb16d9bd66d6d138959a579a19688848de70c8bfec.lean/declarations/divisorsum-one--0df0affda0a4bedf5f109f60.md) | 29 | `result-track:0df0affda0a4bedf5f109f6046c469bfb034861261a703923067040d2afa5286` |
| 3 | `theorem` | [divisorSum_congr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DivisorSum/Variantebc79c06356adeb3a82155cb16d9bd66d6d138959a579a19688848de70c8bfec.lean/declarations/divisorsum-congr--52be8937fb6778ca5ea73428.md) | 35 | `result-track:52be8937fb6778ca5ea734283bb11738e78d3f9aa769db4d3b2937073350d232` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
