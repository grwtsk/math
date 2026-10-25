# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.VCGen.Variantfa6bd35436d75139af5cfbe6a7306905c0ce5f373a1551635dfff565453aadec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9f6d4959639a2c0ff8bdee31dec50bd8aba8af20",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/VCGen/Variantfa6bd35436d75139af5cfbe6a7306905c0ce5f373a1551635dfff565453aadec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/VCGen/Variantfa6bd35436d75139af5cfbe6a7306905c0ce5f373a1551635dfff565453aadec.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/VCGen/Variantfa6bd35436d75139af5cfbe6a7306905c0ce5f373a1551635dfff565453aadec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9f6d4959639a2c0ff8bdee31dec50bd8aba8af20`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/VCGen/Variantfa6bd35436d75139af5cfbe6a7306905c0ce5f373a1551635dfff565453aadec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/VCGen/Variantfa6bd35436d75139af5cfbe6a7306905c0ce5f373a1551635dfff565453aadec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Tactic.Do.VCGen.Split` — import line 9; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Do.ProofMode.Revert` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Do.LetElim` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Do.Spec` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.TryThis` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Do.VCGen.SuggestInvariant` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ProofMode.MGoal.withNewProg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/VCGen/Variantfa6bd35436d75139af5cfbe6a7306905c0ce5f373a1551635dfff565453aadec.lean/declarations/proofmode-mgoal-withnewprog--a846d5c7cb4077fbc9b5896f.md) | 25 | `declaration-track:a846d5c7cb4077fbc9b5896f94e35e922144fe1921be290933cfaa311a01d8e4` |
| 2 | `structure` | [Result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/VCGen/Variantfa6bd35436d75139af5cfbe6a7306905c0ce5f373a1551635dfff565453aadec.lean/declarations/result--01cf6385583f851bf79451e6.md) | 36 | `declaration-track:01cf6385583f851bf79451e6d87c1deaceafb377428e8739517c17bf7875abbd` |
| 3 | `def` | [genVCs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/VCGen/Variantfa6bd35436d75139af5cfbe6a7306905c0ce5f373a1551635dfff565453aadec.lean/declarations/genvcs--1ccf9db852d445e247cfe158.md) | 40 | `declaration-track:1ccf9db852d445e247cfe1588c41ac2f1636da8c6ff488908dff2a34b1b74b25` |
| 4 | `def` | [elabInvariants](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/VCGen/Variantfa6bd35436d75139af5cfbe6a7306905c0ce5f373a1551635dfff565453aadec.lean/declarations/elabinvariants--1b11db3a71c9059cf5d0cf8e.md) | 355 | `declaration-track:1b11db3a71c9059cf5d0cf8ecd6cdf1be90c66db80b9b44baf243c2349dbc7a0` |
| 5 | `def` | [patchVCAltIntoCaseTactic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/VCGen/Variantfa6bd35436d75139af5cfbe6a7306905c0ce5f373a1551635dfff565453aadec.lean/declarations/patchvcaltintocasetactic--dacdabe4adddc35f0f2722b6.md) | 420 | `declaration-track:dacdabe4adddc35f0f2722b6f8b525b178438fc42f94c6e5bb97f6706c3379be` |
| 6 | `def` | [elabVCs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/VCGen/Variantfa6bd35436d75139af5cfbe6a7306905c0ce5f373a1551635dfff565453aadec.lean/declarations/elabvcs--193f64aa4e222697538dbbca.md) | 425 | `declaration-track:193f64aa4e222697538dbbca53baabab152d5e89b39e3c548d4ad1868e8472e0` |
| 7 | `def` | [elabMVCGen](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/VCGen/Variantfa6bd35436d75139af5cfbe6a7306905c0ce5f373a1551635dfff565453aadec.lean/declarations/elabmvcgen--e8c03d68eb20b49b50ade408.md) | 454 | `declaration-track:e8c03d68eb20b49b50ade408ee20b734de8dc1eec082390797871033b72e15e4` |
| 8 | `def` | [elabMVCGenHint](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/VCGen/Variantfa6bd35436d75139af5cfbe6a7306905c0ce5f373a1551635dfff565453aadec.lean/declarations/elabmvcgenhint--0474bfd334aea44e584e308d.md) | 491 | `declaration-track:0474bfd334aea44e584e308d2d57dbbea2051f732594c3cb4687431c27ff357d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
