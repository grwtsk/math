# Verification target: GRWTSK.Algebra.CommutativeAlgebra.ThetaPolynomialGraphCore.Variantb927ccc62cb561ba8b22e5a57d93c827f7b99e7c385c483763f25c78acf351aa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "898d80d2625d5b359c3f6ed64461c2b04f4fdd4b",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/ThetaPolynomialGraphCore/Variantb927ccc62cb561ba8b22e5a57d93c827f7b99e7c385c483763f25c78acf351aa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/ThetaPolynomialGraphCore/Variantb927ccc62cb561ba8b22e5a57d93c827f7b99e7c385c483763f25c78acf351aa.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/ThetaPolynomialGraphCore/Variantb927ccc62cb561ba8b22e5a57d93c827f7b99e7c385c483763f25c78acf351aa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `898d80d2625d5b359c3f6ed64461c2b04f4fdd4b`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/ThetaPolynomialGraphCore/Variantb927ccc62cb561ba8b22e5a57d93c827f7b99e7c385c483763f25c78acf351aa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/ThetaPolynomialGraphCore/Variantb927ccc62cb561ba8b22e5a57d93c827f7b99e7c385c483763f25c78acf351aa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ThetaMomentDeterminacy` — import line 1; external provider; requires a separately pinned dependency.
- `ThetaMultiplicationAdapter` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.ThetaMultiplicationResolvent` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.AEEqOfLIntegral` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Projection.Submodule` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [posPart_memLp](../../../../../mathematics/Algebra/CommutativeAlgebra/ThetaPolynomialGraphCore/Variantb927ccc62cb561ba8b22e5a57d93c827f7b99e7c385c483763f25c78acf351aa.lean/declarations/pospart-memlp--13cbb19e3fb58baaf23bc0df.md) | 31 | `result-track:13cbb19e3fb58baaf23bc0dfd8520fad52d1439bf1cb77dd1b31f488e4aacee3` |
| 2 | `theorem` | [real_annihilator_eq_zero_ae](../../../../../mathematics/Algebra/CommutativeAlgebra/ThetaPolynomialGraphCore/Variantb927ccc62cb561ba8b22e5a57d93c827f7b99e7c385c483763f25c78acf351aa.lean/declarations/real-annihilator-eq-zero-ae--8da81bd5148bef5c085cbcf6.md) | 40 | `result-track:8da81bd5148bef5c085cbcf69d737d5bcb5ad962aa876a2cc0f77418a85ffabb` |
| 3 | `abbrev` | [thetaGraphMeasure](../../../../../mathematics/Algebra/CommutativeAlgebra/ThetaPolynomialGraphCore/Variantb927ccc62cb561ba8b22e5a57d93c827f7b99e7c385c483763f25c78acf351aa.lean/declarations/thetagraphmeasure--642fd2203dbe392ef1ce58a7.md) | 114 | `declaration-track:642fd2203dbe392ef1ce58a7364402174874e7950c52d8ab362e9ed65ec1ab7e` |
| 4 | `theorem` | [weighted_exp_bound](../../../../../mathematics/Algebra/CommutativeAlgebra/ThetaPolynomialGraphCore/Variantb927ccc62cb561ba8b22e5a57d93c827f7b99e7c385c483763f25c78acf351aa.lean/declarations/weighted-exp-bound--fd4a4e18f54a32a0699a6e34.md) | 117 | `result-track:fd4a4e18f54a32a0699a6e345a4acc2e490ff853cf5475bc42aca1c1de93245b` |
| 5 | `theorem` | [thetaGraphMeasure_exp_abs_integrable](../../../../../mathematics/Algebra/CommutativeAlgebra/ThetaPolynomialGraphCore/Variantb927ccc62cb561ba8b22e5a57d93c827f7b99e7c385c483763f25c78acf351aa.lean/declarations/thetagraphmeasure-exp-abs-integrable--f8db888b2ecd0397588e5e8e.md) | 131 | `result-track:f8db888b2ecd0397588e5e8e0b8e7cbfda8e6e8f9c2f4b8f40291b1d1ac73057` |
| 6 | `theorem` | [thetaGraphMeasure_finite](../../../../../mathematics/Algebra/CommutativeAlgebra/ThetaPolynomialGraphCore/Variantb927ccc62cb561ba8b22e5a57d93c827f7b99e7c385c483763f25c78acf351aa.lean/declarations/thetagraphmeasure-finite--f6d019686b0129401acfd43f.md) | 144 | `result-track:f6d019686b0129401acfd43f8c992b2c082a8f784832ff37a385ef6fdc81828b` |
| 7 | `theorem` | [thetaGraphMeasure_power_memLp](../../../../../mathematics/Algebra/CommutativeAlgebra/ThetaPolynomialGraphCore/Variantb927ccc62cb561ba8b22e5a57d93c827f7b99e7c385c483763f25c78acf351aa.lean/declarations/thetagraphmeasure-power-memlp--d17d0bc9edefbafaaf5090a1.md) | 153 | `result-track:d17d0bc9edefbafaaf5090a19b0c5bca92292d0921ae3ff43160c09e9d8ae475` |
| 8 | `theorem` | [complex_annihilator_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/ThetaPolynomialGraphCore/Variantb927ccc62cb561ba8b22e5a57d93c827f7b99e7c385c483763f25c78acf351aa.lean/declarations/complex-annihilator-eq-zero--fcc9c7b33ffed70adfa6ced8.md) | 163 | `result-track:fcc9c7b33ffed70adfa6ced890a59770087dfbe57834f661e428ea19466f4740` |
| 9 | `def` | [weightedPowerVector](../../../../../mathematics/Algebra/CommutativeAlgebra/ThetaPolynomialGraphCore/Variantb927ccc62cb561ba8b22e5a57d93c827f7b99e7c385c483763f25c78acf351aa.lean/declarations/weightedpowervector--f9e593a839db0381964c500b.md) | 196 | `declaration-track:f9e593a839db0381964c500b123f882b2489fcddc7d5d5fd0075605c5e96c0ea` |
| 10 | `theorem` | [weightedPowerVector_ae](../../../../../mathematics/Algebra/CommutativeAlgebra/ThetaPolynomialGraphCore/Variantb927ccc62cb561ba8b22e5a57d93c827f7b99e7c385c483763f25c78acf351aa.lean/declarations/weightedpowervector-ae--913c33e9a4a9985fa17f07bf.md) | 201 | `result-track:913c33e9a4a9985fa17f07bf9753966882d08cfe0f775923d2c9c9fd252cf782` |
| 11 | `def` | [weightedPolynomialSpan](../../../../../mathematics/Algebra/CommutativeAlgebra/ThetaPolynomialGraphCore/Variantb927ccc62cb561ba8b22e5a57d93c827f7b99e7c385c483763f25c78acf351aa.lean/declarations/weightedpolynomialspan--53ac6d4237790e8699f5e3bc.md) | 206 | `declaration-track:53ac6d4237790e8699f5e3bcd43f424cf6259ce694f59b809d4580a4d7673b8a` |
| 12 | `theorem` | [weightedPolynomialSpan_dense](../../../../../mathematics/Algebra/CommutativeAlgebra/ThetaPolynomialGraphCore/Variantb927ccc62cb561ba8b22e5a57d93c827f7b99e7c385c483763f25c78acf351aa.lean/declarations/weightedpolynomialspan-dense--f0b748f86fb152dd9d605577.md) | 211 | `result-track:f0b748f86fb152dd9d605577e7dd10a795b789450f064a6a94da63c9f0020ced` |
| 13 | `def` | [graphEmbedding](../../../../../mathematics/Algebra/CommutativeAlgebra/ThetaPolynomialGraphCore/Variantb927ccc62cb561ba8b22e5a57d93c827f7b99e7c385c483763f25c78acf351aa.lean/declarations/graphembedding--6ee7fd0f8b14e8ed0f11a3e0.md) | 233 | `declaration-track:6ee7fd0f8b14e8ed0f11a3e06291cff08b2e87000b05e6bc3776a6d0b69828d3` |
| 14 | `theorem` | [graphEmbedding_ae](../../../../../mathematics/Algebra/CommutativeAlgebra/ThetaPolynomialGraphCore/Variantb927ccc62cb561ba8b22e5a57d93c827f7b99e7c385c483763f25c78acf351aa.lean/declarations/graphembedding-ae--d15c8e2443947e45bf01bb42.md) | 268 | `result-track:d15c8e2443947e45bf01bb427d371d2719368d686205ac04cc147b63050f8c97` |
| 15 | `theorem` | [graphEmbedding_norm_sq](../../../../../mathematics/Algebra/CommutativeAlgebra/ThetaPolynomialGraphCore/Variantb927ccc62cb561ba8b22e5a57d93c827f7b99e7c385c483763f25c78acf351aa.lean/declarations/graphembedding-norm-sq--75a6efb536816856b40ba9ee.md) | 273 | `result-track:75a6efb536816856b40ba9eefb5b6ec379acb5f2b91c6f2eaa04530bc4d8f8fb` |
| 16 | `def` | [domainPolynomialSpan](../../../../../mathematics/Algebra/CommutativeAlgebra/ThetaPolynomialGraphCore/Variantb927ccc62cb561ba8b22e5a57d93c827f7b99e7c385c483763f25c78acf351aa.lean/declarations/domainpolynomialspan--5b969dc09745176912e867d6.md) | 289 | `declaration-track:5b969dc09745176912e867d620e84fc04aa767615bcd9f08ff29ee2a8a7ebaf1` |
| 17 | `theorem` | [graphEmbedding_power](../../../../../mathematics/Algebra/CommutativeAlgebra/ThetaPolynomialGraphCore/Variantb927ccc62cb561ba8b22e5a57d93c827f7b99e7c385c483763f25c78acf351aa.lean/declarations/graphembedding-power--95180b368d8fdd102e03144a.md) | 294 | `result-track:95180b368d8fdd102e03144afb82b9d15939ab0c53551243c57227d47ab77a60` |
| 18 | `theorem` | [graphEmbedding_polynomialSpan](../../../../../mathematics/Algebra/CommutativeAlgebra/ThetaPolynomialGraphCore/Variantb927ccc62cb561ba8b22e5a57d93c827f7b99e7c385c483763f25c78acf351aa.lean/declarations/graphembedding-polynomialspan--288c8f8df33005a0962554a4.md) | 308 | `result-track:288c8f8df33005a0962554a42b82c8e86cae86bfec73281915025a40dc3436a3` |
| 19 | `theorem` | [polynomial_graph_approximation](../../../../../mathematics/Algebra/CommutativeAlgebra/ThetaPolynomialGraphCore/Variantb927ccc62cb561ba8b22e5a57d93c827f7b99e7c385c483763f25c78acf351aa.lean/declarations/polynomial-graph-approximation--4f1a8a29c1c1dac2001fab8b.md) | 323 | `result-track:4f1a8a29c1c1dac2001fab8bc8dc17446724b3d7aa6e23cf8c390eb2ff5b60ff` |
| 20 | `def` | [polynomialCore](../../../../../mathematics/Algebra/CommutativeAlgebra/ThetaPolynomialGraphCore/Variantb927ccc62cb561ba8b22e5a57d93c827f7b99e7c385c483763f25c78acf351aa.lean/declarations/polynomialcore--22f8b0714f235901c5e3276b.md) | 352 | `declaration-track:22f8b0714f235901c5e3276bc00fb217baa3efbb9e6e554b95b9e7eb10de27de` |
| 21 | `theorem` | [polynomialCore_le_domain](../../../../../mathematics/Algebra/CommutativeAlgebra/ThetaPolynomialGraphCore/Variantb927ccc62cb561ba8b22e5a57d93c827f7b99e7c385c483763f25c78acf351aa.lean/declarations/polynomialcore-le-domain--78f6bf0fe38622b0edc8325e.md) | 356 | `result-track:78f6bf0fe38622b0edc8325e67d7b7b4561e72ed6d91e737e8f21fbc0f8b990e` |
| 22 | `theorem` | [polynomialCore_graph_closure](../../../../../mathematics/Algebra/CommutativeAlgebra/ThetaPolynomialGraphCore/Variantb927ccc62cb561ba8b22e5a57d93c827f7b99e7c385c483763f25c78acf351aa.lean/declarations/polynomialcore-graph-closure--48dd89b885471eb9940b1e53.md) | 362 | `result-track:48dd89b885471eb9940b1e53a918942b4551c7a0849bbdb56bea6ffad8a23fba` |
| 23 | `theorem` | [coordinateMultiplication_polynomial_hasCore](../../../../../mathematics/Algebra/CommutativeAlgebra/ThetaPolynomialGraphCore/Variantb927ccc62cb561ba8b22e5a57d93c827f7b99e7c385c483763f25c78acf351aa.lean/declarations/coordinatemultiplication-polynomial-hascore--2ee66c11e3c9baf76a666d12.md) | 389 | `result-track:2ee66c11e3c9baf76a666d121cc44630bd61c5f661d5c6919aee21b38ad4f687` |
| 24 | `theorem` | [theta_coordinateMultiplication_isSelfAdjoint](../../../../../mathematics/Algebra/CommutativeAlgebra/ThetaPolynomialGraphCore/Variantb927ccc62cb561ba8b22e5a57d93c827f7b99e7c385c483763f25c78acf351aa.lean/declarations/theta-coordinatemultiplication-isselfadjoint--6c4d74aa007b38ea5bdee6db.md) | 403 | `result-track:6c4d74aa007b38ea5bdee6db5cdfab53be0285614ca90f875ff1e051d2dd0852` |
| 25 | `theorem` | [theta_polynomialRestriction_closure_isSelfAdjoint](../../../../../mathematics/Algebra/CommutativeAlgebra/ThetaPolynomialGraphCore/Variantb927ccc62cb561ba8b22e5a57d93c827f7b99e7c385c483763f25c78acf351aa.lean/declarations/theta-polynomialrestriction-closure-isselfadjoint--a6d44721cd629e813a652c38.md) | 410 | `result-track:a6d44721cd629e813a652c38f5120d2369cfabac01277ba852d2ef51a98a6c72` |
| 26 | `theorem` | [polynomialCore_eq_span_powers](../../../../../mathematics/Algebra/CommutativeAlgebra/ThetaPolynomialGraphCore/Variantb927ccc62cb561ba8b22e5a57d93c827f7b99e7c385c483763f25c78acf351aa.lean/declarations/polynomialcore-eq-span-powers--94edaaefd6e383ba8f8d80d0.md) | 418 | `result-track:94edaaefd6e383ba8f8d80d0f899b832e335fdbeed1987f36f82cbb97128dadf` |
| 27 | `theorem` | [polynomialCore_dense](../../../../../mathematics/Algebra/CommutativeAlgebra/ThetaPolynomialGraphCore/Variantb927ccc62cb561ba8b22e5a57d93c827f7b99e7c385c483763f25c78acf351aa.lean/declarations/polynomialcore-dense--8f5f78939856101186fa2060.md) | 425 | `result-track:8f5f78939856101186fa2060e16b51cdaa38978e7cc93af58eb3b1cc0542c298` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
