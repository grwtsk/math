# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.PVIdentity.Variantb9a930e632b6efd1fdab0ee247c24dfc1abcacd1c5a5fb43a1a743232d981f11

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "de357c34051029ec1e785dacf601e32497997d99",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/PVIdentity/Variantb9a930e632b6efd1fdab0ee247c24dfc1abcacd1c5a5fb43a1a743232d981f11.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PVIdentity/Variantb9a930e632b6efd1fdab0ee247c24dfc1abcacd1c5a5fb43a1a743232d981f11.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PVIdentity/Variantb9a930e632b6efd1fdab0ee247c24dfc1abcacd1c5a5fb43a1a743232d981f11.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `de357c34051029ec1e785dacf601e32497997d99`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/PVIdentity/Variantb9a930e632b6efd1fdab0ee247c24dfc1abcacd1c5a5fb43a1a743232d981f11.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/PVIdentity/Variantb9a930e632b6efd1fdab0ee247c24dfc1abcacd1c5a5fb43a1a743232d981f11.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Real.StarOrdered` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Gamma` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.GammaDeriv` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [integral_exp_div_neg_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PVIdentity/Variantb9a930e632b6efd1fdab0ee247c24dfc1abcacd1c5a5fb43a1a743232d981f11.lean/declarations/integral-exp-div-neg-eq--743e075c5a8242907d492651.md) | 32 | `result-track:743e075c5a8242907d492651a2b8220eee24fe6c9d456cf49ea1aace8155676e` |
| 2 | `lemma` | [integral_exp_div_split](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PVIdentity/Variantb9a930e632b6efd1fdab0ee247c24dfc1abcacd1c5a5fb43a1a743232d981f11.lean/declarations/integral-exp-div-split--f2d2ddcd048607f89ee33f9a.md) | 46 | `result-track:f2d2ddcd048607f89ee33f9a9380ad631107ac669eecd63340e4431afed62f54` |
| 3 | `lemma` | [integrableOn_one_sub_exp_neg_div](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PVIdentity/Variantb9a930e632b6efd1fdab0ee247c24dfc1abcacd1c5a5fb43a1a743232d981f11.lean/declarations/integrableon-one-sub-exp-neg-div--744732993e32e678e6336bd3.md) | 60 | `result-track:744732993e32e678e6336bd346ee29a09a19bb839f505b63097adb91b0e1ab4d` |
| 4 | `lemma` | [integrableOn_exp_neg_div_Ioi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PVIdentity/Variantb9a930e632b6efd1fdab0ee247c24dfc1abcacd1c5a5fb43a1a743232d981f11.lean/declarations/integrableon-exp-neg-div-ioi--772a97286410e17a0aaa7631.md) | 73 | `result-track:772a97286410e17a0aaa76314b7aad30a8eb1d4971f548ccb5ef2ea023981eda` |
| 5 | `lemma` | [integrableOn_exp_sub_one_div](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PVIdentity/Variantb9a930e632b6efd1fdab0ee247c24dfc1abcacd1c5a5fb43a1a743232d981f11.lean/declarations/integrableon-exp-sub-one-div--acd7c20297028c30a34e8ba1.md) | 87 | `result-track:acd7c20297028c30a34e8ba11e3b27ea052df5ea8f410118519405824da49678` |
| 6 | `lemma` | [tendsto_integral_one_sub_exp_neg_div](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PVIdentity/Variantb9a930e632b6efd1fdab0ee247c24dfc1abcacd1c5a5fb43a1a743232d981f11.lean/declarations/tendsto-integral-one-sub-exp-neg-div--2f1b4fdd0b090c3a86bae3c2.md) | 101 | `result-track:2f1b4fdd0b090c3a86bae3c2f4d6fee9efb3a3fd9d18fc162e888bb4851d40b6` |
| 7 | `lemma` | [tendsto_integral_exp_neg_div_Ioi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PVIdentity/Variantb9a930e632b6efd1fdab0ee247c24dfc1abcacd1c5a5fb43a1a743232d981f11.lean/declarations/tendsto-integral-exp-neg-div-ioi--4451f4f0f13a837e67b38033.md) | 122 | `result-track:4451f4f0f13a837e67b3803353667c27098b31133518d7f187e59a8bdd8eb70c` |
| 8 | `lemma` | [tendsto_integral_exp_sub_one_div](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PVIdentity/Variantb9a930e632b6efd1fdab0ee247c24dfc1abcacd1c5a5fb43a1a743232d981f11.lean/declarations/tendsto-integral-exp-sub-one-div--3b9283f246704acc4b86e43c.md) | 136 | `result-track:3b9283f246704acc4b86e43cb2ffdd71658caa12962e4b04cdbc4728aa456839` |
| 9 | `lemma` | [eulerMascheroni_eq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PVIdentity/Variantb9a930e632b6efd1fdab0ee247c24dfc1abcacd1c5a5fb43a1a743232d981f11.lean/declarations/eulermascheroni-eq-integral--76e61db026795e93b1907708.md) | 177 | `result-track:76e61db026795e93b19077082d9131d873789b85e05e65aab1538ed1a75804ac` |
| 10 | `lemma` | [pv_rewrite](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PVIdentity/Variantb9a930e632b6efd1fdab0ee247c24dfc1abcacd1c5a5fb43a1a743232d981f11.lean/declarations/pv-rewrite--dcf3b736a6c6a6946be49dfd.md) | 403 | `result-track:dcf3b736a6c6a6946be49dfdaf961020031b2115a0421fd0d3249f380ad79807` |
| 11 | `theorem` | [pv_exp_div_eq_gamma_add_log_add_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PVIdentity/Variantb9a930e632b6efd1fdab0ee247c24dfc1abcacd1c5a5fb43a1a743232d981f11.lean/declarations/pv-exp-div-eq-gamma-add-log-add-integral--c2f65706cc22b62bd60744f8.md) | 437 | `result-track:c2f65706cc22b62bd60744f8fcb97389a0d867d7fb6201f4f21aa860c502690d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
