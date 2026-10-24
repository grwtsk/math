# Verification target: GRWTSK.Algebra.Basic.Variant08733a4937f53162065b8b461e9ee3b7a26decfd1ce80a190277ad53d78b883c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9840c8b8077c6c43ca193f61612630a09a3638cf",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant08733a4937f53162065b8b461e9ee3b7a26decfd1ce80a190277ad53d78b883c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant08733a4937f53162065b8b461e9ee3b7a26decfd1ce80a190277ad53d78b883c.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant08733a4937f53162065b8b461e9ee3b7a26decfd1ce80a190277ad53d78b883c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9840c8b8077c6c43ca193f61612630a09a3638cf`.

Source path: `GRWTSK/Algebra/Basic/Variant08733a4937f53162065b8b461e9ee3b7a26decfd1ce80a190277ad53d78b883c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant08733a4937f53162065b8b461e9ee3b7a26decfd1ce80a190277ad53d78b883c.lean.json)

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
| 1 | `def` | [pi](../../../../mathematics/Algebra/Basic/Variant08733a4937f53162065b8b461e9ee3b7a26decfd1ce80a190277ad53d78b883c.lean/declarations/pi--a6706d3fbf4e6ce276b3a7ce.md) | 50 | `declaration-track:a6706d3fbf4e6ce276b3a7ce19c9544510e8e33a0cf82520b2e7f6f504df5a4c` |
| 2 | `theorem` | [mem_pi](../../../../mathematics/Algebra/Basic/Variant08733a4937f53162065b8b461e9ee3b7a26decfd1ce80a190277ad53d78b883c.lean/declarations/mem-pi--000ce9d9f074b35fdd9d46c8.md) | 56 | `result-track:000ce9d9f074b35fdd9d46c8cf092c35037e00809154403fe3ebfb1d0fc8606a` |
| 3 | `theorem` | [pi_span](../../../../mathematics/Algebra/Basic/Variant08733a4937f53162065b8b461e9ee3b7a26decfd1ce80a190277ad53d78b883c.lean/declarations/pi-span--a0d36e2724bc601938606c6e.md) | 59 | `result-track:a0d36e2724bc601938606c6e7961d643173bd083ef0e44f8f22900858edf4913` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant08733a4937f53162065b8b461e9ee3b7a26decfd1ce80a190277ad53d78b883c.lean/declarations/instance--ada44332bf660b9ee8565d59.md) | 62 | `declaration-track:ada44332bf660b9ee8565d5936737a77545b9436155b584e168e67fe97ec595c` |
| 5 | `theorem` | [single_mem_pi](../../../../mathematics/Algebra/Basic/Variant08733a4937f53162065b8b461e9ee3b7a26decfd1ce80a190277ad53d78b883c.lean/declarations/single-mem-pi--44f166f5b3eb54f885a59175.md) | 67 | `result-track:44f166f5b3eb54f885a59175f8df92ef67710cc95fc2a7ebcfaadab3eb7273ca` |
| 6 | `theorem` | [pi_le_pi_iff](../../../../mathematics/Algebra/Basic/Variant08733a4937f53162065b8b461e9ee3b7a26decfd1ce80a190277ad53d78b883c.lean/declarations/pi-le-pi-iff--bf4cafe5f3ddb380bf54b658.md) | 73 | `result-track:bf4cafe5f3ddb380bf54b658cc016a8a903e3e083949bfb10068e2c582be208e` |
| 7 | `theorem` | [add_pow_mem_of_pow_mem_of_le_of_commute](../../../../mathematics/Algebra/Basic/Variant08733a4937f53162065b8b461e9ee3b7a26decfd1ce80a190277ad53d78b883c.lean/declarations/add-pow-mem-of-pow-mem-of-le-of-commute--219d2205ab227e08f459010c.md) | 83 | `result-track:219d2205ab227e08f459010c4f59a7cfa39d1dcaea9f0e53df6c7ef0cf7112e7` |
| 8 | `theorem` | [add_pow_add_pred_mem_of_pow_mem_of_commute](../../../../mathematics/Algebra/Basic/Variant08733a4937f53162065b8b461e9ee3b7a26decfd1ce80a190277ad53d78b883c.lean/declarations/add-pow-add-pred-mem-of-pow-mem-of-commute--2110151705b522f3cf9b02dd.md) | 97 | `result-track:2110151705b522f3cf9b02dd7fce08a366dc12c9bb6191d8d177e5cd0d10e7bd` |
| 9 | `theorem` | [add_pow_mem_of_pow_mem_of_le](../../../../mathematics/Algebra/Basic/Variant08733a4937f53162065b8b461e9ee3b7a26decfd1ce80a190277ad53d78b883c.lean/declarations/add-pow-mem-of-pow-mem-of-le--d915a9edc8d26a18ba96c539.md) | 118 | `result-track:d915a9edc8d26a18ba96c5399a8ef785ef8ab3fd6a088ada9daefa55ca2af37d` |
| 10 | `theorem` | [add_pow_add_pred_mem_of_pow_mem](../../../../mathematics/Algebra/Basic/Variant08733a4937f53162065b8b461e9ee3b7a26decfd1ce80a190277ad53d78b883c.lean/declarations/add-pow-add-pred-mem-of-pow-mem--d0f799b6d94980efe1473e39.md) | 123 | `result-track:d0f799b6d94980efe1473e394b304e19aee57892b2417e0ee9a53edc537c8b7a` |
| 11 | `theorem` | [pow_multiset_sum_mem_span_pow](../../../../mathematics/Algebra/Basic/Variant08733a4937f53162065b8b461e9ee3b7a26decfd1ce80a190277ad53d78b883c.lean/declarations/pow-multiset-sum-mem-span-pow--bc6b5426da80211e2a01c0b5.md) | 128 | `result-track:bc6b5426da80211e2a01c0b5496e8d47a897657c0d4ca2c448586d8b6179c82c` |
| 12 | `theorem` | [sum_pow_mem_span_pow](../../../../mathematics/Algebra/Basic/Variant08733a4937f53162065b8b461e9ee3b7a26decfd1ce80a190277ad53d78b883c.lean/declarations/sum-pow-mem-span-pow--73afb957478c3f7ca5fc5984.md) | 155 | `result-track:73afb957478c3f7ca5fc59841e5bd1bec110e76bd6be129b315e188b18e78c41` |
| 13 | `theorem` | [span_pow_eq_top](../../../../mathematics/Algebra/Basic/Variant08733a4937f53162065b8b461e9ee3b7a26decfd1ce80a190277ad53d78b883c.lean/declarations/span-pow-eq-top--34c45060157e1be8b97e3a97.md) | 161 | `result-track:34c45060157e1be8b97e3a9752fc85091e06a788555ff57e6bacafdcb35a7484` |
| 14 | `theorem` | [span_range_pow_eq_top](../../../../mathematics/Algebra/Basic/Variant08733a4937f53162065b8b461e9ee3b7a26decfd1ce80a190277ad53d78b883c.lean/declarations/span-range-pow-eq-top--6e1d8d964125f66fb8f9d756.md) | 186 | `result-track:6e1d8d964125f66fb8f9d756b92cb547b42bd5b6ab5db8ec37b21aaa9f3c3b45` |
| 15 | `theorem` | [prod_mem](../../../../mathematics/Algebra/Basic/Variant08733a4937f53162065b8b461e9ee3b7a26decfd1ce80a190277ad53d78b883c.lean/declarations/prod-mem--ba148504b871092039107318.md) | 196 | `result-track:ba148504b871092039107318b356213c36f1ca6e6d27c166c1a219a5564507ee` |
| 16 | `lemma` | [span_single_eq_top](../../../../mathematics/Algebra/Basic/Variant08733a4937f53162065b8b461e9ee3b7a26decfd1ce80a190277ad53d78b883c.lean/declarations/span-single-eq-top--3044bc5c41387291d48acf83.md) | 203 | `result-track:3044bc5c41387291d48acf83b2dd39f308d8ba0722a11cdfece918d619dbf6a6` |
| 17 | `def` | [equivFinTwo](../../../../mathematics/Algebra/Basic/Variant08733a4937f53162065b8b461e9ee3b7a26decfd1ce80a190277ad53d78b883c.lean/declarations/equivfintwo--d9e05e00b72a2984f3382d6b.md) | 227 | `declaration-track:d9e05e00b72a2984f3382d6b767b4563bab6a8b481da76c26f09f84f4e171680` |
| 18 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant08733a4937f53162065b8b461e9ee3b7a26decfd1ce80a190277ad53d78b883c.lean/declarations/instance--012a33cb20125d9c29472f87.md) | 233 | `declaration-track:012a33cb20125d9c29472f871ccf4afcddc7c83aac767f08d15333a73ff22232` |
| 19 | `instance` | [isSimpleOrder](../../../../mathematics/Algebra/Basic/Variant08733a4937f53162065b8b461e9ee3b7a26decfd1ce80a190277ad53d78b883c.lean/declarations/issimpleorder--73a4cc8f1e2accfebbae64d8.md) | 237 | `declaration-track:73a4cc8f1e2accfebbae64d8071d19a4bfefbd9af2c21926c9cf382dfaede39c` |
| 20 | `theorem` | [exists_not_isUnit_of_not_isField](../../../../mathematics/Algebra/Basic/Variant08733a4937f53162065b8b461e9ee3b7a26decfd1ce80a190277ad53d78b883c.lean/declarations/exists-not-isunit-of-not-isfield--c1412ff6aa6e13ac7d95c203.md) | 250 | `result-track:c1412ff6aa6e13ac7d95c20333ca39bb156670e3137ea33ead58a597e8923986` |
| 21 | `theorem` | [isField_iff_maximal_bot](../../../../mathematics/Algebra/Basic/Variant08733a4937f53162065b8b461e9ee3b7a26decfd1ce80a190277ad53d78b883c.lean/declarations/isfield-iff-maximal-bot--4fc4d335273a38685ba5c5f1.md) | 259 | `result-track:4fc4d335273a38685ba5c5f19887758311385a0f4446c4b742b5d6e88d2b4992` |
| 22 | `theorem` | [exists_maximal_of_not_isField](../../../../mathematics/Algebra/Basic/Variant08733a4937f53162065b8b461e9ee3b7a26decfd1ce80a190277ad53d78b883c.lean/declarations/exists-maximal-of-not-isfield--84b5ec2174606f7ab0ae7519.md) | 265 | `result-track:84b5ec2174606f7ab0ae7519cdb766ef5b844df64128987766947b28d8c466b9` |
| 23 | `theorem` | [not_isField_of_ne_of_ne](../../../../mathematics/Algebra/Basic/Variant08733a4937f53162065b8b461e9ee3b7a26decfd1ce80a190277ad53d78b883c.lean/declarations/not-isfield-of-ne-of-ne--030e621007f7ae2e54ab36ab.md) | 271 | `result-track:030e621007f7ae2e54ab36ab3a15c4c1685804c73b5fbd24cd0749cc4c796556` |
| 24 | `theorem` | [not_isField_iff_exists_ideal_bot_lt_and_lt_top](../../../../mathematics/Algebra/Basic/Variant08733a4937f53162065b8b461e9ee3b7a26decfd1ce80a190277ad53d78b883c.lean/declarations/not-isfield-iff-exists-ideal-bot-lt-and-lt-top--f5cf8f975ea51111abac3b3f.md) | 276 | `result-track:f5cf8f975ea51111abac3b3f17a78b60415a65ffc6a20e297a10d980cae0cbdc` |
| 25 | `theorem` | [not_isField_iff_exists_prime](../../../../mathematics/Algebra/Basic/Variant08733a4937f53162065b8b461e9ee3b7a26decfd1ce80a190277ad53d78b883c.lean/declarations/not-isfield-iff-exists-prime--6598589cb08a57ac8a16f3c4.md) | 282 | `result-track:6598589cb08a57ac8a16f3c4f198a96e16bdb042468f6be7d0b3264cee09ef52` |
| 26 | `theorem` | [isField_iff_isSimpleOrder_ideal](../../../../mathematics/Algebra/Basic/Variant08733a4937f53162065b8b461e9ee3b7a26decfd1ce80a190277ad53d78b883c.lean/declarations/isfield-iff-issimpleorder-ideal--15d65a473cca251c4780d4cb.md) | 292 | `result-track:15d65a473cca251c4780d4cb1933c969c0c4ee8a95cf4dca414329a2931a5c71` |
| 27 | `theorem` | [ne_bot_of_isMaximal_of_not_isField](../../../../mathematics/Algebra/Basic/Variant08733a4937f53162065b8b461e9ee3b7a26decfd1ce80a190277ad53d78b883c.lean/declarations/ne-bot-of-ismaximal-of-not-isfield--d2bcbc197963dfb208883901.md) | 303 | `result-track:d2bcbc197963dfb208883901e335d6224d61729360b546c6ecb304b65e5d334b` |
| 28 | `theorem` | [bot_lt_of_maximal](../../../../mathematics/Algebra/Basic/Variant08733a4937f53162065b8b461e9ee3b7a26decfd1ce80a190277ad53d78b883c.lean/declarations/bot-lt-of-maximal--842fe9e1e546cd213532d107.md) | 315 | `result-track:842fe9e1e546cd213532d107840144f2041a13b2ae17c3ee02d9128a867776df` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
