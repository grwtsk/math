# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Roots.Variant58d14aba878e13a6e03faa98fcda4e3893407a160a375463e467a59b30becc76

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "24cf48565e1c77e2457d42ba336f5679bc218f65",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Roots/Variant58d14aba878e13a6e03faa98fcda4e3893407a160a375463e467a59b30becc76.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Roots/Variant58d14aba878e13a6e03faa98fcda4e3893407a160a375463e467a59b30becc76.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Roots/Variant58d14aba878e13a6e03faa98fcda4e3893407a160a375463e467a59b30becc76.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `24cf48565e1c77e2457d42ba336f5679bc218f65`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Roots/Variant58d14aba878e13a6e03faa98fcda4e3893407a160a375463e467a59b30becc76.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Roots/Variant58d14aba878e13a6e03faa98fcda4e3893407a160a375463e467a59b30becc76.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Polynomial.Cyclotomic.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.RootsOfUnity.Minpoly` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isRoot_of_unity_of_root_cyclotomic](../../../../../mathematics/Algebra/CommutativeAlgebra/Roots/Variant58d14aba878e13a6e03faa98fcda4e3893407a160a375463e467a59b30becc76.lean/declarations/isroot-of-unity-of-root-cyclotomic--a16f5b8bf130391c346dd7ea.md) | 50 | `result-track:a16f5b8bf130391c346dd7eaeec0c507400fb89f3e6d6c1eda7766b188d3b0ab` |
| 2 | `theorem` | [_root_.GRWTSK.Algebra.CommutativeAlgebra.IsRootOfUnityOfRootCyclotomic.Variant44c3c04422257117c83229e242ac17fb61b42a88f64a8c1c24e67a1050555b15.isRoot_of_unity_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Roots/Variant58d14aba878e13a6e03faa98fcda4e3893407a160a375463e467a59b30becc76.lean/declarations/root-grwtsk-algebra-commutativealgebra-isrootofunityofrootcyclotomic-var--33291c834941d819d8481b59.md) | 66 | `result-track:33291c834941d819d8481b598a75a6aab81e0962086fc863da383101771b223b` |
| 3 | `theorem` | [_root_.GRWTSK.Algebra.CommutativeAlgebra.IsRootOfUnityOfRootCyclotomic.Variant44c3c04422257117c83229e242ac17fb61b42a88f64a8c1c24e67a1050555b15.IsPrimitiveRoot.isRoot_cyclotomic](../../../../../mathematics/Algebra/CommutativeAlgebra/Roots/Variant58d14aba878e13a6e03faa98fcda4e3893407a160a375463e467a59b30becc76.lean/declarations/root-grwtsk-algebra-commutativealgebra-isrootofunityofrootcyclotomic-var--063ad03b47f90deeb681331b.md) | 73 | `result-track:063ad03b47f90deeb681331baac7801f5ff23157fd48a0f9290327855a57bbe9` |
| 4 | `theorem` | [isRoot_cyclotomic_iff'](../../../../../mathematics/Algebra/CommutativeAlgebra/Roots/Variant58d14aba878e13a6e03faa98fcda4e3893407a160a375463e467a59b30becc76.lean/declarations/isroot-cyclotomic-iff--c914308d6812228a87305ed4.md) | 80 | `result-track:c914308d6812228a87305ed4631022ebe99822d472cbde4655d01dac4a849700` |
| 5 | `theorem` | [isRoot_cyclotomic_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Roots/Variant58d14aba878e13a6e03faa98fcda4e3893407a160a375463e467a59b30becc76.lean/declarations/isroot-cyclotomic-iff--8185eb6f70715916db120211.md) | 113 | `result-track:8185eb6f70715916db1202114c50d49e0e5b8364bdf16c1e04bbd1aef89902a0` |
| 6 | `theorem` | [roots_cyclotomic_nodup](../../../../../mathematics/Algebra/CommutativeAlgebra/Roots/Variant58d14aba878e13a6e03faa98fcda4e3893407a160a375463e467a59b30becc76.lean/declarations/roots-cyclotomic-nodup--58f7a4c9150c24bc5c5eeae9.md) | 121 | `result-track:58f7a4c9150c24bc5c5eeae97674a0953b3fc1c938263873c353d236f4669b32` |
| 7 | `theorem` | [cyclotomic.roots_to_finset_eq_primitiveRoots](../../../../../mathematics/Algebra/CommutativeAlgebra/Roots/Variant58d14aba878e13a6e03faa98fcda4e3893407a160a375463e467a59b30becc76.lean/declarations/cyclotomic-roots-to-finset-eq-primitiveroots--5b7aa31981ebd48eea22af8e.md) | 130 | `result-track:5b7aa31981ebd48eea22af8e96c0a77072c4d13814ba8f8bed9997a7ee4d0caf` |
| 8 | `theorem` | [cyclotomic.roots_eq_primitiveRoots_val](../../../../../mathematics/Algebra/CommutativeAlgebra/Roots/Variant58d14aba878e13a6e03faa98fcda4e3893407a160a375463e467a59b30becc76.lean/declarations/cyclotomic-roots-eq-primitiveroots-val--4abe8066b8cc970f56361cd9.md) | 141 | `result-track:4abe8066b8cc970f56361cd9da1768a85be72ad68cd643c23e389d515b1102a3` |
| 9 | `theorem` | [isRoot_cyclotomic_iff_charZero](../../../../../mathematics/Algebra/CommutativeAlgebra/Roots/Variant58d14aba878e13a6e03faa98fcda4e3893407a160a375463e467a59b30becc76.lean/declarations/isroot-cyclotomic-iff-charzero--32c6af61c67c843fdeb4a45d.md) | 148 | `result-track:32c6af61c67c843fdeb4a45df4a2be344489034abd8fecff62f61b27ca35ef29` |
| 10 | `theorem` | [cyclotomic_injective](../../../../../mathematics/Algebra/CommutativeAlgebra/Roots/Variant58d14aba878e13a6e03faa98fcda4e3893407a160a375463e467a59b30becc76.lean/declarations/cyclotomic-injective--4730d31f9cbe4ae162957d82.md) | 157 | `result-track:4730d31f9cbe4ae162957d82a7a16ffb39f027d1a1b8b199706f267274afc4ed` |
| 11 | `theorem` | [_root_.GRWTSK.Algebra.CommutativeAlgebra.IsRootOfUnityOfRootCyclotomic.Variant44c3c04422257117c83229e242ac17fb61b42a88f64a8c1c24e67a1050555b15.IsPrimitiveRoot.minpoly_dvd_cyclotomic](../../../../../mathematics/Algebra/CommutativeAlgebra/Roots/Variant58d14aba878e13a6e03faa98fcda4e3893407a160a375463e467a59b30becc76.lean/declarations/root-grwtsk-algebra-commutativealgebra-isrootofunityofrootcyclotomic-var--90853bc0d3ee1d4158b1bcc9.md) | 181 | `result-track:90853bc0d3ee1d4158b1bcc9bdf5a61786b58d33dd4011aa057b0afc3a77daf7` |
| 12 | `theorem` | [_root_.GRWTSK.Algebra.CommutativeAlgebra.IsRootOfUnityOfRootCyclotomic.Variant44c3c04422257117c83229e242ac17fb61b42a88f64a8c1c24e67a1050555b15.IsPrimitiveRoot.minpoly_eq_cyclotomic_of_irreducible](../../../../../mathematics/Algebra/CommutativeAlgebra/Roots/Variant58d14aba878e13a6e03faa98fcda4e3893407a160a375463e467a59b30becc76.lean/declarations/root-grwtsk-algebra-commutativealgebra-isrootofunityofrootcyclotomic-var--a6e3a5b0367cf17bfe43f8ad.md) | 191 | `result-track:a6e3a5b0367cf17bfe43f8ad341fcff3489f20c9023cdceaa2814b7a50cdfac3` |
| 13 | `theorem` | [cyclotomic_eq_minpoly](../../../../../mathematics/Algebra/CommutativeAlgebra/Roots/Variant58d14aba878e13a6e03faa98fcda4e3893407a160a375463e467a59b30becc76.lean/declarations/cyclotomic-eq-minpoly--025b37c93d06d4a92ffd0679.md) | 200 | `result-track:025b37c93d06d4a92ffd067990d501d36f9d01562cf36c58fe461ceaf76a59d4` |
| 14 | `theorem` | [cyclotomic_eq_minpoly_rat](../../../../../mathematics/Algebra/CommutativeAlgebra/Roots/Variant58d14aba878e13a6e03faa98fcda4e3893407a160a375463e467a59b30becc76.lean/declarations/cyclotomic-eq-minpoly-rat--e523763249524ff47564ed2c.md) | 208 | `result-track:e523763249524ff47564ed2c6bf952e0e3acef52e52f71af1bacc5c21f1fc3c2` |
| 15 | `theorem` | [cyclotomic.irreducible](../../../../../mathematics/Algebra/CommutativeAlgebra/Roots/Variant58d14aba878e13a6e03faa98fcda4e3893407a160a375463e467a59b30becc76.lean/declarations/cyclotomic-irreducible--dc6af4de4a6ffabebc5bb015.md) | 215 | `result-track:dc6af4de4a6ffabebc5bb015297f1b5d7d66d74171782cce65d0a9d15251e944` |
| 16 | `theorem` | [cyclotomic.irreducible_rat](../../../../../mathematics/Algebra/CommutativeAlgebra/Roots/Variant58d14aba878e13a6e03faa98fcda4e3893407a160a375463e467a59b30becc76.lean/declarations/cyclotomic-irreducible-rat--17db0cc80d5f910b5bce938d.md) | 222 | `result-track:17db0cc80d5f910b5bce938db26d2df03f3a1d4c982e9c37fd3a033481614544` |
| 17 | `theorem` | [cyclotomic.isCoprime_rat](../../../../../mathematics/Algebra/CommutativeAlgebra/Roots/Variant58d14aba878e13a6e03faa98fcda4e3893407a160a375463e467a59b30becc76.lean/declarations/cyclotomic-iscoprime-rat--70023769892cf671f4d17a00.md) | 229 | `result-track:70023769892cf671f4d17a00fa4702914d36b15a27d83228468cd964e06023bc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
