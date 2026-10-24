# Verification target: GRWTSK.Algebra.GroupTheory.Prod.Variantb1e65b0d3bb8d7cc057fa1dfe99f8137b68fc96edccf2c788bf0d78e39a69e44

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "97fcd9eafb9a0ce36a482127558efd2a2c250681",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Prod/Variantb1e65b0d3bb8d7cc057fa1dfe99f8137b68fc96edccf2c788bf0d78e39a69e44.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Prod/Variantb1e65b0d3bb8d7cc057fa1dfe99f8137b68fc96edccf2c788bf0d78e39a69e44.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Prod/Variantb1e65b0d3bb8d7cc057fa1dfe99f8137b68fc96edccf2c788bf0d78e39a69e44.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `97fcd9eafb9a0ce36a482127558efd2a2c250681`.

Source path: `GRWTSK/Algebra/GroupTheory/Prod/Variantb1e65b0d3bb8d7cc057fa1dfe99f8137b68fc96edccf2c788bf0d78e39a69e44.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Prod/Variantb1e65b0d3bb8d7cc057fa1dfe99f8137b68fc96edccf2c788bf0d78e39a69e44.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Prod` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Hom` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Units.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instMulZeroClass](../../../../../mathematics/Algebra/GroupTheory/Prod/Variantb1e65b0d3bb8d7cc057fa1dfe99f8137b68fc96edccf2c788bf0d78e39a69e44.lean/declarations/instmulzeroclass--5963129521565ca1804a53e1.md) | 27 | `declaration-track:5963129521565ca1804a53e1017f5e18646dcc7b4553422a12db100122ab1c37` |
| 2 | `instance` | [instSemigroupWithZero](../../../../../mathematics/Algebra/GroupTheory/Prod/Variantb1e65b0d3bb8d7cc057fa1dfe99f8137b68fc96edccf2c788bf0d78e39a69e44.lean/declarations/instsemigroupwithzero--c3e4b4144e46482fddbf0afc.md) | 31 | `declaration-track:c3e4b4144e46482fddbf0afc032e399d18650ae755fad54afa456d82390e173e` |
| 3 | `instance` | [instMulZeroOneClass](../../../../../mathematics/Algebra/GroupTheory/Prod/Variantb1e65b0d3bb8d7cc057fa1dfe99f8137b68fc96edccf2c788bf0d78e39a69e44.lean/declarations/instmulzerooneclass--079dc5f542e04ae012d1e6db.md) | 36 | `declaration-track:079dc5f542e04ae012d1e6db53b25c7819ff5dec1aedfe81013b0b13c08ce4d3` |
| 4 | `instance` | [instMonoidWithZero](../../../../../mathematics/Algebra/GroupTheory/Prod/Variantb1e65b0d3bb8d7cc057fa1dfe99f8137b68fc96edccf2c788bf0d78e39a69e44.lean/declarations/instmonoidwithzero--0e9a34ab744d91e1c6972d78.md) | 41 | `declaration-track:0e9a34ab744d91e1c6972d7847f00b713c07f0bb219fe10fec6358ad0e740476` |
| 5 | `instance` | [instCommMonoidWithZero](../../../../../mathematics/Algebra/GroupTheory/Prod/Variantb1e65b0d3bb8d7cc057fa1dfe99f8137b68fc96edccf2c788bf0d78e39a69e44.lean/declarations/instcommmonoidwithzero--392739d1229c3df45a089439.md) | 45 | `declaration-track:392739d1229c3df45a08943960a30104c7103a5c1ddcbbcce5b7d903b3b51c6e` |
| 6 | `def` | [mulMonoidWithZeroHom](../../../../../mathematics/Algebra/GroupTheory/Prod/Variantb1e65b0d3bb8d7cc057fa1dfe99f8137b68fc96edccf2c788bf0d78e39a69e44.lean/declarations/mulmonoidwithzerohom--645a420142f6cae3a6a269f9.md) | 58 | `declaration-track:645a420142f6cae3a6a269f941522cc4354baffc6d0334c924e692b063ae5152` |
| 7 | `def` | [divMonoidWithZeroHom](../../../../../mathematics/Algebra/GroupTheory/Prod/Variantb1e65b0d3bb8d7cc057fa1dfe99f8137b68fc96edccf2c788bf0d78e39a69e44.lean/declarations/divmonoidwithzerohom--f333412e81f1c4da11a6bf3b.md) | 64 | `declaration-track:f333412e81f1c4da11a6bf3b00a2697f587751027caa9890b68d0ca11fae0861` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
