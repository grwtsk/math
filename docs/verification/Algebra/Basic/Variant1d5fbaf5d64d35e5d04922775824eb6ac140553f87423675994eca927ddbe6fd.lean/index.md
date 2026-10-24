# Verification target: GRWTSK.Algebra.Basic.Variant1d5fbaf5d64d35e5d04922775824eb6ac140553f87423675994eca927ddbe6fd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3b7a89b82957cff987544a646c5c92bccdf41159",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant1d5fbaf5d64d35e5d04922775824eb6ac140553f87423675994eca927ddbe6fd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant1d5fbaf5d64d35e5d04922775824eb6ac140553f87423675994eca927ddbe6fd.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant1d5fbaf5d64d35e5d04922775824eb6ac140553f87423675994eca927ddbe6fd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3b7a89b82957cff987544a646c5c92bccdf41159`.

Source path: `GRWTSK/Algebra/Basic/Variant1d5fbaf5d64d35e5d04922775824eb6ac140553f87423675994eca927ddbe6fd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant1d5fbaf5d64d35e5d04922775824eb6ac140553f87423675994eca927ddbe6fd.lean.json)

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
| 1 | `def` | [pi](../../../../mathematics/Algebra/Basic/Variant1d5fbaf5d64d35e5d04922775824eb6ac140553f87423675994eca927ddbe6fd.lean/declarations/pi--9b803e9427836b03c4ddc79d.md) | 58 | `declaration-track:9b803e9427836b03c4ddc79dea7ffd885c17b07207150aa57b0d14c94a12b760` |
| 2 | `theorem` | [mem_pi](../../../../mathematics/Algebra/Basic/Variant1d5fbaf5d64d35e5d04922775824eb6ac140553f87423675994eca927ddbe6fd.lean/declarations/mem-pi--683a1b1e8f6a87c3b797f46e.md) | 64 | `result-track:683a1b1e8f6a87c3b797f46e1bd610770c4dc58852896562c6c1ba010da8d097` |
| 3 | `theorem` | [pi_span](../../../../mathematics/Algebra/Basic/Variant1d5fbaf5d64d35e5d04922775824eb6ac140553f87423675994eca927ddbe6fd.lean/declarations/pi-span--8ee57d35b97a64266cbdd58e.md) | 67 | `result-track:8ee57d35b97a64266cbdd58ede870a2e1cccef605ca755f966f74404f1b8ec72` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant1d5fbaf5d64d35e5d04922775824eb6ac140553f87423675994eca927ddbe6fd.lean/declarations/instance--63e93269d07d9b8883da8c49.md) | 70 | `declaration-track:63e93269d07d9b8883da8c4927e5c365b5c18b8b434922a89b8c9e28c22c4fe7` |
| 5 | `theorem` | [single_mem_pi](../../../../mathematics/Algebra/Basic/Variant1d5fbaf5d64d35e5d04922775824eb6ac140553f87423675994eca927ddbe6fd.lean/declarations/single-mem-pi--64fb690a45a48bc55d2eb9ff.md) | 75 | `result-track:64fb690a45a48bc55d2eb9ff7f7f8c6b14e028bfe129838845883a9d6b33245c` |
| 6 | `theorem` | [pi_le_pi_iff](../../../../mathematics/Algebra/Basic/Variant1d5fbaf5d64d35e5d04922775824eb6ac140553f87423675994eca927ddbe6fd.lean/declarations/pi-le-pi-iff--e6fa4c9001a4b5a30793a766.md) | 81 | `result-track:e6fa4c9001a4b5a30793a766efe13eca5b1fb4b610dd388deb2d9203dea7ee56` |
| 7 | `theorem` | [add_pow_mem_of_pow_mem_of_le_of_commute](../../../../mathematics/Algebra/Basic/Variant1d5fbaf5d64d35e5d04922775824eb6ac140553f87423675994eca927ddbe6fd.lean/declarations/add-pow-mem-of-pow-mem-of-le-of-commute--13d880dcbe7d9c02b7a9cfc6.md) | 91 | `result-track:13d880dcbe7d9c02b7a9cfc658667b2469ec76d2396481c1f2921f0b5adcd599` |
| 8 | `theorem` | [add_pow_add_pred_mem_of_pow_mem_of_commute](../../../../mathematics/Algebra/Basic/Variant1d5fbaf5d64d35e5d04922775824eb6ac140553f87423675994eca927ddbe6fd.lean/declarations/add-pow-add-pred-mem-of-pow-mem-of-commute--3c015b8337c14da57538c3f8.md) | 105 | `result-track:3c015b8337c14da57538c3f8054526645435f6949d648757cff2372c2497f8ed` |
| 9 | `theorem` | [add_pow_mem_of_pow_mem_of_le](../../../../mathematics/Algebra/Basic/Variant1d5fbaf5d64d35e5d04922775824eb6ac140553f87423675994eca927ddbe6fd.lean/declarations/add-pow-mem-of-pow-mem-of-le--f5748dad6e72cddb46466e95.md) | 126 | `result-track:f5748dad6e72cddb46466e953ea2439a8951196ce049568e6ba027dc9652fb1c` |
| 10 | `theorem` | [add_pow_add_pred_mem_of_pow_mem](../../../../mathematics/Algebra/Basic/Variant1d5fbaf5d64d35e5d04922775824eb6ac140553f87423675994eca927ddbe6fd.lean/declarations/add-pow-add-pred-mem-of-pow-mem--56e6edb19f393bc7c8db5264.md) | 131 | `result-track:56e6edb19f393bc7c8db5264e0192572e3b6f448968385346a69c189c1ed925a` |
| 11 | `theorem` | [pow_multiset_sum_mem_span_pow](../../../../mathematics/Algebra/Basic/Variant1d5fbaf5d64d35e5d04922775824eb6ac140553f87423675994eca927ddbe6fd.lean/declarations/pow-multiset-sum-mem-span-pow--07e0cb80eec977e4b6997472.md) | 136 | `result-track:07e0cb80eec977e4b6997472ba1c001795ff0ea95554e6914764d2a4a08b9d99` |
| 12 | `theorem` | [sum_pow_mem_span_pow](../../../../mathematics/Algebra/Basic/Variant1d5fbaf5d64d35e5d04922775824eb6ac140553f87423675994eca927ddbe6fd.lean/declarations/sum-pow-mem-span-pow--4f9e65390f300a1de13e8315.md) | 163 | `result-track:4f9e65390f300a1de13e8315195e83e395b096f0c08b80b2441faca6ceb95448` |
| 13 | `theorem` | [span_pow_eq_top](../../../../mathematics/Algebra/Basic/Variant1d5fbaf5d64d35e5d04922775824eb6ac140553f87423675994eca927ddbe6fd.lean/declarations/span-pow-eq-top--4d744e98ec3593a895b5cd7b.md) | 169 | `result-track:4d744e98ec3593a895b5cd7beb9e1d5ebc6c84c4ccfb8e5753359b892d9fbc1e` |
| 14 | `theorem` | [span_range_pow_eq_top](../../../../mathematics/Algebra/Basic/Variant1d5fbaf5d64d35e5d04922775824eb6ac140553f87423675994eca927ddbe6fd.lean/declarations/span-range-pow-eq-top--10b38810dca1ab5de9c9c3e0.md) | 194 | `result-track:10b38810dca1ab5de9c9c3e0e88cf5eec990890cb2439371e27b0f3181ec4cda` |
| 15 | `theorem` | [prod_mem](../../../../mathematics/Algebra/Basic/Variant1d5fbaf5d64d35e5d04922775824eb6ac140553f87423675994eca927ddbe6fd.lean/declarations/prod-mem--d48c79f55e39f746a98dfec6.md) | 204 | `result-track:d48c79f55e39f746a98dfec62ba1cb262eb37b644f4d0176de32f8134c06b56a` |
| 16 | `lemma` | [span_single_eq_top](../../../../mathematics/Algebra/Basic/Variant1d5fbaf5d64d35e5d04922775824eb6ac140553f87423675994eca927ddbe6fd.lean/declarations/span-single-eq-top--4d28c714d65456d2b96ae330.md) | 211 | `result-track:4d28c714d65456d2b96ae330870f12c0bae22d1baec0e291bc0921cd03f0cfd0` |
| 17 | `def` | [equivFinTwo](../../../../mathematics/Algebra/Basic/Variant1d5fbaf5d64d35e5d04922775824eb6ac140553f87423675994eca927ddbe6fd.lean/declarations/equivfintwo--5e3eaddd6cda74b372778bf9.md) | 235 | `declaration-track:5e3eaddd6cda74b372778bf979ed18750987a9ad9ef422e5c1d39ca4d68b1fcd` |
| 18 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant1d5fbaf5d64d35e5d04922775824eb6ac140553f87423675994eca927ddbe6fd.lean/declarations/instance--a685e34b307f579f4d9f6f0e.md) | 241 | `declaration-track:a685e34b307f579f4d9f6f0e1b97bba317e23653272c9ff7bdad4e90d94876e9` |
| 19 | `instance` | [isSimpleOrder](../../../../mathematics/Algebra/Basic/Variant1d5fbaf5d64d35e5d04922775824eb6ac140553f87423675994eca927ddbe6fd.lean/declarations/issimpleorder--66decc45ebe5add89f70a64c.md) | 245 | `declaration-track:66decc45ebe5add89f70a64cc6b4596db19e20ea3b0e66fe417d1400e0a3763a` |
| 20 | `theorem` | [exists_not_isUnit_of_not_isField](../../../../mathematics/Algebra/Basic/Variant1d5fbaf5d64d35e5d04922775824eb6ac140553f87423675994eca927ddbe6fd.lean/declarations/exists-not-isunit-of-not-isfield--b8ad48a87c92bceb37b8361e.md) | 258 | `result-track:b8ad48a87c92bceb37b8361ef038c46658789e05cfce0ab1cdbab886fc3a8732` |
| 21 | `theorem` | [isField_iff_maximal_bot](../../../../mathematics/Algebra/Basic/Variant1d5fbaf5d64d35e5d04922775824eb6ac140553f87423675994eca927ddbe6fd.lean/declarations/isfield-iff-maximal-bot--69d1d06a64e29057ff7dc6f0.md) | 267 | `result-track:69d1d06a64e29057ff7dc6f0d2aa1e0cc84a6cad601ef11127aca52e1c4b4a4f` |
| 22 | `theorem` | [exists_maximal_of_not_isField](../../../../mathematics/Algebra/Basic/Variant1d5fbaf5d64d35e5d04922775824eb6ac140553f87423675994eca927ddbe6fd.lean/declarations/exists-maximal-of-not-isfield--83d92778a69330fd7ebbb635.md) | 273 | `result-track:83d92778a69330fd7ebbb635add84e0b8ec713dff118e7195e2d30055412496f` |
| 23 | `theorem` | [not_isField_of_ne_of_ne](../../../../mathematics/Algebra/Basic/Variant1d5fbaf5d64d35e5d04922775824eb6ac140553f87423675994eca927ddbe6fd.lean/declarations/not-isfield-of-ne-of-ne--93119e5c28e1d19bf26802e1.md) | 279 | `result-track:93119e5c28e1d19bf26802e1d5a2e600eed650762e8ec3143778ac3cc9ee159b` |
| 24 | `theorem` | [not_isField_iff_exists_ideal_bot_lt_and_lt_top](../../../../mathematics/Algebra/Basic/Variant1d5fbaf5d64d35e5d04922775824eb6ac140553f87423675994eca927ddbe6fd.lean/declarations/not-isfield-iff-exists-ideal-bot-lt-and-lt-top--de7218661877dcfd5d992984.md) | 284 | `result-track:de7218661877dcfd5d99298433727ef18c88c71943706bc00a602c170d961066` |
| 25 | `theorem` | [not_isField_iff_exists_prime](../../../../mathematics/Algebra/Basic/Variant1d5fbaf5d64d35e5d04922775824eb6ac140553f87423675994eca927ddbe6fd.lean/declarations/not-isfield-iff-exists-prime--2da7a52756ba6206f7934469.md) | 290 | `result-track:2da7a52756ba6206f79344698e00f5f96b623c567090a4f150636cf3b9009f81` |
| 26 | `theorem` | [isField_iff_isSimpleOrder_ideal](../../../../mathematics/Algebra/Basic/Variant1d5fbaf5d64d35e5d04922775824eb6ac140553f87423675994eca927ddbe6fd.lean/declarations/isfield-iff-issimpleorder-ideal--dfcb64d565c3bbfb28fb1a46.md) | 300 | `result-track:dfcb64d565c3bbfb28fb1a462a6df8c0ad7e3792fa9e3961812c406bddbe7378` |
| 27 | `theorem` | [ne_bot_of_isMaximal_of_not_isField](../../../../mathematics/Algebra/Basic/Variant1d5fbaf5d64d35e5d04922775824eb6ac140553f87423675994eca927ddbe6fd.lean/declarations/ne-bot-of-ismaximal-of-not-isfield--edd621619dd581aec14b99fd.md) | 311 | `result-track:edd621619dd581aec14b99fdd62001e2bcfbf5aa7f6badbc12841da2a72d1644` |
| 28 | `theorem` | [bot_lt_of_maximal](../../../../mathematics/Algebra/Basic/Variant1d5fbaf5d64d35e5d04922775824eb6ac140553f87423675994eca927ddbe6fd.lean/declarations/bot-lt-of-maximal--e019f12b0ebfbe13a6d275ea.md) | 323 | `result-track:e019f12b0ebfbe13a6d275ea588a8393523796babc2ebcb153acf7718e71651e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
