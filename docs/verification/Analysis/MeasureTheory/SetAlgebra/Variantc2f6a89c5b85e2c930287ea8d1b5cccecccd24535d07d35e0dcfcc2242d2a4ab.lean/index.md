# Verification target: GRWTSK.Analysis.MeasureTheory.SetAlgebra.Variantc2f6a89c5b85e2c930287ea8d1b5cccecccd24535d07d35e0dcfcc2242d2a4ab

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0ff0ada7f3f9e7b6cb3b58a13002e288c1343d84",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/SetAlgebra/Variantc2f6a89c5b85e2c930287ea8d1b5cccecccd24535d07d35e0dcfcc2242d2a4ab.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/SetAlgebra/Variantc2f6a89c5b85e2c930287ea8d1b5cccecccd24535d07d35e0dcfcc2242d2a4ab.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/SetAlgebra/Variantc2f6a89c5b85e2c930287ea8d1b5cccecccd24535d07d35e0dcfcc2242d2a4ab.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0ff0ada7f3f9e7b6cb3b58a13002e288c1343d84`.

Source path: `GRWTSK/Analysis/MeasureTheory/SetAlgebra/Variantc2f6a89c5b85e2c930287ea8d1b5cccecccd24535d07d35e0dcfcc2242d2a4ab.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/SetAlgebra/Variantc2f6a89c5b85e2c930287ea8d1b5cccecccd24535d07d35e0dcfcc2242d2a4ab.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finite.Prod` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.SetSemiring` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsSetAlgebra](../../../../../mathematics/Analysis/MeasureTheory/SetAlgebra/Variantc2f6a89c5b85e2c930287ea8d1b5cccecccd24535d07d35e0dcfcc2242d2a4ab.lean/declarations/issetalgebra--c2d72b1c93a39dc23cfa7fbb.md) | 55 | `declaration-track:c2d72b1c93a39dc23cfa7fbbef4ec903d01ceb045a260ffd1befb9ebf7bdb8c0` |
| 2 | `theorem` | [univ_mem](../../../../../mathematics/Analysis/MeasureTheory/SetAlgebra/Variantc2f6a89c5b85e2c930287ea8d1b5cccecccd24535d07d35e0dcfcc2242d2a4ab.lean/declarations/univ-mem--0e8eac0fc2bb4e13f0ae5b96.md) | 63 | `result-track:0e8eac0fc2bb4e13f0ae5b96a241f1b7da3ff69dda5c4edd62b88914912c3c8a` |
| 3 | `theorem` | [inter_mem](../../../../../mathematics/Analysis/MeasureTheory/SetAlgebra/Variantc2f6a89c5b85e2c930287ea8d1b5cccecccd24535d07d35e0dcfcc2242d2a4ab.lean/declarations/inter-mem--4e7f2e518a68451747b5e3a1.md) | 67 | `result-track:4e7f2e518a68451747b5e3a17f617b7c97abf8c0e2b6ccd5cc5a3d62c7a011c9` |
| 4 | `theorem` | [diff_mem](../../../../../mathematics/Analysis/MeasureTheory/SetAlgebra/Variantc2f6a89c5b85e2c930287ea8d1b5cccecccd24535d07d35e0dcfcc2242d2a4ab.lean/declarations/diff-mem--d9681f57aae41ff05b8f7b26.md) | 73 | `result-track:d9681f57aae41ff05b8f7b266688a133927ace1ad4803c8bfe91e81ce1778a06` |
| 5 | `theorem` | [isSetRing](../../../../../mathematics/Analysis/MeasureTheory/SetAlgebra/Variantc2f6a89c5b85e2c930287ea8d1b5cccecccd24535d07d35e0dcfcc2242d2a4ab.lean/declarations/issetring--26d8231c5df623a01f735b7d.md) | 77 | `result-track:26d8231c5df623a01f735b7df0ea131f501c4d1220ffa784ab70ad7a5e9abd52` |
| 6 | `theorem` | [biUnion_mem](../../../../../mathematics/Analysis/MeasureTheory/SetAlgebra/Variantc2f6a89c5b85e2c930287ea8d1b5cccecccd24535d07d35e0dcfcc2242d2a4ab.lean/declarations/biunion-mem--f9328322178bc0ae869370f1.md) | 83 | `result-track:f9328322178bc0ae869370f1443f5cb4e0a1ee8d6aafb4234f7d30913fe2a9c4` |
| 7 | `theorem` | [biInter_mem](../../../../../mathematics/Analysis/MeasureTheory/SetAlgebra/Variantc2f6a89c5b85e2c930287ea8d1b5cccecccd24535d07d35e0dcfcc2242d2a4ab.lean/declarations/biinter-mem--7de678e2d83773fc649d7eef.md) | 87 | `result-track:7de678e2d83773fc649d7eefe34425d2048004216083425de01bdcf6cd9c4b79` |
| 8 | `inductive` | [generateSetAlgebra](../../../../../mathematics/Analysis/MeasureTheory/SetAlgebra/Variantc2f6a89c5b85e2c930287ea8d1b5cccecccd24535d07d35e0dcfcc2242d2a4ab.lean/declarations/generatesetalgebra--39c49205214c452fbffe7310.md) | 102 | `declaration-track:39c49205214c452fbffe73107ed51e82f8a0594e938620a8faaf1afb129273c3` |
| 9 | `theorem` | [isSetAlgebra_generateSetAlgebra](../../../../../mathematics/Analysis/MeasureTheory/SetAlgebra/Variantc2f6a89c5b85e2c930287ea8d1b5cccecccd24535d07d35e0dcfcc2242d2a4ab.lean/declarations/issetalgebra-generatesetalgebra--35ee51834f8c72d7adf89f66.md) | 110 | `result-track:35ee51834f8c72d7adf89f66493650134944e9641ec22140d9a7ac899162ed3c` |
| 10 | `theorem` | [self_subset_generateSetAlgebra](../../../../../mathematics/Analysis/MeasureTheory/SetAlgebra/Variantc2f6a89c5b85e2c930287ea8d1b5cccecccd24535d07d35e0dcfcc2242d2a4ab.lean/declarations/self-subset-generatesetalgebra--7b0007a04000c7c468b2e6fd.md) | 117 | `result-track:7b0007a04000c7c468b2e6fdcf1d77e82ab895a896f351877d4a531501609dfa` |
| 11 | `theorem` | [generateFrom_generateSetAlgebra_eq](../../../../../mathematics/Analysis/MeasureTheory/SetAlgebra/Variantc2f6a89c5b85e2c930287ea8d1b5cccecccd24535d07d35e0dcfcc2242d2a4ab.lean/declarations/generatefrom-generatesetalgebra-eq--6894cf1f1a7678ea6666a291.md) | 123 | `result-track:6894cf1f1a7678ea6666a29179cb64d84b57c5be936c178a3169f8c603b7ffe8` |
| 12 | `theorem` | [generateSetAlgebra_mono](../../../../../mathematics/Analysis/MeasureTheory/SetAlgebra/Variantc2f6a89c5b85e2c930287ea8d1b5cccecccd24535d07d35e0dcfcc2242d2a4ab.lean/declarations/generatesetalgebra-mono--4c3ed81e7f3a243fad29ef41.md) | 140 | `result-track:4c3ed81e7f3a243fad29ef411dc4b2e87f791041da79b58853ef927c4b957ead` |
| 13 | `theorem` | [generateSetAlgebra_subset](../../../../../mathematics/Analysis/MeasureTheory/SetAlgebra/Variantc2f6a89c5b85e2c930287ea8d1b5cccecccd24535d07d35e0dcfcc2242d2a4ab.lean/declarations/generatesetalgebra-subset--450817ad7c538d0f48a9c2a5.md) | 153 | `result-track:450817ad7c538d0f48a9c2a5eec822519703d6bb2dcd3c1f8ca07ede68c667f9` |
| 14 | `theorem` | [generateSetAlgebra_subset_self](../../../../../mathematics/Analysis/MeasureTheory/SetAlgebra/Variantc2f6a89c5b85e2c930287ea8d1b5cccecccd24535d07d35e0dcfcc2242d2a4ab.lean/declarations/generatesetalgebra-subset-self--118ca6b4a46abed9a65ee763.md) | 163 | `result-track:118ca6b4a46abed9a65ee7634675ce38431e5e665e883da16bfc3b8611982215` |
| 15 | `theorem` | [generateSetAlgebra_eq](../../../../../mathematics/Analysis/MeasureTheory/SetAlgebra/Variantc2f6a89c5b85e2c930287ea8d1b5cccecccd24535d07d35e0dcfcc2242d2a4ab.lean/declarations/generatesetalgebra-eq--ca500a1b3c337d73c8ab3364.md) | 167 | `result-track:ca500a1b3c337d73c8ab33644dfbcf4c4c5e8154144db51dcfb74ebc5141761e` |
| 16 | `theorem` | [mem_generateSetAlgebra_elim](../../../../../mathematics/Analysis/MeasureTheory/SetAlgebra/Variantc2f6a89c5b85e2c930287ea8d1b5cccecccd24535d07d35e0dcfcc2242d2a4ab.lean/declarations/mem-generatesetalgebra-elim--a27406c6e3ccef1938f5d71f.md) | 174 | `result-track:a27406c6e3ccef1938f5d71ff55ef1d7148a36dfe105ccbc727290fc420b1d16` |
| 17 | `theorem` | [countable_generateSetAlgebra](../../../../../mathematics/Analysis/MeasureTheory/SetAlgebra/Variantc2f6a89c5b85e2c930287ea8d1b5cccecccd24535d07d35e0dcfcc2242d2a4ab.lean/declarations/countable-generatesetalgebra--e26c57d08886a7401f8477e8.md) | 217 | `result-track:e26c57d08886a7401f8477e88dfccbe25b608e1ff18af7e620534aebc558dfa4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
