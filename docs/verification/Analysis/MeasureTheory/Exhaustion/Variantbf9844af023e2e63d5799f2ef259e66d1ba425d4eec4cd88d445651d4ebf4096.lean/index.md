# Verification target: GRWTSK.Analysis.MeasureTheory.Exhaustion.Variantbf9844af023e2e63d5799f2ef259e66d1ba425d4eec4cd88d445651d4ebf4096

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "27af792f30964d08962b3bf6a387b341af1a5bbb",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Exhaustion/Variantbf9844af023e2e63d5799f2ef259e66d1ba425d4eec4cd88d445651d4ebf4096.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Exhaustion/Variantbf9844af023e2e63d5799f2ef259e66d1ba425d4eec4cd88d445651d4ebf4096.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Exhaustion/Variantbf9844af023e2e63d5799f2ef259e66d1ba425d4eec4cd88d445651d4ebf4096.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `27af792f30964d08962b3bf6a387b341af1a5bbb`.

Source path: `GRWTSK/Analysis/MeasureTheory/Exhaustion/Variantbf9844af023e2e63d5799f2ef259e66d1ba425d4eec4cd88d445651d4ebf4096.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Exhaustion/Variantbf9844af023e2e63d5799f2ef259e66d1ba425d4eec4cd88d445651d4ebf4096.lean.json)

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
| 1 | `def` | [Measure.sigmaFiniteSetWRT](../../../../../mathematics/Analysis/MeasureTheory/Exhaustion/Variantbf9844af023e2e63d5799f2ef259e66d1ba425d4eec4cd88d445651d4ebf4096.lean/declarations/measure-sigmafinitesetwrt--faf19522cfcfc5e5e7f0c5e9.md) | 67 | `declaration-track:faf19522cfcfc5e5e7f0c5e98031558aab1ac834b49787ff49a57b392e0f7e62` |
| 2 | `lemma` | [measurableSet_sigmaFiniteSetWRT](../../../../../mathematics/Analysis/MeasureTheory/Exhaustion/Variantbf9844af023e2e63d5799f2ef259e66d1ba425d4eec4cd88d445651d4ebf4096.lean/declarations/measurableset-sigmafinitesetwrt--230b71dbe7e0214767b4ee7b.md) | 74 | `result-track:230b71dbe7e0214767b4ee7baf55782719bb5bcbc911e78fe2e491d456af991a` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Exhaustion/Variantbf9844af023e2e63d5799f2ef259e66d1ba425d4eec4cd88d445651d4ebf4096.lean/declarations/instance--74cee625ae59d55b80aa4562.md) | 81 | `declaration-track:74cee625ae59d55b80aa456255b8719ded847cb3818c586e7ff6376564722b8a` |
| 4 | `lemma` | [exists_isSigmaFiniteSet_measure_ge](../../../../../mathematics/Analysis/MeasureTheory/Exhaustion/Variantbf9844af023e2e63d5799f2ef259e66d1ba425d4eec4cd88d445651d4ebf4096.lean/declarations/exists-issigmafiniteset-measure-ge--feb1ff2736bc0090c1247b89.md) | 97 | `result-track:feb1ff2736bc0090c1247b891d61e09f4cccfe2eb0efa1b0e3891ed82d3ffb36` |
| 5 | `def` | [Measure.sigmaFiniteSetGE](../../../../../mathematics/Analysis/MeasureTheory/Exhaustion/Variantbf9844af023e2e63d5799f2ef259e66d1ba425d4eec4cd88d445651d4ebf4096.lean/declarations/measure-sigmafinitesetge--280babb6de38d8a38ba1f8be.md) | 130 | `declaration-track:280babb6de38d8a38ba1f8be1cf287c655c352b0c3695515c4cf800212f41dbc` |
| 6 | `lemma` | [measurableSet_sigmaFiniteSetGE](../../../../../mathematics/Analysis/MeasureTheory/Exhaustion/Variantbf9844af023e2e63d5799f2ef259e66d1ba425d4eec4cd88d445651d4ebf4096.lean/declarations/measurableset-sigmafinitesetge--a1909a41f65f4a913dece717.md) | 133 | `result-track:a1909a41f65f4a913dece717a38bedff7bd66ad3cfea38b0711026489908641e` |
| 7 | `lemma` | [sigmaFinite_restrict_sigmaFiniteSetGE](../../../../../mathematics/Analysis/MeasureTheory/Exhaustion/Variantbf9844af023e2e63d5799f2ef259e66d1ba425d4eec4cd88d445651d4ebf4096.lean/declarations/sigmafinite-restrict-sigmafinitesetge--947aabf122237c8319c801f3.md) | 137 | `result-track:947aabf122237c8319c801f3f58eebcb1cc1d68f5b22d04b3adf8411719df4cc` |
| 8 | `lemma` | [measure_sigmaFiniteSetGE_le](../../../../../mathematics/Analysis/MeasureTheory/Exhaustion/Variantbf9844af023e2e63d5799f2ef259e66d1ba425d4eec4cd88d445651d4ebf4096.lean/declarations/measure-sigmafinitesetge-le--72ef66f0c991c18b47066c03.md) | 141 | `result-track:72ef66f0c991c18b47066c03ca81ddeb50e3986371fdf05874277c9cb3135a2f` |
| 9 | `lemma` | [measure_sigmaFiniteSetGE_ge](../../../../../mathematics/Analysis/MeasureTheory/Exhaustion/Variantbf9844af023e2e63d5799f2ef259e66d1ba425d4eec4cd88d445651d4ebf4096.lean/declarations/measure-sigmafinitesetge-ge--9f832b6cec556315071db021.md) | 149 | `result-track:9f832b6cec556315071db0217c9eb0a29421af7208f1140f216f088363d63482` |
| 10 | `lemma` | [tendsto_measure_sigmaFiniteSetGE](../../../../../mathematics/Analysis/MeasureTheory/Exhaustion/Variantbf9844af023e2e63d5799f2ef259e66d1ba425d4eec4cd88d445651d4ebf4096.lean/declarations/tendsto-measure-sigmafinitesetge--8690acbe32e50f7f4b7fe05c.md) | 154 | `result-track:8690acbe32e50f7f4b7fe05cdf3e6e004f45febee507dc640a997fe68fd95480` |
| 11 | `def` | [Measure.sigmaFiniteSetWRT'](../../../../../mathematics/Analysis/MeasureTheory/Exhaustion/Variantbf9844af023e2e63d5799f2ef259e66d1ba425d4eec4cd88d445651d4ebf4096.lean/declarations/measure-sigmafinitesetwrt--3f02e0d68a2e44afe30c821b.md) | 168 | `declaration-track:3f02e0d68a2e44afe30c821b59ca942abe06aa9eed1375f247a28659baa4e651` |
| 12 | `lemma` | [measurableSet_sigmaFiniteSetWRT'](../../../../../mathematics/Analysis/MeasureTheory/Exhaustion/Variantbf9844af023e2e63d5799f2ef259e66d1ba425d4eec4cd88d445651d4ebf4096.lean/declarations/measurableset-sigmafinitesetwrt--900bf6dd97ba0f97922db37f.md) | 171 | `result-track:900bf6dd97ba0f97922db37f97f8f1bf681a347b442d94128fb3ed64cf451c14` |
| 13 | `lemma` | [sigmaFinite_restrict_sigmaFiniteSetWRT'](../../../../../mathematics/Analysis/MeasureTheory/Exhaustion/Variantbf9844af023e2e63d5799f2ef259e66d1ba425d4eec4cd88d445651d4ebf4096.lean/declarations/sigmafinite-restrict-sigmafinitesetwrt--11a3244aa69aa5f80a24bf68.md) | 175 | `result-track:11a3244aa69aa5f80a24bf683061500d0b4730ef9e708cf0debd663252be2a9e` |
| 14 | `lemma` | [measure_sigmaFiniteSetWRT'](../../../../../mathematics/Analysis/MeasureTheory/Exhaustion/Variantbf9844af023e2e63d5799f2ef259e66d1ba425d4eec4cd88d445651d4ebf4096.lean/declarations/measure-sigmafinitesetwrt--c50d3ecb3f4043c1fd2800db.md) | 209 | `result-track:c50d3ecb3f4043c1fd2800dbd8c9ed94001f4ca6d8f617cb84a92ed32f1e5cff` |
| 15 | `lemma` | [measure_eq_top_of_subset_compl_sigmaFiniteSetWRT'_of_measurableSet](../../../../../mathematics/Analysis/MeasureTheory/Exhaustion/Variantbf9844af023e2e63d5799f2ef259e66d1ba425d4eec4cd88d445651d4ebf4096.lean/declarations/measure-eq-top-of-subset-compl-sigmafinitesetwrt-of-measurableset--a98cde19cc055e27d541b6e3.md) | 221 | `result-track:a98cde19cc055e27d541b6e33d22a62f53b297ace46416aa253dcd9d0a70e194` |
| 16 | `lemma` | [measure_eq_top_of_subset_compl_sigmaFiniteSetWRT'](../../../../../mathematics/Analysis/MeasureTheory/Exhaustion/Variantbf9844af023e2e63d5799f2ef259e66d1ba425d4eec4cd88d445651d4ebf4096.lean/declarations/measure-eq-top-of-subset-compl-sigmafinitesetwrt--6b98580a5220857581bedfa5.md) | 244 | `result-track:6b98580a5220857581bedfa59b242351ac4d8584fb4416176ed2462aebd76ec5` |
| 17 | `lemma` | [measure_eq_top_of_subset_compl_sigmaFiniteSetWRT](../../../../../mathematics/Analysis/MeasureTheory/Exhaustion/Variantbf9844af023e2e63d5799f2ef259e66d1ba425d4eec4cd88d445651d4ebf4096.lean/declarations/measure-eq-top-of-subset-compl-sigmafinitesetwrt--22ee02102fdc03323a2a2c81.md) | 265 | `result-track:22ee02102fdc03323a2a2c8164e667e893f8719fd4428f39da7bc5307e7032f1` |
| 18 | `lemma` | [restrict_compl_sigmaFiniteSetWRT](../../../../../mathematics/Analysis/MeasureTheory/Exhaustion/Variantbf9844af023e2e63d5799f2ef259e66d1ba425d4eec4cd88d445651d4ebf4096.lean/declarations/restrict-compl-sigmafinitesetwrt--5fe6928d86713af36bd75cc0.md) | 278 | `result-track:5fe6928d86713af36bd75cc0c03be535b04ea573dc2af3f7ac2e56ca0cccd3f2` |
| 19 | `lemma` | [measure_compl_sigmaFiniteSetWRT](../../../../../mathematics/Analysis/MeasureTheory/Exhaustion/Variantbf9844af023e2e63d5799f2ef259e66d1ba425d4eec4cd88d445651d4ebf4096.lean/declarations/measure-compl-sigmafinitesetwrt--06cf5e1398e20d7e921e6f4c.md) | 293 | `result-track:06cf5e1398e20d7e921e6f4c8412bb05921059437f0fb18396fde3f9fe55d466` |
| 20 | `def` | [Measure.sigmaFiniteSet](../../../../../mathematics/Analysis/MeasureTheory/Exhaustion/Variantbf9844af023e2e63d5799f2ef259e66d1ba425d4eec4cd88d445651d4ebf4096.lean/declarations/measure-sigmafiniteset--2009504bd8ad6f67fb0a512c.md) | 315 | `declaration-track:2009504bd8ad6f67fb0a512cfc03c53ea9cce68dd41c194730d040d1013007d5` |
| 21 | `lemma` | [measurableSet_sigmaFiniteSet](../../../../../mathematics/Analysis/MeasureTheory/Exhaustion/Variantbf9844af023e2e63d5799f2ef259e66d1ba425d4eec4cd88d445651d4ebf4096.lean/declarations/measurableset-sigmafiniteset--af8a49e988a1d1e435411187.md) | 318 | `result-track:af8a49e988a1d1e435411187870b16e41edcbf2259b70363597ab60ff0b45aa3` |
| 22 | `lemma` | [measure_eq_zero_or_top_of_subset_compl_sigmaFiniteSet](../../../../../mathematics/Analysis/MeasureTheory/Exhaustion/Variantbf9844af023e2e63d5799f2ef259e66d1ba425d4eec4cd88d445651d4ebf4096.lean/declarations/measure-eq-zero-or-top-of-subset-compl-sigmafiniteset--ecda0fa0f9bbb6b1523de3b5.md) | 321 | `result-track:ecda0fa0f9bbb6b1523de3b530417d7dc639a6d503fc6fa5680fec7071f40e72` |
| 23 | `lemma` | [restrict_compl_sigmaFiniteSet_eq_zero_or_top](../../../../../mathematics/Analysis/MeasureTheory/Exhaustion/Variantbf9844af023e2e63d5799f2ef259e66d1ba425d4eec4cd88d445651d4ebf4096.lean/declarations/restrict-compl-sigmafiniteset-eq-zero-or-top--8f27e4976b6b8779eb46a648.md) | 328 | `result-track:8f27e4976b6b8779eb46a648cca7de0df6b0e9960d15d3c327105b265686fae0` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Exhaustion/Variantbf9844af023e2e63d5799f2ef259e66d1ba425d4eec4cd88d445651d4ebf4096.lean/declarations/instance--2001d45972edeae258be7483.md) | 334 | `declaration-track:2001d45972edeae258be7483dc07d16ef148a510b0eae81bd4414a31a3b31bc2` |
| 25 | `lemma` | [sigmaFinite_of_measure_compl_sigmaFiniteSet_eq_zero](../../../../../mathematics/Analysis/MeasureTheory/Exhaustion/Variantbf9844af023e2e63d5799f2ef259e66d1ba425d4eec4cd88d445651d4ebf4096.lean/declarations/sigmafinite-of-measure-compl-sigmafiniteset-eq-zero--14875ab9b773b999811c83bb.md) | 338 | `result-track:14875ab9b773b999811c83bb700e76c59080581c5fc2098b997d5770ebdf61b5` |
| 26 | `lemma` | [measure_compl_sigmaFiniteSet](../../../../../mathematics/Analysis/MeasureTheory/Exhaustion/Variantbf9844af023e2e63d5799f2ef259e66d1ba425d4eec4cd88d445651d4ebf4096.lean/declarations/measure-compl-sigmafiniteset--e98a55a7a5e0d4706f701dbe.md) | 345 | `result-track:e98a55a7a5e0d4706f701dbeeaedeec8e6d82ece438105665b1ba2019c8df1e7` |
| 27 | `lemma` | [measure_compl_sigmaFiniteSet_eq_zero_iff_sigmaFinite](../../../../../mathematics/Analysis/MeasureTheory/Exhaustion/Variantbf9844af023e2e63d5799f2ef259e66d1ba425d4eec4cd88d445651d4ebf4096.lean/declarations/measure-compl-sigmafiniteset-eq-zero-iff-sigmafinite--e563e09355177dbd4625bc97.md) | 349 | `result-track:e563e09355177dbd4625bc972723baca9e3853affa546681afa55093d1e51fea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
