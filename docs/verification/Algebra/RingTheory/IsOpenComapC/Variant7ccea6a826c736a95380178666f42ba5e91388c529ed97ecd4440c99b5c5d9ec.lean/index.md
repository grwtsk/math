# Verification target: GRWTSK.Algebra.RingTheory.IsOpenComapC.Variant7ccea6a826c736a95380178666f42ba5e91388c529ed97ecd4440c99b5c5d9ec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "da5bf9d6200b96310508c193b6ec6f2a2d57f7f6",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingTheory/IsOpenComapC/Variant7ccea6a826c736a95380178666f42ba5e91388c529ed97ecd4440c99b5c5d9ec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/RingTheory/IsOpenComapC/Variant7ccea6a826c736a95380178666f42ba5e91388c529ed97ecd4440c99b5c5d9ec.lean/index.md) · [Full source](../../../../../mathematics/Algebra/RingTheory/IsOpenComapC/Variant7ccea6a826c736a95380178666f42ba5e91388c529ed97ecd4440c99b5c5d9ec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `da5bf9d6200b96310508c193b6ec6f2a2d57f7f6`.

Source path: `GRWTSK/Algebra/RingTheory/IsOpenComapC/Variant7ccea6a826c736a95380178666f42ba5e91388c529ed97ecd4440c99b5c5d9ec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingTheory/IsOpenComapC/Variant7ccea6a826c736a95380178666f42ba5e91388c529ed97ecd4440c99b5c5d9ec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Polynomial.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Spectrum.Prime.Topology` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [imageOfDf](../../../../../mathematics/Algebra/RingTheory/IsOpenComapC/Variant7ccea6a826c736a95380178666f42ba5e91388c529ed97ecd4440c99b5c5d9ec.lean/declarations/imageofdf--5b3882893ac52c47687cf0b7.md) | 39 | `declaration-track:5b3882893ac52c47687cf0b79b18f71bbd92e80fba56db2ff774b0f62ca15d0a` |
| 2 | `theorem` | [isOpen_imageOfDf](../../../../../mathematics/Algebra/RingTheory/IsOpenComapC/Variant7ccea6a826c736a95380178666f42ba5e91388c529ed97ecd4440c99b5c5d9ec.lean/declarations/isopen-imageofdf--f09946a3082a6a70e8667e31.md) | 42 | `result-track:f09946a3082a6a70e8667e319e0b9d302735a4388221b62f85b4893e1a7d750d` |
| 3 | `theorem` | [comap_C_mem_imageOfDf](../../../../../mathematics/Algebra/RingTheory/IsOpenComapC/Variant7ccea6a826c736a95380178666f42ba5e91388c529ed97ecd4440c99b5c5d9ec.lean/declarations/comap-c-mem-imageofdf--e9b913ce7d36747fb0281c91.md) | 49 | `result-track:e9b913ce7d36747fb0281c91b040000018e8ad1e42c2450a07822435446ab9d5` |
| 4 | `theorem` | [imageOfDf_eq_comap_C_compl_zeroLocus](../../../../../mathematics/Algebra/RingTheory/IsOpenComapC/Variant7ccea6a826c736a95380178666f42ba5e91388c529ed97ecd4440c99b5c5d9ec.lean/declarations/imageofdf-eq-comap-c-compl-zerolocus--6e30888fb1de6217404b62d7.md) | 56 | `result-track:6e30888fb1de6217404b62d7417e3d22f78f162d5d39e44660818a4344c75acb` |
| 5 | `theorem` | [isOpenMap_comap_C](../../../../../mathematics/Algebra/RingTheory/IsOpenComapC/Variant7ccea6a826c736a95380178666f42ba5e91388c529ed97ecd4440c99b5c5d9ec.lean/declarations/isopenmap-comap-c--7b1f010ee8171d90a273254e.md) | 72 | `result-track:7b1f010ee8171d90a273254edca649f72bfb6dbfe5d250edaf9915e4a08215c9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
