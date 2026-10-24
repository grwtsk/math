# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Basic.Variant1b5560a25a1baa4c94e1af392fce70335c29fabbe656df919258258e6c98d202

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "79ed150f6e1196c966dbda3d0ad4c2976a4211dc",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant1b5560a25a1baa4c94e1af392fce70335c29fabbe656df919258258e6c98d202.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant1b5560a25a1baa4c94e1af392fce70335c29fabbe656df919258258e6c98d202.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant1b5560a25a1baa4c94e1af392fce70335c29fabbe656df919258258e6c98d202.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `79ed150f6e1196c966dbda3d0ad4c2976a4211dc`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant1b5560a25a1baa4c94e1af392fce70335c29fabbe656df919258258e6c98d202.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Basic/Variant1b5560a25a1baa4c94e1af392fce70335c29fabbe656df919258258e6c98d202.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Expect` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Ring.Finset` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Field.Canonical` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Nonneg.Floor` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Pointwise` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Data.NNReal.Defs` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Order.ConditionallyCompleteLattice.Group` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant1b5560a25a1baa4c94e1af392fce70335c29fabbe656df919258258e6c98d202.lean/declarations/instance--51cbff6a7a8c1903955a29cd.md) | 40 | `declaration-track:51cbff6a7a8c1903955a29cde0ef6fbbfa05f589089ed296cebb5254959b6010` |
| 2 | `theorem` | [coe_indicator](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant1b5560a25a1baa4c94e1af392fce70335c29fabbe656df919258258e6c98d202.lean/declarations/coe-indicator--6d4f5dd9f11d017a8f90d760.md) | 43 | `result-track:6d4f5dd9f11d017a8f90d760de71b57df278f3d7e5ed4d767f26790a93d0564d` |
| 3 | `theorem` | [coe_list_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant1b5560a25a1baa4c94e1af392fce70335c29fabbe656df919258258e6c98d202.lean/declarations/coe-list-sum--ec4dd10313e94a1645caf109.md) | 48 | `result-track:ec4dd10313e94a1645caf10912dc33a6bc3f1b2c9018b9aac9d55ba66961dbd5` |
| 4 | `theorem` | [coe_list_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant1b5560a25a1baa4c94e1af392fce70335c29fabbe656df919258258e6c98d202.lean/declarations/coe-list-prod--7588a381d53ae3aa3cccf8f4.md) | 52 | `result-track:7588a381d53ae3aa3cccf8f4852c317e2b3d661987baa75e0ad7c46649b62606` |
| 5 | `theorem` | [coe_multiset_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant1b5560a25a1baa4c94e1af392fce70335c29fabbe656df919258258e6c98d202.lean/declarations/coe-multiset-sum--ed7e8ba9486533f63463f3b7.md) | 56 | `result-track:ed7e8ba9486533f63463f3b7947890acc9a580778b3e4e541f7c6e166513c853` |
| 6 | `theorem` | [coe_multiset_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant1b5560a25a1baa4c94e1af392fce70335c29fabbe656df919258258e6c98d202.lean/declarations/coe-multiset-prod--2847a38cd5d7383961896ed3.md) | 60 | `result-track:2847a38cd5d7383961896ed330ae80994e899843701b072729b89c17c351ebb3` |
| 7 | `theorem` | [coe_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant1b5560a25a1baa4c94e1af392fce70335c29fabbe656df919258258e6c98d202.lean/declarations/coe-sum--b30d928aaa63f645732c8b2d.md) | 66 | `result-track:b30d928aaa63f645732c8b2d924a0345509bcad85f6939b6b1903c3dbd96a275` |
| 8 | `lemma` | [coe_expect](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant1b5560a25a1baa4c94e1af392fce70335c29fabbe656df919258258e6c98d202.lean/declarations/coe-expect--3fff09dfabcd2759399e2e9e.md) | 70 | `result-track:3fff09dfabcd2759399e2e9e664d38246d46d3b0513cb651e5ccbc75fe3e993d` |
| 9 | `theorem` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.CoeIndicator.Variantfa781be45afe7b08e24e0497439a7eaf692405ad77d6512166eaa9c17db0ef60.Real.toNNReal_sum_of_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant1b5560a25a1baa4c94e1af392fce70335c29fabbe656df919258258e6c98d202.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-coeindicator-variantfa78--a11d9084246355fef5f29f49.md) | 73 | `result-track:a11d9084246355fef5f29f4962c154979731964e03919c75c47ebf69949bc315` |
| 10 | `theorem` | [coe_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant1b5560a25a1baa4c94e1af392fce70335c29fabbe656df919258258e6c98d202.lean/declarations/coe-prod--b61ebcce32924397468a62a4.md) | 79 | `result-track:b61ebcce32924397468a62a404ff598257634f3248ed8c77eaa26b5525a76785` |
| 11 | `theorem` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.CoeIndicator.Variantfa781be45afe7b08e24e0497439a7eaf692405ad77d6512166eaa9c17db0ef60.Real.toNNReal_prod_of_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant1b5560a25a1baa4c94e1af392fce70335c29fabbe656df919258258e6c98d202.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-coeindicator-variantfa78--02d5d6f9a6901558ba07dc06.md) | 82 | `result-track:02d5d6f9a6901558ba07dc06dc07b4541ea0d1bd9b2690c67a182ccd54b8b622` |
| 12 | `theorem` | [le_iInf_add_iInf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant1b5560a25a1baa4c94e1af392fce70335c29fabbe656df919258258e6c98d202.lean/declarations/le-iinf-add-iinf--96e89e2af58eb2b14aff2fc1.md) | 87 | `result-track:96e89e2af58eb2b14aff2fc1513051a06cf046a8323cf7cb54d48db1c9ed6061` |
| 13 | `theorem` | [mul_finset_sup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant1b5560a25a1baa4c94e1af392fce70335c29fabbe656df919258258e6c98d202.lean/declarations/mul-finset-sup--11a3739a4ab4467cab7f1f63.md) | 92 | `result-track:11a3739a4ab4467cab7f1f63ee1b1beb221a2314b0a254f68a1c561955dbb9a0` |
| 14 | `theorem` | [finset_sup_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant1b5560a25a1baa4c94e1af392fce70335c29fabbe656df919258258e6c98d202.lean/declarations/finset-sup-mul--585ae98701fc55b90ef4f827.md) | 96 | `result-track:585ae98701fc55b90ef4f827b5300a3695ccb8d3af5e31e8b670dd81151e2e56` |
| 15 | `theorem` | [finset_sup_div](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant1b5560a25a1baa4c94e1af392fce70335c29fabbe656df919258258e6c98d202.lean/declarations/finset-sup-div--928c480d430eee295e4ae0a8.md) | 100 | `result-track:928c480d430eee295e4ae0a83f62fb8e9db42f0c223bbfd6b6780314767fd0e4` |
| 16 | `theorem` | [sub_div](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant1b5560a25a1baa4c94e1af392fce70335c29fabbe656df919258258e6c98d202.lean/declarations/sub-div--17cf13e868ac40235b1abffa.md) | 115 | `result-track:17cf13e868ac40235b1abffaa8adb6d18a5d3f4149b83b7e35caef70da057d89` |
| 17 | `theorem` | [iInf_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant1b5560a25a1baa4c94e1af392fce70335c29fabbe656df919258258e6c98d202.lean/declarations/iinf-mul--a035be1a43f6bee3705b4440.md) | 126 | `result-track:a035be1a43f6bee3705b44407dbb7f957d0d54dcc1cc26dfdfcdd92ee8764c8d` |
| 18 | `theorem` | [mul_iInf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant1b5560a25a1baa4c94e1af392fce70335c29fabbe656df919258258e6c98d202.lean/declarations/mul-iinf--66312102dfb148f34907782b.md) | 130 | `result-track:66312102dfb148f34907782b7ac134c7cf72755ca3bfd714617b2c339b2dea45` |
| 19 | `theorem` | [mul_iSup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant1b5560a25a1baa4c94e1af392fce70335c29fabbe656df919258258e6c98d202.lean/declarations/mul-isup--12cfe1f358f538901e367c14.md) | 133 | `result-track:12cfe1f358f538901e367c14c3e296d98497304085ab97791fc6ff6bd6a73c8b` |
| 20 | `theorem` | [iSup_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant1b5560a25a1baa4c94e1af392fce70335c29fabbe656df919258258e6c98d202.lean/declarations/isup-mul--c48c5f4a9beaf517d6385dcc.md) | 137 | `result-track:c48c5f4a9beaf517d6385dccad75971fd86611b864593203834315e6a3e9d545` |
| 21 | `theorem` | [iSup_div](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant1b5560a25a1baa4c94e1af392fce70335c29fabbe656df919258258e6c98d202.lean/declarations/isup-div--8d50487cfd22964a6bd5ce31.md) | 141 | `result-track:8d50487cfd22964a6bd5ce31debac810fa90ab2be68bf51b74c121b230a0d1b9` |
| 22 | `theorem` | [mul_iSup_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant1b5560a25a1baa4c94e1af392fce70335c29fabbe656df919258258e6c98d202.lean/declarations/mul-isup-le--2753f3eb14728057175b7e04.md) | 144 | `result-track:2753f3eb14728057175b7e0456b4ee13eb2299b26cc799ccb366114387358efe` |
| 23 | `theorem` | [iSup_mul_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant1b5560a25a1baa4c94e1af392fce70335c29fabbe656df919258258e6c98d202.lean/declarations/isup-mul-le--c42af6424957486c9129fb12.md) | 148 | `result-track:c42af6424957486c9129fb1221267348e149650ee0dc82446d18a7ea5a72cead` |
| 24 | `theorem` | [iSup_mul_iSup_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant1b5560a25a1baa4c94e1af392fce70335c29fabbe656df919258258e6c98d202.lean/declarations/isup-mul-isup-le--78e1d173942cca3bf2487d71.md) | 152 | `result-track:78e1d173942cca3bf2487d7184edf06572131bdf94f491ad08a4f090369f937a` |
| 25 | `theorem` | [le_mul_iInf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant1b5560a25a1baa4c94e1af392fce70335c29fabbe656df919258258e6c98d202.lean/declarations/le-mul-iinf--241293e1346f9840c9168136.md) | 158 | `result-track:241293e1346f9840c916813630bdc00e68d423ebd53df597ffd52b909c2c744b` |
| 26 | `theorem` | [le_iInf_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant1b5560a25a1baa4c94e1af392fce70335c29fabbe656df919258258e6c98d202.lean/declarations/le-iinf-mul--972a0d9a20230ae4cd7c54c5.md) | 162 | `result-track:972a0d9a20230ae4cd7c54c52bac479be95f9d2acf979ca01b57ba80df5c76cc` |
| 27 | `theorem` | [le_iInf_mul_iInf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant1b5560a25a1baa4c94e1af392fce70335c29fabbe656df919258258e6c98d202.lean/declarations/le-iinf-mul-iinf--8d2b1f7f27ae132e6dff4f63.md) | 166 | `result-track:8d2b1f7f27ae132e6dff4f63bc9b1755893392b2addbfca75e9a3b3c9929b6ad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
