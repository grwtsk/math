# Verification target: GRWTSK.Algebra.FiniteType.Variantd8768ae97c625eece0314c0a865f88bcf1f6d5f54de18971957eedf21d19e372

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5aaebd9b44398ed558f2a772d0b165990e08ef09",
  "lexical_observation_count": 60,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/FiniteType/Variantd8768ae97c625eece0314c0a865f88bcf1f6d5f54de18971957eedf21d19e372.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/FiniteType/Variantd8768ae97c625eece0314c0a865f88bcf1f6d5f54de18971957eedf21d19e372.lean/index.md) · [Full source](../../../../mathematics/Algebra/FiniteType/Variantd8768ae97c625eece0314c0a865f88bcf1f6d5f54de18971957eedf21d19e372.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5aaebd9b44398ed558f2a772d0b165990e08ef09`.

Source path: `GRWTSK/Algebra/FiniteType/Variantd8768ae97c625eece0314c0a865f88bcf1f6d5f54de18971957eedf21d19e372.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/FiniteType/Variantd8768ae97c625eece0314c0a865f88bcf1f6d5f54de18971957eedf21d19e372.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.FreeAlgebra` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Adjoin.Polynomial` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Adjoin.Tower` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Quotient.Operations` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Noetherian.Orzech` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Algebra.FiniteType](../../../../mathematics/Algebra/FiniteType/Variantd8768ae97c625eece0314c0a865f88bcf1f6d5f54de18971957eedf21d19e372.lean/declarations/algebra-finitetype--699c377e51436a95f6de9fee.md) | 43 | `declaration-track:699c377e51436a95f6de9fee0281c600a84b4233ccb7f96ea08d2f800168eb0a` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FiniteType/Variantd8768ae97c625eece0314c0a865f88bcf1f6d5f54de18971957eedf21d19e372.lean/declarations/instance--51bfd123486679a45c686afe.md) | 59 | `declaration-track:51bfd123486679a45c686afed5d0bcdbf7b4d8411e463b874b752e6bea82e637` |
| 3 | `theorem` | [self](../../../../mathematics/Algebra/FiniteType/Variantd8768ae97c625eece0314c0a865f88bcf1f6d5f54de18971957eedf21d19e372.lean/declarations/self--2e167ce7caada228afd4df85.md) | 78 | `result-track:2e167ce7caada228afd4df85df7d1a4e8c74d503006aa336620a445f674aa7de` |
| 4 | `theorem` | [polynomial](../../../../mathematics/Algebra/FiniteType/Variantd8768ae97c625eece0314c0a865f88bcf1f6d5f54de18971957eedf21d19e372.lean/declarations/polynomial--bc6de9845f3ace47f67b64d5.md) | 81 | `result-track:bc6de9845f3ace47f67b64d5d74946e8bc381e5fcfce18e7b332464ea5a7c1fb` |
| 5 | `theorem` | [freeAlgebra](../../../../mathematics/Algebra/FiniteType/Variantd8768ae97c625eece0314c0a865f88bcf1f6d5f54de18971957eedf21d19e372.lean/declarations/freealgebra--a39543a0d8bcf7e153c6e53c.md) | 87 | `result-track:a39543a0d8bcf7e153c6e53c2f85a500e4ec6f35281148a69dc06825d2a8d23d` |
| 6 | `theorem` | [mvPolynomial](../../../../mathematics/Algebra/FiniteType/Variantd8768ae97c625eece0314c0a865f88bcf1f6d5f54de18971957eedf21d19e372.lean/declarations/mvpolynomial--6e267eea5c02bb19dd051ee6.md) | 95 | `result-track:6e267eea5c02bb19dd051ee65f6ee7dd25cc441830454c2c6020f5dffefe083a` |
| 7 | `theorem` | [of_restrictScalars_finiteType](../../../../mathematics/Algebra/FiniteType/Variantd8768ae97c625eece0314c0a865f88bcf1f6d5f54de18971957eedf21d19e372.lean/declarations/of-restrictscalars-finitetype--2bea500a304e9de41a9ba812.md) | 103 | `result-track:2bea500a304e9de41a9ba8128c5171e87dbc9d209e63dd63de624cb29f7fb3de` |
| 8 | `theorem` | [of_surjective](../../../../mathematics/Algebra/FiniteType/Variantd8768ae97c625eece0314c0a865f88bcf1f6d5f54de18971957eedf21d19e372.lean/declarations/of-surjective--ac5b6122e3fb9b74850f2412.md) | 115 | `result-track:ac5b6122e3fb9b74850f24123b69e2148c688c6e17a019b59f959fe2e5ce33e2` |
| 9 | `theorem` | [equiv](../../../../mathematics/Algebra/FiniteType/Variantd8768ae97c625eece0314c0a865f88bcf1f6d5f54de18971957eedf21d19e372.lean/declarations/equiv--21e3168723ec44e340fc031d.md) | 120 | `result-track:21e3168723ec44e340fc031d37008a738828f8153270ebfdb8ce2685490ba3da` |
| 10 | `theorem` | [trans](../../../../mathematics/Algebra/FiniteType/Variantd8768ae97c625eece0314c0a865f88bcf1f6d5f54de18971957eedf21d19e372.lean/declarations/trans--23c37f834b1339db6666b5b8.md) | 123 | `result-track:23c37f834b1339db6666b5b873a7bdd6fd545400c82bb25e191e1e2a310ac972` |
| 11 | `instance` | [quotient](../../../../mathematics/Algebra/FiniteType/Variantd8768ae97c625eece0314c0a865f88bcf1f6d5f54de18971957eedf21d19e372.lean/declarations/quotient--041698b8c5fe6adbcc9db1f6.md) | 127 | `declaration-track:041698b8c5fe6adbcc9db1f6a66fc9d21e8214fef1a4398935fd7557fc259fa0` |
| 12 | `theorem` | [iff_quotient_freeAlgebra](../../../../mathematics/Algebra/FiniteType/Variantd8768ae97c625eece0314c0a865f88bcf1f6d5f54de18971957eedf21d19e372.lean/declarations/iff-quotient-freealgebra--e9a51daa86bf42c5a20325bf.md) | 133 | `result-track:e9a51daa86bf42c5a20325bf05342fd1fb1099d0da45448e1ea22face36e48d7` |
| 13 | `theorem` | [iff_quotient_mvPolynomial](../../../../mathematics/Algebra/FiniteType/Variantd8768ae97c625eece0314c0a865f88bcf1f6d5f54de18971957eedf21d19e372.lean/declarations/iff-quotient-mvpolynomial--132ad8b0809fd4714e8e3bf9.md) | 146 | `result-track:132ad8b0809fd4714e8e3bf97a6078992970fc3bdeb38e8259f9b6910a2ba5dc` |
| 14 | `theorem` | [iff_quotient_freeAlgebra'](../../../../mathematics/Algebra/FiniteType/Variantd8768ae97c625eece0314c0a865f88bcf1f6d5f54de18971957eedf21d19e372.lean/declarations/iff-quotient-freealgebra--d45efeeaf47c76d7547105ed.md) | 162 | `result-track:d45efeeaf47c76d7547105edf124c67d60e085f2fa61ee4ad8f40901cadc8d6f` |
| 15 | `theorem` | [iff_quotient_mvPolynomial'](../../../../mathematics/Algebra/FiniteType/Variantd8768ae97c625eece0314c0a865f88bcf1f6d5f54de18971957eedf21d19e372.lean/declarations/iff-quotient-mvpolynomial--60c0dc19825c828d317a6e12.md) | 174 | `result-track:60c0dc19825c828d317a6e12f65e21a910cfd943c026607af7642d71c66ca0f0` |
| 16 | `theorem` | [iff_quotient_mvPolynomial''](../../../../mathematics/Algebra/FiniteType/Variantd8768ae97c625eece0314c0a865f88bcf1f6d5f54de18971957eedf21d19e372.lean/declarations/iff-quotient-mvpolynomial--7833f69f7b13bdb4a4ce617e.md) | 186 | `result-track:7833f69f7b13bdb4a4ce617e8a3317b341531f152b4c8a16ef887e79872c16e8` |
| 17 | `instance` | [prod](../../../../mathematics/Algebra/FiniteType/Variantd8768ae97c625eece0314c0a865f88bcf1f6d5f54de18971957eedf21d19e372.lean/declarations/prod--fa7091ace4af6db50192712f.md) | 196 | `declaration-track:fa7091ace4af6db50192712ff01e20d2636f2106f0ba3400d36771a12541cf33` |
| 18 | `theorem` | [isNoetherianRing](../../../../mathematics/Algebra/FiniteType/Variantd8768ae97c625eece0314c0a865f88bcf1f6d5f54de18971957eedf21d19e372.lean/declarations/isnoetherianring--ffce0b4ce79e31d3ab7636ca.md) | 199 | `result-track:ffce0b4ce79e31d3ab7636cab50acd99bfd65020c0e253ad07192c7e63e0d6eb` |
| 19 | `theorem` | [_root_.GRWTSK.Algebra.AlgebraFiniteType.Variant9b043df1bc1b2c0c488eea364f96ce8c0aa2b510664ff5d68cbd5d13c74a9e87.Subalgebra.fg_iff_finiteType](../../../../mathematics/Algebra/FiniteType/Variantd8768ae97c625eece0314c0a865f88bcf1f6d5f54de18971957eedf21d19e372.lean/declarations/root-grwtsk-algebra-algebrafinitetype-variant9b043df1bc1b2c0c488eea364f9--02b5e0d58b355ceff0c059c8.md) | 209 | `result-track:02b5e0d58b355ceff0c059c8272aa3452d1a23acc1e125891ccd6a090dac65df` |
| 20 | `def` | [FiniteType](../../../../mathematics/Algebra/FiniteType/Variantd8768ae97c625eece0314c0a865f88bcf1f6d5f54de18971957eedf21d19e372.lean/declarations/finitetype--ca577e554930b9c34f6902b2.md) | 224 | `declaration-track:ca577e554930b9c34f6902b20fd93f9ced7ad5065850c17d6cb26ca9c3972ebf` |
| 21 | `theorem` | [finiteType](../../../../mathematics/Algebra/FiniteType/Variantd8768ae97c625eece0314c0a865f88bcf1f6d5f54de18971957eedf21d19e372.lean/declarations/finitetype--c65c4b5db325051abc26e94e.md) | 229 | `result-track:c65c4b5db325051abc26e94e98cfb0e9dc183e04ba19ce390d35ff17d85895a2` |
| 22 | `theorem` | [id](../../../../mathematics/Algebra/FiniteType/Variantd8768ae97c625eece0314c0a865f88bcf1f6d5f54de18971957eedf21d19e372.lean/declarations/id--3ffb6864d839c47e9db0ea86.md) | 237 | `result-track:3ffb6864d839c47e9db0ea866063a8fe3d49571af9af63efcd7acef5faeb0b2c` |
| 23 | `theorem` | [comp_surjective](../../../../mathematics/Algebra/FiniteType/Variantd8768ae97c625eece0314c0a865f88bcf1f6d5f54de18971957eedf21d19e372.lean/declarations/comp-surjective--956019d4de4126d150b18434.md) | 240 | `result-track:956019d4de4126d150b18434d387e1d6a1890cf581cc8012efe859ca60233e99` |
| 24 | `theorem` | [of_surjective](../../../../mathematics/Algebra/FiniteType/Variantd8768ae97c625eece0314c0a865f88bcf1f6d5f54de18971957eedf21d19e372.lean/declarations/of-surjective--11130efb480717023e011a4a.md) | 249 | `result-track:11130efb480717023e011a4acfebc11d57408c25a6c1cdbf60641630fa1d86a6` |
| 25 | `theorem` | [comp](../../../../mathematics/Algebra/FiniteType/Variantd8768ae97c625eece0314c0a865f88bcf1f6d5f54de18971957eedf21d19e372.lean/declarations/comp--440ddac933286f7bbabcb2cb.md) | 253 | `result-track:440ddac933286f7bbabcb2cb75c0f4443ac2a697d369bebb18ba96acc65f7589` |
| 26 | `theorem` | [of_finite](../../../../mathematics/Algebra/FiniteType/Variantd8768ae97c625eece0314c0a865f88bcf1f6d5f54de18971957eedf21d19e372.lean/declarations/of-finite--3e13206b0cbc0a56aba096ed.md) | 258 | `result-track:3e13206b0cbc0a56aba096eda000653f49d3b67ed6d4c693a2e782c2792cba3b` |
| 27 | `theorem` | [of_comp_finiteType](../../../../mathematics/Algebra/FiniteType/Variantd8768ae97c625eece0314c0a865f88bcf1f6d5f54de18971957eedf21d19e372.lean/declarations/of-comp-finitetype--1c7e1e721a2731cb2a931b49.md) | 263 | `result-track:1c7e1e721a2731cb2a931b4989d392ba39f1f5e05fea2d9da0e414f2ab8f5b2c` |
| 28 | `def` | [FiniteType](../../../../mathematics/Algebra/FiniteType/Variantd8768ae97c625eece0314c0a865f88bcf1f6d5f54de18971957eedf21d19e372.lean/declarations/finitetype--262eb3467cf56056bb7c02ce.md) | 280 | `declaration-track:262eb3467cf56056bb7c02ce42b84e0b392e68eeb74b959a46e96fc4f0a4ca6d` |
| 29 | `theorem` | [finiteType](../../../../mathematics/Algebra/FiniteType/Variantd8768ae97c625eece0314c0a865f88bcf1f6d5f54de18971957eedf21d19e372.lean/declarations/finitetype--9524785e03ef544104ecc61a.md) | 285 | `result-track:9524785e03ef544104ecc61af993cdbce088b4388ecf4b831ecd299f777c29fa` |
| 30 | `theorem` | [id](../../../../mathematics/Algebra/FiniteType/Variantd8768ae97c625eece0314c0a865f88bcf1f6d5f54de18971957eedf21d19e372.lean/declarations/id--fc71a799b4e8e1a69ca47d25.md) | 294 | `result-track:fc71a799b4e8e1a69ca47d253af9aed953cc32eae8b1d8c668c24204d49e4cf3` |
| 31 | `theorem` | [comp](../../../../mathematics/Algebra/FiniteType/Variantd8768ae97c625eece0314c0a865f88bcf1f6d5f54de18971957eedf21d19e372.lean/declarations/comp--de27bba98cfaaa8c60daa7a6.md) | 299 | `result-track:de27bba98cfaaa8c60daa7a65e8a92ce4f08d0ec159192faf83f4ff052f1c05d` |
| 32 | `theorem` | [comp_surjective](../../../../mathematics/Algebra/FiniteType/Variantd8768ae97c625eece0314c0a865f88bcf1f6d5f54de18971957eedf21d19e372.lean/declarations/comp-surjective--237e1835e1fd606662406c81.md) | 303 | `result-track:237e1835e1fd606662406c816ed965d8010e280d993e861d9cd1178e4680b95d` |
| 33 | `theorem` | [of_surjective](../../../../mathematics/Algebra/FiniteType/Variantd8768ae97c625eece0314c0a865f88bcf1f6d5f54de18971957eedf21d19e372.lean/declarations/of-surjective--cb3cf8e0ad8444a9dcc380e0.md) | 307 | `result-track:cb3cf8e0ad8444a9dcc380e0d8421ed9c12d80ae3191f742d670c3c9f21e9b94` |
| 34 | `theorem` | [of_comp_finiteType](../../../../mathematics/Algebra/FiniteType/Variantd8768ae97c625eece0314c0a865f88bcf1f6d5f54de18971957eedf21d19e372.lean/declarations/of-comp-finitetype--a6c454a8ed00e3b249e0b2ff.md) | 310 | `result-track:a6c454a8ed00e3b249e0b2fff912a1636c5d0dc6a780b79f4501d1a98d4cd5f7` |
| 35 | `theorem` | [algebraMap_finiteType_iff_algebra_finiteType](../../../../mathematics/Algebra/FiniteType/Variantd8768ae97c625eece0314c0a865f88bcf1f6d5f54de18971957eedf21d19e372.lean/declarations/algebramap-finitetype-iff-algebra-finitetype--68892d590688c80919382ba1.md) | 318 | `result-track:68892d590688c80919382ba11fdf61322da42c328802830548a2f874bfa32a55` |
| 36 | `theorem` | [mem_adjoin_support](../../../../mathematics/Algebra/FiniteType/Variantd8768ae97c625eece0314c0a865f88bcf1f6d5f54de18971957eedf21d19e372.lean/declarations/mem-adjoin-support--9aeaa562ce81e0780d708f43.md) | 338 | `result-track:9aeaa562ce81e0780d708f431a0ca80023dd2c5e0cce73de792bf8bd03ae9bd4` |
| 37 | `theorem` | [support_gen_of_gen](../../../../mathematics/Algebra/FiniteType/Variantd8768ae97c625eece0314c0a865f88bcf1f6d5f54de18971957eedf21d19e372.lean/declarations/support-gen-of-gen--89b3760f9373daa0bd2a1afb.md) | 347 | `result-track:89b3760f9373daa0bd2a1afbc85407841633bacf427db701a14865373fc089e7` |
| 38 | `theorem` | [support_gen_of_gen'](../../../../mathematics/Algebra/FiniteType/Variantd8768ae97c625eece0314c0a865f88bcf1f6d5f54de18971957eedf21d19e372.lean/declarations/support-gen-of-gen--5cb5e5ef6a877c221bac9bea.md) | 360 | `result-track:5cb5e5ef6a877c221bac9bea5891881852f6bc136a1e76efe601cc69c9f58a67` |
| 39 | `theorem` | [exists_finset_adjoin_eq_top](../../../../mathematics/Algebra/FiniteType/Variantd8768ae97c625eece0314c0a865f88bcf1f6d5f54de18971957eedf21d19e372.lean/declarations/exists-finset-adjoin-eq-top--cfcdcdbe8c36606dcb2854eb.md) | 375 | `result-track:cfcdcdbe8c36606dcb2854eb0bd9f8ad119f30431d2fe8e6c0e7c55bcbbf6c94` |
| 40 | `theorem` | [of'_mem_span](../../../../mathematics/Algebra/FiniteType/Variantd8768ae97c625eece0314c0a865f88bcf1f6d5f54de18971957eedf21d19e372.lean/declarations/of-mem-span--7c0e34269e82be5a7d560c92.md) | 387 | `result-track:7c0e34269e82be5a7d560c9242dc60fad2d74ead18594f5127b3f8c53cb64193` |
| 41 | `theorem` | [mem_closure_of_mem_span_closure](../../../../mathematics/Algebra/FiniteType/Variantd8768ae97c625eece0314c0a865f88bcf1f6d5f54de18971957eedf21d19e372.lean/declarations/mem-closure-of-mem-span-closure--1b505e0cb705aab1d535fe0f.md) | 398 | `result-track:1b505e0cb705aab1d535fe0fd9b131db9791aa24dfbecee4ef8da698228d135c` |
| 42 | `theorem` | [mvPolynomial_aeval_of_surjective_of_closure](../../../../mathematics/Algebra/FiniteType/Variantd8768ae97c625eece0314c0a865f88bcf1f6d5f54de18971957eedf21d19e372.lean/declarations/mvpolynomial-aeval-of-surjective-of-closure--c36362dce9ea638a26e521b5.md) | 415 | `result-track:c36362dce9ea638a26e521b5b60b65e4a3768b3b9f3eb2961e3005f5aee33323` |
| 43 | `theorem` | [freeAlgebra_lift_of_surjective_of_closure](../../../../mathematics/Algebra/FiniteType/Variantd8768ae97c625eece0314c0a865f88bcf1f6d5f54de18971957eedf21d19e372.lean/declarations/freealgebra-lift-of-surjective-of-closure--be6227d354eaa85eea56242a.md) | 443 | `result-track:be6227d354eaa85eea56242a646278fad8023bf1222d3347ad2c7733be3adb47` |
| 44 | `instance` | [finiteType_of_fg](../../../../mathematics/Algebra/FiniteType/Variantd8768ae97c625eece0314c0a865f88bcf1f6d5f54de18971957eedf21d19e372.lean/declarations/finitetype-of-fg--64330c1864d2aced6c4039be.md) | 471 | `declaration-track:64330c1864d2aced6c4039be9279690ab3b6bb198b42c3985dd5c4837cbec76a` |
| 45 | `theorem` | [finiteType_iff_fg](../../../../mathematics/Algebra/FiniteType/Variantd8768ae97c625eece0314c0a865f88bcf1f6d5f54de18971957eedf21d19e372.lean/declarations/finitetype-iff-fg--a1f73c5cb4c95e7bf502d35a.md) | 482 | `result-track:a1f73c5cb4c95e7bf502d35a090f59e581b71924a6926254b1565936eae49d93` |
| 46 | `theorem` | [fg_of_finiteType](../../../../mathematics/Algebra/FiniteType/Variantd8768ae97c625eece0314c0a865f88bcf1f6d5f54de18971957eedf21d19e372.lean/declarations/fg-of-finitetype--aae7505f392ac41924de85a3.md) | 493 | `result-track:aae7505f392ac41924de85a37002ed75843376ea8c8b4084a8250c6e4d5cdd47` |
| 47 | `theorem` | [finiteType_iff_group_fg](../../../../mathematics/Algebra/FiniteType/Variantd8768ae97c625eece0314c0a865f88bcf1f6d5f54de18971957eedf21d19e372.lean/declarations/finitetype-iff-group-fg--34523eb5e6c4020c7de0724a.md) | 499 | `result-track:34523eb5e6c4020c7de0724aadadd5d0f6156a223354e6b4c1df9bf6284e361d` |
| 48 | `theorem` | [mem_adjoin_support](../../../../mathematics/Algebra/FiniteType/Variantd8768ae97c625eece0314c0a865f88bcf1f6d5f54de18971957eedf21d19e372.lean/declarations/mem-adjoin-support--0437f5a690d2a46b2c880578.md) | 516 | `result-track:0437f5a690d2a46b2c880578e347b65b11c977aa0dd22790994c440f698f9e85` |
| 49 | `theorem` | [support_gen_of_gen](../../../../mathematics/Algebra/FiniteType/Variantd8768ae97c625eece0314c0a865f88bcf1f6d5f54de18971957eedf21d19e372.lean/declarations/support-gen-of-gen--824616c15102dd2517ead0ce.md) | 524 | `result-track:824616c15102dd2517ead0ce0c4a24c2278cf49b56a735c32251aa2d8f46ce36` |
| 50 | `theorem` | [support_gen_of_gen'](../../../../mathematics/Algebra/FiniteType/Variantd8768ae97c625eece0314c0a865f88bcf1f6d5f54de18971957eedf21d19e372.lean/declarations/support-gen-of-gen--b46a5c480b6aecd296e4dddc.md) | 540 | `result-track:b46a5c480b6aecd296e4dddc264bd0aaee4f39e979f2b769bacd16c589dcad6a` |
| 51 | `theorem` | [exists_finset_adjoin_eq_top](../../../../mathematics/Algebra/FiniteType/Variantd8768ae97c625eece0314c0a865f88bcf1f6d5f54de18971957eedf21d19e372.lean/declarations/exists-finset-adjoin-eq-top--14d846ae8d9ae24faf95b561.md) | 555 | `result-track:14d846ae8d9ae24faf95b561e4096572712e33e4c30a9c6583137f7b0d558529` |
| 52 | `theorem` | [of_mem_span_of_iff](../../../../mathematics/Algebra/FiniteType/Variantd8768ae97c625eece0314c0a865f88bcf1f6d5f54de18971957eedf21d19e372.lean/declarations/of-mem-span-of-iff--fdbc596aac900848336e59eb.md) | 567 | `result-track:fdbc596aac900848336e59eba3f68b31612f4089f5dd2a2def0563754385281b` |
| 53 | `theorem` | [mem_closure_of_mem_span_closure](../../../../mathematics/Algebra/FiniteType/Variantd8768ae97c625eece0314c0a865f88bcf1f6d5f54de18971957eedf21d19e372.lean/declarations/mem-closure-of-mem-span-closure--cc7f306b8de175a9c587a956.md) | 578 | `result-track:cc7f306b8de175a9c587a95637a55997dc351f935f9746c87302ed7ca9d1d51b` |
| 54 | `theorem` | [mvPolynomial_aeval_of_surjective_of_closure](../../../../mathematics/Algebra/FiniteType/Variantd8768ae97c625eece0314c0a865f88bcf1f6d5f54de18971957eedf21d19e372.lean/declarations/mvpolynomial-aeval-of-surjective-of-closure--56b14da793aa6f2578ff798e.md) | 590 | `result-track:56b14da793aa6f2578ff798e397ace110437812e2bfe6f7697f0b86aa99c8173` |
| 55 | `theorem` | [freeAlgebra_lift_of_surjective_of_closure](../../../../mathematics/Algebra/FiniteType/Variantd8768ae97c625eece0314c0a865f88bcf1f6d5f54de18971957eedf21d19e372.lean/declarations/freealgebra-lift-of-surjective-of-closure--64b67e3507553a0edf408401.md) | 617 | `result-track:64b67e3507553a0edf408401b910d6bf032130c5829887615945890a88e3a9b8` |
| 56 | `instance` | [finiteType_of_fg](../../../../mathematics/Algebra/FiniteType/Variantd8768ae97c625eece0314c0a865f88bcf1f6d5f54de18971957eedf21d19e372.lean/declarations/finitetype-of-fg--287066485525b496476fac31.md) | 641 | `declaration-track:287066485525b496476fac3157770cbed59ffa11e98694b79535f5092560fa2f` |
| 57 | `theorem` | [finiteType_iff_fg](../../../../mathematics/Algebra/FiniteType/Variantd8768ae97c625eece0314c0a865f88bcf1f6d5f54de18971957eedf21d19e372.lean/declarations/finitetype-iff-fg--8978f43a81732b8e93c8ddc1.md) | 645 | `result-track:8978f43a81732b8e93c8ddc177002ef03d6ba6e3b95dc67309299c8919a54044` |
| 58 | `theorem` | [fg_of_finiteType](../../../../mathematics/Algebra/FiniteType/Variantd8768ae97c625eece0314c0a865f88bcf1f6d5f54de18971957eedf21d19e372.lean/declarations/fg-of-finitetype--ed59b714df40e90c53a0b93b.md) | 653 | `result-track:ed59b714df40e90c53a0b93be04c49359b717736e0c5e890f9d90ce93a91ef4a` |
| 59 | `theorem` | [finiteType_iff_group_fg](../../../../mathematics/Algebra/FiniteType/Variantd8768ae97c625eece0314c0a865f88bcf1f6d5f54de18971957eedf21d19e372.lean/declarations/finitetype-iff-group-fg--9f9fc88cc8c5d9bf91252943.md) | 658 | `result-track:9f9fc88cc8c5d9bf9125294393eda41feb6a3dd2c438b77c6e5a1db3420678de` |
| 60 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FiniteType/Variantd8768ae97c625eece0314c0a865f88bcf1f6d5f54de18971957eedf21d19e372.lean/declarations/instance--580f3c7bf560a732e9f63b53.md) | 689 | `declaration-track:580f3c7bf560a732e9f63b53828acfc1959ffc33210ad0cc9cf237d3d9c51d44` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
