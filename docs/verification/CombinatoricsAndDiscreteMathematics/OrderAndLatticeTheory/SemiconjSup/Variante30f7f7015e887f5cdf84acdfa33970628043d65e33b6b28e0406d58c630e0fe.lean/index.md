# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.SemiconjSup.Variante30f7f7015e887f5cdf84acdfa33970628043d65e33b6b28e0406d58c630e0fe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a6e7f451f98d60a8146de79345022cd56f7944d1",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemiconjSup/Variante30f7f7015e887f5cdf84acdfa33970628043d65e33b6b28e0406d58c630e0fe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemiconjSup/Variante30f7f7015e887f5cdf84acdfa33970628043d65e33b6b28e0406d58c630e0fe.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemiconjSup/Variante30f7f7015e887f5cdf84acdfa33970628043d65e33b6b28e0406d58c630e0fe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a6e7f451f98d60a8146de79345022cd56f7944d1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemiconjSup/Variante30f7f7015e887f5cdf84acdfa33970628043d65e33b6b28e0406d58c630e0fe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemiconjSup/Variante30f7f7015e887f5cdf84acdfa33970628043d65e33b6b28e0406d58c630e0fe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Function.Conjugate` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Bounds.OrderIso` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.ConditionallyCompleteLattice.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.RelIso.Group` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Order.OrdContinuous` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Hom.Equiv.Units.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsOrderRightAdjoint](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemiconjSup/Variante30f7f7015e887f5cdf84acdfa33970628043d65e33b6b28e0406d58c630e0fe.lean/declarations/isorderrightadjoint--d504a9f63cafa6a4a68c1452.md) | 44 | `declaration-track:d504a9f63cafa6a4a68c1452e815b5587b18c6948b498756f3762dd143034b20` |
| 2 | `theorem` | [isOrderRightAdjoint_sSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemiconjSup/Variante30f7f7015e887f5cdf84acdfa33970628043d65e33b6b28e0406d58c630e0fe.lean/declarations/isorderrightadjoint-ssup--c1b55b3514e8bff762b6d4a6.md) | 48 | `result-track:c1b55b3514e8bff762b6d4a6ed65e372467e7d5e26e64e97e2071ffd8852e301` |
| 3 | `theorem` | [isOrderRightAdjoint_csSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemiconjSup/Variante30f7f7015e887f5cdf84acdfa33970628043d65e33b6b28e0406d58c630e0fe.lean/declarations/isorderrightadjoint-cssup--b81fb1626cc0e68d4dafb578.md) | 52 | `result-track:b81fb1626cc0e68d4dafb57850ab79ca332d83e73f70932dad946785e415b7ae` |
| 4 | `theorem` | [unique](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemiconjSup/Variante30f7f7015e887f5cdf84acdfa33970628043d65e33b6b28e0406d58c630e0fe.lean/declarations/unique--83432186cb42ff1f8f84cb8c.md) | 59 | `result-track:83432186cb42ff1f8f84cb8ca401e875a62002f2b49ad570aad21ff3efda488d` |
| 5 | `theorem` | [right_mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemiconjSup/Variante30f7f7015e887f5cdf84acdfa33970628043d65e33b6b28e0406d58c630e0fe.lean/declarations/right-mono--ae807bf6d7351a6023e98eca.md) | 64 | `result-track:ae807bf6d7351a6023e98eca2f3805735c87b4d507cf25e4bbf5a65b36804053` |
| 6 | `theorem` | [orderIso_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemiconjSup/Variante30f7f7015e887f5cdf84acdfa33970628043d65e33b6b28e0406d58c630e0fe.lean/declarations/orderiso-comp--bb896cc4c970c1d34aa55878.md) | 68 | `result-track:bb896cc4c970c1d34aa558786090428d3aa39c80abcb5950a0b2becda703e99e` |
| 7 | `theorem` | [comp_orderIso](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemiconjSup/Variante30f7f7015e887f5cdf84acdfa33970628043d65e33b6b28e0406d58c630e0fe.lean/declarations/comp-orderiso--8fe817e02abd21b278076bb1.md) | 73 | `result-track:8fe817e02abd21b278076bb1172724b1deca18b5c0dc8834a674e6646e031e23` |
| 8 | `theorem` | [Semiconj.symm_adjoint](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemiconjSup/Variante30f7f7015e887f5cdf84acdfa33970628043d65e33b6b28e0406d58c630e0fe.lean/declarations/semiconj-symm-adjoint--b81b89bdc5b30f94ad86aa38.md) | 91 | `result-track:b81b89bdc5b30f94ad86aa38ef77c9bce7c12865c7563ab58b0f253ccfd78bb0` |
| 9 | `theorem` | [semiconj_of_isLUB](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemiconjSup/Variante30f7f7015e887f5cdf84acdfa33970628043d65e33b6b28e0406d58c630e0fe.lean/declarations/semiconj-of-islub--92ab30db5ff683293cb83546.md) | 101 | `result-track:92ab30db5ff683293cb835468d387c746f7fd0d74fe413376fa3c334daa188a2` |
| 10 | `theorem` | [sSup_div_semiconj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemiconjSup/Variante30f7f7015e887f5cdf84acdfa33970628043d65e33b6b28e0406d58c630e0fe.lean/declarations/ssup-div-semiconj--5b925b4828c002b23e6cf064.md) | 115 | `result-track:5b925b4828c002b23e6cf06492338cddc8983f5b579f983a2789b9401e3d69da` |
| 11 | `theorem` | [csSup_div_semiconj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemiconjSup/Variante30f7f7015e887f5cdf84acdfa33970628043d65e33b6b28e0406d58c630e0fe.lean/declarations/cssup-div-semiconj--5eb020fe0cb0b101a21a20b7.md) | 126 | `result-track:5eb020fe0cb0b101a21a20b78bb21fc8ebdd11b82f9eba1fb8647667753890d4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
