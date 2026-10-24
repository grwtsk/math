# Verification target: GRWTSK.Algebra.Monomial.Variantc48f4efb838121acaf7bab78fa2575a54d016f45da51afd360b9e2611a9e4e60

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "080e3acfc013d8338d1553d0a004e949183b08f8",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Monomial/Variantc48f4efb838121acaf7bab78fa2575a54d016f45da51afd360b9e2611a9e4e60.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Monomial/Variantc48f4efb838121acaf7bab78fa2575a54d016f45da51afd360b9e2611a9e4e60.lean/index.md) · [Full source](../../../../mathematics/Algebra/Monomial/Variantc48f4efb838121acaf7bab78fa2575a54d016f45da51afd360b9e2611a9e4e60.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `080e3acfc013d8338d1553d0a004e949183b08f8`.

Source path: `GRWTSK/Algebra/Monomial/Variantc48f4efb838121acaf7bab78fa2575a54d016f45da51afd360b9e2611a9e4e60.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Monomial/Variantc48f4efb838121acaf7bab78fa2575a54d016f45da51afd360b9e2611a9e4e60.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Nat.Hom` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [monomial_one_eq_iff](../../../../mathematics/Algebra/Monomial/Variantc48f4efb838121acaf7bab78fa2575a54d016f45da51afd360b9e2611a9e4e60.lean/declarations/monomial-one-eq-iff--42d1213f254616979b3dfcb5.md) | 31 | `result-track:42d1213f254616979b3dfcb567ee522ded48f12191e52a688b3573dec5d2d8ad` |
| 2 | `instance` | [infinite](../../../../mathematics/Algebra/Monomial/Variantc48f4efb838121acaf7bab78fa2575a54d016f45da51afd360b9e2611a9e4e60.lean/declarations/infinite--b3299bfc9def6dd8c4eb64c1.md) | 36 | `declaration-track:b3299bfc9def6dd8c4eb64c1459b0b2929d75280c323d5926878bfe5f6cb3c68` |
| 3 | `theorem` | [card_support_le_one_iff_monomial](../../../../mathematics/Algebra/Monomial/Variantc48f4efb838121acaf7bab78fa2575a54d016f45da51afd360b9e2611a9e4e60.lean/declarations/card-support-le-one-iff-monomial--9dbaebd6d54e5daf4143c2dd.md) | 39 | `result-track:9dbaebd6d54e5daf4143c2dde62ec848144a33f72c0db738265d7bb4b4643ad7` |
| 4 | `theorem` | [ringHom_ext](../../../../mathematics/Algebra/Monomial/Variantc48f4efb838121acaf7bab78fa2575a54d016f45da51afd360b9e2611a9e4e60.lean/declarations/ringhom-ext--dc4847117ec0a6258c5b5e8f.md) | 58 | `result-track:dc4847117ec0a6258c5b5e8f1988895232317d15cd399736dee392ae1805b000` |
| 5 | `theorem` | [ringHom_ext'](../../../../mathematics/Algebra/Monomial/Variantc48f4efb838121acaf7bab78fa2575a54d016f45da51afd360b9e2611a9e4e60.lean/declarations/ringhom-ext--397d27feb3534dd8559f5c92.md) | 79 | `result-track:397d27feb3534dd8559f5c92a7b1e324e9874105dceafa06e3af9f2627820ca8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
