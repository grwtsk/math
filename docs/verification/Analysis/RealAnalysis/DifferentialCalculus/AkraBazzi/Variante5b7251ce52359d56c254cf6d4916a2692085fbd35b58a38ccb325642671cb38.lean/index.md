# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.AkraBazzi.Variante5b7251ce52359d56c254cf6d4916a2692085fbd35b58a38ccb325642671cb38

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "361ff8e89f0df836a78cc9cb7908d16489756652",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variante5b7251ce52359d56c254cf6d4916a2692085fbd35b58a38ccb325642671cb38.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variante5b7251ce52359d56c254cf6d4916a2692085fbd35b58a38ccb325642671cb38.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variante5b7251ce52359d56c254cf6d4916a2692085fbd35b58a38ccb325642671cb38.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `361ff8e89f0df836a78cc9cb7908d16489756652`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variante5b7251ce52359d56c254cf6d4916a2692085fbd35b58a38ccb325642671cb38.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variante5b7251ce52359d56c254cf6d4916a2692085fbd35b58a38ccb325642671cb38.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Pow.Deriv` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [eventually_deriv_rpow_p_mul_one_sub_smoothingFn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variante5b7251ce52359d56c254cf6d4916a2692085fbd35b58a38ccb325642671cb38.lean/declarations/eventually-deriv-rpow-p-mul-one-sub-smoothingfn--59869c4dc6956734e51ce579.md) | 90 | `result-track:59869c4dc6956734e51ce57979f5dc28bdbc45a72ee53f0f595a170e8414ac55` |
| 2 | `lemma` | [eventually_deriv_rpow_p_mul_one_add_smoothingFn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variante5b7251ce52359d56c254cf6d4916a2692085fbd35b58a38ccb325642671cb38.lean/declarations/eventually-deriv-rpow-p-mul-one-add-smoothingfn--b98af59c3ca8a84d85a4c4be.md) | 107 | `result-track:b98af59c3ca8a84d85a4c4beea5934e4d6cc557dec8378233a98d746af2aa240` |
| 3 | `lemma` | [isEquivalent_deriv_rpow_p_mul_one_sub_smoothingFn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variante5b7251ce52359d56c254cf6d4916a2692085fbd35b58a38ccb325642671cb38.lean/declarations/isequivalent-deriv-rpow-p-mul-one-sub-smoothingfn--5b022b9c87886b567eb547ac.md) | 124 | `result-track:5b022b9c87886b567eb547ac33f4562b1a9b15134c2db44dcb8f3dd66336117b` |
| 4 | `lemma` | [isEquivalent_deriv_rpow_p_mul_one_add_smoothingFn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variante5b7251ce52359d56c254cf6d4916a2692085fbd35b58a38ccb325642671cb38.lean/declarations/isequivalent-deriv-rpow-p-mul-one-add-smoothingfn--db324f3e3343d1d5454cb03d.md) | 147 | `result-track:db324f3e3343d1d5454cb03da5f4f7e2caf7661632375cc166894798ae8fcc5d` |
| 5 | `lemma` | [isTheta_deriv_rpow_p_mul_one_sub_smoothingFn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variante5b7251ce52359d56c254cf6d4916a2692085fbd35b58a38ccb325642671cb38.lean/declarations/istheta-deriv-rpow-p-mul-one-sub-smoothingfn--6cac539eda149c35fda182f9.md) | 170 | `result-track:6cac539eda149c35fda182f9eeac9328f723a786e8ba76003258929f806a69c7` |
| 6 | `lemma` | [isTheta_deriv_rpow_p_mul_one_add_smoothingFn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variante5b7251ce52359d56c254cf6d4916a2692085fbd35b58a38ccb325642671cb38.lean/declarations/istheta-deriv-rpow-p-mul-one-add-smoothingfn--a9124e3f722c11f55c1b86fb.md) | 177 | `result-track:a9124e3f722c11f55c1b86fb3b0431d9a6c7a9efb05b9a0760c18513010aeeca` |
| 7 | `lemma` | [growsPolynomially_deriv_rpow_p_mul_one_sub_smoothingFn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variante5b7251ce52359d56c254cf6d4916a2692085fbd35b58a38ccb325642671cb38.lean/declarations/growspolynomially-deriv-rpow-p-mul-one-sub-smoothingfn--3e8261b410ef4c376f04a681.md) | 184 | `result-track:3e8261b410ef4c376f04a681e4a2d391981d7b31fbc420c00e40c4a4b5550220` |
| 8 | `lemma` | [growsPolynomially_deriv_rpow_p_mul_one_add_smoothingFn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variante5b7251ce52359d56c254cf6d4916a2692085fbd35b58a38ccb325642671cb38.lean/declarations/growspolynomially-deriv-rpow-p-mul-one-add-smoothingfn--bed10bbbee820221882d692d.md) | 203 | `result-track:bed10bbbee820221882d692d834113ea5c33e244cad778cf0d362a8cd9d396e3` |
| 9 | `lemma` | [isBigO_apply_r_sub_b](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variante5b7251ce52359d56c254cf6d4916a2692085fbd35b58a38ccb325642671cb38.lean/declarations/isbigo-apply-r-sub-b--87d4eab6a0883857f6dc7ac9.md) | 225 | `result-track:87d4eab6a0883857f6dc7ac91173a0516fd3f520f0b3fff5b97946344be0bf0d` |
| 10 | `lemma` | [rpow_p_mul_one_sub_smoothingFn_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variante5b7251ce52359d56c254cf6d4916a2692085fbd35b58a38ccb325642671cb38.lean/declarations/rpow-p-mul-one-sub-smoothingfn-le--12be6ef57467b124a0937134.md) | 258 | `result-track:12be6ef57467b124a0937134990c88194cc557928b1af5e1eb485838cd8f0da4` |
| 11 | `lemma` | [rpow_p_mul_one_add_smoothingFn_ge](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variante5b7251ce52359d56c254cf6d4916a2692085fbd35b58a38ccb325642671cb38.lean/declarations/rpow-p-mul-one-add-smoothingfn-ge--3dab1c36d4a4f3781f2dc7e5.md) | 348 | `result-track:3dab1c36d4a4f3781f2dc7e501c7142dc2b51b321bc890bb251f8cbe140cf7f1` |
| 12 | `lemma` | [T_isBigO_smoothingFn_mul_asympBound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variante5b7251ce52359d56c254cf6d4916a2692085fbd35b58a38ccb325642671cb38.lean/declarations/t-isbigo-smoothingfn-mul-asympbound--f7f58c2fc500cffe5d51846b.md) | 452 | `result-track:f7f58c2fc500cffe5d51846b978a683265a8c9a62d65a40369ec599074e94e7a` |
| 13 | `lemma` | [smoothingFn_mul_asympBound_isBigO_T](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variante5b7251ce52359d56c254cf6d4916a2692085fbd35b58a38ccb325642671cb38.lean/declarations/smoothingfn-mul-asympbound-isbigo-t--2e1ea5348ca7bf598800a94b.md) | 558 | `result-track:2e1ea5348ca7bf598800a94b24eecc22106f12ce3ca1e2801e04eac9998bad76` |
| 14 | `theorem` | [isBigO_asympBound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variante5b7251ce52359d56c254cf6d4916a2692085fbd35b58a38ccb325642671cb38.lean/declarations/isbigo-asympbound--845db2e7c60df5f492558469.md) | 663 | `result-track:845db2e7c60df5f492558469da27537399736d16f28744f8cf3c60775575ef6d` |
| 15 | `theorem` | [isBigO_symm_asympBound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variante5b7251ce52359d56c254cf6d4916a2692085fbd35b58a38ccb325642671cb38.lean/declarations/isbigo-symm-asympbound--2622f2f4e3e009a3f9e0c9aa.md) | 675 | `result-track:2622f2f4e3e009a3f9e0c9aac7a9cea7a41dedefb72bc1ddd0566069bfa678a5` |
| 16 | `theorem` | [isTheta_asympBound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variante5b7251ce52359d56c254cf6d4916a2692085fbd35b58a38ccb325642671cb38.lean/declarations/istheta-asympbound--96ca4cc6cc2ab1c0ffa60ba0.md) | 687 | `result-track:96ca4cc6cc2ab1c0ffa60ba0f4c4ad28aa74e2fde81521ae0a542c34850147d4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
