# Verification target: GRWTSK.Algebra.Fiber.Variant05420d8ef17973631d8f033e7ea021f2269cc2834e55359ac774bfa28be036d3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4e25490987d542a916ea826a4d5f838b90c007d1",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Fiber/Variant05420d8ef17973631d8f033e7ea021f2269cc2834e55359ac774bfa28be036d3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Fiber/Variant05420d8ef17973631d8f033e7ea021f2269cc2834e55359ac774bfa28be036d3.lean/index.md) · [Full source](../../../../mathematics/Algebra/Fiber/Variant05420d8ef17973631d8f033e7ea021f2269cc2834e55359ac774bfa28be036d3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4e25490987d542a916ea826a4d5f838b90c007d1`.

Source path: `GRWTSK/Algebra/Fiber/Variant05420d8ef17973631d8f033e7ea021f2269cc2834e55359ac774bfa28be036d3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Fiber/Variant05420d8ef17973631d8f033e7ea021f2269cc2834e55359ac774bfa28be036d3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Fiber/Variant05420d8ef17973631d8f033e7ea021f2269cc2834e55359ac774bfa28be036d3.lean/declarations/instance--c12edaa26799849d190b2d69.md) | 41 | `declaration-track:c12edaa26799849d190b2d69ca87635888d6349913c2565904ceb3503ece94fe` |
| 2 | `lemma` | [ResidueField.exists_smul_eq_tmul_one](../../../../mathematics/Algebra/Fiber/Variant05420d8ef17973631d8f033e7ea021f2269cc2834e55359ac774bfa28be036d3.lean/declarations/residuefield-exists-smul-eq-tmul-one--879dc700ff9e65fe28750a34.md) | 55 | `result-track:879dc700ff9e65fe28750a3461fa415561d9d920b088b9180aec2f47b129278d` |
| 3 | `abbrev` | [Fiber](../../../../mathematics/Algebra/Fiber/Variant05420d8ef17973631d8f033e7ea021f2269cc2834e55359ac774bfa28be036d3.lean/declarations/fiber--1720714e7927f74d10457faf.md) | 74 | `declaration-track:1720714e7927f74d10457faf0f49839260a997d288779920ce592e560576c66f` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Fiber/Variant05420d8ef17973631d8f033e7ea021f2269cc2834e55359ac774bfa28be036d3.lean/declarations/instance--5a9b2aa39298d3ef6c9f5c10.md) | 77 | `declaration-track:5a9b2aa39298d3ef6c9f5c10c2f49a933d0db3f2b21fd158c499a32c37069b07` |
| 5 | `lemma` | [Fiber.exists_smul_eq_one_tmul](../../../../mathematics/Algebra/Fiber/Variant05420d8ef17973631d8f033e7ea021f2269cc2834e55359ac774bfa28be036d3.lean/declarations/fiber-exists-smul-eq-one-tmul--875f839dd1f99857f60e8ac0.md) | 80 | `result-track:875f839dd1f99857f60e8ac0d1dae23303f22d7a0d8b7995ca45487444a89efa` |
| 6 | `def` | [Fiber.algEquivQuotient](../../../../mathematics/Algebra/Fiber/Variant05420d8ef17973631d8f033e7ea021f2269cc2834e55359ac774bfa28be036d3.lean/declarations/fiber-algequivquotient--d9d43a547170e186d32f9f5c.md) | 87 | `declaration-track:d9d43a547170e186d32f9f5c518d360c5e4079cac2ae61256d739617b3496043` |
| 7 | `def` | [Fiber.algEquivAux₁](../../../../mathematics/Algebra/Fiber/Variant05420d8ef17973631d8f033e7ea021f2269cc2834e55359ac774bfa28be036d3.lean/declarations/fiber-algequivaux--92798f8255f75a1df10ab597.md) | 102 | `declaration-track:92798f8255f75a1df10ab5979daf92605ded56e0788e978625cdfe9603e0ecce` |
| 8 | `def` | [Fiber.algEquivAux₂](../../../../mathematics/Algebra/Fiber/Variant05420d8ef17973631d8f033e7ea021f2269cc2834e55359ac774bfa28be036d3.lean/declarations/fiber-algequivaux--965b87b13abebeba652ccb21.md) | 113 | `declaration-track:965b87b13abebeba652ccb213a3b8efe858fb06bfbdff26c5e6b4b42069ee52d` |
| 9 | `def` | [Fiber.localizationAlgEquivQuotient](../../../../mathematics/Algebra/Fiber/Variant05420d8ef17973631d8f033e7ea021f2269cc2834e55359ac774bfa28be036d3.lean/declarations/fiber-localizationalgequivquotient--c1ab1d1ad31510a72da5a5d6.md) | 139 | `declaration-track:c1ab1d1ad31510a72da5a5d60bd55d42ec67e268f5360bf808aa900e7976e760` |
| 10 | `def` | [PrimeSpectrum.preimageEquivFiber](../../../../mathematics/Algebra/Fiber/Variant05420d8ef17973631d8f033e7ea021f2269cc2834e55359ac774bfa28be036d3.lean/declarations/primespectrum-preimageequivfiber--ddc28902cbbdaf391eb45974.md) | 157 | `declaration-track:ddc28902cbbdaf391eb45974207a95ba1a3369764002ac5a6adfa3111b5bc7e9` |
| 11 | `def` | [PrimeSpectrum.preimageOrderIsoFiber](../../../../mathematics/Algebra/Fiber/Variant05420d8ef17973631d8f033e7ea021f2269cc2834e55359ac774bfa28be036d3.lean/declarations/primespectrum-preimageorderisofiber--c0a148330c90e83fe2c1819f.md) | 184 | `declaration-track:c0a148330c90e83fe2c1819f44c24c8fb618bcc09834580fff18df2510e6bcab` |
| 12 | `def` | [PrimeSpectrum.primesOverOrderIsoFiber](../../../../mathematics/Algebra/Fiber/Variant05420d8ef17973631d8f033e7ea021f2269cc2834e55359ac774bfa28be036d3.lean/declarations/primespectrum-primesoverorderisofiber--5aa36b679d391278df67de5d.md) | 204 | `declaration-track:5aa36b679d391278df67de5d59d1d84cd72d332fb6bce0558832b1e7ee0fade1` |
| 13 | `def` | [PrimeSpectrum.preimageHomeomorphFiber](../../../../mathematics/Algebra/Fiber/Variant05420d8ef17973631d8f033e7ea021f2269cc2834e55359ac774bfa28be036d3.lean/declarations/primespectrum-preimagehomeomorphfiber--30206be4208f73c71d87587a.md) | 214 | `declaration-track:30206be4208f73c71d87587a5b2a1bb393b3b7c08ebb4a793c992a902668a444` |
| 14 | `theorem` | [PrimeSpectrum.coe_primesOverOrderIsoFiber_symm_apply](../../../../mathematics/Algebra/Fiber/Variant05420d8ef17973631d8f033e7ea021f2269cc2834e55359ac774bfa28be036d3.lean/declarations/primespectrum-coe-primesoverorderisofiber-symm-apply--2efee042f76a5d64ce4c64f0.md) | 236 | `result-track:2efee042f76a5d64ce4c64f0eacab344ae39e5646818edacc346d8885eefd54c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
