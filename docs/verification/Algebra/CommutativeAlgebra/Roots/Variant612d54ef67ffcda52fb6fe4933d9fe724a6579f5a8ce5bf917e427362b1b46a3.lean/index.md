# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Roots.Variant612d54ef67ffcda52fb6fe4933d9fe724a6579f5a8ce5bf917e427362b1b46a3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e82cfc397703d11f8a09b7743490bf7096570087",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Roots/Variant612d54ef67ffcda52fb6fe4933d9fe724a6579f5a8ce5bf917e427362b1b46a3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Roots/Variant612d54ef67ffcda52fb6fe4933d9fe724a6579f5a8ce5bf917e427362b1b46a3.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Roots/Variant612d54ef67ffcda52fb6fe4933d9fe724a6579f5a8ce5bf917e427362b1b46a3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e82cfc397703d11f8a09b7743490bf7096570087`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Roots/Variant612d54ef67ffcda52fb6fe4933d9fe724a6579f5a8ce5bf917e427362b1b46a3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Roots/Variant612d54ef67ffcda52fb6fe4933d9fe724a6579f5a8ce5bf917e427362b1b46a3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Polynomial.Cyclotomic.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.RootsOfUnity.Minpoly` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isRoot_of_unity_of_root_cyclotomic](../../../../../mathematics/Algebra/CommutativeAlgebra/Roots/Variant612d54ef67ffcda52fb6fe4933d9fe724a6579f5a8ce5bf917e427362b1b46a3.lean/declarations/isroot-of-unity-of-root-cyclotomic--93a6ac5cc0516fe599b020ea.md) | 38 | `result-track:93a6ac5cc0516fe599b020eadbbecf03cdc508c8e898a1ede06bb87a0a5f1aa0` |
| 2 | `theorem` | [_root_.isRoot_of_unity_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Roots/Variant612d54ef67ffcda52fb6fe4933d9fe724a6579f5a8ce5bf917e427362b1b46a3.lean/declarations/root-isroot-of-unity-iff--c67ab9dda6844906c0b30222.md) | 53 | `result-track:c67ab9dda6844906c0b30222f9ed9f6613761517b5dba00643d37e6aebbda5ac` |
| 3 | `theorem` | [_root_.IsPrimitiveRoot.isRoot_cyclotomic](../../../../../mathematics/Algebra/CommutativeAlgebra/Roots/Variant612d54ef67ffcda52fb6fe4933d9fe724a6579f5a8ce5bf917e427362b1b46a3.lean/declarations/root-isprimitiveroot-isroot-cyclotomic--6ba96c1bc0690115597a514c.md) | 59 | `result-track:6ba96c1bc0690115597a514cece6bbf663a9e4da72c00942afe26125a62f8c93` |
| 4 | `theorem` | [isRoot_cyclotomic_iff'](../../../../../mathematics/Algebra/CommutativeAlgebra/Roots/Variant612d54ef67ffcda52fb6fe4933d9fe724a6579f5a8ce5bf917e427362b1b46a3.lean/declarations/isroot-cyclotomic-iff--cb56f81c79cbecf685aff846.md) | 65 | `result-track:cb56f81c79cbecf685aff846f763a97e46a6315349ad058ac369be37be0f8a2d` |
| 5 | `theorem` | [isRoot_cyclotomic_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Roots/Variant612d54ef67ffcda52fb6fe4933d9fe724a6579f5a8ce5bf917e427362b1b46a3.lean/declarations/isroot-cyclotomic-iff--3858238418a010310e531aab.md) | 94 | `result-track:3858238418a010310e531aab5fe06c15b3c53247d3dc7dbf997ed20be2e417ed` |
| 6 | `theorem` | [roots_cyclotomic_nodup](../../../../../mathematics/Algebra/CommutativeAlgebra/Roots/Variant612d54ef67ffcda52fb6fe4933d9fe724a6579f5a8ce5bf917e427362b1b46a3.lean/declarations/roots-cyclotomic-nodup--4cd312ddfd3a347409dc33ae.md) | 101 | `result-track:4cd312ddfd3a347409dc33ae988bc46c783f3a7f5a859a99cc627090f2c0aafa` |
| 7 | `theorem` | [cyclotomic.roots_to_finset_eq_primitiveRoots](../../../../../mathematics/Algebra/CommutativeAlgebra/Roots/Variant612d54ef67ffcda52fb6fe4933d9fe724a6579f5a8ce5bf917e427362b1b46a3.lean/declarations/cyclotomic-roots-to-finset-eq-primitiveroots--3d102a6cf344ff84d658992f.md) | 109 | `result-track:3d102a6cf344ff84d658992f750f7c3bb463a53278bb286ae30b0ac7927ded1a` |
| 8 | `theorem` | [cyclotomic.roots_eq_primitiveRoots_val](../../../../../mathematics/Algebra/CommutativeAlgebra/Roots/Variant612d54ef67ffcda52fb6fe4933d9fe724a6579f5a8ce5bf917e427362b1b46a3.lean/declarations/cyclotomic-roots-eq-primitiveroots-val--776119693bf15f293364281e.md) | 119 | `result-track:776119693bf15f293364281eb7b016111eaf23a27ad0278e82fa3f9d6e70882a` |
| 9 | `theorem` | [isRoot_cyclotomic_iff_charZero](../../../../../mathematics/Algebra/CommutativeAlgebra/Roots/Variant612d54ef67ffcda52fb6fe4933d9fe724a6579f5a8ce5bf917e427362b1b46a3.lean/declarations/isroot-cyclotomic-iff-charzero--344e6c0698a8ad3465e82502.md) | 125 | `result-track:344e6c0698a8ad3465e8250248c077cf2a25cd5ee667eb0db6f428f53696beb9` |
| 10 | `theorem` | [cyclotomic_injective](../../../../../mathematics/Algebra/CommutativeAlgebra/Roots/Variant612d54ef67ffcda52fb6fe4933d9fe724a6579f5a8ce5bf917e427362b1b46a3.lean/declarations/cyclotomic-injective--880c597cc7829658e2435d67.md) | 133 | `result-track:880c597cc7829658e2435d6737e531f4365f1ae0798b76eec248c87e6c3d0f69` |
| 11 | `theorem` | [_root_.IsPrimitiveRoot.minpoly_dvd_cyclotomic](../../../../../mathematics/Algebra/CommutativeAlgebra/Roots/Variant612d54ef67ffcda52fb6fe4933d9fe724a6579f5a8ce5bf917e427362b1b46a3.lean/declarations/root-isprimitiveroot-minpoly-dvd-cyclotomic--e48af26f9c61d74ef8432bca.md) | 154 | `result-track:e48af26f9c61d74ef8432bcae938ad04048ae2c64e75a2366c2c57845e652299` |
| 12 | `theorem` | [_root_.IsPrimitiveRoot.minpoly_eq_cyclotomic_of_irreducible](../../../../../mathematics/Algebra/CommutativeAlgebra/Roots/Variant612d54ef67ffcda52fb6fe4933d9fe724a6579f5a8ce5bf917e427362b1b46a3.lean/declarations/root-isprimitiveroot-minpoly-eq-cyclotomic-of-irreducible--0b6fa0d30651a3f8b3591ece.md) | 163 | `result-track:0b6fa0d30651a3f8b3591ece805d8352fa209c07925c4385cc1b98b1e2d5bc5c` |
| 13 | `theorem` | [cyclotomic_eq_minpoly](../../../../../mathematics/Algebra/CommutativeAlgebra/Roots/Variant612d54ef67ffcda52fb6fe4933d9fe724a6579f5a8ce5bf917e427362b1b46a3.lean/declarations/cyclotomic-eq-minpoly--c4dde8d018b41f24a0890433.md) | 171 | `result-track:c4dde8d018b41f24a0890433062064466d751eba416776021bdb7355165e9d4c` |
| 14 | `theorem` | [cyclotomic_eq_minpoly_rat](../../../../../mathematics/Algebra/CommutativeAlgebra/Roots/Variant612d54ef67ffcda52fb6fe4933d9fe724a6579f5a8ce5bf917e427362b1b46a3.lean/declarations/cyclotomic-eq-minpoly-rat--1c5f7aa5bc1bf3aaec27fcd5.md) | 178 | `result-track:1c5f7aa5bc1bf3aaec27fcd540e714160a72804dd1a839a75611371250a5328e` |
| 15 | `theorem` | [cyclotomic.irreducible](../../../../../mathematics/Algebra/CommutativeAlgebra/Roots/Variant612d54ef67ffcda52fb6fe4933d9fe724a6579f5a8ce5bf917e427362b1b46a3.lean/declarations/cyclotomic-irreducible--0bff619944f157fa4b639383.md) | 184 | `result-track:0bff619944f157fa4b639383232c6a1c15b12fc5af2447e0f6f252ba99afde82` |
| 16 | `theorem` | [cyclotomic.irreducible_rat](../../../../../mathematics/Algebra/CommutativeAlgebra/Roots/Variant612d54ef67ffcda52fb6fe4933d9fe724a6579f5a8ce5bf917e427362b1b46a3.lean/declarations/cyclotomic-irreducible-rat--be29ab79f6b7c33970c84276.md) | 190 | `result-track:be29ab79f6b7c33970c84276b970e394b8043840dd9e79bdb3336b84def05010` |
| 17 | `theorem` | [cyclotomic.isCoprime_rat](../../../../../mathematics/Algebra/CommutativeAlgebra/Roots/Variant612d54ef67ffcda52fb6fe4933d9fe724a6579f5a8ce5bf917e427362b1b46a3.lean/declarations/cyclotomic-iscoprime-rat--bad5da2a33149ddd6aded9de.md) | 196 | `result-track:bad5da2a33149ddd6aded9de50cf7835e15460a4390ec54ac963a7ca04a24af1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
