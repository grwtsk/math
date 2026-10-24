# Verification target: GRWTSK.Analysis.FiniteMobiusJet.Variant1f1a591ef35b26d2dcf432e447b87b4d975845290a89ff94251e8751d0e68348

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e3ff04d28de626aad9504025c07a2a89b3d6b700",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FiniteMobiusJet/Variant1f1a591ef35b26d2dcf432e447b87b4d975845290a89ff94251e8751d0e68348.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/FiniteMobiusJet/Variant1f1a591ef35b26d2dcf432e447b87b4d975845290a89ff94251e8751d0e68348.lean/index.md) · [Full source](../../../../mathematics/Analysis/FiniteMobiusJet/Variant1f1a591ef35b26d2dcf432e447b87b4d975845290a89ff94251e8751d0e68348.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e3ff04d28de626aad9504025c07a2a89b3d6b700`.

Source path: `GRWTSK/Analysis/FiniteMobiusJet/Variant1f1a591ef35b26d2dcf432e447b87b4d975845290a89ff94251e8751d0e68348.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FiniteMobiusJet/Variant1f1a591ef35b26d2dcf432e447b87b4d975845290a89ff94251e8751d0e68348.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.UnitJetCorrection` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.Conversation.ZetaJetCancellation` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dirichletAtom](../../../../mathematics/Analysis/FiniteMobiusJet/Variant1f1a591ef35b26d2dcf432e447b87b4d975845290a89ff94251e8751d0e68348.lean/declarations/dirichletatom--73cb01a505bb86257601e0da.md) | 31 | `declaration-track:73cb01a505bb86257601e0dadc35b41d9251810ccecbec14778c11160a6e1cff` |
| 2 | `def` | [finiteMobius](../../../../mathematics/Analysis/FiniteMobiusJet/Variant1f1a591ef35b26d2dcf432e447b87b4d975845290a89ff94251e8751d0e68348.lean/declarations/finitemobius--9ea407226403f04850005b4c.md) | 39 | `declaration-track:9ea407226403f04850005b4c1522ffb33b8c79f446cd466442bac0b07144a8da` |
| 3 | `def` | [correction](../../../../mathematics/Analysis/FiniteMobiusJet/Variant1f1a591ef35b26d2dcf432e447b87b4d975845290a89ff94251e8751d0e68348.lean/declarations/correction--e7b6d348c85c92911dc291bd.md) | 47 | `declaration-track:e7b6d348c85c92911dc291bd077858073fc4d4fcfbac9e8c645b19b8c28f51cb` |
| 4 | `def` | [balancedFactor](../../../../mathematics/Analysis/FiniteMobiusJet/Variant1f1a591ef35b26d2dcf432e447b87b4d975845290a89ff94251e8751d0e68348.lean/declarations/balancedfactor--f011c7223b311fe34a8642db.md) | 55 | `declaration-track:f011c7223b311fe34a8642dbd3a8eef1eed10c48b555626acf954917986ac582` |
| 5 | `theorem` | [atom_at_one](../../../../mathematics/Analysis/FiniteMobiusJet/Variant1f1a591ef35b26d2dcf432e447b87b4d975845290a89ff94251e8751d0e68348.lean/declarations/atom-at-one--1c2f64ded3da6d62e49d47ed.md) | 58 | `result-track:1c2f64ded3da6d62e49d47edfe27a08092affaea3e5078dca04e5dd3fb7c1226` |
| 6 | `theorem` | [atom_derivative_at_one](../../../../mathematics/Analysis/FiniteMobiusJet/Variant1f1a591ef35b26d2dcf432e447b87b4d975845290a89ff94251e8751d0e68348.lean/declarations/atom-derivative-at-one--7a9421ecd4b165e87bfb1e58.md) | 66 | `result-track:7a9421ecd4b165e87bfb1e58f84f71d3d9a044c6e527acf64ac038ce00f6aa3b` |
| 7 | `theorem` | [finite_mobius_value](../../../../mathematics/Analysis/FiniteMobiusJet/Variant1f1a591ef35b26d2dcf432e447b87b4d975845290a89ff94251e8751d0e68348.lean/declarations/finite-mobius-value--d40423c53a2bb0f4321f2b2f.md) | 75 | `result-track:d40423c53a2bb0f4321f2b2fbc70ea0852569495c33780c25c67f8dc7c861d2e` |
| 8 | `theorem` | [finite_mobius_derivative](../../../../mathematics/Analysis/FiniteMobiusJet/Variant1f1a591ef35b26d2dcf432e447b87b4d975845290a89ff94251e8751d0e68348.lean/declarations/finite-mobius-derivative--76244b75d7983a8d154249b5.md) | 84 | `result-track:76244b75d7983a8d154249b5d2ac436839df045e4d9b9ca25029101d6d48564e` |
| 9 | `theorem` | [correction_value](../../../../mathematics/Analysis/FiniteMobiusJet/Variant1f1a591ef35b26d2dcf432e447b87b4d975845290a89ff94251e8751d0e68348.lean/declarations/correction-value--20ab3e19629ba3c5a7d84c91.md) | 100 | `result-track:20ab3e19629ba3c5a7d84c91bdf3421072169f1d1367ef02dd9fa078fbeca563` |
| 10 | `theorem` | [correction_derivative](../../../../mathematics/Analysis/FiniteMobiusJet/Variant1f1a591ef35b26d2dcf432e447b87b4d975845290a89ff94251e8751d0e68348.lean/declarations/correction-derivative--023f3e6d6e906253a6c44e58.md) | 109 | `result-track:023f3e6d6e906253a6c44e587bcdbb4a7a5cb417e86ef4016e5a117f77f0505b` |
| 11 | `theorem` | [balanced_factor_value](../../../../mathematics/Analysis/FiniteMobiusJet/Variant1f1a591ef35b26d2dcf432e447b87b4d975845290a89ff94251e8751d0e68348.lean/declarations/balanced-factor-value--dcfb583e25164615c75ba4ab.md) | 120 | `result-track:dcfb583e25164615c75ba4ab8ce966e69270d0503233c6c043e3a470f0ddc3f6` |
| 12 | `theorem` | [balanced_factor_jet](../../../../mathematics/Analysis/FiniteMobiusJet/Variant1f1a591ef35b26d2dcf432e447b87b4d975845290a89ff94251e8751d0e68348.lean/declarations/balanced-factor-jet--98fcaa492fb76730fa248545.md) | 124 | `result-track:98fcaa492fb76730fa24854569b02d3318e233a0fee098984053e287157ebd0f` |
| 13 | `theorem` | [actual_balanced_zeta_limit](../../../../mathematics/Analysis/FiniteMobiusJet/Variant1f1a591ef35b26d2dcf432e447b87b4d975845290a89ff94251e8751d0e68348.lean/declarations/actual-balanced-zeta-limit--85d9c0aba851453eadda2e9e.md) | 134 | `result-track:85d9c0aba851453eadda2e9e07fe32f3607142ccf52172a1eeba20cc3b0259e3` |
| 14 | `theorem` | [actual_unit_high_child_limit](../../../../mathematics/Analysis/FiniteMobiusJet/Variant1f1a591ef35b26d2dcf432e447b87b4d975845290a89ff94251e8751d0e68348.lean/declarations/actual-unit-high-child-limit--d2dbed0e28935f005fe9c53a.md) | 140 | `result-track:d2dbed0e28935f005fe9c53a89233e42a9f808a3250f88c4d37137120f05f53b` |
| 15 | `theorem` | [actual_unit_low_child_limit](../../../../mathematics/Analysis/FiniteMobiusJet/Variant1f1a591ef35b26d2dcf432e447b87b4d975845290a89ff94251e8751d0e68348.lean/declarations/actual-unit-low-child-limit--9df44f5001a5e665917284b9.md) | 147 | `result-track:9df44f5001a5e665917284b971c16ad071c76e8a29d2b5120a49eff8762f1c0a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
