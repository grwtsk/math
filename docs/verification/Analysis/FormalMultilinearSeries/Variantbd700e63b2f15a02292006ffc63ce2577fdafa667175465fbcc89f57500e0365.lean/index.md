# Verification target: GRWTSK.Analysis.FormalMultilinearSeries.Variantbd700e63b2f15a02292006ffc63ce2577fdafa667175465fbcc89f57500e0365

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9da44c90b8c10b542c9c8bb8daa8daa4306e09e1",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FormalMultilinearSeries/Variantbd700e63b2f15a02292006ffc63ce2577fdafa667175465fbcc89f57500e0365.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/FormalMultilinearSeries/Variantbd700e63b2f15a02292006ffc63ce2577fdafa667175465fbcc89f57500e0365.lean/index.md) · [Full source](../../../../mathematics/Analysis/FormalMultilinearSeries/Variantbd700e63b2f15a02292006ffc63ce2577fdafa667175465fbcc89f57500e0365.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9da44c90b8c10b542c9c8bb8daa8daa4306e09e1`.

Source path: `GRWTSK/Analysis/FormalMultilinearSeries/Variantbd700e63b2f15a02292006ffc63ce2577fdafa667175465fbcc89f57500e0365.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FormalMultilinearSeries/Variantbd700e63b2f15a02292006ffc63ce2577fdafa667175465fbcc89f57500e0365.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.NormedSpace.Multilinear` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FormalMultilinearSeries](../../../../mathematics/Analysis/FormalMultilinearSeries/Variantbd700e63b2f15a02292006ffc63ce2577fdafa667175465fbcc89f57500e0365.lean/declarations/formalmultilinearseries--4a053d1433ad8c06ca3696e5.md) | 46 | `declaration-track:4a053d1433ad8c06ca3696e5bbd1898b21277639cb5f5ff962cc75c8bafd568d` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Analysis/FormalMultilinearSeries/Variantbd700e63b2f15a02292006ffc63ce2577fdafa667175465fbcc89f57500e0365.lean/declarations/instance--724df5c6b99051eb07846829.md) | 54 | `declaration-track:724df5c6b99051eb0784682906a7c69489852636ad4050f185101e7e3766a22e` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Analysis/FormalMultilinearSeries/Variantbd700e63b2f15a02292006ffc63ce2577fdafa667175465fbcc89f57500e0365.lean/declarations/instance--07e8d153991f93fb2f6a04f2.md) | 57 | `declaration-track:07e8d153991f93fb2f6a04f298aa1169c5403eb1e3cb68a451f6c98c3ec546d4` |
| 4 | `theorem` | [zero_apply](../../../../mathematics/Analysis/FormalMultilinearSeries/Variantbd700e63b2f15a02292006ffc63ce2577fdafa667175465fbcc89f57500e0365.lean/declarations/zero-apply--77fe41d8e35aee274230697c.md) | 61 | `result-track:77fe41d8e35aee274230697c8c2af91e683e67eb47b293a612287480341d64fe` |
| 5 | `theorem` | [neg_apply](../../../../mathematics/Analysis/FormalMultilinearSeries/Variantbd700e63b2f15a02292006ffc63ce2577fdafa667175465fbcc89f57500e0365.lean/declarations/neg-apply--d8c839fe4c91d129202d5540.md) | 64 | `result-track:d8c839fe4c91d129202d554020b178ac7b79ff8cbf26c2fc17c3b3d71727a61b` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Analysis/FormalMultilinearSeries/Variantbd700e63b2f15a02292006ffc63ce2577fdafa667175465fbcc89f57500e0365.lean/declarations/instance--1b07ba9ebf7a3e6474a57d90.md) | 71 | `declaration-track:1b07ba9ebf7a3e6474a57d90a07c08a6b6f4ac9281e93d86b184fefe57139b98` |
| 7 | `theorem` | [ext](../../../../mathematics/Analysis/FormalMultilinearSeries/Variantbd700e63b2f15a02292006ffc63ce2577fdafa667175465fbcc89f57500e0365.lean/declarations/ext--99015238e7d48a1081626b8f.md) | 79 | `result-track:99015238e7d48a1081626b8f347420ab20acb89354eedb4f9b6969735567b85e` |
| 8 | `theorem` | [ext_iff](../../../../mathematics/Analysis/FormalMultilinearSeries/Variantbd700e63b2f15a02292006ffc63ce2577fdafa667175465fbcc89f57500e0365.lean/declarations/ext-iff--2d0dfd000a0f90fea83a6ae3.md) | 82 | `result-track:2d0dfd000a0f90fea83a6ae321213b9fef356a0ecff0ec7fcf2a4102d2139d32` |
| 9 | `theorem` | [ne_iff](../../../../mathematics/Analysis/FormalMultilinearSeries/Variantbd700e63b2f15a02292006ffc63ce2577fdafa667175465fbcc89f57500e0365.lean/declarations/ne-iff--c1ca829f50c3a4613e0ea2cc.md) | 86 | `result-track:c1ca829f50c3a4613e0ea2cc6257b7359e8a75d3140396b70acf456d1d25d9b8` |
| 10 | `def` | [removeZero](../../../../mathematics/Analysis/FormalMultilinearSeries/Variantbd700e63b2f15a02292006ffc63ce2577fdafa667175465fbcc89f57500e0365.lean/declarations/removezero--1ecf7cbfde79037d210c7402.md) | 91 | `declaration-track:1ecf7cbfde79037d210c7402e475c2acd6982124e4a9943a7ea842fc76e3bd74` |
| 11 | `theorem` | [removeZero_coeff_zero](../../../../mathematics/Analysis/FormalMultilinearSeries/Variantbd700e63b2f15a02292006ffc63ce2577fdafa667175465fbcc89f57500e0365.lean/declarations/removezero-coeff-zero--cf192c2f030835cf80391cfc.md) | 97 | `result-track:cf192c2f030835cf80391cfc5fdf19c71f7bb5ff8f28f525fe1a737962921914` |
| 12 | `theorem` | [removeZero_coeff_succ](../../../../mathematics/Analysis/FormalMultilinearSeries/Variantbd700e63b2f15a02292006ffc63ce2577fdafa667175465fbcc89f57500e0365.lean/declarations/removezero-coeff-succ--c53f98d324d21ba6e53aa66a.md) | 102 | `result-track:c53f98d324d21ba6e53aa66a62bf65f36dc7ba288480d6f277e014a749216e6f` |
| 13 | `theorem` | [removeZero_of_pos](../../../../mathematics/Analysis/FormalMultilinearSeries/Variantbd700e63b2f15a02292006ffc63ce2577fdafa667175465fbcc89f57500e0365.lean/declarations/removezero-of-pos--342653b8028119db77a5b447.md) | 107 | `result-track:342653b8028119db77a5b447e377b7d9a692cc2e63f6e6a37e15dbe7352ac54f` |
| 14 | `theorem` | [congr](../../../../mathematics/Analysis/FormalMultilinearSeries/Variantbd700e63b2f15a02292006ffc63ce2577fdafa667175465fbcc89f57500e0365.lean/declarations/congr--a7434c62d54df728da2dd356.md) | 115 | `result-track:a7434c62d54df728da2dd356159f338bfdef0ea318887a079ee5b59c90a253c5` |
| 15 | `def` | [compContinuousLinearMap](../../../../mathematics/Analysis/FormalMultilinearSeries/Variantbd700e63b2f15a02292006ffc63ce2577fdafa667175465fbcc89f57500e0365.lean/declarations/compcontinuouslinearmap--d78ee03ee876b0ba206a4fb2.md) | 125 | `declaration-track:d78ee03ee876b0ba206a4fb23da356a3d85c2c6b15e754dafe7879b56ef56a87` |
| 16 | `theorem` | [compContinuousLinearMap_apply](../../../../mathematics/Analysis/FormalMultilinearSeries/Variantbd700e63b2f15a02292006ffc63ce2577fdafa667175465fbcc89f57500e0365.lean/declarations/compcontinuouslinearmap-apply--22a79acc85f6ff4b3934cd8f.md) | 130 | `result-track:22a79acc85f6ff4b3934cd8ff3db04a0476e62d3010694c70edede1a393ceb90` |
| 17 | `def` | [restrictScalars](../../../../mathematics/Analysis/FormalMultilinearSeries/Variantbd700e63b2f15a02292006ffc63ce2577fdafa667175465fbcc89f57500e0365.lean/declarations/restrictscalars--80baa9098328663cc447752f.md) | 143 | `declaration-track:80baa9098328663cc447752fe682998410d17c7fc9130db36838f27e1941a379` |
| 18 | `def` | [shift](../../../../mathematics/Analysis/FormalMultilinearSeries/Variantbd700e63b2f15a02292006ffc63ce2577fdafa667175465fbcc89f57500e0365.lean/declarations/shift--4a1f996cdf01d968ad6e695b.md) | 161 | `declaration-track:4a1f996cdf01d968ad6e695babc677fe3b96c47347a9138a3aceb42494763c96` |
| 19 | `def` | [unshift](../../../../mathematics/Analysis/FormalMultilinearSeries/Variantbd700e63b2f15a02292006ffc63ce2577fdafa667175465fbcc89f57500e0365.lean/declarations/unshift--9ab24ee9b99c828949c9120f.md) | 167 | `declaration-track:9ab24ee9b99c828949c9120fe439ec9e77387113ac8df74151786123440d07e1` |
| 20 | `def` | [compFormalMultilinearSeries](../../../../mathematics/Analysis/FormalMultilinearSeries/Variantbd700e63b2f15a02292006ffc63ce2577fdafa667175465fbcc89f57500e0365.lean/declarations/compformalmultilinearseries--df6ccc1dca5e7aa9abc2a395.md) | 186 | `declaration-track:df6ccc1dca5e7aa9abc2a3959f550ed68804454d954c6dc41896ec19605a1c2b` |
| 21 | `theorem` | [compFormalMultilinearSeries_apply](../../../../mathematics/Analysis/FormalMultilinearSeries/Variantbd700e63b2f15a02292006ffc63ce2577fdafa667175465fbcc89f57500e0365.lean/declarations/compformalmultilinearseries-apply--b3093c263f12bfe66e5176b8.md) | 191 | `result-track:b3093c263f12bfe66e5176b8affa5d2550b3430cd3ed9bdeba5c687c12c9b78c` |
| 22 | `theorem` | [compFormalMultilinearSeries_apply'](../../../../mathematics/Analysis/FormalMultilinearSeries/Variantbd700e63b2f15a02292006ffc63ce2577fdafa667175465fbcc89f57500e0365.lean/declarations/compformalmultilinearseries-apply--c62a6a500f1291b5c931d33c.md) | 196 | `result-track:c62a6a500f1291b5c931d33c01c218e39bb9013a31b278941ee459deeb6016d0` |
| 23 | `def` | [order](../../../../mathematics/Analysis/FormalMultilinearSeries/Variantbd700e63b2f15a02292006ffc63ce2577fdafa667175465fbcc89f57500e0365.lean/declarations/order--766eacaae7741c36323dc1e6.md) | 215 | `declaration-track:766eacaae7741c36323dc1e6644299e126472327f2ea5db09d023de54a3c6c86` |
| 24 | `theorem` | [order_zero](../../../../mathematics/Analysis/FormalMultilinearSeries/Variantbd700e63b2f15a02292006ffc63ce2577fdafa667175465fbcc89f57500e0365.lean/declarations/order-zero--14ec98b571af7a9b04715535.md) | 220 | `result-track:14ec98b571af7a9b04715535dca8429d44fe40fd871c2e1499aec87d3ad76f24` |
| 25 | `theorem` | [ne_zero_of_order_ne_zero](../../../../mathematics/Analysis/FormalMultilinearSeries/Variantbd700e63b2f15a02292006ffc63ce2577fdafa667175465fbcc89f57500e0365.lean/declarations/ne-zero-of-order-ne-zero--8c01f9d47ae6ad76c4f69366.md) | 223 | `result-track:8c01f9d47ae6ad76c4f693663a3e07d4adc539f374c0ac35ec412dcfeb080f66` |
| 26 | `theorem` | [order_eq_find](../../../../mathematics/Analysis/FormalMultilinearSeries/Variantbd700e63b2f15a02292006ffc63ce2577fdafa667175465fbcc89f57500e0365.lean/declarations/order-eq-find--32b26f8aaf479f2a1f729a26.md) | 226 | `result-track:32b26f8aaf479f2a1f729a26b7944bec4148b448e6bc105b99c79b10c96bab76` |
| 27 | `theorem` | [order_eq_find'](../../../../mathematics/Analysis/FormalMultilinearSeries/Variantbd700e63b2f15a02292006ffc63ce2577fdafa667175465fbcc89f57500e0365.lean/declarations/order-eq-find--8b3b3e8869a02a99c1db57a0.md) | 230 | `result-track:8b3b3e8869a02a99c1db57a08a952864647952c9af1b58002ccf97202652d506` |
| 28 | `theorem` | [order_eq_zero_iff'](../../../../mathematics/Analysis/FormalMultilinearSeries/Variantbd700e63b2f15a02292006ffc63ce2577fdafa667175465fbcc89f57500e0365.lean/declarations/order-eq-zero-iff--9041bbb1fa1f1135a548fb90.md) | 235 | `result-track:9041bbb1fa1f1135a548fb90e88113d5c68676726372d71085f32247348f82dd` |
| 29 | `theorem` | [order_eq_zero_iff](../../../../mathematics/Analysis/FormalMultilinearSeries/Variantbd700e63b2f15a02292006ffc63ce2577fdafa667175465fbcc89f57500e0365.lean/declarations/order-eq-zero-iff--3e5436943b7b53a8cd26d74a.md) | 240 | `result-track:3e5436943b7b53a8cd26d74a2f13a83c8ff829ee557b8be649e5a31afb3ea889` |
| 30 | `theorem` | [apply_order_ne_zero](../../../../mathematics/Analysis/FormalMultilinearSeries/Variantbd700e63b2f15a02292006ffc63ce2577fdafa667175465fbcc89f57500e0365.lean/declarations/apply-order-ne-zero--60b4237d6c34e82150b9ea4a.md) | 244 | `result-track:60b4237d6c34e82150b9ea4ac2ff6f3675d57e2f3c00d7aa39d5ba1961215313` |
| 31 | `theorem` | [apply_order_ne_zero'](../../../../mathematics/Analysis/FormalMultilinearSeries/Variantbd700e63b2f15a02292006ffc63ce2577fdafa667175465fbcc89f57500e0365.lean/declarations/apply-order-ne-zero--46291fe3a817b5e5d199faa4.md) | 248 | `result-track:46291fe3a817b5e5d199faa45d632c150949a1dfd46dae15fa316e3ce7b36211` |
| 32 | `theorem` | [apply_eq_zero_of_lt_order](../../../../mathematics/Analysis/FormalMultilinearSeries/Variantbd700e63b2f15a02292006ffc63ce2577fdafa667175465fbcc89f57500e0365.lean/declarations/apply-eq-zero-of-lt-order--9b55a538a713280d2fa49b41.md) | 252 | `result-track:9b55a538a713280d2fa49b41b9e312b99827ca20fc2edf870869994bf6ca2b61` |
| 33 | `def` | [coeff](../../../../mathematics/Analysis/FormalMultilinearSeries/Variantbd700e63b2f15a02292006ffc63ce2577fdafa667175465fbcc89f57500e0365.lean/declarations/coeff--f33ba4fda4e049457a6d3c3d.md) | 266 | `declaration-track:f33ba4fda4e049457a6d3c3d11089b64508cc52ea4a86bce64e235ccdf6a3cb4` |
| 34 | `theorem` | [mkPiField_coeff_eq](../../../../mathematics/Analysis/FormalMultilinearSeries/Variantbd700e63b2f15a02292006ffc63ce2577fdafa667175465fbcc89f57500e0365.lean/declarations/mkpifield-coeff-eq--5f8b91abe06314dd9526bf5f.md) | 270 | `result-track:5f8b91abe06314dd9526bf5fc460f715fc83fa2aa7e62e7fcc2529921ccd3d85` |
| 35 | `theorem` | [apply_eq_prod_smul_coeff](../../../../mathematics/Analysis/FormalMultilinearSeries/Variantbd700e63b2f15a02292006ffc63ce2577fdafa667175465fbcc89f57500e0365.lean/declarations/apply-eq-prod-smul-coeff--2bc4f7ecf6eca56ec0115b9a.md) | 276 | `result-track:2bc4f7ecf6eca56ec0115b9a7d9fcf3dd40334c371e9403df8e36d8ca1cf0d27` |
| 36 | `theorem` | [coeff_eq_zero](../../../../mathematics/Analysis/FormalMultilinearSeries/Variantbd700e63b2f15a02292006ffc63ce2577fdafa667175465fbcc89f57500e0365.lean/declarations/coeff-eq-zero--c9d0771bbaf5d11eac9107d1.md) | 282 | `result-track:c9d0771bbaf5d11eac9107d13655c6e4c5f7595badaf21882f530ae5e9a6a97a` |
| 37 | `theorem` | [apply_eq_pow_smul_coeff](../../../../mathematics/Analysis/FormalMultilinearSeries/Variantbd700e63b2f15a02292006ffc63ce2577fdafa667175465fbcc89f57500e0365.lean/declarations/apply-eq-pow-smul-coeff--99c1835ddc7414af291b0e86.md) | 287 | `result-track:99c1835ddc7414af291b0e8656f3807d522b610ebb8bfd9754274e376409df5f` |
| 38 | `theorem` | [norm_apply_eq_norm_coef](../../../../mathematics/Analysis/FormalMultilinearSeries/Variantbd700e63b2f15a02292006ffc63ce2577fdafa667175465fbcc89f57500e0365.lean/declarations/norm-apply-eq-norm-coef--1638d4e09f2fae92439961f6.md) | 291 | `result-track:1638d4e09f2fae92439961f603ba53a6d6b317790ad2c90769671fd098b715ad` |
| 39 | `def` | [fslope](../../../../mathematics/Analysis/FormalMultilinearSeries/Variantbd700e63b2f15a02292006ffc63ce2577fdafa667175465fbcc89f57500e0365.lean/declarations/fslope--bd7486ef62d4d9768ecf2d01.md) | 304 | `declaration-track:bd7486ef62d4d9768ecf2d01e4b28d34cbee8b81d44770f9fb76018aa0692e6d` |
| 40 | `theorem` | [coeff_fslope](../../../../mathematics/Analysis/FormalMultilinearSeries/Variantbd700e63b2f15a02292006ffc63ce2577fdafa667175465fbcc89f57500e0365.lean/declarations/coeff-fslope--6f8dab33c666161bf11af630.md) | 309 | `result-track:6f8dab33c666161bf11af63027b6b4df59130b2a52a7bb7ec1079c1e1cb8e677` |
| 41 | `theorem` | [coeff_iterate_fslope](../../../../mathematics/Analysis/FormalMultilinearSeries/Variantbd700e63b2f15a02292006ffc63ce2577fdafa667175465fbcc89f57500e0365.lean/declarations/coeff-iterate-fslope--9c64b69c98d8650e81dfcc0c.md) | 316 | `result-track:9c64b69c98d8650e81dfcc0cfa816abfb90f1eb9ccde1fe92a2b637ed4060854` |
| 42 | `def` | [constFormalMultilinearSeries](../../../../mathematics/Analysis/FormalMultilinearSeries/Variantbd700e63b2f15a02292006ffc63ce2577fdafa667175465fbcc89f57500e0365.lean/declarations/constformalmultilinearseries--18bdd81a77ece7995946aa30.md) | 331 | `declaration-track:18bdd81a77ece7995946aa3027df42bbfa29a24b6a5b602879bb3a3fe31b4472` |
| 43 | `theorem` | [constFormalMultilinearSeries_apply](../../../../mathematics/Analysis/FormalMultilinearSeries/Variantbd700e63b2f15a02292006ffc63ce2577fdafa667175465fbcc89f57500e0365.lean/declarations/constformalmultilinearseries-apply--9e9319dfd49ec181f521b1aa.md) | 340 | `result-track:9e9319dfd49ec181f521b1aa13bfaedf1f1aeba2012c2ccadf5843a80f2b48a5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
