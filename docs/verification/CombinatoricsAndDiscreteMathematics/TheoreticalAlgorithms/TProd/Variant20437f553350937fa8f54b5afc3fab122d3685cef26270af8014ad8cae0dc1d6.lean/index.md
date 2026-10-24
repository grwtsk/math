# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TProd.Variant20437f553350937fa8f54b5afc3fab122d3685cef26270af8014ad8cae0dc1d6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7b46fda4f7ff9ee1d8b630b3c259a3863569ab04",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TProd/Variant20437f553350937fa8f54b5afc3fab122d3685cef26270af8014ad8cae0dc1d6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TProd/Variant20437f553350937fa8f54b5afc3fab122d3685cef26270af8014ad8cae0dc1d6.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TProd/Variant20437f553350937fa8f54b5afc3fab122d3685cef26270af8014ad8cae0dc1d6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7b46fda4f7ff9ee1d8b630b3c259a3863569ab04`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TProd/Variant20437f553350937fa8f54b5afc3fab122d3685cef26270af8014ad8cae0dc1d6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TProd/Variant20437f553350937fa8f54b5afc3fab122d3685cef26270af8014ad8cae0dc1d6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Nodup` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Prod` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [TProd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TProd/Variant20437f553350937fa8f54b5afc3fab122d3685cef26270af8014ad8cae0dc1d6.lean/declarations/tprod--40eee5aa07e6c127525517d8.md) | 54 | `declaration-track:40eee5aa07e6c127525517d8954db42c164eebdcd80d2169efd68a3b50b561ae` |
| 2 | `def` | [mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TProd/Variant20437f553350937fa8f54b5afc3fab122d3685cef26270af8014ad8cae0dc1d6.lean/declarations/mk--6f1ef39899ceb1ab617265de.md) | 62 | `declaration-track:6f1ef39899ceb1ab617265debe2dccdc4c38a2fea509cfeb44cf6fecdf2e28be` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TProd/Variant20437f553350937fa8f54b5afc3fab122d3685cef26270af8014ad8cae0dc1d6.lean/declarations/instance--21fcc156df64e26d7a75fe9f.md) | 66 | `declaration-track:21fcc156df64e26d7a75fe9f2586d747b72105bef3fec61bcb5344f5c3e24b75` |
| 4 | `theorem` | [fst_mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TProd/Variant20437f553350937fa8f54b5afc3fab122d3685cef26270af8014ad8cae0dc1d6.lean/declarations/fst-mk--d1cb78c6ce5a9117ea183bcf.md) | 70 | `result-track:d1cb78c6ce5a9117ea183bcfd6b50f40001336cca03a48fc9e01f9548be1c16e` |
| 5 | `theorem` | [snd_mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TProd/Variant20437f553350937fa8f54b5afc3fab122d3685cef26270af8014ad8cae0dc1d6.lean/declarations/snd-mk--bb4d753aef368be8647760ed.md) | 74 | `result-track:bb4d753aef368be8647760ed06dd95749e9ddcc2ac9f8b898073f5e0eb9926dd` |
| 6 | `def` | [elim](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TProd/Variant20437f553350937fa8f54b5afc3fab122d3685cef26270af8014ad8cae0dc1d6.lean/declarations/elim--e2572aa8379b2d8907b45889.md) | 82 | `declaration-track:e2572aa8379b2d8907b458899e12c21478c06e84ebbd3c60a0afa5885e038ca3` |
| 7 | `theorem` | [elim_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TProd/Variant20437f553350937fa8f54b5afc3fab122d3685cef26270af8014ad8cae0dc1d6.lean/declarations/elim-self--53e135d9d674b85827db4d0e.md) | 90 | `result-track:53e135d9d674b85827db4d0e58b35a31cd50b8508ea8ec42d4b33654533e37d9` |
| 8 | `theorem` | [elim_of_ne](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TProd/Variant20437f553350937fa8f54b5afc3fab122d3685cef26270af8014ad8cae0dc1d6.lean/declarations/elim-of-ne--f598dd620a173933b9cc178e.md) | 93 | `result-track:f598dd620a173933b9cc178e84c1a11a6ac090e245f89e7ac9d9a1da2e038258` |
| 9 | `theorem` | [elim_of_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TProd/Variant20437f553350937fa8f54b5afc3fab122d3685cef26270af8014ad8cae0dc1d6.lean/declarations/elim-of-mem--77dec2730d25280a41fc9171.md) | 97 | `result-track:77dec2730d25280a41fc9171a15764c9a76902115db42bc557e666ca39db97c4` |
| 10 | `theorem` | [elim_mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TProd/Variant20437f553350937fa8f54b5afc3fab122d3685cef26270af8014ad8cae0dc1d6.lean/declarations/elim-mk--0e4971155fbf64afbec8b9d8.md) | 103 | `result-track:0e4971155fbf64afbec8b9d83a3c79d46e56231627ef40affb0ee3e16bf4c4a6` |
| 11 | `theorem` | [ext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TProd/Variant20437f553350937fa8f54b5afc3fab122d3685cef26270af8014ad8cae0dc1d6.lean/declarations/ext--65c6c11421b26591773dee98.md) | 111 | `result-track:65c6c11421b26591773dee985693deebcaf65d2e7f54a0c67de9fab57db3ab00` |
| 12 | `def` | [elim'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TProd/Variant20437f553350937fa8f54b5afc3fab122d3685cef26270af8014ad8cae0dc1d6.lean/declarations/elim--a2b7ec8def2bec70d8c380fd.md) | 124 | `declaration-track:a2b7ec8def2bec70d8c380fd967af0ab247b8f8a5d9b370952d6b6264555c353` |
| 13 | `theorem` | [mk_elim](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TProd/Variant20437f553350937fa8f54b5afc3fab122d3685cef26270af8014ad8cae0dc1d6.lean/declarations/mk-elim--efb9870dba0e9e7793d30aff.md) | 127 | `result-track:efb9870dba0e9e7793d30aff176467cfb5a03d1e68f2cf2487cfb84f7c7d8f2f` |
| 14 | `def` | [piEquivTProd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TProd/Variant20437f553350937fa8f54b5afc3fab122d3685cef26270af8014ad8cae0dc1d6.lean/declarations/piequivtprod--4bd24de19ba324dc8a12fff3.md) | 131 | `declaration-track:4bd24de19ba324dc8a12fff387f4518c156081ddd51e92e6a751bbd7a46b6a46` |
| 15 | `def` | [tprod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TProd/Variant20437f553350937fa8f54b5afc3fab122d3685cef26270af8014ad8cae0dc1d6.lean/declarations/tprod--17defe8bb4f4555f17d75d87.md) | 144 | `declaration-track:17defe8bb4f4555f17d75d876ff8a095c3cf01c4b08789dc65a16c17f0f627b1` |
| 16 | `theorem` | [mk_preimage_tprod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TProd/Variant20437f553350937fa8f54b5afc3fab122d3685cef26270af8014ad8cae0dc1d6.lean/declarations/mk-preimage-tprod--caa114d8b7ea02ecd3a71560.md) | 148 | `result-track:caa114d8b7ea02ecd3a715607b15f269dd4ad0d1c04ff64cc09cc43d78c2bd51` |
| 17 | `theorem` | [elim_preimage_pi](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TProd/Variant20437f553350937fa8f54b5afc3fab122d3685cef26270af8014ad8cae0dc1d6.lean/declarations/elim-preimage-pi--5c05e72cb8e036403940eb2d.md) | 163 | `result-track:5c05e72cb8e036403940eb2d7cb961e55aea4080cdde0eb350499479055b2b96` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
