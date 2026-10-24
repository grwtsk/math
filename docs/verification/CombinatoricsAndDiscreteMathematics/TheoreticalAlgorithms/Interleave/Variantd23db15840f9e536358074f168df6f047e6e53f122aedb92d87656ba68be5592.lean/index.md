# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Interleave.Variantd23db15840f9e536358074f168df6f047e6e53f122aedb92d87656ba68be5592

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7ad92112c026d298b59cf7e0141846bf6bdc5a54",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interleave/Variantd23db15840f9e536358074f168df6f047e6e53f122aedb92d87656ba68be5592.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interleave/Variantd23db15840f9e536358074f168df6f047e6e53f122aedb92d87656ba68be5592.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interleave/Variantd23db15840f9e536358074f168df6f047e6e53f122aedb92d87656ba68be5592.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7ad92112c026d298b59cf7e0141846bf6bdc5a54`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interleave/Variantd23db15840f9e536358074f168df6f047e6e53f122aedb92d87656ba68be5592.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interleave/Variantd23db15840f9e536358074f168df6f047e6e53f122aedb92d87656ba68be5592.lean.json)

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
| 1 | `def` | [interleave](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interleave/Variantd23db15840f9e536358074f168df6f047e6e53f122aedb92d87656ba68be5592.lean/declarations/interleave--8607c52ca354fd0bd4846297.md) | 33 | `declaration-track:8607c52ca354fd0bd4846297ab7ccc62bcd25e19b83e2951ccef000444761478` |
| 2 | `theorem` | [nil_interleave](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interleave/Variantd23db15840f9e536358074f168df6f047e6e53f122aedb92d87656ba68be5592.lean/declarations/nil-interleave--4e4fb6144c568feda57824d8.md) | 38 | `result-track:4e4fb6144c568feda57824d812823668ad03c8069d99a2dffb6067f4d6f62803` |
| 3 | `theorem` | [interleave_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interleave/Variantd23db15840f9e536358074f168df6f047e6e53f122aedb92d87656ba68be5592.lean/declarations/interleave-nil--ce36fd36f89220822892ceaa.md) | 41 | `result-track:ce36fd36f89220822892ceaa9a4766a08c860ea2f8c7aa76ae912557885de463` |
| 4 | `theorem` | [cons_interleave](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interleave/Variantd23db15840f9e536358074f168df6f047e6e53f122aedb92d87656ba68be5592.lean/declarations/cons-interleave--3cd79f9fa177e97a3654a30e.md) | 44 | `result-track:3cd79f9fa177e97a3654a30e2299b4409aae420a9c33e7df161590bf886479de` |
| 5 | `theorem` | [interleave_perm_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interleave/Variantd23db15840f9e536358074f168df6f047e6e53f122aedb92d87656ba68be5592.lean/declarations/interleave-perm-append--6684821dc0364b20004d75cf.md) | 47 | `result-track:6684821dc0364b20004d75cfe8fbba705a901af52b4aaefec5c626a7d93ccfaa` |
| 6 | `theorem` | [interleave_eq_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interleave/Variantd23db15840f9e536358074f168df6f047e6e53f122aedb92d87656ba68be5592.lean/declarations/interleave-eq-nil--ff9aacdae0afd4be84580d64.md) | 54 | `result-track:ff9aacdae0afd4be84580d6496d642df3089dc3162ea723be154dedb81fe3807` |
| 7 | `theorem` | [Perm.interleave](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interleave/Variantd23db15840f9e536358074f168df6f047e6e53f122aedb92d87656ba68be5592.lean/declarations/perm-interleave--37dfe4fe2592358a84d99316.md) | 57 | `result-track:37dfe4fe2592358a84d99316fe71ed7ed435f09294129040db32360c17a4d5b4` |
| 8 | `theorem` | [length_interleave](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interleave/Variantd23db15840f9e536358074f168df6f047e6e53f122aedb92d87656ba68be5592.lean/declarations/length-interleave--84c24690c5a878a579e6b992.md) | 61 | `result-track:84c24690c5a878a579e6b992582bb299bba9717df7f1d3587e529a2b9bbe8286` |
| 9 | `theorem` | [countP_interleave](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interleave/Variantd23db15840f9e536358074f168df6f047e6e53f122aedb92d87656ba68be5592.lean/declarations/countp-interleave--60f4be714124e87a1f0e1df2.md) | 64 | `result-track:60f4be714124e87a1f0e1df2e22c22f680fa75a1f13b9fc5aecd2b306dc60f3f` |
| 10 | `theorem` | [count_interleave](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interleave/Variantd23db15840f9e536358074f168df6f047e6e53f122aedb92d87656ba68be5592.lean/declarations/count-interleave--55fb4064f9927603b34bed68.md) | 68 | `result-track:55fb4064f9927603b34bed686291436a14a13bd06dc2176912f45c02f5effa25` |
| 11 | `theorem` | [interleave_append_append_of_length_eq_length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interleave/Variantd23db15840f9e536358074f168df6f047e6e53f122aedb92d87656ba68be5592.lean/declarations/interleave-append-append-of-length-eq-length--cb03fb188af6daa897e07593.md) | 72 | `result-track:cb03fb188af6daa897e07593a142a2906f526938f933c476cbc27afcea7639fd` |
| 12 | `theorem` | [interleave_append_append_of_length_eq_length_add_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interleave/Variantd23db15840f9e536358074f168df6f047e6e53f122aedb92d87656ba68be5592.lean/declarations/interleave-append-append-of-length-eq-length-add-one--ef6900cd27a8ec7c68e2b45c.md) | 78 | `result-track:ef6900cd27a8ec7c68e2b45c7a38ba56cf83ac18c00596a51861410e4c01757c` |
| 13 | `theorem` | [interleave_append_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interleave/Variantd23db15840f9e536358074f168df6f047e6e53f122aedb92d87656ba68be5592.lean/declarations/interleave-append-left--89d1817480eff485e80371f6.md) | 83 | `result-track:89d1817480eff485e80371f66aecf21cd484f93e98707d07623a16047eb1239a` |
| 14 | `theorem` | [interleave_append_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interleave/Variantd23db15840f9e536358074f168df6f047e6e53f122aedb92d87656ba68be5592.lean/declarations/interleave-append-right--e5bd5abccb4b89767593651e.md) | 89 | `result-track:e5bd5abccb4b89767593651ef803b868b562f2cee683074f35ca0229d0a7ecad` |
| 15 | `theorem` | [interleave_flatten_flatten_of_length_eq_length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interleave/Variantd23db15840f9e536358074f168df6f047e6e53f122aedb92d87656ba68be5592.lean/declarations/interleave-flatten-flatten-of-length-eq-length--34451e86b040fae5ff9415fb.md) | 96 | `result-track:34451e86b040fae5ff9415fb4e05e68c393831796f7d1f810b84419f80d0ae0a` |
| 16 | `theorem` | [reverse_interleave_of_length_eq_length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interleave/Variantd23db15840f9e536358074f168df6f047e6e53f122aedb92d87656ba68be5592.lean/declarations/reverse-interleave-of-length-eq-length--52aa102aad8cdbb5f25d2307.md) | 107 | `result-track:52aa102aad8cdbb5f25d230760f94a43454a1a0d29f67a9090ca5a6a3513d88c` |
| 17 | `theorem` | [reverse_interleave_of_length_eq_length_add_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interleave/Variantd23db15840f9e536358074f168df6f047e6e53f122aedb92d87656ba68be5592.lean/declarations/reverse-interleave-of-length-eq-length-add-one--ef81fff823ab815cb9496193.md) | 113 | `result-track:ef81fff823ab815cb9496193e17aa74211b84fa157491a55001ba50f8d71adcc` |
| 18 | `theorem` | [interleave_ofFn_ofFn_even](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interleave/Variantd23db15840f9e536358074f168df6f047e6e53f122aedb92d87656ba68be5592.lean/declarations/interleave-offn-offn-even--9f2144e77037edd24ffd345c.md) | 119 | `result-track:9f2144e77037edd24ffd345c525bbed97c8b229fdd474618694861fda5f54a78` |
| 19 | `theorem` | [interleave_ofFn_ofFn_odd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interleave/Variantd23db15840f9e536358074f168df6f047e6e53f122aedb92d87656ba68be5592.lean/declarations/interleave-offn-offn-odd--15401e209bae03752f573ab5.md) | 126 | `result-track:15401e209bae03752f573ab55fec7459eeaf001cd37ec9c0d08a8f6d276919bf` |
| 20 | `theorem` | [right_sublist_interleave](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interleave/Variantd23db15840f9e536358074f168df6f047e6e53f122aedb92d87656ba68be5592.lean/declarations/right-sublist-interleave--ee2fe751269fab4908d19ec0.md) | 134 | `result-track:ee2fe751269fab4908d19ec01e390bff67b79cfa6853ad1533554f9dbb23c084` |
| 21 | `theorem` | [left_sublist_interleave](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interleave/Variantd23db15840f9e536358074f168df6f047e6e53f122aedb92d87656ba68be5592.lean/declarations/left-sublist-interleave--bda51b0581fab5872206953e.md) | 141 | `result-track:bda51b0581fab5872206953e4319d6cafc84563d877eb71f4e82390a77a1d35b` |
| 22 | `theorem` | [IsPrefix.interleave](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interleave/Variantd23db15840f9e536358074f168df6f047e6e53f122aedb92d87656ba68be5592.lean/declarations/isprefix-interleave--20a536d24408b311e04849a9.md) | 143 | `result-track:20a536d24408b311e04849a971aea005ab9eb1c0d9ee0860fc9dab2cb5d7b995` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
