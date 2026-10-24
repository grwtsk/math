# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Countable.Variant04bbb4834781bd347b60bd9484674a90c590e6313a199eaace464b0dc874966c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c562802d04421b4b392bc1aa38c3c15bd0bfa291",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Countable/Variant04bbb4834781bd347b60bd9484674a90c590e6313a199eaace464b0dc874966c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Countable/Variant04bbb4834781bd347b60bd9484674a90c590e6313a199eaace464b0dc874966c.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Countable/Variant04bbb4834781bd347b60bd9484674a90c590e6313a199eaace464b0dc874966c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c562802d04421b4b392bc1aa38c3c15bd0bfa291`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Countable/Variant04bbb4834781bd347b60bd9484674a90c590e6313a199eaace464b0dc874966c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Countable/Variant04bbb4834781bd347b60bd9484674a90c590e6313a199eaace464b0dc874966c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.Lebesgue.Map` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Lebesgue.Markov` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Count` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [setLIntegral_const_lt_top](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Countable/Variant04bbb4834781bd347b60bd9484674a90c590e6313a199eaace464b0dc874966c.lean/declarations/setlintegral-const-lt-top--fdbbcc19d5f4c119a1da8e8d.md) | 35 | `result-track:fdbbcc19d5f4c119a1da8e8de1a0f95d6a9f20c61ede0f41d82d6447f8e6d392` |
| 2 | `theorem` | [lintegral_const_lt_top](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Countable/Variant04bbb4834781bd347b60bd9484674a90c590e6313a199eaace464b0dc874966c.lean/declarations/lintegral-const-lt-top--efcac7c48891614a0155c922.md) | 40 | `result-track:efcac7c48891614a0155c92262505a179c75d3b4c3204730b2b8e795cf9c7236` |
| 3 | `lemma` | [lintegral_eq_const](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Countable/Variant04bbb4834781bd347b60bd9484674a90c590e6313a199eaace464b0dc874966c.lean/declarations/lintegral-eq-const--9d60f9ca370ce53e671b5998.md) | 43 | `result-track:9d60f9ca370ce53e671b5998bc05bf9394ec1f175b0c5841a00f4987e0020c29` |
| 4 | `lemma` | [lintegral_le_const](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Countable/Variant04bbb4834781bd347b60bd9484674a90c590e6313a199eaace464b0dc874966c.lean/declarations/lintegral-le-const--4670c4bc486d9c9915ed3ef4.md) | 46 | `result-track:4670c4bc486d9c9915ed3ef469dcda77bf1466358e010046406698f831b33fa3` |
| 5 | `theorem` | [_root_.GRWTSK.Analysis.RealAnalysis.Integration.SetLIntegralConstLtTop.Variantd72bbe283ae4450a54542434fae411870672bfcad5b518d17a4b909a0c7b4c62.IsFiniteMeasure.lintegral_lt_top_of_bounded_to_ennreal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Countable/Variant04bbb4834781bd347b60bd9484674a90c590e6313a199eaace464b0dc874966c.lean/declarations/root-grwtsk-analysis-realanalysis-integration-setlintegralconstlttop-var--564cb19e1866d82b6adcc23e.md) | 51 | `result-track:564cb19e1866d82b6adcc23e9c91c70d9d262dd813de6478e1c7addd51c4fcc8` |
| 6 | `theorem` | [lintegral_dirac'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Countable/Variant04bbb4834781bd347b60bd9484674a90c590e6313a199eaace464b0dc874966c.lean/declarations/lintegral-dirac--96a5b5b13b65e73763830ec4.md) | 61 | `result-track:96a5b5b13b65e73763830ec4031eabca10c4f9a02cb4646d00b095d8333069b3` |
| 7 | `theorem` | [lintegral_dirac](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Countable/Variant04bbb4834781bd347b60bd9484674a90c590e6313a199eaace464b0dc874966c.lean/declarations/lintegral-dirac--82769f7ede55e175fb089c93.md) | 65 | `result-track:82769f7ede55e175fb089c938098f6bbb393ceacbe247611ba62b80ddbf06bc5` |
| 8 | `theorem` | [setLIntegral_dirac'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Countable/Variant04bbb4834781bd347b60bd9484674a90c590e6313a199eaace464b0dc874966c.lean/declarations/setlintegral-dirac--d18e3b17ba53dd820e10a8f7.md) | 68 | `result-track:d18e3b17ba53dd820e10a8f75098035de812df1bc2aca104f9746e02cac91a52` |
| 9 | `theorem` | [setLIntegral_dirac](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Countable/Variant04bbb4834781bd347b60bd9484674a90c590e6313a199eaace464b0dc874966c.lean/declarations/setlintegral-dirac--0024ccbd2a8c10d0a18bed6f.md) | 76 | `result-track:0024ccbd2a8c10d0a18bed6fcbc2089772e5ff0871c19da74ebfb3f4a31cfcf7` |
| 10 | `theorem` | [lintegral_count'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Countable/Variant04bbb4834781bd347b60bd9484674a90c590e6313a199eaace464b0dc874966c.lean/declarations/lintegral-count--7844a34b9472528aadb4408a.md) | 83 | `result-track:7844a34b9472528aadb4408ab472752688df18766a47aa515c87cdabbd17145a` |
| 11 | `theorem` | [lintegral_count](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Countable/Variant04bbb4834781bd347b60bd9484674a90c590e6313a199eaace464b0dc874966c.lean/declarations/lintegral-count--8db360191d52a73a26dbbe4a.md) | 88 | `result-track:8db360191d52a73a26dbbe4acce36b9bc7f97f2d54452193d877b111596047b6` |
| 12 | `lemma` | [_root_.GRWTSK.Analysis.RealAnalysis.Integration.SetLIntegralConstLtTop.Variantd72bbe283ae4450a54542434fae411870672bfcad5b518d17a4b909a0c7b4c62.ENNReal.tsum_const_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Countable/Variant04bbb4834781bd347b60bd9484674a90c590e6313a199eaace464b0dc874966c.lean/declarations/root-grwtsk-analysis-realanalysis-integration-setlintegralconstlttop-var--c778a69d742735c1650c0db3.md) | 95 | `result-track:c778a69d742735c1650c0db301f261986bb6bbf8afab01c67877d57ddca1c3a0` |
| 13 | `theorem` | [_root_.GRWTSK.Analysis.RealAnalysis.Integration.SetLIntegralConstLtTop.Variantd72bbe283ae4450a54542434fae411870672bfcad5b518d17a4b909a0c7b4c62.ENNReal.count_const_le_le_of_tsum_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Countable/Variant04bbb4834781bd347b60bd9484674a90c590e6313a199eaace464b0dc874966c.lean/declarations/root-grwtsk-analysis-realanalysis-integration-setlintegralconstlttop-var--c3e9f54193a80f01d79b8651.md) | 99 | `result-track:c3e9f54193a80f01d79b865184e71dff9e6a107d121a83b04192ed92d57154c3` |
| 14 | `theorem` | [_root_.GRWTSK.Analysis.RealAnalysis.Integration.SetLIntegralConstLtTop.Variantd72bbe283ae4450a54542434fae411870672bfcad5b518d17a4b909a0c7b4c62.NNReal.count_const_le_le_of_tsum_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Countable/Variant04bbb4834781bd347b60bd9484674a90c590e6313a199eaace464b0dc874966c.lean/declarations/root-grwtsk-analysis-realanalysis-integration-setlintegralconstlttop-var--be8d4df32d6bb1e8c079cce9.md) | 107 | `result-track:be8d4df32d6bb1e8c079cce93c682d6475023ab368ca4fe9f65b52107da3c805` |
| 15 | `theorem` | [lintegral_countable'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Countable/Variant04bbb4834781bd347b60bd9484674a90c590e6313a199eaace464b0dc874966c.lean/declarations/lintegral-countable--6f90faab6dd9ed2884e0b4c2.md) | 124 | `result-track:6f90faab6dd9ed2884e0b4c2f2d584f4f7357e018269d41f3e98c7f1fcbacadb` |
| 16 | `theorem` | [lintegral_singleton'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Countable/Variant04bbb4834781bd347b60bd9484674a90c590e6313a199eaace464b0dc874966c.lean/declarations/lintegral-singleton--a500701c6dbb471383a5b237.md) | 130 | `result-track:a500701c6dbb471383a5b237ea067893d3eabec75d01cc027d6621a587e0a0ff` |
| 17 | `theorem` | [lintegral_singleton](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Countable/Variant04bbb4834781bd347b60bd9484674a90c590e6313a199eaace464b0dc874966c.lean/declarations/lintegral-singleton--c0ca833714ebfa98375f0183.md) | 134 | `result-track:c0ca833714ebfa98375f0183ce8499c82a562a1fd95ca82563c9ab80a7bf3b95` |
| 18 | `theorem` | [lintegral_countable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Countable/Variant04bbb4834781bd347b60bd9484674a90c590e6313a199eaace464b0dc874966c.lean/declarations/lintegral-countable--bdcfb84b30e0021c26a22456.md) | 138 | `result-track:bdcfb84b30e0021c26a2245608b1fe259679f60d9f70238d5bacd5c67a01dcb8` |
| 19 | `theorem` | [lintegral_insert](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Countable/Variant04bbb4834781bd347b60bd9484674a90c590e6313a199eaace464b0dc874966c.lean/declarations/lintegral-insert--d416e7dd41adaffabadf705b.md) | 146 | `result-track:d416e7dd41adaffabadf705b031616a5e9756d4e85ada8d9b83be03942f2dd76` |
| 20 | `theorem` | [lintegral_finset](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Countable/Variant04bbb4834781bd347b60bd9484674a90c590e6313a199eaace464b0dc874966c.lean/declarations/lintegral-finset--14f87528ec061eae9d496a26.md) | 152 | `result-track:14f87528ec061eae9d496a2675545bded2328a2cd35824ec72bd5e8e8fe34f8d` |
| 21 | `theorem` | [lintegral_fintype](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Countable/Variant04bbb4834781bd347b60bd9484674a90c590e6313a199eaace464b0dc874966c.lean/declarations/lintegral-fintype--1de8f16af8166aeb2a234f48.md) | 156 | `result-track:1de8f16af8166aeb2a234f48942e7d82903f4a63a6e6e6ef31ab41ec55e83852` |
| 22 | `theorem` | [lintegral_unique](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Countable/Variant04bbb4834781bd347b60bd9484674a90c590e6313a199eaace464b0dc874966c.lean/declarations/lintegral-unique--4c382f3bc3daa59606ac4344.md) | 160 | `result-track:4c382f3bc3daa59606ac434402d3e12c12afc09cefe6f869f28250c00d8c74e9` |
| 23 | `theorem` | [exists_measurable_le_forall_setLIntegral_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Countable/Variant04bbb4834781bd347b60bd9484674a90c590e6313a199eaace464b0dc874966c.lean/declarations/exists-measurable-le-forall-setlintegral-eq--05449b9ba6b774b25d5127ca.md) | 177 | `result-track:05449b9ba6b774b25d5127ca38421179d1d648cc463517599abe0c1521afcfe8` |
| 24 | `theorem` | [exists_pos_lintegral_lt_of_sigmaFinite](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Countable/Variant04bbb4834781bd347b60bd9484674a90c590e6313a199eaace464b0dc874966c.lean/declarations/exists-pos-lintegral-lt-of-sigmafinite--35249e85e255cdc154b5ce7d.md) | 230 | `result-track:35249e85e255cdc154b5ce7d4511f38f5e40df178b9dc5aca01eac2e8ccc1e3a` |
| 25 | `theorem` | [univ_le_of_forall_fin_meas_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Countable/Variant04bbb4834781bd347b60bd9484674a90c590e6313a199eaace464b0dc874966c.lean/declarations/univ-le-of-forall-fin-meas-le--d83e6a1273601be44d9fd519.md) | 253 | `result-track:d83e6a1273601be44d9fd51902e84974aeda7af8839ec255acd4ed72ed3f2550` |
| 26 | `theorem` | [lintegral_le_of_forall_fin_meas_trim_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Countable/Variant04bbb4834781bd347b60bd9484674a90c590e6313a199eaace464b0dc874966c.lean/declarations/lintegral-le-of-forall-fin-meas-trim-le--0e0fcfd5d1562d9514059ed9.md) | 269 | `result-track:0e0fcfd5d1562d9514059ed9970d93ebf895c1c6bb9dba34fda5d3ef751022a5` |
| 27 | `theorem` | [lintegral_le_of_forall_fin_meas_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Countable/Variant04bbb4834781bd347b60bd9484674a90c590e6313a199eaace464b0dc874966c.lean/declarations/lintegral-le-of-forall-fin-meas-le--f00e690e5a5c985a651dc4d7.md) | 283 | `result-track:f00e690e5a5c985a651dc4d7f7c148858bec45007e6bf4b51a8d19003b3dc296` |
| 28 | `theorem` | [SimpleFunc.exists_lt_lintegral_simpleFunc_of_lt_lintegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Countable/Variant04bbb4834781bd347b60bd9484674a90c590e6313a199eaace464b0dc874966c.lean/declarations/simplefunc-exists-lt-lintegral-simplefunc-of-lt-lintegral--d1ea2a7e6c65a9d0bb97bdfb.md) | 289 | `result-track:d1ea2a7e6c65a9d0bb97bdfbc1b6b92880a71a00d5a7026a9c148218950b33d8` |
| 29 | `theorem` | [exists_lt_lintegral_simpleFunc_of_lt_lintegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Countable/Variant04bbb4834781bd347b60bd9484674a90c590e6313a199eaace464b0dc874966c.lean/declarations/exists-lt-lintegral-simplefunc-of-lt-lintegral--86d1b7fd678953f4a5179298.md) | 344 | `result-track:86d1b7fd678953f4a51792983da688ab7d817d4e6f51ad5f56ef9165ed83e997` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
