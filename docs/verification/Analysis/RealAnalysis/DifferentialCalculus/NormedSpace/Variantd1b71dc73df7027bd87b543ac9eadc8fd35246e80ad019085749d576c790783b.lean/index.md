# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.NormedSpace.Variantd1b71dc73df7027bd87b543ac9eadc8fd35246e80ad019085749d576c790783b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5e76cac25954566e01bca128ed8a491ea3ddc38f",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantd1b71dc73df7027bd87b543ac9eadc8fd35246e80ad019085749d576c790783b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantd1b71dc73df7027bd87b543ac9eadc8fd35246e80ad019085749d576c790783b.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantd1b71dc73df7027bd87b543ac9eadc8fd35246e80ad019085749d576c790783b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5e76cac25954566e01bca128ed8a491ea3ddc38f`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantd1b71dc73df7027bd87b543ac9eadc8fd35246e80ad019085749d576c790783b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantd1b71dc73df7027bd87b543ac9eadc8fd35246e80ad019085749d576c790783b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.NormedSpace.ConformalLinearMap` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Add` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ConformalAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantd1b71dc73df7027bd87b543ac9eadc8fd35246e80ad019085749d576c790783b.lean/declarations/conformalat--3b6ec9c309b74713b82502b8.md) | 61 | `declaration-track:3b6ec9c309b74713b82502b8a2582ca9c468e7b03711bf8702c640bc3d424234` |
| 2 | `theorem` | [conformalAt_id](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantd1b71dc73df7027bd87b543ac9eadc8fd35246e80ad019085749d576c790783b.lean/declarations/conformalat-id--6a1bed60d766936bc82cb2b8.md) | 64 | `result-track:6a1bed60d766936bc82cb2b8b1ec6b4acdd8e40178b37d6956ca61059d328afa` |
| 3 | `theorem` | [conformalAt_const_smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantd1b71dc73df7027bd87b543ac9eadc8fd35246e80ad019085749d576c790783b.lean/declarations/conformalat-const-smul--b4d16c4fd68c276285322a2d.md) | 67 | `result-track:b4d16c4fd68c276285322a2d6c59718c9c88a1a7ce31bcded78b7a65d3d0ca40` |
| 4 | `theorem` | [Subsingleton.conformalAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantd1b71dc73df7027bd87b543ac9eadc8fd35246e80ad019085749d576c790783b.lean/declarations/subsingleton-conformalat--c28be8365735e510f2aa10ec.md) | 71 | `result-track:c28be8365735e510f2aa10ec0142a6a7a224ee72c2764b883b4b4c20fb5ac3a6` |
| 5 | `theorem` | [conformalAt_iff_isConformalMap_fderiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantd1b71dc73df7027bd87b543ac9eadc8fd35246e80ad019085749d576c790783b.lean/declarations/conformalat-iff-isconformalmap-fderiv--6ac4256d42a776b2c706bb53.md) | 75 | `result-track:6ac4256d42a776b2c706bb53fb3cda111fb98b33111f4fed7e90df06428989a0` |
| 6 | `theorem` | [differentiableAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantd1b71dc73df7027bd87b543ac9eadc8fd35246e80ad019085749d576c790783b.lean/declarations/differentiableat--66ed3b65287f19df19921ef7.md) | 88 | `result-track:66ed3b65287f19df19921ef7f40fb7b44e6e27e1548b0c1c0de8aae164b2dbde` |
| 7 | `theorem` | [congr](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantd1b71dc73df7027bd87b543ac9eadc8fd35246e80ad019085749d576c790783b.lean/declarations/congr--3ee5e44782e18beb1abb8d6d.md) | 92 | `result-track:3ee5e44782e18beb1abb8d6d1862613ab1ddcef4c5aa60a5711d53a1069cee14` |
| 8 | `theorem` | [comp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantd1b71dc73df7027bd87b543ac9eadc8fd35246e80ad019085749d576c790783b.lean/declarations/comp--4976c9450b8fe678c8d4d999.md) | 97 | `result-track:4976c9450b8fe678c8d4d9997c3c8035e05e8edd7d7b8219c2149462ccd7d7ae` |
| 9 | `theorem` | [const_smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantd1b71dc73df7027bd87b543ac9eadc8fd35246e80ad019085749d576c790783b.lean/declarations/const-smul--05aade5af4e9cd99e2c4f2dc.md) | 103 | `result-track:05aade5af4e9cd99e2c4f2dcb6902bbcfef0b5e313cdd0c6ee70947ad76d6963` |
| 10 | `def` | [Conformal](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantd1b71dc73df7027bd87b543ac9eadc8fd35246e80ad019085749d576c790783b.lean/declarations/conformal--ca81561d4c7e52e965230514.md) | 114 | `declaration-track:ca81561d4c7e52e9652305142f59e65140410806374b96aa9bcc6a0814c19d09` |
| 11 | `theorem` | [conformal_id](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantd1b71dc73df7027bd87b543ac9eadc8fd35246e80ad019085749d576c790783b.lean/declarations/conformal-id--ab6c2f54824e2045279b54bd.md) | 117 | `result-track:ab6c2f54824e2045279b54bd385f54e582cca9904738da563b74e18b6a8004c2` |
| 12 | `theorem` | [conformal_const_smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantd1b71dc73df7027bd87b543ac9eadc8fd35246e80ad019085749d576c790783b.lean/declarations/conformal-const-smul--adc0ee307d22f6abb79719c5.md) | 119 | `result-track:adc0ee307d22f6abb79719c5460a950b27456a2b6eb7812200e92f523a589ce9` |
| 13 | `theorem` | [conformalAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantd1b71dc73df7027bd87b543ac9eadc8fd35246e80ad019085749d576c790783b.lean/declarations/conformalat--8cfc48214ab573b2181f86fa.md) | 124 | `result-track:8cfc48214ab573b2181f86fa836d2f2f03c5418d635b0b08ed8cf2564a14872c` |
| 14 | `theorem` | [differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantd1b71dc73df7027bd87b543ac9eadc8fd35246e80ad019085749d576c790783b.lean/declarations/differentiable--981910ed9dd564a2d2ce4439.md) | 127 | `result-track:981910ed9dd564a2d2ce4439be525fb787522559a6d7352c6d74ebfa407e0ec6` |
| 15 | `theorem` | [comp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantd1b71dc73df7027bd87b543ac9eadc8fd35246e80ad019085749d576c790783b.lean/declarations/comp--cfec53e1fa2ec61112d61b27.md) | 130 | `result-track:cfec53e1fa2ec61112d61b27eb65d674a9db9481ded5e061c4b284981127a91f` |
| 16 | `theorem` | [const_smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantd1b71dc73df7027bd87b543ac9eadc8fd35246e80ad019085749d576c790783b.lean/declarations/const-smul--2ae0f05ad30648bc72b7b762.md) | 133 | `result-track:2ae0f05ad30648bc72b7b762f521d59a37c4cf14acca6d4c3111760e7b88d200` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
