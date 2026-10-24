# Verification target: GRWTSK.Algebra.AdjoinRoot.Variant5186065bd411e0e05d0ca340e13c5fc040b35825a3a63e1c6035f11fea6b6bd7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4061c6c8231de12cbb8c3d561eeeee2ffd31dcae",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/AdjoinRoot/Variant5186065bd411e0e05d0ca340e13c5fc040b35825a3a63e1c6035f11fea6b6bd7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/AdjoinRoot/Variant5186065bd411e0e05d0ca340e13c5fc040b35825a3a63e1c6035f11fea6b6bd7.lean/index.md) · [Full source](../../../../mathematics/Algebra/AdjoinRoot/Variant5186065bd411e0e05d0ca340e13c5fc040b35825a3a63e1c6035f11fea6b6bd7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4061c6c8231de12cbb8c3d561eeeee2ffd31dcae`.

Source path: `GRWTSK/Algebra/AdjoinRoot/Variant5186065bd411e0e05d0ca340e13c5fc040b35825a3a63e1c6035f11fea6b6bd7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/AdjoinRoot/Variant5186065bd411e0e05d0ca340e13c5fc040b35825a3a63e1c6035f11fea6b6bd7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.AdjoinRoot` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Away.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Localization.awayEquivAdjoin](../../../../mathematics/Algebra/AdjoinRoot/Variant5186065bd411e0e05d0ca340e13c5fc040b35825a3a63e1c6035f11fea6b6bd7.lean/declarations/localization-awayequivadjoin--773ac1855725ab0c98ddc8a9.md) | 24 | `declaration-track:773ac1855725ab0c98ddc8a9d5cdff2b9d0724e69ac759a0f511c3c5ccb5c32e` |
| 2 | `theorem` | [IsLocalization.adjoin_inv](../../../../mathematics/Algebra/AdjoinRoot/Variant5186065bd411e0e05d0ca340e13c5fc040b35825a3a63e1c6035f11fea6b6bd7.lean/declarations/islocalization-adjoin-inv--2fac6c8489c92d779d6b94cb.md) | 39 | `result-track:2fac6c8489c92d779d6b94cbf82b123fda4eb1c721fc3953dd0ad660fa935abe` |
| 3 | `theorem` | [IsLocalization.Away.finitePresentation](../../../../mathematics/Algebra/AdjoinRoot/Variant5186065bd411e0e05d0ca340e13c5fc040b35825a3a63e1c6035f11fea6b6bd7.lean/declarations/islocalization-away-finitepresentation--600a89a5948b995bcacd18c2.md) | 42 | `result-track:600a89a5948b995bcacd18c2816dcd551b89fec4f4bd0020457bc570caf58a76` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
