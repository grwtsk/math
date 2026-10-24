# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Limits.Variant8f7a3f6a92e8a297735874b348e8bd4854ba1f775f43824d000456616f282b0e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f83f02b61bc6aaaa0409ee373edf658f5b35a8a2",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant8f7a3f6a92e8a297735874b348e8bd4854ba1f775f43824d000456616f282b0e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant8f7a3f6a92e8a297735874b348e8bd4854ba1f775f43824d000456616f282b0e.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant8f7a3f6a92e8a297735874b348e8bd4854ba1f775f43824d000456616f282b0e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f83f02b61bc6aaaa0409ee373edf658f5b35a8a2`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant8f7a3f6a92e8a297735874b348e8bd4854ba1f775f43824d000456616f282b0e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant8f7a3f6a92e8a297735874b348e8bd4854ba1f775f43824d000456616f282b0e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Adjunction.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Creates` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [functorialityRightAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant8f7a3f6a92e8a297735874b348e8bd4854ba1f775f43824d000456616f282b0e.lean/declarations/functorialityrightadjoint--8f2178cd7c92a15b834ab6cc.md) | 65 | `declaration-track:8f2178cd7c92a15b834ab6cc33a5d8da2f0262302ef9c93698e06361d42545ad` |
| 2 | `def` | [functorialityUnit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant8f7a3f6a92e8a297735874b348e8bd4854ba1f775f43824d000456616f282b0e.lean/declarations/functorialityunit--615a33134c7ecb0cdb76bec5.md) | 77 | `declaration-track:615a33134c7ecb0cdb76bec5c293a5621732b797a702e27cdb499e3b453742b9` |
| 3 | `def` | [functorialityCounit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant8f7a3f6a92e8a297735874b348e8bd4854ba1f775f43824d000456616f282b0e.lean/declarations/functorialitycounit--716c6a8d6f2094d4f1b5c971.md) | 87 | `declaration-track:716c6a8d6f2094d4f1b5c971c1514d708c6376f5985fdb31a43a56287597ce34` |
| 4 | `def` | [functorialityIsLeftAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant8f7a3f6a92e8a297735874b348e8bd4854ba1f775f43824d000456616f282b0e.lean/declarations/functorialityisleftadjoint--75853673277b12bdafc7b234.md) | 93 | `declaration-track:75853673277b12bdafc7b234620b13229589eb6496b7df28abe10c51259bc7ff` |
| 5 | `def` | [leftAdjointPreservesColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant8f7a3f6a92e8a297735874b348e8bd4854ba1f775f43824d000456616f282b0e.lean/declarations/leftadjointpreservescolimits--61100f83280bec888cc82819.md) | 104 | `declaration-track:61100f83280bec888cc828194a9058ef5abc29c49e1d809b0be74a578e7db7e9` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant8f7a3f6a92e8a297735874b348e8bd4854ba1f775f43824d000456616f282b0e.lean/declarations/instance--ebb1982f8a5bbdb69f205055.md) | 114 | `declaration-track:ebb1982f8a5bbdb69f20505526758dd0eb6675f3b318c78d0ca69344065e2ae5` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant8f7a3f6a92e8a297735874b348e8bd4854ba1f775f43824d000456616f282b0e.lean/declarations/instance--c0d3c77918471a1c76f9e640.md) | 120 | `declaration-track:c0d3c77918471a1c76f9e640b347360110fe6ad0a4d55b7903f7673b9b506e67` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant8f7a3f6a92e8a297735874b348e8bd4854ba1f775f43824d000456616f282b0e.lean/declarations/instance--c1e14f1c7dba5a387756396f.md) | 129 | `declaration-track:c1e14f1c7dba5a387756396fd55aecc4bb7ccb31defd988bf96b56ce59fda3e0` |
| 9 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant8f7a3f6a92e8a297735874b348e8bd4854ba1f775f43824d000456616f282b0e.lean/declarations/example--d5f2ff3ee8e828b627463fc6.md) | 139 | `declaration-track:d5f2ff3ee8e828b627463fc6f482e620c973cf6b43d209cd2faf4c9ef3135dd4` |
| 10 | `theorem` | [hasColimit_comp_equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant8f7a3f6a92e8a297735874b348e8bd4854ba1f775f43824d000456616f282b0e.lean/declarations/hascolimit-comp-equivalence--8a154a775a98a9c76f1f7ab8.md) | 143 | `result-track:8a154a775a98a9c76f1f7ab8a252b7f923b9d31b95b15ec827ef0a2a9e120d75` |
| 11 | `theorem` | [hasColimit_of_comp_equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant8f7a3f6a92e8a297735874b348e8bd4854ba1f775f43824d000456616f282b0e.lean/declarations/hascolimit-of-comp-equivalence--4d856ab575078c402612adce.md) | 150 | `result-track:4d856ab575078c402612adce1333f1d466220f1a9d152979a503d9d81cfde1d4` |
| 12 | `theorem` | [hasColimitsOfShape_of_equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant8f7a3f6a92e8a297735874b348e8bd4854ba1f775f43824d000456616f282b0e.lean/declarations/hascolimitsofshape-of-equivalence--7dfc0ed94c60407f2a90bacf.md) | 158 | `result-track:7dfc0ed94c60407f2a90bacf1e42d3b1c804bd21b0f56a04ae4e1db465e1715d` |
| 13 | `theorem` | [has_colimits_of_equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant8f7a3f6a92e8a297735874b348e8bd4854ba1f775f43824d000456616f282b0e.lean/declarations/has-colimits-of-equivalence--fc379f2bb1456248e6a4d753.md) | 164 | `result-track:fc379f2bb1456248e6a4d75370f244abea36abe927b5a6b50e773d5652cd0369` |
| 14 | `def` | [functorialityLeftAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant8f7a3f6a92e8a297735874b348e8bd4854ba1f775f43824d000456616f282b0e.lean/declarations/functorialityleftadjoint--7c531631df8cce030d6ce5cc.md) | 179 | `declaration-track:7c531631df8cce030d6ce5cccb91e8f4b9877afd77d733ea491e2e9e6cd66d4f` |
| 15 | `def` | [functorialityUnit'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant8f7a3f6a92e8a297735874b348e8bd4854ba1f775f43824d000456616f282b0e.lean/declarations/functorialityunit--2d18ad933d7719aea0301384.md) | 191 | `declaration-track:2d18ad933d7719aea030138465b061858533feaaaa2e3d13ed6d87b13f2751c3` |
| 16 | `def` | [functorialityCounit'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant8f7a3f6a92e8a297735874b348e8bd4854ba1f775f43824d000456616f282b0e.lean/declarations/functorialitycounit--3f60f06671f8816dcd6bc22f.md) | 201 | `declaration-track:3f60f06671f8816dcd6bc22f7e1ad3fbc15ceecf6e5c0bb3b17af4a024ae4bd8` |
| 17 | `def` | [functorialityIsRightAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant8f7a3f6a92e8a297735874b348e8bd4854ba1f775f43824d000456616f282b0e.lean/declarations/functorialityisrightadjoint--30be7a07474ec047b933eb85.md) | 207 | `declaration-track:30be7a07474ec047b933eb856f5af32af323d7bb6840af85cc4b37a2aadf2105` |
| 18 | `def` | [rightAdjointPreservesLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant8f7a3f6a92e8a297735874b348e8bd4854ba1f775f43824d000456616f282b0e.lean/declarations/rightadjointpreserveslimits--b521987ec653335ca44eea41.md) | 218 | `declaration-track:b521987ec653335ca44eea41e3de74b2d6459e4a81ee060841bfac63e9d43bfe` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant8f7a3f6a92e8a297735874b348e8bd4854ba1f775f43824d000456616f282b0e.lean/declarations/instance--1375f1a52f637d239f208a3d.md) | 228 | `declaration-track:1375f1a52f637d239f208a3d5a3e4cca015d2f0ed2d26ac32caf98292ad40f51` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant8f7a3f6a92e8a297735874b348e8bd4854ba1f775f43824d000456616f282b0e.lean/declarations/instance--8d87e4f8a1067276aacbca01.md) | 234 | `declaration-track:8d87e4f8a1067276aacbca013b1e4362a8098a0c05006fe163a3249f8296a7bb` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant8f7a3f6a92e8a297735874b348e8bd4854ba1f775f43824d000456616f282b0e.lean/declarations/instance--39d8ecc7f60909871dc3dc0d.md) | 243 | `declaration-track:39d8ecc7f60909871dc3dc0d65f1d710f087fb2d26fffcb4ff9048a20d0299cb` |
| 22 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant8f7a3f6a92e8a297735874b348e8bd4854ba1f775f43824d000456616f282b0e.lean/declarations/example--1136e0f4013341739b149bee.md) | 253 | `declaration-track:1136e0f4013341739b149beef78a0d652e6c8c89e915621feb23b4a87eb78182` |
| 23 | `theorem` | [hasLimit_comp_equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant8f7a3f6a92e8a297735874b348e8bd4854ba1f775f43824d000456616f282b0e.lean/declarations/haslimit-comp-equivalence--c751edc93fc202557df1655d.md) | 256 | `result-track:c751edc93fc202557df1655d2903ea42fc1b051f441d7d7e0d073ef520a43172` |
| 24 | `theorem` | [hasLimit_of_comp_equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant8f7a3f6a92e8a297735874b348e8bd4854ba1f775f43824d000456616f282b0e.lean/declarations/haslimit-of-comp-equivalence--ab45c6e8954c11cdbce659e6.md) | 262 | `result-track:ab45c6e8954c11cdbce659e6ceb0eac63d654e414aee88b200482a5e7d46745a` |
| 25 | `theorem` | [hasLimitsOfShape_of_equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant8f7a3f6a92e8a297735874b348e8bd4854ba1f775f43824d000456616f282b0e.lean/declarations/haslimitsofshape-of-equivalence--44b8d279698464c74f7ca56f.md) | 270 | `result-track:44b8d279698464c74f7ca56f5cb660548077f07c2699658fc9073ad91b75c6f5` |
| 26 | `theorem` | [has_limits_of_equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant8f7a3f6a92e8a297735874b348e8bd4854ba1f775f43824d000456616f282b0e.lean/declarations/has-limits-of-equivalence--cc50f0f6f0a581d6677fcc43.md) | 276 | `result-track:cc50f0f6f0a581d6677fcc43488330500070504e458a944aba6013fe3c8d805a` |
| 27 | `def` | [coconesIsoComponentHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant8f7a3f6a92e8a297735874b348e8bd4854ba1f775f43824d000456616f282b0e.lean/declarations/coconesisocomponenthom--cab5372dfc60e214f2bf852b.md) | 285 | `declaration-track:cab5372dfc60e214f2bf852b613b8b39c1548fb8af2565ed2b97e4a91a03e8c4` |
| 28 | `def` | [coconesIsoComponentInv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant8f7a3f6a92e8a297735874b348e8bd4854ba1f775f43824d000456616f282b0e.lean/declarations/coconesisocomponentinv--acd65752200b3f2a57c6c6d5.md) | 296 | `declaration-track:acd65752200b3f2a57c6c6d552c43eae7f91513df8a012ebd168a944c07cc0d6` |
| 29 | `def` | [conesIsoComponentHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant8f7a3f6a92e8a297735874b348e8bd4854ba1f775f43824d000456616f282b0e.lean/declarations/conesisocomponenthom--0fdf775d26d7c4fdbd58a6c7.md) | 306 | `declaration-track:0fdf775d26d7c4fdbd58a6c79acd0a1f5cdfd44ab78c0ffcc3a9c7b48876092e` |
| 30 | `def` | [conesIsoComponentInv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant8f7a3f6a92e8a297735874b348e8bd4854ba1f775f43824d000456616f282b0e.lean/declarations/conesisocomponentinv--502ae837581fd0a2009b2488.md) | 316 | `declaration-track:502ae837581fd0a2009b2488a4d51f32e2c81bd232b206299ce61a52c75f03d5` |
| 31 | `def` | [coconesIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant8f7a3f6a92e8a297735874b348e8bd4854ba1f775f43824d000456616f282b0e.lean/declarations/coconesiso--bcc573a4057cb5131aa14dd3.md) | 334 | `declaration-track:bcc573a4057cb5131aa14dd365170a6935bdac11e811f1d007189b02d83d4478` |
| 32 | `def` | [conesIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant8f7a3f6a92e8a297735874b348e8bd4854ba1f775f43824d000456616f282b0e.lean/declarations/conesiso--716e4b480394db5a8cf926d6.md) | 347 | `declaration-track:716e4b480394db5a8cf926d6644fabf2051acf40386839208b6d117398d7e8aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
