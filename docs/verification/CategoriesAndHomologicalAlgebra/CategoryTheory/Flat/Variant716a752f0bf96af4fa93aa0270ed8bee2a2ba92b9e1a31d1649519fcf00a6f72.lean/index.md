# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Flat.Variant716a752f0bf96af4fa93aa0270ed8bee2a2ba92b9e1a31d1649519fcf00a6f72

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a88d1f4b8f7f4078045f3de3421ee85e8c03c964",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant716a752f0bf96af4fa93aa0270ed8bee2a2ba92b9e1a31d1649519fcf00a6f72.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant716a752f0bf96af4fa93aa0270ed8bee2a2ba92b9e1a31d1649519fcf00a6f72.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant716a752f0bf96af4fa93aa0270ed8bee2a2ba92b9e1a31d1649519fcf00a6f72.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a88d1f4b8f7f4078045f3de3421ee85e8c03c964`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant716a752f0bf96af4fa93aa0270ed8bee2a2ba92b9e1a31d1649519fcf00a6f72.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant716a752f0bf96af4fa93aa0270ed8bee2a2ba92b9e1a31d1649519fcf00a6f72.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [RepresentablyFlat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant716a752f0bf96af4fa93aa0270ed8bee2a2ba92b9e1a31d1649519fcf00a6f72.lean/declarations/representablyflat--2a656bf2211b64cebf3dbb7e.md) | 78 | `declaration-track:2a656bf2211b64cebf3dbb7e41968daf1838a4f2f603c31dca8508ef90669d11` |
| 2 | `class` | [RepresentablyCoflat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant716a752f0bf96af4fa93aa0270ed8bee2a2ba92b9e1a31d1649519fcf00a6f72.lean/declarations/representablycoflat--42a0ff11e84c489351d1b241.md) | 83 | `declaration-track:42a0ff11e84c489351d1b241f503d2bafb867c5636a73da931a22c3f34973f08` |
| 3 | `instance` | [RepresentablyFlat.of_isRightAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant716a752f0bf96af4fa93aa0270ed8bee2a2ba92b9e1a31d1649519fcf00a6f72.lean/declarations/representablyflat-of-isrightadjoint--b74c1ab7c6bc17e5f85dd918.md) | 90 | `declaration-track:b74c1ab7c6bc17e5f85dd91819436fc1476cbc7fa94b66edf42b70ef2bb7d208` |
| 4 | `instance` | [RepresentablyCoflat.of_isLeftAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant716a752f0bf96af4fa93aa0270ed8bee2a2ba92b9e1a31d1649519fcf00a6f72.lean/declarations/representablycoflat-of-isleftadjoint--dba940b5f105312a120da76e.md) | 93 | `declaration-track:dba940b5f105312a120da76e38dfe80f96dbd237356a33b7306b443a99a5300d` |
| 5 | `theorem` | [RepresentablyFlat.id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant716a752f0bf96af4fa93aa0270ed8bee2a2ba92b9e1a31d1649519fcf00a6f72.lean/declarations/representablyflat-id--abb857fcd1971a851b2b8971.md) | 96 | `result-track:abb857fcd1971a851b2b8971b306442b59c4ec50af35838199092bf291c24ff5` |
| 6 | `theorem` | [RepresentablyCoflat.id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant716a752f0bf96af4fa93aa0270ed8bee2a2ba92b9e1a31d1649519fcf00a6f72.lean/declarations/representablycoflat-id--0d1c4da13ac110691fdee329.md) | 98 | `result-track:0d1c4da13ac110691fdee329787e17f0142b120c3759b32ef0ff647a9492b935` |
| 7 | `instance` | [RepresentablyFlat.comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant716a752f0bf96af4fa93aa0270ed8bee2a2ba92b9e1a31d1649519fcf00a6f72.lean/declarations/representablyflat-comp--72a9e878fa017cac13adff05.md) | 101 | `declaration-track:72a9e878fa017cac13adff05c3de57c4244f7a9b460dfecdf9be062b1a7c3510` |
| 8 | `theorem` | [RepresentablyFlat.of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant716a752f0bf96af4fa93aa0270ed8bee2a2ba92b9e1a31d1649519fcf00a6f72.lean/declarations/representablyflat-of-iso--d613c4063bea9fc7f3bcb1e2.md) | 120 | `result-track:d613c4063bea9fc7f3bcb1e241a06e97b0da25031e0d737ebab0f51bd988132c` |
| 9 | `theorem` | [RepresentablyCoflat.of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant716a752f0bf96af4fa93aa0270ed8bee2a2ba92b9e1a31d1649519fcf00a6f72.lean/declarations/representablycoflat-of-iso--df15988507dd6aca6da9f771.md) | 124 | `result-track:df15988507dd6aca6da9f77187a962353f1752a4099d1e6d46068f84154664f5` |
| 10 | `theorem` | [representablyCoflat_op_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant716a752f0bf96af4fa93aa0270ed8bee2a2ba92b9e1a31d1649519fcf00a6f72.lean/declarations/representablycoflat-op-iff--5960f3fe95b90b081d0ba62a.md) | 130 | `result-track:5960f3fe95b90b081d0ba62a78cc85a4039bafd81cefe62ebaf3b759d77e9d62` |
| 11 | `theorem` | [representablyFlat_op_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant716a752f0bf96af4fa93aa0270ed8bee2a2ba92b9e1a31d1649519fcf00a6f72.lean/declarations/representablyflat-op-iff--11f35f0e5a2e1a43ebe5794d.md) | 139 | `result-track:11f35f0e5a2e1a43ebe5794df5f56ae8cec9f422920300c8e7ebac468b604ead` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant716a752f0bf96af4fa93aa0270ed8bee2a2ba92b9e1a31d1649519fcf00a6f72.lean/declarations/instance--3df79fda77979f184f4fa649.md) | 148 | `declaration-track:3df79fda77979f184f4fa649507df95e08681c42e46d50b49cbc11ae2519ebeb` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant716a752f0bf96af4fa93aa0270ed8bee2a2ba92b9e1a31d1649519fcf00a6f72.lean/declarations/instance--e1fdd6e9e06356d5e2ff91b1.md) | 151 | `declaration-track:e1fdd6e9e06356d5e2ff91b1086d2b286355f5a151372b23183e5323e0498ef0` |
| 14 | `instance` | [RepresentablyCoflat.comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant716a752f0bf96af4fa93aa0270ed8bee2a2ba92b9e1a31d1649519fcf00a6f72.lean/declarations/representablycoflat-comp--f41a82568502d2f98c755e67.md) | 154 | `declaration-track:f41a82568502d2f98c755e6741cb0d80093093b864daa7e5779f156aca9bb0c9` |
| 15 | `lemma` | [final_of_representablyFlat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant716a752f0bf96af4fa93aa0270ed8bee2a2ba92b9e1a31d1649519fcf00a6f72.lean/declarations/final-of-representablyflat--2b6d688fff8644fe9229f44c.md) | 158 | `result-track:2b6d688fff8644fe9229f44c3784ac38b69c749b50bb2c56edad6980fbc91529` |
| 16 | `lemma` | [initial_of_representablyCoflat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant716a752f0bf96af4fa93aa0270ed8bee2a2ba92b9e1a31d1649519fcf00a6f72.lean/declarations/initial-of-representablycoflat--795b89c470ef13dae133f82e.md) | 161 | `result-track:795b89c470ef13dae133f82e0905901791dcd338a6987a60929a6273d6755c02` |
| 17 | `theorem` | [flat_of_preservesFiniteLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant716a752f0bf96af4fa93aa0270ed8bee2a2ba92b9e1a31d1649519fcf00a6f72.lean/declarations/flat-of-preservesfinitelimits--a09622eba17799e30ccd8b16.md) | 170 | `result-track:a09622eba17799e30ccd8b160da16a704e3f36f2cf28ab3296822d5f7329bf52` |
| 18 | `theorem` | [coflat_of_preservesFiniteColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant716a752f0bf96af4fa93aa0270ed8bee2a2ba92b9e1a31d1649519fcf00a6f72.lean/declarations/coflat-of-preservesfinitecolimits--20d46c9c8c84f7c059b380b2.md) | 178 | `result-track:20d46c9c8c84f7c059b380b26818ac18a6a6b3939d3d1382b29b457f78d4db44` |
| 19 | `def` | [lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant716a752f0bf96af4fa93aa0270ed8bee2a2ba92b9e1a31d1649519fcf00a6f72.lean/declarations/lift--f88afd9e49206e022ec6ec16.md) | 195 | `declaration-track:f88afd9e49206e022ec6ec1673702ac29f5e679edddf89bf2ef507d98c91191b` |
| 20 | `theorem` | [fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant716a752f0bf96af4fa93aa0270ed8bee2a2ba92b9e1a31d1649519fcf00a6f72.lean/declarations/fac--802d80e319fec5df25a028c6.md) | 206 | `result-track:802d80e319fec5df25a028c6d2a9991fe5004f56aab517cbb52554eb1aece89a` |
| 21 | `theorem` | [uniq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant716a752f0bf96af4fa93aa0270ed8bee2a2ba92b9e1a31d1649519fcf00a6f72.lean/declarations/uniq--c94656c713df6080a28f4b0b.md) | 211 | `result-track:c94656c713df6080a28f4b0b918415ee59bb802a2f3a25b70b8fce0d45b87429` |
| 22 | `lemma` | [preservesFiniteLimits_of_flat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant716a752f0bf96af4fa93aa0270ed8bee2a2ba92b9e1a31d1649519fcf00a6f72.lean/declarations/preservesfinitelimits-of-flat--f29ed44cd2143102d74c56fd.md) | 261 | `result-track:f29ed44cd2143102d74c56fd9d1f3bd981c1b9ab2bf68c03752335f9565c49f4` |
| 23 | `lemma` | [preservesFiniteColimits_of_coflat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant716a752f0bf96af4fa93aa0270ed8bee2a2ba92b9e1a31d1649519fcf00a6f72.lean/declarations/preservesfinitecolimits-of-coflat--56d4f09905c5783d7c272e7b.md) | 277 | `result-track:56d4f09905c5783d7c272e7b83b4e375155eca64430529fcd90e02c29535b1fe` |
| 24 | `lemma` | [preservesFiniteLimits_iff_flat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant716a752f0bf96af4fa93aa0270ed8bee2a2ba92b9e1a31d1649519fcf00a6f72.lean/declarations/preservesfinitelimits-iff-flat--3f8d1e994cd040b1abe2527f.md) | 285 | `result-track:3f8d1e994cd040b1abe2527fe89d9444711f597c1e51de431269add5febf71c6` |
| 25 | `lemma` | [preservesFiniteColimits_iff_coflat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant716a752f0bf96af4fa93aa0270ed8bee2a2ba92b9e1a31d1649519fcf00a6f72.lean/declarations/preservesfinitecolimits-iff-coflat--b1d1c170365378951fd667a4.md) | 291 | `result-track:b1d1c170365378951fd667a449b082d44429f051c69a00f4229d046f10c42d73` |
| 26 | `def` | [lanEvaluationIsoColim](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant716a752f0bf96af4fa93aa0270ed8bee2a2ba92b9e1a31d1649519fcf00a6f72.lean/declarations/lanevaluationisocolim--31074695e4af5f841b6bdb16.md) | 307 | `declaration-track:31074695e4af5f841b6bdb16085b7d3300ac905d75a1df1beb9c296563d87b76` |
| 27 | `instance` | [lan_preservesFiniteLimits_of_flat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant716a752f0bf96af4fa93aa0270ed8bee2a2ba92b9e1a31d1649519fcf00a6f72.lean/declarations/lan-preservesfinitelimits-of-flat--f47b1cb525363ec1f9647f60.md) | 335 | `declaration-track:f47b1cb525363ec1f9647f60995d66095756801c8bdb5f2ca595d28d1ad6df71` |
| 28 | `instance` | [lan_flat_of_flat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant716a752f0bf96af4fa93aa0270ed8bee2a2ba92b9e1a31d1649519fcf00a6f72.lean/declarations/lan-flat-of-flat--eeeb944478ea29e0261c0879.md) | 345 | `declaration-track:eeeb944478ea29e0261c0879c45f208f3a8c06b501f0cc9bef38b09fcc7f5775` |
| 29 | `instance` | [lan_preservesFiniteLimits_of_preservesFiniteLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant716a752f0bf96af4fa93aa0270ed8bee2a2ba92b9e1a31d1649519fcf00a6f72.lean/declarations/lan-preservesfinitelimits-of-preservesfinitelimits--127ad219475de28f9c69232a.md) | 351 | `declaration-track:127ad219475de28f9c69232ab2705851b63d8652b5710aebfeea896a3baa8687` |
| 30 | `theorem` | [flat_iff_lan_flat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant716a752f0bf96af4fa93aa0270ed8bee2a2ba92b9e1a31d1649519fcf00a6f72.lean/declarations/flat-iff-lan-flat--1c3873974a4918ec6ebfa1ec.md) | 356 | `result-track:1c3873974a4918ec6ebfa1ec7a7462d3e1969d11a52412c27d3fd508e3bf9872` |
| 31 | `lemma` | [preservesFiniteLimits_iff_lan_preservesFiniteLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant716a752f0bf96af4fa93aa0270ed8bee2a2ba92b9e1a31d1649519fcf00a6f72.lean/declarations/preservesfinitelimits-iff-lan-preservesfinitelimits--95b64b39974fee3cc5fe3661.md) | 368 | `result-track:95b64b39974fee3cc5fe36611ab706fbc9889ba6dde6087328c28c22b24db3f2` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant716a752f0bf96af4fa93aa0270ed8bee2a2ba92b9e1a31d1649519fcf00a6f72.lean/declarations/instance--2d59abde6b537eebceca333c.md) | 382 | `declaration-track:2d59abde6b537eebceca333c88d5224a5548ca21c03bf8960dcf290f0d0518d4` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant716a752f0bf96af4fa93aa0270ed8bee2a2ba92b9e1a31d1649519fcf00a6f72.lean/declarations/instance--5441f465ccf71b65bbe4f59c.md) | 385 | `declaration-track:5441f465ccf71b65bbe4f59c811325d31462e5eb5621c293aebf60367af617e4` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant716a752f0bf96af4fa93aa0270ed8bee2a2ba92b9e1a31d1649519fcf00a6f72.lean/declarations/instance--e4170c7b59d3d66584393f78.md) | 388 | `declaration-track:e4170c7b59d3d66584393f78cbe33c47f5603ae443f0ba5e1d8bcd9eccec3848` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant716a752f0bf96af4fa93aa0270ed8bee2a2ba92b9e1a31d1649519fcf00a6f72.lean/declarations/instance--897fb44a239116d37ef83884.md) | 416 | `declaration-track:897fb44a239116d37ef83884100e13235ed3f82e5eefe5b223d0959f43c2ff87` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant716a752f0bf96af4fa93aa0270ed8bee2a2ba92b9e1a31d1649519fcf00a6f72.lean/declarations/instance--5bfd6355a7e31c695408f175.md) | 422 | `declaration-track:5bfd6355a7e31c695408f1751ee00e7666bbdfecbe4022960fac690fd6873f89` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
