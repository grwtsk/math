# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Rdrop.Variant4627a7cb5bb7f300fb799c0d1c3803d22e6c39a4f823b170ece7c2ec96b2bf95

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ce3b962ecd8efb314d1d946aaa5cb079c416a6af",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rdrop/Variant4627a7cb5bb7f300fb799c0d1c3803d22e6c39a4f823b170ece7c2ec96b2bf95.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rdrop/Variant4627a7cb5bb7f300fb799c0d1c3803d22e6c39a4f823b170ece7c2ec96b2bf95.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rdrop/Variant4627a7cb5bb7f300fb799c0d1c3803d22e6c39a4f823b170ece7c2ec96b2bf95.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ce3b962ecd8efb314d1d946aaa5cb079c416a6af`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rdrop/Variant4627a7cb5bb7f300fb799c0d1c3803d22e6c39a4f823b170ece7c2ec96b2bf95.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rdrop/Variant4627a7cb5bb7f300fb799c0d1c3803d22e6c39a4f823b170ece7c2ec96b2bf95.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Infix` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rdrop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rdrop/Variant4627a7cb5bb7f300fb799c0d1c3803d22e6c39a4f823b170ece7c2ec96b2bf95.lean/declarations/rdrop--d3bc9e479c6d370a4f8406e9.md) | 41 | `declaration-track:d3bc9e479c6d370a4f8406e9c070af4ab9ff797fca6fbc55e8f257a1728adcc7` |
| 2 | `theorem` | [rdrop_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rdrop/Variant4627a7cb5bb7f300fb799c0d1c3803d22e6c39a4f823b170ece7c2ec96b2bf95.lean/declarations/rdrop-nil--ab76b116cdf0c895d5362e8d.md) | 46 | `result-track:ab76b116cdf0c895d5362e8d3b748d686f388f317a7ddfe1c23f7dbb99935c6f` |
| 3 | `theorem` | [rdrop_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rdrop/Variant4627a7cb5bb7f300fb799c0d1c3803d22e6c39a4f823b170ece7c2ec96b2bf95.lean/declarations/rdrop-zero--02a04e1d1a190a6db605fd16.md) | 50 | `result-track:02a04e1d1a190a6db605fd16763c837feb36f1964a92e527257671f9e51f1aec` |
| 4 | `theorem` | [rdrop_eq_reverse_drop_reverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rdrop/Variant4627a7cb5bb7f300fb799c0d1c3803d22e6c39a4f823b170ece7c2ec96b2bf95.lean/declarations/rdrop-eq-reverse-drop-reverse--733f2b642f6e6f5d84413856.md) | 53 | `result-track:733f2b642f6e6f5d844138564c4808fd9be541e9edbbca915161bbb8e41a0156` |
| 5 | `theorem` | [rdrop_concat_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rdrop/Variant4627a7cb5bb7f300fb799c0d1c3803d22e6c39a4f823b170ece7c2ec96b2bf95.lean/declarations/rdrop-concat-succ--cd09c0c5910646e2407b95e0.md) | 63 | `result-track:cd09c0c5910646e2407b95e0f9570c79ddbd83c4a32d9124259f282f2fba3cb5` |
| 6 | `def` | [rtake](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rdrop/Variant4627a7cb5bb7f300fb799c0d1c3803d22e6c39a4f823b170ece7c2ec96b2bf95.lean/declarations/rtake--9b60c9208993329d105f2216.md) | 68 | `declaration-track:9b60c9208993329d105f2216530d034909a593bb2301fdd53c9292629e566346` |
| 7 | `theorem` | [rtake_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rdrop/Variant4627a7cb5bb7f300fb799c0d1c3803d22e6c39a4f823b170ece7c2ec96b2bf95.lean/declarations/rtake-nil--7ed5ff084ed16215ae81607e.md) | 73 | `result-track:7ed5ff084ed16215ae81607ea2089e45f4f82300c92c87d519d97e8ec930d919` |
| 8 | `theorem` | [rtake_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rdrop/Variant4627a7cb5bb7f300fb799c0d1c3803d22e6c39a4f823b170ece7c2ec96b2bf95.lean/declarations/rtake-zero--98f206a02b28382497efa131.md) | 77 | `result-track:98f206a02b28382497efa1315c3b6b8ed32704df8a1a423ccc8da2a28dba1813` |
| 9 | `theorem` | [rtake_eq_reverse_take_reverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rdrop/Variant4627a7cb5bb7f300fb799c0d1c3803d22e6c39a4f823b170ece7c2ec96b2bf95.lean/declarations/rtake-eq-reverse-take-reverse--3bbd610ec274ad9f52e4a321.md) | 80 | `result-track:3bbd610ec274ad9f52e4a3214fad9573aefe7a98f1a81f88512072b5ebacbd48` |
| 10 | `theorem` | [rtake_concat_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rdrop/Variant4627a7cb5bb7f300fb799c0d1c3803d22e6c39a4f823b170ece7c2ec96b2bf95.lean/declarations/rtake-concat-succ--52b3b97164e65f4d0d390ab0.md) | 90 | `result-track:52b3b97164e65f4d0d390ab0139778b89de5be7e10c2faeb7c7ed3d81f27a211` |
| 11 | `def` | [rdropWhile](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rdrop/Variant4627a7cb5bb7f300fb799c0d1c3803d22e6c39a4f823b170ece7c2ec96b2bf95.lean/declarations/rdropwhile--66d05ebabd478924f976d230.md) | 96 | `declaration-track:66d05ebabd478924f976d230e51de58ef7618006338efc758f5ead1445f541fc` |
| 12 | `theorem` | [rdropWhile_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rdrop/Variant4627a7cb5bb7f300fb799c0d1c3803d22e6c39a4f823b170ece7c2ec96b2bf95.lean/declarations/rdropwhile-nil--3cf56a419559022729661409.md) | 101 | `result-track:3cf56a4195590227296614090abf80a97f30c354d2d981d64758ea2d09340973` |
| 13 | `theorem` | [rdropWhile_concat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rdrop/Variant4627a7cb5bb7f300fb799c0d1c3803d22e6c39a4f823b170ece7c2ec96b2bf95.lean/declarations/rdropwhile-concat--8cea259528d17e225222b241.md) | 104 | `result-track:8cea259528d17e225222b241dd1864da77cc0812a4c899691067cd984c812d2e` |
| 14 | `theorem` | [rdropWhile_concat_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rdrop/Variant4627a7cb5bb7f300fb799c0d1c3803d22e6c39a4f823b170ece7c2ec96b2bf95.lean/declarations/rdropwhile-concat-pos--a40641d5f3e5f48da3c906d7.md) | 111 | `result-track:a40641d5f3e5f48da3c906d721fc2b1bc922c8c5c288ca8649e35e8fe7e2828a` |
| 15 | `theorem` | [rdropWhile_concat_neg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rdrop/Variant4627a7cb5bb7f300fb799c0d1c3803d22e6c39a4f823b170ece7c2ec96b2bf95.lean/declarations/rdropwhile-concat-neg--ffc0ddac274a512f816ab4eb.md) | 116 | `result-track:ffc0ddac274a512f816ab4ebc540c6a07e14c219e63ec94a5461a1efd59d82e9` |
| 16 | `theorem` | [rdropWhile_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rdrop/Variant4627a7cb5bb7f300fb799c0d1c3803d22e6c39a4f823b170ece7c2ec96b2bf95.lean/declarations/rdropwhile-singleton--6d6e19f4f06da22b182a8082.md) | 120 | `result-track:6d6e19f4f06da22b182a80829081196167df2a266b003df5969becdb13c16538` |
| 17 | `theorem` | [rdropWhile_last_not](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rdrop/Variant4627a7cb5bb7f300fb799c0d1c3803d22e6c39a4f823b170ece7c2ec96b2bf95.lean/declarations/rdropwhile-last-not--b421ad058dc2558579957f0b.md) | 124 | `result-track:b421ad058dc2558579957f0befe4135574014c94fb629eeab19da1890374bbb7` |
| 18 | `theorem` | [rdropWhile_prefix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rdrop/Variant4627a7cb5bb7f300fb799c0d1c3803d22e6c39a4f823b170ece7c2ec96b2bf95.lean/declarations/rdropwhile-prefix--ee8f09d68aad4d079217633c.md) | 130 | `result-track:ee8f09d68aad4d079217633cc2555444d4260dd52d8c12c2656e383708b48cf8` |
| 19 | `theorem` | [rdropWhile_eq_nil_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rdrop/Variant4627a7cb5bb7f300fb799c0d1c3803d22e6c39a4f823b170ece7c2ec96b2bf95.lean/declarations/rdropwhile-eq-nil-iff--abb8b529a4ca01d7bd84548f.md) | 138 | `result-track:abb8b529a4ca01d7bd84548f3cce26d9853c547542a3423b76f27f7f03e80495` |
| 20 | `theorem` | [dropWhile_eq_self_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rdrop/Variant4627a7cb5bb7f300fb799c0d1c3803d22e6c39a4f823b170ece7c2ec96b2bf95.lean/declarations/dropwhile-eq-self-iff--847d803ac132558020bf1bbe.md) | 143 | `result-track:847d803ac132558020bf1bbe7a14f73d1c4897c428bd924724ea9e7b50fee73b` |
| 21 | `theorem` | [rdropWhile_eq_self_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rdrop/Variant4627a7cb5bb7f300fb799c0d1c3803d22e6c39a4f823b170ece7c2ec96b2bf95.lean/declarations/rdropwhile-eq-self-iff--972c6f8db6ef8693d196b59c.md) | 165 | `result-track:972c6f8db6ef8693d196b59c26bedba2cd497550d04d0edfbe22566b77e3817b` |
| 22 | `theorem` | [dropWhile_idempotent](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rdrop/Variant4627a7cb5bb7f300fb799c0d1c3803d22e6c39a4f823b170ece7c2ec96b2bf95.lean/declarations/dropwhile-idempotent--20c30ef5a3909d91b76b8e27.md) | 178 | `result-track:20c30ef5a3909d91b76b8e27002a0506c5ecd4693f603a091dcc4ec03111ec54` |
| 23 | `theorem` | [rdropWhile_idempotent](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rdrop/Variant4627a7cb5bb7f300fb799c0d1c3803d22e6c39a4f823b170ece7c2ec96b2bf95.lean/declarations/rdropwhile-idempotent--80100b8c491b23483bfa504c.md) | 183 | `result-track:80100b8c491b23483bfa504c2cc210c4dae6fa5c64ded36a67bf8e0faba21531` |
| 24 | `def` | [rtakeWhile](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rdrop/Variant4627a7cb5bb7f300fb799c0d1c3803d22e6c39a4f823b170ece7c2ec96b2bf95.lean/declarations/rtakewhile--b7e8ac1ce24ede9b7d65539f.md) | 189 | `declaration-track:b7e8ac1ce24ede9b7d65539fea00c8759041ed4bf4c83255de06abbcf1bd6360` |
| 25 | `theorem` | [rtakeWhile_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rdrop/Variant4627a7cb5bb7f300fb799c0d1c3803d22e6c39a4f823b170ece7c2ec96b2bf95.lean/declarations/rtakewhile-nil--5d2cba236f785030690eb7d1.md) | 194 | `result-track:5d2cba236f785030690eb7d19bbf27304d438ea366bc35cc2d710cc9b78eca0b` |
| 26 | `theorem` | [rtakeWhile_concat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rdrop/Variant4627a7cb5bb7f300fb799c0d1c3803d22e6c39a4f823b170ece7c2ec96b2bf95.lean/declarations/rtakewhile-concat--f82683cba3749a4b2b53316d.md) | 197 | `result-track:f82683cba3749a4b2b53316d9d7b0301769652fea611399f5ba60b759e73b8a3` |
| 27 | `theorem` | [rtakeWhile_concat_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rdrop/Variant4627a7cb5bb7f300fb799c0d1c3803d22e6c39a4f823b170ece7c2ec96b2bf95.lean/declarations/rtakewhile-concat-pos--2a10236232940117b5969e02.md) | 204 | `result-track:2a10236232940117b5969e0291f5efbbd10679d09f3ef0ecfcfe41656adf06a7` |
| 28 | `theorem` | [rtakeWhile_concat_neg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rdrop/Variant4627a7cb5bb7f300fb799c0d1c3803d22e6c39a4f823b170ece7c2ec96b2bf95.lean/declarations/rtakewhile-concat-neg--6aebe70c69e0e57daa1e92ec.md) | 209 | `result-track:6aebe70c69e0e57daa1e92ec188e8ce6cf827e915e5ddff58eb5018e4301dd89` |
| 29 | `theorem` | [rtakeWhile_suffix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rdrop/Variant4627a7cb5bb7f300fb799c0d1c3803d22e6c39a4f823b170ece7c2ec96b2bf95.lean/declarations/rtakewhile-suffix--527be36e664582e87bebcf0b.md) | 213 | `result-track:527be36e664582e87bebcf0bb772160d7869bac01baefceb1df20fc0848adaab` |
| 30 | `theorem` | [rtakeWhile_eq_self_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rdrop/Variant4627a7cb5bb7f300fb799c0d1c3803d22e6c39a4f823b170ece7c2ec96b2bf95.lean/declarations/rtakewhile-eq-self-iff--28b4838a3874e52f98cf97b8.md) | 221 | `result-track:28b4838a3874e52f98cf97b8d27d8dc815f88db635affc548b251a94f3e64a6b` |
| 31 | `theorem` | [rtakeWhile_eq_nil_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rdrop/Variant4627a7cb5bb7f300fb799c0d1c3803d22e6c39a4f823b170ece7c2ec96b2bf95.lean/declarations/rtakewhile-eq-nil-iff--6513b3ec9f6999f2d039a1cc.md) | 227 | `result-track:6513b3ec9f6999f2d039a1cc4df9739c2a66f95753d6cf1264e4064b015e3c3f` |
| 32 | `theorem` | [mem_rtakeWhile_imp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rdrop/Variant4627a7cb5bb7f300fb799c0d1c3803d22e6c39a4f823b170ece7c2ec96b2bf95.lean/declarations/mem-rtakewhile-imp--3ed256060e80899cecf9eced.md) | 238 | `result-track:3ed256060e80899cecf9eced3ec16ed307ab76f84ada6d2c4f90fb0b9f7675a4` |
| 33 | `theorem` | [rtakeWhile_idempotent](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rdrop/Variant4627a7cb5bb7f300fb799c0d1c3803d22e6c39a4f823b170ece7c2ec96b2bf95.lean/declarations/rtakewhile-idempotent--4e6f46dee3211cf2e1505e1d.md) | 245 | `result-track:4e6f46dee3211cf2e1505e1d599029a1a6ebc6cfb36ab904b492c7a1d99ddb2f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
