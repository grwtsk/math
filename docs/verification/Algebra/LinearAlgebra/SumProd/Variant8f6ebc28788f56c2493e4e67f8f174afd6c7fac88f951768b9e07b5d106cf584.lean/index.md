# Verification target: GRWTSK.Algebra.LinearAlgebra.SumProd.Variant8f6ebc28788f56c2493e4e67f8f174afd6c7fac88f951768b9e07b5d106cf584

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dd87be1c8a44fe6bdb4329ce1d270ebc34a087be",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/SumProd/Variant8f6ebc28788f56c2493e4e67f8f174afd6c7fac88f951768b9e07b5d106cf584.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/SumProd/Variant8f6ebc28788f56c2493e4e67f8f174afd6c7fac88f951768b9e07b5d106cf584.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/SumProd/Variant8f6ebc28788f56c2493e4e67f8f174afd6c7fac88f951768b9e07b5d106cf584.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dd87be1c8a44fe6bdb4329ce1d270ebc34a087be`.

Source path: `GRWTSK/Algebra/LinearAlgebra/SumProd/Variant8f6ebc28788f56c2493e4e67f8f174afd6c7fac88f951768b9e07b5d106cf584.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/SumProd/Variant8f6ebc28788f56c2493e4e67f8f174afd6c7fac88f951768b9e07b5d106cf584.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sumFinsuppLEquivProdFinsupp](../../../../../mathematics/Algebra/LinearAlgebra/SumProd/Variant8f6ebc28788f56c2493e4e67f8f174afd6c7fac88f951768b9e07b5d106cf584.lean/declarations/sumfinsupplequivprodfinsupp--35774aaf2ab397da056ad28d.md) | 50 | `declaration-track:35774aaf2ab397da056ad28dbacb521de7fa4d5c6c8d760f3dbdcf9c8174f6c0` |
| 2 | `theorem` | [fst_sumFinsuppLEquivProdFinsupp](../../../../../mathematics/Algebra/LinearAlgebra/SumProd/Variant8f6ebc28788f56c2493e4e67f8f174afd6c7fac88f951768b9e07b5d106cf584.lean/declarations/fst-sumfinsupplequivprodfinsupp--312452930ef2d4da126ce138.md) | 59 | `result-track:312452930ef2d4da126ce1385ab21ab56e8aa3712eee3fe2a1aa42b12ee8f032` |
| 3 | `theorem` | [snd_sumFinsuppLEquivProdFinsupp](../../../../../mathematics/Algebra/LinearAlgebra/SumProd/Variant8f6ebc28788f56c2493e4e67f8f174afd6c7fac88f951768b9e07b5d106cf584.lean/declarations/snd-sumfinsupplequivprodfinsupp--a6e6f69bf562b370f585de00.md) | 63 | `result-track:a6e6f69bf562b370f585de0079d602f50a4f4a4581e663e3daa38eee9f3316bb` |
| 4 | `theorem` | [sumFinsuppLEquivProdFinsupp_symm_inl](../../../../../mathematics/Algebra/LinearAlgebra/SumProd/Variant8f6ebc28788f56c2493e4e67f8f174afd6c7fac88f951768b9e07b5d106cf584.lean/declarations/sumfinsupplequivprodfinsupp-symm-inl--9b1e95c4705b2432c6676a7e.md) | 67 | `result-track:9b1e95c4705b2432c6676a7eb3634e01d93fcebdfc2978cf14ea643cf1886dad` |
| 5 | `theorem` | [sumFinsuppLEquivProdFinsupp_symm_inr](../../../../../mathematics/Algebra/LinearAlgebra/SumProd/Variant8f6ebc28788f56c2493e4e67f8f174afd6c7fac88f951768b9e07b5d106cf584.lean/declarations/sumfinsupplequivprodfinsupp-symm-inr--e8e9dae35322d7060b3036ad.md) | 71 | `result-track:e8e9dae35322d7060b3036adf039a11b34b9ae83defd931c821c04fc7b1527d1` |
| 6 | `def` | [sigmaFinsuppLEquivPiFinsupp](../../../../../mathematics/Algebra/LinearAlgebra/SumProd/Variant8f6ebc28788f56c2493e4e67f8f174afd6c7fac88f951768b9e07b5d106cf584.lean/declarations/sigmafinsupplequivpifinsupp--93923392185ce91a6edf3a35.md) | 86 | `declaration-track:93923392185ce91a6edf3a350b08bd568411bc6b0ecaba8376cf790ded8cd0d7` |
| 7 | `theorem` | [sigmaFinsuppLEquivPiFinsupp_apply](../../../../../mathematics/Algebra/LinearAlgebra/SumProd/Variant8f6ebc28788f56c2493e4e67f8f174afd6c7fac88f951768b9e07b5d106cf584.lean/declarations/sigmafinsupplequivpifinsupp-apply--b961aae835a26717588dd561.md) | 94 | `result-track:b961aae835a26717588dd5611413f1ab96a42410af411b5e5e0ab78fe7cbe7e9` |
| 8 | `theorem` | [sigmaFinsuppLEquivPiFinsupp_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/SumProd/Variant8f6ebc28788f56c2493e4e67f8f174afd6c7fac88f951768b9e07b5d106cf584.lean/declarations/sigmafinsupplequivpifinsupp-symm-apply--ee55495922c86f505b47b4cd.md) | 99 | `result-track:ee55495922c86f505b47b4cd2f81f8b94a59c3973dda7677553b99a4dae22bb6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
