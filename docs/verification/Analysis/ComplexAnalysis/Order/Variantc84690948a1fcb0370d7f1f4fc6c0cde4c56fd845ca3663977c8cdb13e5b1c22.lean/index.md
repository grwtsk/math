# Verification target: GRWTSK.Analysis.ComplexAnalysis.Order.Variantc84690948a1fcb0370d7f1f4fc6c0cde4c56fd845ca3663977c8cdb13e5b1c22

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9a65baa2d92421feada608b4a18a1c60c795db56",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/Order/Variantc84690948a1fcb0370d7f1f4fc6c0cde4c56fd845ca3663977c8cdb13e5b1c22.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variantc84690948a1fcb0370d7f1f4fc6c0cde4c56fd845ca3663977c8cdb13e5b1c22.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variantc84690948a1fcb0370d7f1f4fc6c0cde4c56fd845ca3663977c8cdb13e5b1c22.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9a65baa2d92421feada608b4a18a1c60c795db56`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/Order/Variantc84690948a1fcb0370d7f1f4fc6c0cde4c56fd845ca3663977c8cdb13e5b1c22.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/Order/Variantc84690948a1fcb0370d7f1f4fc6c0cde4c56fd845ca3663977c8cdb13e5b1c22.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Analytic.IsolatedZeros` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [analyticOrderAt](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variantc84690948a1fcb0370d7f1f4fc6c0cde4c56fd845ca3663977c8cdb13e5b1c22.lean/declarations/analyticorderat--bca32807e76aaeaaaa2be4ca.md) | 41 | `declaration-track:bca32807e76aaeaaaa2be4ca1293f4b00080c6e175ca5b355184e2f1da1fe31c` |
| 2 | `def` | [analyticOrderNatAt](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variantc84690948a1fcb0370d7f1f4fc6c0cde4c56fd845ca3663977c8cdb13e5b1c22.lean/declarations/analyticordernatat--7905ec27bd3604496cddc0eb.md) | 57 | `declaration-track:7905ec27bd3604496cddc0ebdfe3c6c39411e681987f3ce2bb5be29bc8d456fe` |
| 3 | `lemma` | [analyticOrderAt_of_not_analyticAt](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variantc84690948a1fcb0370d7f1f4fc6c0cde4c56fd845ca3663977c8cdb13e5b1c22.lean/declarations/analyticorderat-of-not-analyticat--47cdbf458fe3208a06aa73e5.md) | 60 | `result-track:47cdbf458fe3208a06aa73e57133d069dfdbe450bbe3d21957b17f3a2f92200d` |
| 4 | `lemma` | [analyticOrderNatAt_of_not_analyticAt](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variantc84690948a1fcb0370d7f1f4fc6c0cde4c56fd845ca3663977c8cdb13e5b1c22.lean/declarations/analyticordernatat-of-not-analyticat--2de121009b77fed16be12593.md) | 64 | `result-track:2de121009b77fed16be12593e4ac8a3357741d575fdebd7025ae6db7f52ff6a7` |
| 5 | `lemma` | [Nat.cast_analyticOrderNatAt](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variantc84690948a1fcb0370d7f1f4fc6c0cde4c56fd845ca3663977c8cdb13e5b1c22.lean/declarations/nat-cast-analyticordernatat--a89d126bbfa6b80d5de21fe3.md) | 67 | `result-track:a89d126bbfa6b80d5de21fe3d5e28983e2a1671e1131fe224ea8c3c47cbe5958` |
| 6 | `lemma` | [analyticOrderAt_eq_top](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variantc84690948a1fcb0370d7f1f4fc6c0cde4c56fd845ca3663977c8cdb13e5b1c22.lean/declarations/analyticorderat-eq-top--f68776c3e91186ae61d76bb9.md) | 71 | `result-track:f68776c3e91186ae61d76bb982072ecf17b163525e5a239bd98f610eae050ab3` |
| 7 | `lemma` | [AnalyticAt.analyticOrderAt_eq_natCast](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variantc84690948a1fcb0370d7f1f4fc6c0cde4c56fd845ca3663977c8cdb13e5b1c22.lean/declarations/analyticat-analyticorderat-eq-natcast--0d152a9517d1b2540e8cc752.md) | 79 | `result-track:0d152a9517d1b2540e8cc75240aa8ef91eb12511708a54fb8d79b37cb3f5f8fa` |
| 8 | `lemma` | [AnalyticAt.analyticOrderNatAt_eq_iff](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variantc84690948a1fcb0370d7f1f4fc6c0cde4c56fd845ca3663977c8cdb13e5b1c22.lean/declarations/analyticat-analyticordernatat-eq-iff--91882c7f0ea115d6f2ce8572.md) | 97 | `result-track:91882c7f0ea115d6f2ce857267064b884de72519f909eca275a58c2006297b6f` |
| 9 | `lemma` | [AnalyticAt.analyticOrderAt_ne_top](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variantc84690948a1fcb0370d7f1f4fc6c0cde4c56fd845ca3663977c8cdb13e5b1c22.lean/declarations/analyticat-analyticorderat-ne-top--06bc4db575678c37a1cc53d2.md) | 109 | `result-track:06bc4db575678c37a1cc53d291f00c893956a78b4f077aee38549fdb3cbcad15` |
| 10 | `lemma` | [analyticOrderAt_eq_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variantc84690948a1fcb0370d7f1f4fc6c0cde4c56fd845ca3663977c8cdb13e5b1c22.lean/declarations/analyticorderat-eq-zero--bfc4754d425fdb60e07f2dd5.md) | 122 | `result-track:bfc4754d425fdb60e07f2dd5778528307f726bccd68eedc70eaf1b4064eab8a0` |
| 11 | `lemma` | [analyticOrderAt_ne_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variantc84690948a1fcb0370d7f1f4fc6c0cde4c56fd845ca3663977c8cdb13e5b1c22.lean/declarations/analyticorderat-ne-zero--59b0f8290edc7a1d37fe7935.md) | 131 | `result-track:59b0f8290edc7a1d37fe7935e7925c88b9618707695e31540cd5166478249d89` |
| 12 | `lemma` | [AnalyticAt.analyticOrderAt_eq_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variantc84690948a1fcb0370d7f1f4fc6c0cde4c56fd845ca3663977c8cdb13e5b1c22.lean/declarations/analyticat-analyticorderat-eq-zero--6b3ec266015b8728906f6e43.md) | 135 | `result-track:6b3ec266015b8728906f6e4375ec3b5862f50283aac0fc156f2f066ae243d2fd` |
| 13 | `lemma` | [AnalyticAt.analyticOrderAt_ne_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variantc84690948a1fcb0370d7f1f4fc6c0cde4c56fd845ca3663977c8cdb13e5b1c22.lean/declarations/analyticat-analyticorderat-ne-zero--8b9cbf8df00cbefd794fca3a.md) | 142 | `result-track:8b9cbf8df00cbefd794fca3ac63bf0f073bed7bb59e5d78364540fbc2aa663ab` |
| 14 | `lemma` | [apply_eq_zero_of_analyticOrderAt_ne_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variantc84690948a1fcb0370d7f1f4fc6c0cde4c56fd845ca3663977c8cdb13e5b1c22.lean/declarations/apply-eq-zero-of-analyticorderat-ne-zero--edb3d52756fa05da873566a7.md) | 146 | `result-track:edb3d52756fa05da873566a7b4747dd9423127def13f38e9d42b3da975d156ed` |
| 15 | `lemma` | [apply_eq_zero_of_analyticOrderNatAt_ne_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variantc84690948a1fcb0370d7f1f4fc6c0cde4c56fd845ca3663977c8cdb13e5b1c22.lean/declarations/apply-eq-zero-of-analyticordernatat-ne-zero--7770f53399f11f655fa02b62.md) | 151 | `result-track:7770f53399f11f655fa02b62825d7b0c018fa80b9bcb90c06be7d741d60996f9` |
| 16 | `lemma` | [natCast_le_analyticOrderAt](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variantc84690948a1fcb0370d7f1f4fc6c0cde4c56fd845ca3663977c8cdb13e5b1c22.lean/declarations/natcast-le-analyticorderat--d74e32e08a33c0741ba093bc.md) | 160 | `result-track:d74e32e08a33c0741ba093bc69f5306f06871f1431722372b18b4eccbb25d1da` |
| 17 | `lemma` | [analyticOrderAt_congr](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variantc84690948a1fcb0370d7f1f4fc6c0cde4c56fd845ca3663977c8cdb13e5b1c22.lean/declarations/analyticorderat-congr--8f19accf7a6513539028b7cc.md) | 185 | `result-track:8f19accf7a6513539028b7ccfaff4d368ab552ebac4fe3ba544aa4e792f83fe4` |
| 18 | `lemma` | [analyticOrderAt_neg](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variantc84690948a1fcb0370d7f1f4fc6c0cde4c56fd845ca3663977c8cdb13e5b1c22.lean/declarations/analyticorderat-neg--c196d7c7c90ae1a65672050b.md) | 197 | `result-track:c196d7c7c90ae1a65672050b8df6ffe274020c6a97abc29fc7a45f72337fd3d2` |
| 19 | `theorem` | [le_analyticOrderAt_add](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variantc84690948a1fcb0370d7f1f4fc6c0cde4c56fd845ca3663977c8cdb13e5b1c22.lean/declarations/le-analyticorderat-add--b2a076e04b70eb639588231b.md) | 206 | `result-track:b2a076e04b70eb639588231b1c9ab85f127f8021bd7f61fef1b51cc1ec6893b6` |
| 20 | `lemma` | [le_analyticOrderAt_sub](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variantc84690948a1fcb0370d7f1f4fc6c0cde4c56fd845ca3663977c8cdb13e5b1c22.lean/declarations/le-analyticorderat-sub--898a532def433756003dcafe.md) | 219 | `result-track:898a532def433756003dcafe10a2baa3ee79dcfe6dfae599a756b214d78167fd` |
| 21 | `lemma` | [analyticOrderAt_add_eq_left_of_lt](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variantc84690948a1fcb0370d7f1f4fc6c0cde4c56fd845ca3663977c8cdb13e5b1c22.lean/declarations/analyticorderat-add-eq-left-of-lt--f1f2f6342f570f054b97a407.md) | 223 | `result-track:f1f2f6342f570f054b97a407502e1bc7affadaff5e4ed93c953e6bbb7eb22372` |
| 22 | `lemma` | [analyticOrderAt_add_eq_right_of_lt](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variantc84690948a1fcb0370d7f1f4fc6c0cde4c56fd845ca3663977c8cdb13e5b1c22.lean/declarations/analyticorderat-add-eq-right-of-lt--82311e4fcf62c4f9549b8c11.md) | 228 | `result-track:82311e4fcf62c4f9549b8c11a577128d2288bfea4eb6cfff629975bdc675212d` |
| 23 | `lemma` | [analyticOrderAt_add_of_ne](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variantc84690948a1fcb0370d7f1f4fc6c0cde4c56fd845ca3663977c8cdb13e5b1c22.lean/declarations/analyticorderat-add-of-ne--2e9d63bffc4bb36cd585142b.md) | 236 | `result-track:2e9d63bffc4bb36cd585142bbc32863e8a4cf91cfcb47e5d4b0e68db78e72581` |
| 24 | `lemma` | [analyticOrderAt_smul_eq_top_of_left](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variantc84690948a1fcb0370d7f1f4fc6c0cde4c56fd845ca3663977c8cdb13e5b1c22.lean/declarations/analyticorderat-smul-eq-top-of-left--04f9c6cbd2d316ce453294c1.md) | 245 | `result-track:04f9c6cbd2d316ce453294c18bf30962a3fdc0a290abdb376cd0c011e5fdcda2` |
| 25 | `lemma` | [analyticOrderAt_smul_eq_top_of_right](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variantc84690948a1fcb0370d7f1f4fc6c0cde4c56fd845ca3663977c8cdb13e5b1c22.lean/declarations/analyticorderat-smul-eq-top-of-right--079309a66fffe2318214d2c1.md) | 251 | `result-track:079309a66fffe2318214d2c176415533ee6e3d5f5ed01ef2d4998a9e34928300` |
| 26 | `lemma` | [analyticOrderAt_smul](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variantc84690948a1fcb0370d7f1f4fc6c0cde4c56fd845ca3663977c8cdb13e5b1c22.lean/declarations/analyticorderat-smul--f979fc86ae926f666c65c36e.md) | 258 | `result-track:f979fc86ae926f666c65c36eddbf342e1aa12196edba6f52ea5a4ce5413b178f` |
| 27 | `lemma` | [analyticOrderAt_centeredMonomial](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variantc84690948a1fcb0370d7f1f4fc6c0cde4c56fd845ca3663977c8cdb13e5b1c22.lean/declarations/analyticorderat-centeredmonomial--c247fec61d68d7d011efc045.md) | 286 | `result-track:c247fec61d68d7d011efc0457048593642799fdcb3607fde88cfc6e4c58b587f` |
| 28 | `lemma` | [analyticOrderAt_mul_eq_top_of_left](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variantc84690948a1fcb0370d7f1f4fc6c0cde4c56fd845ca3663977c8cdb13e5b1c22.lean/declarations/analyticorderat-mul-eq-top-of-left--f011e35e53e799e43c7d78c5.md) | 297 | `result-track:f011e35e53e799e43c7d78c57574873ce0205146cf283aace0a5500de54fd2d4` |
| 29 | `lemma` | [analyticOrderAt_mul_eq_top_of_right](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variantc84690948a1fcb0370d7f1f4fc6c0cde4c56fd845ca3663977c8cdb13e5b1c22.lean/declarations/analyticorderat-mul-eq-top-of-right--111d8c05aa49971adafcd164.md) | 303 | `result-track:111d8c05aa49971adafcd164d39f24baf7f415006d1c76cea70dbb45b909c38b` |
| 30 | `theorem` | [analyticOrderAt_mul](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variantc84690948a1fcb0370d7f1f4fc6c0cde4c56fd845ca3663977c8cdb13e5b1c22.lean/declarations/analyticorderat-mul--b68557e37544a867aa9d5fe4.md) | 307 | `result-track:b68557e37544a867aa9d5fe4c279ac690a38ce4d939532a8b15c3723724cdd7b` |
| 31 | `theorem` | [analyticOrderNatAt_mul](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variantc84690948a1fcb0370d7f1f4fc6c0cde4c56fd845ca3663977c8cdb13e5b1c22.lean/declarations/analyticordernatat-mul--e503270ac61508d01dcbda07.md) | 314 | `result-track:e503270ac61508d01dcbda07d25f097cab2a3684de004daf63543be36d279bfe` |
| 32 | `theorem` | [analyticOrderAt_pow](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variantc84690948a1fcb0370d7f1f4fc6c0cde4c56fd845ca3663977c8cdb13e5b1c22.lean/declarations/analyticorderat-pow--71963ff2818ce0ad52d05553.md) | 320 | `result-track:71963ff2818ce0ad52d05553205ca034b64bdb2c96360978440d57b90aeb3909` |
| 33 | `theorem` | [analyticOrderNatAt_pow](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variantc84690948a1fcb0370d7f1f4fc6c0cde4c56fd845ca3663977c8cdb13e5b1c22.lean/declarations/analyticordernatat-pow--2ee98a50f94cd7614ab2c2e8.md) | 328 | `result-track:2ee98a50f94cd7614ab2c2e84a516c89a37a507ebfcecbb680757285ba2d2bd8` |
| 34 | `theorem` | [isClopen_setOf_analyticOrderAt_eq_top](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variantc84690948a1fcb0370d7f1f4fc6c0cde4c56fd845ca3663977c8cdb13e5b1c22.lean/declarations/isclopen-setof-analyticorderat-eq-top--69ada683bc16eca4c98288b6.md) | 344 | `result-track:69ada683bc16eca4c98288b6a397374a5d286b31c6eb03d6d258307781063b73` |
| 35 | `theorem` | [exists_analyticOrderAt_ne_top_iff_forall](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variantc84690948a1fcb0370d7f1f4fc6c0cde4c56fd845ca3663977c8cdb13e5b1c22.lean/declarations/exists-analyticorderat-ne-top-iff-forall--5674c798554fbfeb02e9f3d4.md) | 387 | `result-track:5674c798554fbfeb02e9f3d4c818066ce06799c4771ad505cdbf22008efdfefb` |
| 36 | `theorem` | [analyticOrderAt_ne_top_of_isPreconnected](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variantc84690948a1fcb0370d7f1f4fc6c0cde4c56fd845ca3663977c8cdb13e5b1c22.lean/declarations/analyticorderat-ne-top-of-ispreconnected--4f4a8d4f658b15f17d1fd1e8.md) | 397 | `result-track:4f4a8d4f658b15f17d1fd1e815a64bda165b388f67d3cb81b25abdbc9a76cb07` |
| 37 | `theorem` | [codiscrete_setOf_analyticOrderAt_eq_zero_or_top](../../../../../mathematics/Analysis/ComplexAnalysis/Order/Variantc84690948a1fcb0370d7f1f4fc6c0cde4c56fd845ca3663977c8cdb13e5b1c22.lean/declarations/codiscrete-setof-analyticorderat-eq-zero-or-top--bddf9b32ae45a16f3fefe339.md) | 404 | `result-track:bddf9b32ae45a16f3fefe3396d719285ee7a1582fc45f67b4b42abe2269323af` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
