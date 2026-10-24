# Verification target: GRWTSK.Geometry.AlgebraicGeometry.UniversallyClosed.Variant85a53461de7f90095a4cccfe6af4c9aff6234bba07e0b60fc8d6851a00f09c46

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7df3b4c4053e44cc221f97e5efcc05688c48302d",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/UniversallyClosed/Variant85a53461de7f90095a4cccfe6af4c9aff6234bba07e0b60fc8d6851a00f09c46.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyClosed/Variant85a53461de7f90095a4cccfe6af4c9aff6234bba07e0b60fc8d6851a00f09c46.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyClosed/Variant85a53461de7f90095a4cccfe6af4c9aff6234bba07e0b60fc8d6851a00f09c46.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7df3b4c4053e44cc221f97e5efcc05688c48302d`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/UniversallyClosed/Variant85a53461de7f90095a4cccfe6af4c9aff6234bba07e0b60fc8d6851a00f09c46.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/UniversallyClosed/Variant85a53461de7f90095a4cccfe6af4c9aff6234bba07e0b60fc8d6851a00f09c46.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.Morphisms.ClosedImmersion` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.PullbackCarrier` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.LocalAtTarget` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [UniversallyClosed](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyClosed/Variant85a53461de7f90095a4cccfe6af4c9aff6234bba07e0b60fc8d6851a00f09c46.lean/declarations/universallyclosed--fa184b47f61d17794cd3d174.md) | 47 | `declaration-track:fa184b47f61d17794cd3d174d99f5362e977e587e6367d99b9920502a6462a55` |
| 2 | `lemma` | [Scheme.Hom.isClosedMap](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyClosed/Variant85a53461de7f90095a4cccfe6af4c9aff6234bba07e0b60fc8d6851a00f09c46.lean/declarations/scheme-hom-isclosedmap--83a864a369d3015f12692332.md) | 50 | `result-track:83a864a369d3015f126923325ff14d80c9e4b0acff79ae906a99e707bca98623` |
| 3 | `theorem` | [universallyClosed_eq](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyClosed/Variant85a53461de7f90095a4cccfe6af4c9aff6234bba07e0b60fc8d6851a00f09c46.lean/declarations/universallyclosed-eq--a26a767a1dc834a0ab64dc5c.md) | 53 | `result-track:a26a767a1dc834a0ab64dc5c72c07fe299c7212f8dcd3150bfafa53d9d556ea5` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyClosed/Variant85a53461de7f90095a4cccfe6af4c9aff6234bba07e0b60fc8d6851a00f09c46.lean/declarations/instance--c079acabbdfa7e87631f30f3.md) | 56 | `declaration-track:c079acabbdfa7e87631f30f34ce7919a4af03244a75948d9ba8b00db2ddc891a` |
| 5 | `theorem` | [universallyClosed_respectsIso](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyClosed/Variant85a53461de7f90095a4cccfe6af4c9aff6234bba07e0b60fc8d6851a00f09c46.lean/declarations/universallyclosed-respectsiso--39e37f1a36b1b788733403c0.md) | 63 | `result-track:39e37f1a36b1b788733403c07938a2c12a8b4bf9615bf4d4334080f93e866e0a` |
| 6 | `instance` | [universallyClosed_isStableUnderBaseChange](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyClosed/Variant85a53461de7f90095a4cccfe6af4c9aff6234bba07e0b60fc8d6851a00f09c46.lean/declarations/universallyclosed-isstableunderbasechange--60679b6da2fe3554c0ad637f.md) | 66 | `declaration-track:60679b6da2fe3554c0ad637f5328c1eeee389348085a80a35ad077371173a83f` |
| 7 | `instance` | [isClosedMap_isStableUnderComposition](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyClosed/Variant85a53461de7f90095a4cccfe6af4c9aff6234bba07e0b60fc8d6851a00f09c46.lean/declarations/isclosedmap-isstableundercomposition--cd92f8b345ca1f1617184385.md) | 69 | `declaration-track:cd92f8b345ca1f161718438585562473c7fb5f53ed9d0cb4e290a69d31854828` |
| 8 | `instance` | [universallyClosed_isStableUnderComposition](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyClosed/Variant85a53461de7f90095a4cccfe6af4c9aff6234bba07e0b60fc8d6851a00f09c46.lean/declarations/universallyclosed-isstableundercomposition--2adbeb1e7be44dc967176e2e.md) | 73 | `declaration-track:2adbeb1e7be44dc967176e2e86e7c33fac20945386ce9b0a2ef8a5685a1db880` |
| 9 | `lemma` | [UniversallyClosed.of_comp_surjective](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyClosed/Variant85a53461de7f90095a4cccfe6af4c9aff6234bba07e0b60fc8d6851a00f09c46.lean/declarations/universallyclosed-of-comp-surjective--1877359201f80d63756bc0b0.md) | 78 | `result-track:1877359201f80d63756bc0b0644148d3a64c332e7400e5595e49457c16495aeb` |
| 10 | `instance` | [universallyClosedTypeComp](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyClosed/Variant85a53461de7f90095a4cccfe6af4c9aff6234bba07e0b60fc8d6851a00f09c46.lean/declarations/universallyclosedtypecomp--341f4908589bda088b7e9a2e.md) | 86 | `declaration-track:341f4908589bda088b7e9a2ed76f4f346730cd69bd3bf2550556dea35977f83f` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyClosed/Variant85a53461de7f90095a4cccfe6af4c9aff6234bba07e0b60fc8d6851a00f09c46.lean/declarations/instance--249a8c4641238d468314c059.md) | 90 | `declaration-track:249a8c4641238d468314c059f7f67d5856df407627157aa4e31fdd6bf3fd59d1` |
| 12 | `instance` | [universallyClosed_fst](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyClosed/Variant85a53461de7f90095a4cccfe6af4c9aff6234bba07e0b60fc8d6851a00f09c46.lean/declarations/universallyclosed-fst--a9ba8c69cabe48cff5f80139.md) | 93 | `declaration-track:a9ba8c69cabe48cff5f801390056e38b618b111c5e9b6ad01c30fa7c51b660b0` |
| 13 | `instance` | [universallyClosed_snd](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyClosed/Variant85a53461de7f90095a4cccfe6af4c9aff6234bba07e0b60fc8d6851a00f09c46.lean/declarations/universallyclosed-snd--aa9fd98cc4508f3ae818ad38.md) | 97 | `declaration-track:aa9fd98cc4508f3ae818ad38e4176e26e57541e623ed756786ae35b01ef6fc8f` |
| 14 | `instance` | [universallyClosed_isLocalAtTarget](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyClosed/Variant85a53461de7f90095a4cccfe6af4c9aff6234bba07e0b60fc8d6851a00f09c46.lean/declarations/universallyclosed-islocalattarget--d8a2043b631172eba0d094cd.md) | 101 | `declaration-track:d8a2043b631172eba0d094cd5d38b2fe8453d841600b02d57fc2bc4860d051ba` |
| 15 | `lemma` | [compactSpace_of_universallyClosed](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyClosed/Variant85a53461de7f90095a4cccfe6af4c9aff6234bba07e0b60fc8d6851a00f09c46.lean/declarations/compactspace-of-universallyclosed--dcbe4d0a2fb00abf405f9459.md) | 110 | `result-track:dcbe4d0a2fb00abf405f9459e0f0f590a2127e71acf2a5aca9315481bc328e7d` |
| 16 | `lemma` | [Scheme.Hom.isProperMap](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyClosed/Variant85a53461de7f90095a4cccfe6af4c9aff6234bba07e0b60fc8d6851a00f09c46.lean/declarations/scheme-hom-ispropermap--3589e7a74dee6f2a4c69a3ef.md) | 152 | `result-track:3589e7a74dee6f2a4c69a3efc35b40674ff8cda435e693657afd162c8426ba07` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyClosed/Variant85a53461de7f90095a4cccfe6af4c9aff6234bba07e0b60fc8d6851a00f09c46.lean/declarations/instance--12e0b7e1db39d3b9b5f433d1.md) | 161 | `declaration-track:12e0b7e1db39d3b9b5f433d1929fec29ecec0b3f0234c461d84b9ab859ac1917` |
| 18 | `lemma` | [universallyClosed_eq_universallySpecializing](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyClosed/Variant85a53461de7f90095a4cccfe6af4c9aff6234bba07e0b60fc8d6851a00f09c46.lean/declarations/universallyclosed-eq-universallyspecializing--340e94e779c3e5958f826cc2.md) | 164 | `result-track:340e94e779c3e5958f826cc250b2047f6c03400f92f5d8efc00dfbaba742adb8` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyClosed/Variant85a53461de7f90095a4cccfe6af4c9aff6234bba07e0b60fc8d6851a00f09c46.lean/declarations/instance--48f4e849d919f52a87f5da92.md) | 173 | `declaration-track:48f4e849d919f52a87f5da92baf14f0e6222ca423bf7a70313a9b4081bad8c3b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
