# Verification target: GRWTSK.Algebra.UniversalAlgebra.Floor.Variante595edd408c36a8ecab6dcc8e97d67b4a02d68434aff6bf2317a3e8318055351

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a1299108eeda947d643a821640ce415888217183",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Floor/Variante595edd408c36a8ecab6dcc8e97d67b4a02d68434aff6bf2317a3e8318055351.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Floor/Variante595edd408c36a8ecab6dcc8e97d67b4a02d68434aff6bf2317a3e8318055351.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Floor/Variante595edd408c36a8ecab6dcc8e97d67b4a02d68434aff6bf2317a3e8318055351.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a1299108eeda947d643a821640ce415888217183`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Floor/Variante595edd408c36a8ecab6dcc8e97d67b4a02d68434aff6bf2317a3e8318055351.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Floor/Variante595edd408c36a8ecab6dcc8e97d67b4a02d68434aff6bf2317a3e8318055351.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Floor.Semiring` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.NNRat.Order` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Floor` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Floor/Variante595edd408c36a8ecab6dcc8e97d67b4a02d68434aff6bf2317a3e8318055351.lean/declarations/instance--a3adb19124d45251a540880c.md) | 36 | `declaration-track:a3adb19124d45251a540880c0220134a7ac886b45455372d3bcc649c834002a3` |
| 2 | `theorem` | [floor_coe](../../../../../mathematics/Algebra/UniversalAlgebra/Floor/Variante595edd408c36a8ecab6dcc8e97d67b4a02d68434aff6bf2317a3e8318055351.lean/declarations/floor-coe--87fdd8724c9887dcd998b3a7.md) | 44 | `result-track:87fdd8724c9887dcd998b3a7ac562ea82efcec8844a42259781804ef4b6045d3` |
| 3 | `theorem` | [ceil_coe](../../../../../mathematics/Algebra/UniversalAlgebra/Floor/Variante595edd408c36a8ecab6dcc8e97d67b4a02d68434aff6bf2317a3e8318055351.lean/declarations/ceil-coe--3814a31315b9bfd90752b1b1.md) | 47 | `result-track:3814a31315b9bfd90752b1b11e196cb06a1ad8b2a306e0ad1fa0d9bdf370ca6e` |
| 4 | `theorem` | [coe_floor](../../../../../mathematics/Algebra/UniversalAlgebra/Floor/Variante595edd408c36a8ecab6dcc8e97d67b4a02d68434aff6bf2317a3e8318055351.lean/declarations/coe-floor--4b1efd7e56b5074946520191.md) | 50 | `result-track:4b1efd7e56b50749465201911880f35d71b8a6843776e8411e41c3463f8faef2` |
| 5 | `theorem` | [coe_ceil](../../../../../mathematics/Algebra/UniversalAlgebra/Floor/Variante595edd408c36a8ecab6dcc8e97d67b4a02d68434aff6bf2317a3e8318055351.lean/declarations/coe-ceil--7453abe087f4294019db565a.md) | 53 | `result-track:7453abe087f4294019db565a9519a416e862f17b472ae30f6acef6e02b56789b` |
| 6 | `theorem` | [floor_def](../../../../../mathematics/Algebra/UniversalAlgebra/Floor/Variante595edd408c36a8ecab6dcc8e97d67b4a02d68434aff6bf2317a3e8318055351.lean/declarations/floor-def--f53f4dd03529c3fb0d20b4fb.md) | 55 | `result-track:f53f4dd03529c3fb0d20b4fb4f629c2a3c4dd9f91313efaabd9dfb6b4d29dcb4` |
| 7 | `theorem` | [floor_cast](../../../../../mathematics/Algebra/UniversalAlgebra/Floor/Variante595edd408c36a8ecab6dcc8e97d67b4a02d68434aff6bf2317a3e8318055351.lean/declarations/floor-cast--71091cf9c501441b8d414f80.md) | 63 | `result-track:71091cf9c501441b8d414f80d95c010cbc8ad4813f689d773a41b045d1ca91d7` |
| 8 | `theorem` | [ceil_cast](../../../../../mathematics/Algebra/UniversalAlgebra/Floor/Variante595edd408c36a8ecab6dcc8e97d67b4a02d68434aff6bf2317a3e8318055351.lean/declarations/ceil-cast--14f83f75435fc738ded5a618.md) | 67 | `result-track:14f83f75435fc738ded5a618d27697c373d5df441b0722cd0b2a4e585fbdb3b2` |
| 9 | `theorem` | [intFloor_cast](../../../../../mathematics/Algebra/UniversalAlgebra/Floor/Variante595edd408c36a8ecab6dcc8e97d67b4a02d68434aff6bf2317a3e8318055351.lean/declarations/intfloor-cast--5804fb472f082acef198c5bc.md) | 79 | `result-track:5804fb472f082acef198c5bcfe7f21e6df763264249cf0d5cc781481b87fac89` |
| 10 | `theorem` | [intCeil_cast](../../../../../mathematics/Algebra/UniversalAlgebra/Floor/Variante595edd408c36a8ecab6dcc8e97d67b4a02d68434aff6bf2317a3e8318055351.lean/declarations/intceil-cast--59d84dc4ff408c99873fb64f.md) | 86 | `result-track:59d84dc4ff408c99873fb64fea8c051b468bd158b89939f06f0c4c662f94da29` |
| 11 | `theorem` | [floor_natCast_div_natCast](../../../../../mathematics/Algebra/UniversalAlgebra/Floor/Variante595edd408c36a8ecab6dcc8e97d67b4a02d68434aff6bf2317a3e8318055351.lean/declarations/floor-natcast-div-natcast--c0bb98eea179a8624b8f8b69.md) | 99 | `result-track:c0bb98eea179a8624b8f8b693d6cb6b020570323c14009e435a79fd96d66b19e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
