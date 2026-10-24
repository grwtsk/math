# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Taylor.Variant2883142ade7b6da2c9b39d7a6bdda82aeda96993988aab803c086d6c393b6e1e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "89d1aaeaac5c145b051f05b0f9986d60868db26f",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant2883142ade7b6da2c9b39d7a6bdda82aeda96993988aab803c086d6c393b6e1e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant2883142ade7b6da2c9b39d7a6bdda82aeda96993988aab803c086d6c393b6e1e.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant2883142ade7b6da2c9b39d7a6bdda82aeda96993988aab803c086d6c393b6e1e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `89d1aaeaac5c145b051f05b0f9986d60868db26f`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant2883142ade7b6da2c9b39d7a6bdda82aeda96993988aab803c086d6c393b6e1e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant2883142ade7b6da2c9b39d7a6bdda82aeda96993988aab803c086d6c393b6e1e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Pow` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.IteratedDeriv` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.MeanValue` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.Module` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [taylorCoeffWithin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant2883142ade7b6da2c9b39d7a6bdda82aeda96993988aab803c086d6c393b6e1e.lean/declarations/taylorcoeffwithin--6e9457e89d1255a17868bb74.md) | 63 | `declaration-track:6e9457e89d1255a17868bb74c797875e45807c55ce8e13c0beb198e40dfd1822` |
| 2 | `def` | [taylorWithin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant2883142ade7b6da2c9b39d7a6bdda82aeda96993988aab803c086d6c393b6e1e.lean/declarations/taylorwithin--ee86e52b05c46fbf09472596.md) | 72 | `declaration-track:ee86e52b05c46fbf094725964077df1381a82ca8dffac194963e89ff71e903c9` |
| 3 | `def` | [taylorWithinEval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant2883142ade7b6da2c9b39d7a6bdda82aeda96993988aab803c086d6c393b6e1e.lean/declarations/taylorwithineval--a50d48d4005019265bf1e33e.md) | 79 | `declaration-track:a50d48d4005019265bf1e33e6f5d1e60964e575f96dbf000fb421ffd2257f5e5` |
| 4 | `theorem` | [taylorWithin_succ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant2883142ade7b6da2c9b39d7a6bdda82aeda96993988aab803c086d6c393b6e1e.lean/declarations/taylorwithin-succ--d06f180b05c66af706a5d1da.md) | 83 | `result-track:d06f180b05c66af706a5d1dac2e19dcbb44c6463e709f9a4c02b2f6a283ca830` |
| 5 | `theorem` | [taylorWithinEval_succ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant2883142ade7b6da2c9b39d7a6bdda82aeda96993988aab803c086d6c393b6e1e.lean/declarations/taylorwithineval-succ--f52efce45b6d3c905808029a.md) | 92 | `result-track:f52efce45b6d3c905808029ad7cb1136c25a506365d006cf72e89ec208c9ffe0` |
| 6 | `theorem` | [taylor_within_zero_eval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant2883142ade7b6da2c9b39d7a6bdda82aeda96993988aab803c086d6c393b6e1e.lean/declarations/taylor-within-zero-eval--82abad85b5343e9f37166d08.md) | 106 | `result-track:82abad85b5343e9f37166d086de8919fb80fbbcc98d36c4aee67ae3907f92c1b` |
| 7 | `theorem` | [taylorWithinEval_self](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant2883142ade7b6da2c9b39d7a6bdda82aeda96993988aab803c086d6c393b6e1e.lean/declarations/taylorwithineval-self--b72090a2bb13b30a8b4a3048.md) | 116 | `result-track:b72090a2bb13b30a8b4a3048968c54dfef46f143ee76c8fbfda97a1de97b156a` |
| 8 | `theorem` | [taylor_within_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant2883142ade7b6da2c9b39d7a6bdda82aeda96993988aab803c086d6c393b6e1e.lean/declarations/taylor-within-apply--e6cb3d063588fb5ae67d2db8.md) | 123 | `result-track:e6cb3d063588fb5ae67d2db8a7ab2c7be67f1f6714f665dd29792100cca75092` |
| 9 | `theorem` | [continuousOn_taylorWithinEval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant2883142ade7b6da2c9b39d7a6bdda82aeda96993988aab803c086d6c393b6e1e.lean/declarations/continuouson-taylorwithineval--14ef0fe955b6ac7eaa742fff.md) | 134 | `result-track:14ef0fe955b6ac7eaa742fff44bcdd9f668058476d692148f3086a9b7b378dd7` |
| 10 | `theorem` | [monomial_has_deriv_aux](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant2883142ade7b6da2c9b39d7a6bdda82aeda96993988aab803c086d6c393b6e1e.lean/declarations/monomial-has-deriv-aux--a8f458705d4d2ff50f732704.md) | 149 | `result-track:a8f458705d4d2ff50f732704decac3e2709221f51f6ba24dbb3f8563a2c89635` |
| 11 | `theorem` | [hasDerivWithinAt_taylor_coeff_within](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant2883142ade7b6da2c9b39d7a6bdda82aeda96993988aab803c086d6c393b6e1e.lean/declarations/hasderivwithinat-taylor-coeff-within--a0c18fd4f6834a26b0db6378.md) | 157 | `result-track:a0c18fd4f6834a26b0db63788520d0ad3ce5bf24a9ceaa81a39c0962ec2065fb` |
| 12 | `theorem` | [hasDerivWithinAt_taylorWithinEval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant2883142ade7b6da2c9b39d7a6bdda82aeda96993988aab803c086d6c393b6e1e.lean/declarations/hasderivwithinat-taylorwithineval--32c0c5a4fbeae6dd48fc1c79.md) | 184 | `result-track:32c0c5a4fbeae6dd48fc1c790ececb74f7aed04ba3eccb8bbfcb18c02f44aea0` |
| 13 | `theorem` | [taylorWithinEval_hasDerivAt_Ioo](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant2883142ade7b6da2c9b39d7a6bdda82aeda96993988aab803c086d6c393b6e1e.lean/declarations/taylorwithineval-hasderivat-ioo--42cabff69f9aff4b48cf5e34.md) | 212 | `result-track:42cabff69f9aff4b48cf5e34124129d884986f5f16e081adc8defd01bae67133` |
| 14 | `theorem` | [has_deriv_within_taylorWithinEval_at_Icc](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant2883142ade7b6da2c9b39d7a6bdda82aeda96993988aab803c086d6c393b6e1e.lean/declarations/has-deriv-within-taylorwithineval-at-icc--8e8fd35cd72338fa27e2934c.md) | 226 | `result-track:8e8fd35cd72338fa27e2934cd27c09052c4d7d8a23de1d1b091e6c2eecbd65a2` |
| 15 | `theorem` | [taylor_mean_remainder](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant2883142ade7b6da2c9b39d7a6bdda82aeda96993988aab803c086d6c393b6e1e.lean/declarations/taylor-mean-remainder--c4fa243ef24e48984dd8de02.md) | 245 | `result-track:c4fa243ef24e48984dd8de022e20e54204843bc9a0f037789f8c2a0c31c99e87` |
| 16 | `theorem` | [taylor_mean_remainder_lagrange](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant2883142ade7b6da2c9b39d7a6bdda82aeda96993988aab803c086d6c393b6e1e.lean/declarations/taylor-mean-remainder-lagrange--e0c2fa55e0dc2d4df9f1ad66.md) | 274 | `result-track:e0c2fa55e0dc2d4df9f1ad6608a94c122d70aecec25db1d2c58369af803a97a2` |
| 17 | `theorem` | [taylor_mean_remainder_cauchy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant2883142ade7b6da2c9b39d7a6bdda82aeda96993988aab803c086d6c393b6e1e.lean/declarations/taylor-mean-remainder-cauchy--09b3e46263e279d8e08e4ee3.md) | 306 | `result-track:09b3e46263e279d8e08e4ee3e89c267e2bb24eb5124ed5add864d1b20e53e8d7` |
| 18 | `theorem` | [taylor_mean_remainder_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant2883142ade7b6da2c9b39d7a6bdda82aeda96993988aab803c086d6c393b6e1e.lean/declarations/taylor-mean-remainder-bound--36d51e112d5aa9abdae99490.md) | 327 | `result-track:36d51e112d5aa9abdae99490220bd71c8f925602aa56c0f23daac588a965a09b` |
| 19 | `theorem` | [exists_taylor_mean_remainder_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant2883142ade7b6da2c9b39d7a6bdda82aeda96993988aab803c086d6c393b6e1e.lean/declarations/exists-taylor-mean-remainder-bound--080e16d5a5070cafd0161f6f.md) | 370 | `result-track:080e16d5a5070cafd0161f6f8e52cdb18e1bc8b879681114b8b2c3ca80ff01b0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
