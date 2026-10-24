# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.CenteredPsi.Variantb331bb3c13ffa1732ead0beaa95141939bf916817cd06184fc24b2191492dd16

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8ee557bf9123cc180244aec391cc915ff56146c8",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/CenteredPsi/Variantb331bb3c13ffa1732ead0beaa95141939bf916817cd06184fc24b2191492dd16.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/CenteredPsi/Variantb331bb3c13ffa1732ead0beaa95141939bf916817cd06184fc24b2191492dd16.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/CenteredPsi/Variantb331bb3c13ffa1732ead0beaa95141939bf916817cd06184fc24b2191492dd16.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8ee557bf9123cc180244aec391cc915ff56146c8`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/CenteredPsi/Variantb331bb3c13ffa1732ead0beaa95141939bf916817cd06184fc24b2191492dd16.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/CenteredPsi/Variantb331bb3c13ffa1732ead0beaa95141939bf916817cd06184fc24b2191492dd16.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dirichletPrincipalIndicator](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/CenteredPsi/Variantb331bb3c13ffa1732ead0beaa95141939bf916817cd06184fc24b2191492dd16.lean/declarations/dirichletprincipalindicator--d33355edd364b3ad56f939e6.md) | 36 | `declaration-track:d33355edd364b3ad56f939e662c2d4a1fdf3f63f1fd8b1b1b5d171c665426723` |
| 2 | `def` | [twistedPsi](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/CenteredPsi/Variantb331bb3c13ffa1732ead0beaa95141939bf916817cd06184fc24b2191492dd16.lean/declarations/twistedpsi--284972c8d6c0231993e1d1c6.md) | 44 | `declaration-track:284972c8d6c0231993e1d1c64b4d3e9fe68ee673b3fea80b6cb3ceb89d9fedfe` |
| 3 | `def` | [centeredTwistedPsi](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/CenteredPsi/Variantb331bb3c13ffa1732ead0beaa95141939bf916817cd06184fc24b2191492dd16.lean/declarations/centeredtwistedpsi--d72a699369563e83d05ca066.md) | 51 | `declaration-track:d72a699369563e83d05ca066f7c4e74e5c4d7fb02e1837e1e8e2a0a1208e536a` |
| 4 | `theorem` | [dirichletPrincipalIndicator_eq_zero](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/CenteredPsi/Variantb331bb3c13ffa1732ead0beaa95141939bf916817cd06184fc24b2191492dd16.lean/declarations/dirichletprincipalindicator-eq-zero--9d78252caea13dae6f2a4ded.md) | 56 | `result-track:9d78252caea13dae6f2a4ded546c7642028ef25a6607413aa25ab3a3f8826c0d` |
| 5 | `theorem` | [dirichletPrincipalIndicator_one](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/CenteredPsi/Variantb331bb3c13ffa1732ead0beaa95141939bf916817cd06184fc24b2191492dd16.lean/declarations/dirichletprincipalindicator-one--8470fc385cd338156884167a.md) | 62 | `result-track:8470fc385cd338156884167ab10c45bf8f1752f88154ac626de18ab0ee8194eb` |
| 6 | `theorem` | [twistedPsi_zero](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/CenteredPsi/Variantb331bb3c13ffa1732ead0beaa95141939bf916817cd06184fc24b2191492dd16.lean/declarations/twistedpsi-zero--cfeaed64f87789face6651d1.md) | 68 | `result-track:cfeaed64f87789face6651d1e3588cb11e8d7fa491b996985e4ec1f3316b323f` |
| 7 | `theorem` | [centeredTwistedPsi_zero](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/CenteredPsi/Variantb331bb3c13ffa1732ead0beaa95141939bf916817cd06184fc24b2191492dd16.lean/declarations/centeredtwistedpsi-zero--abed7375c9b503df969f2175.md) | 74 | `result-track:abed7375c9b503df969f2175ecea2f075b38e536742b178d2a8c15e747132bbc` |
| 8 | `theorem` | [centeredTwistedPsi_eq_twistedPsi_of_ne_one](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/CenteredPsi/Variantb331bb3c13ffa1732ead0beaa95141939bf916817cd06184fc24b2191492dd16.lean/declarations/centeredtwistedpsi-eq-twistedpsi-of-ne-one--c0ee98ab6375f3b6f29bfbb3.md) | 81 | `result-track:c0ee98ab6375f3b6f29bfbb3d7fa5a2cffee86152b228296a49eb483b969d8e9` |
| 9 | `theorem` | [centeredTwistedPsi_one](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/CenteredPsi/Variantb331bb3c13ffa1732ead0beaa95141939bf916817cd06184fc24b2191492dd16.lean/declarations/centeredtwistedpsi-one--dd6f2ccd183c9fbc501da3bb.md) | 88 | `result-track:dd6f2ccd183c9fbc501da3bb6345837dfbe23ee78cace320a8aedc9ca962d1c0` |
| 10 | `theorem` | [twistedPsi_succ](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/CenteredPsi/Variantb331bb3c13ffa1732ead0beaa95141939bf916817cd06184fc24b2191492dd16.lean/declarations/twistedpsi-succ--d5cfb19c94dc4c6a901adcc0.md) | 96 | `result-track:d5cfb19c94dc4c6a901adcc030d2846e9fc0c92bd4882b591e4b984a7f9a00f7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
