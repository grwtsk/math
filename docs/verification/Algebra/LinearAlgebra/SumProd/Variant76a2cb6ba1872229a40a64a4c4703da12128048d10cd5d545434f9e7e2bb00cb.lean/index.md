# Verification target: GRWTSK.Algebra.LinearAlgebra.SumProd.Variant76a2cb6ba1872229a40a64a4c4703da12128048d10cd5d545434f9e7e2bb00cb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e60de12e027aef955c2b9049176362966278d9f2",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/SumProd/Variant76a2cb6ba1872229a40a64a4c4703da12128048d10cd5d545434f9e7e2bb00cb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/SumProd/Variant76a2cb6ba1872229a40a64a4c4703da12128048d10cd5d545434f9e7e2bb00cb.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/SumProd/Variant76a2cb6ba1872229a40a64a4c4703da12128048d10cd5d545434f9e7e2bb00cb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e60de12e027aef955c2b9049176362966278d9f2`.

Source path: `GRWTSK/Algebra/LinearAlgebra/SumProd/Variant76a2cb6ba1872229a40a64a4c4703da12128048d10cd5d545434f9e7e2bb00cb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/SumProd/Variant76a2cb6ba1872229a40a64a4c4703da12128048d10cd5d545434f9e7e2bb00cb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Equiv.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Pi` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Prod` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.SMul` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sumFinsuppLEquivProdFinsupp](../../../../../mathematics/Algebra/LinearAlgebra/SumProd/Variant76a2cb6ba1872229a40a64a4c4703da12128048d10cd5d545434f9e7e2bb00cb.lean/declarations/sumfinsupplequivprodfinsupp--26c616b8bf1763fd7cc42af0.md) | 40 | `declaration-track:26c616b8bf1763fd7cc42af04297477c566067067421b2ab2b7b7b125330425b` |
| 2 | `theorem` | [fst_sumFinsuppLEquivProdFinsupp](../../../../../mathematics/Algebra/LinearAlgebra/SumProd/Variant76a2cb6ba1872229a40a64a4c4703da12128048d10cd5d545434f9e7e2bb00cb.lean/declarations/fst-sumfinsupplequivprodfinsupp--c48bf3b90f5fda92c3a1c89f.md) | 49 | `result-track:c48bf3b90f5fda92c3a1c89fdf32c99acda1f9f229371141451b93a1e81a3fd4` |
| 3 | `theorem` | [snd_sumFinsuppLEquivProdFinsupp](../../../../../mathematics/Algebra/LinearAlgebra/SumProd/Variant76a2cb6ba1872229a40a64a4c4703da12128048d10cd5d545434f9e7e2bb00cb.lean/declarations/snd-sumfinsupplequivprodfinsupp--45385d1406c7903998b3c06f.md) | 53 | `result-track:45385d1406c7903998b3c06f74f32f21edd6913fcc6ce7b0b1f68f1a9ceace3f` |
| 4 | `theorem` | [sumFinsuppLEquivProdFinsupp_symm_inl](../../../../../mathematics/Algebra/LinearAlgebra/SumProd/Variant76a2cb6ba1872229a40a64a4c4703da12128048d10cd5d545434f9e7e2bb00cb.lean/declarations/sumfinsupplequivprodfinsupp-symm-inl--a7fb9d1b528c4ec69228f42d.md) | 57 | `result-track:a7fb9d1b528c4ec69228f42d63f102b6e61aff8a5cd00a0210fd89f2146707f8` |
| 5 | `theorem` | [sumFinsuppLEquivProdFinsupp_symm_inr](../../../../../mathematics/Algebra/LinearAlgebra/SumProd/Variant76a2cb6ba1872229a40a64a4c4703da12128048d10cd5d545434f9e7e2bb00cb.lean/declarations/sumfinsupplequivprodfinsupp-symm-inr--19e3893fd85ff8122d3ed811.md) | 61 | `result-track:19e3893fd85ff8122d3ed8116734c1fb66bf7b92d8737cae0a5ef4fc85ebb7e2` |
| 6 | `def` | [sigmaFinsuppLEquivPiFinsupp](../../../../../mathematics/Algebra/LinearAlgebra/SumProd/Variant76a2cb6ba1872229a40a64a4c4703da12128048d10cd5d545434f9e7e2bb00cb.lean/declarations/sigmafinsupplequivpifinsupp--32b7757bcb9d121a08401c9e.md) | 76 | `declaration-track:32b7757bcb9d121a08401c9e4da1acbc7449c7d1a827c85fdab13e66fad2b4b6` |
| 7 | `theorem` | [sigmaFinsuppLEquivPiFinsupp_apply](../../../../../mathematics/Algebra/LinearAlgebra/SumProd/Variant76a2cb6ba1872229a40a64a4c4703da12128048d10cd5d545434f9e7e2bb00cb.lean/declarations/sigmafinsupplequivpifinsupp-apply--bea5e48f2f821894f6c68c6a.md) | 84 | `result-track:bea5e48f2f821894f6c68c6a65fc093f91ed7d50c9428cf15061c01e4aa57f82` |
| 8 | `theorem` | [sigmaFinsuppLEquivPiFinsupp_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/SumProd/Variant76a2cb6ba1872229a40a64a4c4703da12128048d10cd5d545434f9e7e2bb00cb.lean/declarations/sigmafinsupplequivpifinsupp-symm-apply--547b51d09f20ca60c2ce8a2d.md) | 89 | `result-track:547b51d09f20ca60c2ce8a2de718af6818673ea444100105a47e9b36ae2b3b25` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
