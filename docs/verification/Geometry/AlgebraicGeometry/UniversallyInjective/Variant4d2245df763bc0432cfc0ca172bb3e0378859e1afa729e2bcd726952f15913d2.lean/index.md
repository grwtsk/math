# Verification target: GRWTSK.Geometry.AlgebraicGeometry.UniversallyInjective.Variant4d2245df763bc0432cfc0ca172bb3e0378859e1afa729e2bcd726952f15913d2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e6e8b6be0ce55816e8a2377f35e1fe5341becae5",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/UniversallyInjective/Variant4d2245df763bc0432cfc0ca172bb3e0378859e1afa729e2bcd726952f15913d2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyInjective/Variant4d2245df763bc0432cfc0ca172bb3e0378859e1afa729e2bcd726952f15913d2.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyInjective/Variant4d2245df763bc0432cfc0ca172bb3e0378859e1afa729e2bcd726952f15913d2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e6e8b6be0ce55816e8a2377f35e1fe5341becae5`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/UniversallyInjective/Variant4d2245df763bc0432cfc0ca172bb3e0378859e1afa729e2bcd726952f15913d2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/UniversallyInjective/Variant4d2245df763bc0432cfc0ca172bb3e0378859e1afa729e2bcd726952f15913d2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.PullbackCarrier` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.LocalAtTarget` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [UniversallyInjective](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyInjective/Variant4d2245df763bc0432cfc0ca172bb3e0378859e1afa729e2bcd726952f15913d2.lean/declarations/universallyinjective--c6ea175a120f5ab10c21263f.md) | 51 | `declaration-track:c6ea175a120f5ab10c21263fcb822b310bec7a63ec3596d1f8c9923bf5e588c2` |
| 2 | `theorem` | [Scheme.Hom.injective](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyInjective/Variant4d2245df763bc0432cfc0ca172bb3e0378859e1afa729e2bcd726952f15913d2.lean/declarations/scheme-hom-injective--3d2755a9dcd783cada166f97.md) | 54 | `result-track:3d2755a9dcd783cada166f97a5e2b305f53540910c154c21604960682d83f28c` |
| 3 | `theorem` | [universallyInjective_eq](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyInjective/Variant4d2245df763bc0432cfc0ca172bb3e0378859e1afa729e2bcd726952f15913d2.lean/declarations/universallyinjective-eq--7a5b78f8fca033dd912fbf6c.md) | 58 | `result-track:7a5b78f8fca033dd912fbf6ca9da55dda2d6d75b6ebeea71331e3cd66cae2475` |
| 4 | `theorem` | [universallyInjective_eq_diagonal](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyInjective/Variant4d2245df763bc0432cfc0ca172bb3e0378859e1afa729e2bcd726952f15913d2.lean/declarations/universallyinjective-eq-diagonal--cc88d99253377d4833540232.md) | 62 | `result-track:cc88d99253377d483354023225c0a5e0752978150a2f72c8fd3b9fd490df3382` |
| 5 | `theorem` | [UniversallyInjective.iff_diagonal](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyInjective/Variant4d2245df763bc0432cfc0ca172bb3e0378859e1afa729e2bcd726952f15913d2.lean/declarations/universallyinjective-iff-diagonal--7d4247e9766e87c648a1c12a.md) | 78 | `result-track:7d4247e9766e87c648a1c12ad3c47c8b953de9c169ab72734389f2f5211dda31` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyInjective/Variant4d2245df763bc0432cfc0ca172bb3e0378859e1afa729e2bcd726952f15913d2.lean/declarations/instance--a0bba7bb0d26c60808e29b95.md) | 82 | `declaration-track:a0bba7bb0d26c60808e29b95764d21f2e761283583bc377577fd001c9c0113a0` |
| 7 | `theorem` | [UniversallyInjective.respectsIso](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyInjective/Variant4d2245df763bc0432cfc0ca172bb3e0378859e1afa729e2bcd726952f15913d2.lean/declarations/universallyinjective-respectsiso--08f642a53079a459449b70f5.md) | 86 | `result-track:08f642a53079a459449b70f5da55bd60cf49ae42901601e96ff6657eca173968` |
| 8 | `instance` | [UniversallyInjective.isStableUnderBaseChange](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyInjective/Variant4d2245df763bc0432cfc0ca172bb3e0378859e1afa729e2bcd726952f15913d2.lean/declarations/universallyinjective-isstableunderbasechange--ee98c8378286eb0ae4b37fea.md) | 89 | `declaration-track:ee98c8378286eb0ae4b37fea9a057c7eef7cfb813cc67feb75aa862a8898090f` |
| 9 | `instance` | [universallyInjective_isStableUnderComposition](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyInjective/Variant4d2245df763bc0432cfc0ca172bb3e0378859e1afa729e2bcd726952f15913d2.lean/declarations/universallyinjective-isstableundercomposition--5f1766850053bc0305ac4dcb.md) | 93 | `declaration-track:5f1766850053bc0305ac4dcbffce27c0e4bb558d7822c6ba2a1c2da2d6caccff` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyInjective/Variant4d2245df763bc0432cfc0ca172bb3e0378859e1afa729e2bcd726952f15913d2.lean/declarations/instance--ab0eaebff9e8b00082cfc206.md) | 97 | `declaration-track:ab0eaebff9e8b00082cfc206880c47856c838c84aebe6e43fcd233aa714859c7` |
| 11 | `instance` | [universallyInjective_isLocalAtTarget](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyInjective/Variant4d2245df763bc0432cfc0ca172bb3e0378859e1afa729e2bcd726952f15913d2.lean/declarations/universallyinjective-islocalattarget--29e49634864695b536ec80f0.md) | 100 | `declaration-track:29e49634864695b536ec80f09c172f9166e36b90b345a936453f722cc3d907fc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
