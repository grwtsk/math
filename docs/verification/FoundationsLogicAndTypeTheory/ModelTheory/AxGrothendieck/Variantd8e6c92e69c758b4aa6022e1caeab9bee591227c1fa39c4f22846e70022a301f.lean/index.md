# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.AxGrothendieck.Variantd8e6c92e69c758b4aa6022e1caeab9bee591227c1fa39c4f22846e70022a301f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "64c6c5d44b25cffcb3e070cf00fca0267085d050",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/AxGrothendieck/Variantd8e6c92e69c758b4aa6022e1caeab9bee591227c1fa39c4f22846e70022a301f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/AxGrothendieck/Variantd8e6c92e69c758b4aa6022e1caeab9bee591227c1fa39c4f22846e70022a301f.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/AxGrothendieck/Variantd8e6c92e69c758b4aa6022e1caeab9bee591227c1fa39c4f22846e70022a301f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `64c6c5d44b25cffcb3e070cf00fca0267085d050`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/AxGrothendieck/Variantd8e6c92e69c758b4aa6022e1caeab9bee591227c1fa39c4f22846e70022a301f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ModelTheory/AxGrothendieck/Variantd8e6c92e69c758b4aa6022e1caeab9bee591227c1fa39c4f22846e70022a301f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Algebraic.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Pigeonhole` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.ModelTheory.Algebra.Field.IsAlgClosed` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.ModelTheory.Algebra.Ring.Definability` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ax_grothendieck_of_locally_finite](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/AxGrothendieck/Variantd8e6c92e69c758b4aa6022e1caeab9bee591227c1fa39c4f22846e70022a301f.lean/declarations/ax-grothendieck-of-locally-finite--5495ed76f4aa38436e997802.md) | 46 | `result-track:5495ed76f4aa38436e997802be9add76a8eb719fe1f95389aead243c3492c42c` |
| 2 | `def` | [genericPolyMapSurjOnOfInjOn](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/AxGrothendieck/Variantd8e6c92e69c758b4aa6022e1caeab9bee591227c1fa39c4f22846e70022a301f.lean/declarations/genericpolymapsurjonofinjon--ac161b483e17597a1ea597e2.md) | 96 | `declaration-track:ac161b483e17597a1ea597e20d09e9a9d7c89b701e920e969ca1435b9650ba39` |
| 3 | `theorem` | [realize_genericPolyMapSurjOnOfInjOn](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/AxGrothendieck/Variantd8e6c92e69c758b4aa6022e1caeab9bee591227c1fa39c4f22846e70022a301f.lean/declarations/realize-genericpolymapsurjonofinjon--b5ff669e23c530d16b8480df.md) | 143 | `result-track:b5ff669e23c530d16b8480dfd49b83dd285c0b6ac7de9d396c0f6327198d250f` |
| 4 | `theorem` | [ACF_models_genericPolyMapSurjOnOfInjOn_of_prime](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/AxGrothendieck/Variantd8e6c92e69c758b4aa6022e1caeab9bee591227c1fa39c4f22846e70022a301f.lean/declarations/acf-models-genericpolymapsurjonofinjon-of-prime--dbf5ff3af82bef43316ad081.md) | 169 | `result-track:dbf5ff3af82bef43316ad08131e2744c93bfad8e62fcaec870f179905dc05527` |
| 5 | `theorem` | [ACF_models_genericPolyMapSurjOnOfInjOn_of_prime_or_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/AxGrothendieck/Variantd8e6c92e69c758b4aa6022e1caeab9bee591227c1fa39c4f22846e70022a301f.lean/declarations/acf-models-genericpolymapsurjonofinjon-of-prime-or-zero--bf3c114154b5c5100510757b.md) | 183 | `result-track:bf3c114154b5c5100510757b35680d95253a004ea773153bf95e25a1d51c376e` |
| 6 | `theorem` | [ax_grothendieck_of_definable](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/AxGrothendieck/Variantd8e6c92e69c758b4aa6022e1caeab9bee591227c1fa39c4f22846e70022a301f.lean/declarations/ax-grothendieck-of-definable--bb4e8ebcc55d5c7b97a80667.md) | 205 | `result-track:bb4e8ebcc55d5c7b97a80667c32123253552987ec89f3523272628e1602bc6d2` |
| 7 | `theorem` | [ax_grothendieck_zeroLocus](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/AxGrothendieck/Variantd8e6c92e69c758b4aa6022e1caeab9bee591227c1fa39c4f22846e70022a301f.lean/declarations/ax-grothendieck-zerolocus--48ef9091a128f8ac30cf908d.md) | 230 | `result-track:48ef9091a128f8ac30cf908db4e3f868c3a8a879ddc4e2cdd1b8c814c3b98f56` |
| 8 | `theorem` | [ax_grothendieck_univ](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/AxGrothendieck/Variantd8e6c92e69c758b4aa6022e1caeab9bee591227c1fa39c4f22846e70022a301f.lean/declarations/ax-grothendieck-univ--bdc0ff138d2689feed58bef5.md) | 246 | `result-track:bdc0ff138d2689feed58bef578a12c4c142d382a702fc6d6694ae96f3be22ae6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
