# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Basic.Variant66d5486ad06be956ba128fa3f0848c88a3ad4196bac183308169f02053e5afe8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7e92d0d7d412bc5fbaad9e02d86f67c34f6d1582",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant66d5486ad06be956ba128fa3f0848c88a3ad4196bac183308169f02053e5afe8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant66d5486ad06be956ba128fa3f0848c88a3ad4196bac183308169f02053e5afe8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant66d5486ad06be956ba128fa3f0848c88a3ad4196bac183308169f02053e5afe8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7e92d0d7d412bc5fbaad9e02d86f67c34f6d1582`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant66d5486ad06be956ba128fa3f0848c88a3ad4196bac183308169f02053e5afe8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Basic/Variant66d5486ad06be956ba128fa3f0848c88a3ad4196bac183308169f02053e5afe8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Module.AEval` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PolynomialModule](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant66d5486ad06be956ba128fa3f0848c88a3ad4196bac183308169f02053e5afe8.lean/declarations/polynomialmodule--d5be11d2c54e78d0c647ddde.md) | 46 | `declaration-track:d5be11d2c54e78d0c647ddded9203b2edf06434b6f2c469e3196de25e558e8d5` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant66d5486ad06be956ba128fa3f0848c88a3ad4196bac183308169f02053e5afe8.lean/declarations/instance--7c1e7a85fbd9a32abd123e01.md) | 52 | `declaration-track:7c1e7a85fbd9a32abd123e01a4b2fb84495885e6181230899083c96fc33f5f88` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant66d5486ad06be956ba128fa3f0848c88a3ad4196bac183308169f02053e5afe8.lean/declarations/instance--de8a41ffeb4203d22504401f.md) | 53 | `declaration-track:de8a41ffeb4203d22504401f1dfdc9e60beb6a8d3130669dfbb33f7d00585def` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant66d5486ad06be956ba128fa3f0848c88a3ad4196bac183308169f02053e5afe8.lean/declarations/instance--5804e8757915357cfd4cf1c2.md) | 62 | `declaration-track:5804e8757915357cfd4cf1c2bab524e52dd70b72766002765ae40fff4b071509` |
| 5 | `instance` | [instFunLike](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant66d5486ad06be956ba128fa3f0848c88a3ad4196bac183308169f02053e5afe8.lean/declarations/instfunlike--676ecd757ab47592b633ce9a.md) | 65 | `declaration-track:676ecd757ab47592b633ce9a4971907d6cd7c0abb31ea6709e176355e538f776` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant66d5486ad06be956ba128fa3f0848c88a3ad4196bac183308169f02053e5afe8.lean/declarations/instance--b27eb4d3a6c2d9e8b006f60e.md) | 68 | `declaration-track:b27eb4d3a6c2d9e8b006f60ef210d44e7ca87f5c15d58f9ab01ef4de0854d81d` |
| 7 | `theorem` | [zero_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant66d5486ad06be956ba128fa3f0848c88a3ad4196bac183308169f02053e5afe8.lean/declarations/zero-apply--d8d67b939a11e5b112a63c3f.md) | 71 | `result-track:d8d67b939a11e5b112a63c3fac0f5b83183b288deb733a2d7147f9a2ef1234b5` |
| 8 | `theorem` | [add_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant66d5486ad06be956ba128fa3f0848c88a3ad4196bac183308169f02053e5afe8.lean/declarations/add-apply--5b7d20a48958a285d593c41f.md) | 74 | `result-track:5b7d20a48958a285d593c41fe2000f3f4c84939305de4b0e20ef3a0939a30bfc` |
| 9 | `def` | [single](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant66d5486ad06be956ba128fa3f0848c88a3ad4196bac183308169f02053e5afe8.lean/declarations/single--7993148ca2e7d8010d020a80.md) | 79 | `declaration-track:7993148ca2e7d8010d020a80186d788025da91abe6707c121b1a6aa15d3e5a49` |
| 10 | `theorem` | [single_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant66d5486ad06be956ba128fa3f0848c88a3ad4196bac183308169f02053e5afe8.lean/declarations/single-apply--ef853f7161ae2c5c6d7aeb8f.md) | 82 | `result-track:ef853f7161ae2c5c6d7aeb8f54fab9062fbb2ad8690d3134d5e551880f038d5e` |
| 11 | `def` | [lsingle](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant66d5486ad06be956ba128fa3f0848c88a3ad4196bac183308169f02053e5afe8.lean/declarations/lsingle--46dbeda390890c45f4a37807.md) | 86 | `declaration-track:46dbeda390890c45f4a378075edf86ebc1c249b0b7f2330df8cbeb4b6d4fc1f2` |
| 12 | `theorem` | [lsingle_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant66d5486ad06be956ba128fa3f0848c88a3ad4196bac183308169f02053e5afe8.lean/declarations/lsingle-apply--c6e85eba0c0a5db19c1033c7.md) | 89 | `result-track:c6e85eba0c0a5db19c1033c7cc24f4cef1b34c0268d7c8d31d859708dda05648` |
| 13 | `theorem` | [single_smul](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant66d5486ad06be956ba128fa3f0848c88a3ad4196bac183308169f02053e5afe8.lean/declarations/single-smul--15356cbdf0043ef75b0d3888.md) | 92 | `result-track:15356cbdf0043ef75b0d3888b81d27f125191e8a0aabdecdc75e82a4266e31d9` |
| 14 | `theorem` | [induction_linear](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant66d5486ad06be956ba128fa3f0848c88a3ad4196bac183308169f02053e5afe8.lean/declarations/induction-linear--ce221136ea52d3a98a2935fe.md) | 98 | `result-track:ce221136ea52d3a98a2935feabb4080e7312b51eda135ec8c845e2fb43b2e662` |
| 15 | `instance` | [polynomialModule](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant66d5486ad06be956ba128fa3f0848c88a3ad4196bac183308169f02053e5afe8.lean/declarations/polynomialmodule--bd5dcecd16657bba1d6af1be.md) | 103 | `declaration-track:bd5dcecd16657bba1d6af1bec095f15d939d0a3f1f5e61ef3de517ad486c2d32` |
| 16 | `lemma` | [smul_def](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant66d5486ad06be956ba128fa3f0848c88a3ad4196bac183308169f02053e5afe8.lean/declarations/smul-def--770b56256181e68f39da5ccd.md) | 106 | `result-track:770b56256181e68f39da5ccdad2f7f77467c60242d3994abe9a9ac60539ab452` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant66d5486ad06be956ba128fa3f0848c88a3ad4196bac183308169f02053e5afe8.lean/declarations/instance--f4f72825a8cdaf6ecf040cbd.md) | 110 | `declaration-track:f4f72825a8cdaf6ecf040cbdca69bc83afd678d42ab2d992243fc50f6b056fbb` |
| 18 | `instance` | [isScalarTower'](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant66d5486ad06be956ba128fa3f0848c88a3ad4196bac183308169f02053e5afe8.lean/declarations/isscalartower--fe42dc5abfbdd7a4f9377d0b.md) | 114 | `declaration-track:fe42dc5abfbdd7a4f9377d0b973719115b29ffade9d591eb80fb315d897b0ccb` |
| 19 | `theorem` | [monomial_smul_single](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant66d5486ad06be956ba128fa3f0848c88a3ad4196bac183308169f02053e5afe8.lean/declarations/monomial-smul-single--9c5693619d1c705702013f6d.md) | 123 | `result-track:9c5693619d1c705702013f6df194bd3c3d8a2c9121ea9239e6a60a04bf692a83` |
| 20 | `theorem` | [monomial_smul_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant66d5486ad06be956ba128fa3f0848c88a3ad4196bac183308169f02053e5afe8.lean/declarations/monomial-smul-apply--20d2e4ba4e5b58bbf4f2e097.md) | 138 | `result-track:20d2e4ba4e5b58bbf4f2e097eaf20019e2d76fed42b4bbcdc466f01e8a24031d` |
| 21 | `theorem` | [smul_single_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant66d5486ad06be956ba128fa3f0848c88a3ad4196bac183308169f02053e5afe8.lean/declarations/smul-single-apply--8e2749922e2374515d79886a.md) | 155 | `result-track:8e2749922e2374515d79886abf67dbc0e23db13562adeb40043a2f7ee8cd00ae` |
| 22 | `theorem` | [smul_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant66d5486ad06be956ba128fa3f0848c88a3ad4196bac183308169f02053e5afe8.lean/declarations/smul-apply--9b38b11b7475b6bc202f5caa.md) | 167 | `result-track:9b38b11b7475b6bc202f5caa43c3c0f4c8c899416288eb55c28b8d222b372dea` |
| 23 | `def` | [equivPolynomialSelf](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant66d5486ad06be956ba128fa3f0848c88a3ad4196bac183308169f02053e5afe8.lean/declarations/equivpolynomialself--8e4102caa89c029c67fe4024.md) | 186 | `declaration-track:8e4102caa89c029c67fe40240ca3efb41da63266a94e9f99de42f0cbc175cf69` |
| 24 | `def` | [equivPolynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant66d5486ad06be956ba128fa3f0848c88a3ad4196bac183308169f02053e5afe8.lean/declarations/equivpolynomial--fbf3fc995269aa529001cbce.md) | 223 | `declaration-track:fbf3fc995269aa529001cbce5d80f079262e2c98ae99b7452d6419c780392f88` |
| 25 | `lemma` | [equivPolynomialSelf_apply_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant66d5486ad06be956ba128fa3f0848c88a3ad4196bac183308169f02053e5afe8.lean/declarations/equivpolynomialself-apply-eq--782c81ac618a1742c1b7dc3c.md) | 228 | `result-track:782c81ac618a1742c1b7dc3c8377d6f3f59f52663a25b365c7c54fb8c6b37553` |
| 26 | `lemma` | [equivPolynomial_single](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant66d5486ad06be956ba128fa3f0848c88a3ad4196bac183308169f02053e5afe8.lean/declarations/equivpolynomial-single--b66222eefb92af23f6886cf5.md) | 232 | `result-track:b66222eefb92af23f6886cf517343ed84766f5e96cdbacea67d4403f69e6ab47` |
| 27 | `def` | [map](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant66d5486ad06be956ba128fa3f0848c88a3ad4196bac183308169f02053e5afe8.lean/declarations/map--79dc50a1f259a46d1e285424.md) | 239 | `declaration-track:79dc50a1f259a46d1e28542485cb8260a86057d99750f83148a1aca6a0ecf45c` |
| 28 | `theorem` | [map_single](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant66d5486ad06be956ba128fa3f0848c88a3ad4196bac183308169f02053e5afe8.lean/declarations/map-single--c8ae39a5d59623ba79fe44c1.md) | 243 | `result-track:c8ae39a5d59623ba79fe44c109126bd2a63f96ec9318d4a3a61e7f35160970f1` |
| 29 | `theorem` | [map_smul](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant66d5486ad06be956ba128fa3f0848c88a3ad4196bac183308169f02053e5afe8.lean/declarations/map-smul--69d49ba44cad946285558dd8.md) | 248 | `result-track:69d49ba44cad946285558dd82f74f1a79fce2946af8ed6c146acadcf87d7d2f9` |
| 30 | `def` | [eval](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant66d5486ad06be956ba128fa3f0848c88a3ad4196bac183308169f02053e5afe8.lean/declarations/eval--9e722a77192b2e5f2c5639f3.md) | 261 | `declaration-track:9e722a77192b2e5f2c5639f320d2c69bc31b7aea19230f3028d918f86d0e275d` |
| 31 | `theorem` | [eval_single](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant66d5486ad06be956ba128fa3f0848c88a3ad4196bac183308169f02053e5afe8.lean/declarations/eval-single--4ad70dd7d381986703dbb1fa.md) | 273 | `result-track:4ad70dd7d381986703dbb1fa6dad88e453fee4a68bbb5b86def45751329f4b2a` |
| 32 | `theorem` | [eval_lsingle](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant66d5486ad06be956ba128fa3f0848c88a3ad4196bac183308169f02053e5afe8.lean/declarations/eval-lsingle--03db0d182887cb60f1db8ac3.md) | 277 | `result-track:03db0d182887cb60f1db8ac3da291174faa7dbe37eec5965a371748fb59cc594` |
| 33 | `theorem` | [eval_smul](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant66d5486ad06be956ba128fa3f0848c88a3ad4196bac183308169f02053e5afe8.lean/declarations/eval-smul--054f6439ac67ef7ddec6d1be.md) | 280 | `result-track:054f6439ac67ef7ddec6d1be78b1d1e8896679ee90aa4ce5dd33a9d6fd286cdd` |
| 34 | `theorem` | [eval_map](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant66d5486ad06be956ba128fa3f0848c88a3ad4196bac183308169f02053e5afe8.lean/declarations/eval-map--003b61413997e208f0cce2aa.md) | 291 | `result-track:003b61413997e208f0cce2aab8fd93c4789e30ffb1ae90f7b92935e7d99e6f5a` |
| 35 | `theorem` | [eval_map'](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant66d5486ad06be956ba128fa3f0848c88a3ad4196bac183308169f02053e5afe8.lean/declarations/eval-map--fe0c68b9b06f90141c455e08.md) | 299 | `result-track:fe0c68b9b06f90141c455e0889271294e2efef0eed16a1e17563d780b49577d0` |
| 36 | `lemma` | [aeval_equivPolynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant66d5486ad06be956ba128fa3f0848c88a3ad4196bac183308169f02053e5afe8.lean/declarations/aeval-equivpolynomial--e43ddf4c1092fc459594ecce.md) | 304 | `result-track:e43ddf4c1092fc459594eccefbaf82703d4ee39fb894b54172a7549d2f4b3608` |
| 37 | `def` | [comp](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant66d5486ad06be956ba128fa3f0848c88a3ad4196bac183308169f02053e5afe8.lean/declarations/comp--3a0e8604788b540e629fe6fd.md) | 315 | `declaration-track:3a0e8604788b540e629fe6fdc2dca76f8a61c1fef684e010036a9a6a20781e4b` |
| 38 | `theorem` | [comp_single](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant66d5486ad06be956ba128fa3f0848c88a3ad4196bac183308169f02053e5afe8.lean/declarations/comp-single--7cf95e312657b0ad83aeb5b3.md) | 318 | `result-track:7cf95e312657b0ad83aeb5b3d632c19b896534578d73018f133be9f325b6b1c1` |
| 39 | `theorem` | [comp_eval](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant66d5486ad06be956ba128fa3f0848c88a3ad4196bac183308169f02053e5afe8.lean/declarations/comp-eval--d7615e797fa4fa4b86cedbd8.md) | 322 | `result-track:d7615e797fa4fa4b86cedbd815296ca370f53cf00cdf52c53edfc257abdb6440` |
| 40 | `theorem` | [comp_smul](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant66d5486ad06be956ba128fa3f0848c88a3ad4196bac183308169f02053e5afe8.lean/declarations/comp-smul--39a03cc9373db8094fd953b6.md) | 332 | `result-track:39a03cc9373db8094fd953b60612e76546c445291571991c1426e31cd6068b58` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
