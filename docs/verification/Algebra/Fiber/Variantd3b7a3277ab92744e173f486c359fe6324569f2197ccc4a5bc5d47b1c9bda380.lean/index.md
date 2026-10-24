# Verification target: GRWTSK.Algebra.Fiber.Variantd3b7a3277ab92744e173f486c359fe6324569f2197ccc4a5bc5d47b1c9bda380

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fce9211de87a29bb699ca0e6c93bbae56cbd0e74",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Fiber/Variantd3b7a3277ab92744e173f486c359fe6324569f2197ccc4a5bc5d47b1c9bda380.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Fiber/Variantd3b7a3277ab92744e173f486c359fe6324569f2197ccc4a5bc5d47b1c9bda380.lean/index.md) · [Full source](../../../../mathematics/Algebra/Fiber/Variantd3b7a3277ab92744e173f486c359fe6324569f2197ccc4a5bc5d47b1c9bda380.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fce9211de87a29bb699ca0e6c93bbae56cbd0e74`.

Source path: `GRWTSK/Algebra/Fiber/Variantd3b7a3277ab92744e173f486c359fe6324569f2197ccc4a5bc5d47b1c9bda380.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Fiber/Variantd3b7a3277ab92744e173f486c359fe6324569f2197ccc4a5bc5d47b1c9bda380.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Fiber/Variantd3b7a3277ab92744e173f486c359fe6324569f2197ccc4a5bc5d47b1c9bda380.lean/declarations/instance--5e66e1289f769c50cb4522ce.md) | 33 | `declaration-track:5e66e1289f769c50cb4522ceaf62a7632ec7cf0cb932e26f1f11942696160f5c` |
| 2 | `lemma` | [ResidueField.exists_smul_eq_tmul_one](../../../../mathematics/Algebra/Fiber/Variantd3b7a3277ab92744e173f486c359fe6324569f2197ccc4a5bc5d47b1c9bda380.lean/declarations/residuefield-exists-smul-eq-tmul-one--bb09f9b186d606fce1f5963f.md) | 47 | `result-track:bb09f9b186d606fce1f5963f7cded83d4e3b6fc5ff1a1c5e3fd4f6836888a2f2` |
| 3 | `abbrev` | [Fiber](../../../../mathematics/Algebra/Fiber/Variantd3b7a3277ab92744e173f486c359fe6324569f2197ccc4a5bc5d47b1c9bda380.lean/declarations/fiber--5695163eda7b0c4fd7bbe1ec.md) | 66 | `declaration-track:5695163eda7b0c4fd7bbe1ec0b10e461c297372b0b73d01af3fc0bfe9249309c` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Fiber/Variantd3b7a3277ab92744e173f486c359fe6324569f2197ccc4a5bc5d47b1c9bda380.lean/declarations/instance--358f1e907b89c65e765f5a24.md) | 69 | `declaration-track:358f1e907b89c65e765f5a2445ac2cd541998a5e54808dae542ed37864c6f95e` |
| 5 | `lemma` | [Fiber.exists_smul_eq_one_tmul](../../../../mathematics/Algebra/Fiber/Variantd3b7a3277ab92744e173f486c359fe6324569f2197ccc4a5bc5d47b1c9bda380.lean/declarations/fiber-exists-smul-eq-one-tmul--21097fe63063bf364b104e2b.md) | 72 | `result-track:21097fe63063bf364b104e2bffd40bd25244cbb572981a3222694ff136117e67` |
| 6 | `def` | [Fiber.algEquivQuotient](../../../../mathematics/Algebra/Fiber/Variantd3b7a3277ab92744e173f486c359fe6324569f2197ccc4a5bc5d47b1c9bda380.lean/declarations/fiber-algequivquotient--50c4d17826dcc77a3d046380.md) | 79 | `declaration-track:50c4d17826dcc77a3d0463804b5e142e8074abf0858f39ebd9330f01694f0786` |
| 7 | `def` | [Fiber.algEquivAux₁](../../../../mathematics/Algebra/Fiber/Variantd3b7a3277ab92744e173f486c359fe6324569f2197ccc4a5bc5d47b1c9bda380.lean/declarations/fiber-algequivaux--8f263e951404b7c5d3cc5902.md) | 94 | `declaration-track:8f263e951404b7c5d3cc59028231598a4eff40c48fd4f75afd77e90783d191f4` |
| 8 | `def` | [Fiber.algEquivAux₂](../../../../mathematics/Algebra/Fiber/Variantd3b7a3277ab92744e173f486c359fe6324569f2197ccc4a5bc5d47b1c9bda380.lean/declarations/fiber-algequivaux--e8f783015c7a7ffe14821d1a.md) | 105 | `declaration-track:e8f783015c7a7ffe14821d1af2275aadbe3d7ff95c6692cb072c36901d4c0de0` |
| 9 | `def` | [Fiber.localizationAlgEquivQuotient](../../../../mathematics/Algebra/Fiber/Variantd3b7a3277ab92744e173f486c359fe6324569f2197ccc4a5bc5d47b1c9bda380.lean/declarations/fiber-localizationalgequivquotient--d13b59e6be3fa5d8a94d3b1c.md) | 131 | `declaration-track:d13b59e6be3fa5d8a94d3b1c7bbae46ef317d9c2fd448df8dc25cc3132ebf0c4` |
| 10 | `def` | [PrimeSpectrum.preimageEquivFiber](../../../../mathematics/Algebra/Fiber/Variantd3b7a3277ab92744e173f486c359fe6324569f2197ccc4a5bc5d47b1c9bda380.lean/declarations/primespectrum-preimageequivfiber--27719e24766cc66fbbc0e6a3.md) | 149 | `declaration-track:27719e24766cc66fbbc0e6a3ddd174665e164be034e513d47a5084e32480d9d4` |
| 11 | `def` | [PrimeSpectrum.preimageOrderIsoFiber](../../../../mathematics/Algebra/Fiber/Variantd3b7a3277ab92744e173f486c359fe6324569f2197ccc4a5bc5d47b1c9bda380.lean/declarations/primespectrum-preimageorderisofiber--bbe78f213e7154d5794d9562.md) | 176 | `declaration-track:bbe78f213e7154d5794d9562254420a3b95444af06c7f244347498fdf72c3316` |
| 12 | `def` | [PrimeSpectrum.primesOverOrderIsoFiber](../../../../mathematics/Algebra/Fiber/Variantd3b7a3277ab92744e173f486c359fe6324569f2197ccc4a5bc5d47b1c9bda380.lean/declarations/primespectrum-primesoverorderisofiber--cabf534a8a6924da8bfc302c.md) | 196 | `declaration-track:cabf534a8a6924da8bfc302ceda5431b7033eb01b826ebd91c3d103d768a77e4` |
| 13 | `def` | [PrimeSpectrum.preimageHomeomorphFiber](../../../../mathematics/Algebra/Fiber/Variantd3b7a3277ab92744e173f486c359fe6324569f2197ccc4a5bc5d47b1c9bda380.lean/declarations/primespectrum-preimagehomeomorphfiber--78a55db275f642b516a1e010.md) | 206 | `declaration-track:78a55db275f642b516a1e0100b783e8146575c388414143c246e16006fbc4268` |
| 14 | `theorem` | [PrimeSpectrum.coe_primesOverOrderIsoFiber_symm_apply](../../../../mathematics/Algebra/Fiber/Variantd3b7a3277ab92744e173f486c359fe6324569f2197ccc4a5bc5d47b1c9bda380.lean/declarations/primespectrum-coe-primesoverorderisofiber-symm-apply--174664280d3d37ed3bca771e.md) | 228 | `result-track:174664280d3d37ed3bca771e93a77eedaa04fab4ed2f59ebf9e18118da3861c9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
