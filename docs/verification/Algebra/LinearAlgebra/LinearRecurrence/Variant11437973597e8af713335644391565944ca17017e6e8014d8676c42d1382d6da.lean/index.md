# Verification target: GRWTSK.Algebra.LinearAlgebra.LinearRecurrence.Variant11437973597e8af713335644391565944ca17017e6e8014d8676c42d1382d6da

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5359021d8dee3f368b916a4fc13493adadfe52fc",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/LinearRecurrence/Variant11437973597e8af713335644391565944ca17017e6e8014d8676c42d1382d6da.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/LinearRecurrence/Variant11437973597e8af713335644391565944ca17017e6e8014d8676c42d1382d6da.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/LinearRecurrence/Variant11437973597e8af713335644391565944ca17017e6e8014d8676c42d1382d6da.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5359021d8dee3f368b916a4fc13493adadfe52fc`.

Source path: `GRWTSK/Algebra/LinearAlgebra/LinearRecurrence/Variant11437973597e8af713335644391565944ca17017e6e8014d8676c42d1382d6da.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/LinearRecurrence/Variant11437973597e8af713335644391565944ca17017e6e8014d8676c42d1382d6da.lean.json)

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
| 1 | `structure` | [LinearRecurrence](../../../../../mathematics/Algebra/LinearAlgebra/LinearRecurrence/Variant11437973597e8af713335644391565944ca17017e6e8014d8676c42d1382d6da.lean/declarations/linearrecurrence--0a017f2bb75623b30a20641f.md) | 61 | `declaration-track:0a017f2bb75623b30a20641f1fbd06a8dc6a1528a11f43bf843d8ad487f74eb6` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/LinearRecurrence/Variant11437973597e8af713335644391565944ca17017e6e8014d8676c42d1382d6da.lean/declarations/instance--81f74eb991eebca5a65f4c64.md) | 67 | `declaration-track:81f74eb991eebca5a65f4c645a852f2235da7ebd9690d23d0b778dc0eaa9bfbd` |
| 3 | `def` | [IsSolution](../../../../../mathematics/Algebra/LinearAlgebra/LinearRecurrence/Variant11437973597e8af713335644391565944ca17017e6e8014d8676c42d1382d6da.lean/declarations/issolution--a36c84a5d27acb8370fe7b96.md) | 78 | `declaration-track:a36c84a5d27acb8370fe7b96fc35920f6e58303827b95f9eccae81c6f5a3ec0e` |
| 4 | `def` | [mkSol](../../../../../mathematics/Algebra/LinearAlgebra/LinearRecurrence/Variant11437973597e8af713335644391565944ca17017e6e8014d8676c42d1382d6da.lean/declarations/mksol--335d72a86a8805e05435f01a.md) | 83 | `declaration-track:335d72a86a8805e05435f01a28968d06d8d8687ffe01f2a48f46412237430e36` |
| 5 | `theorem` | [is_sol_mkSol](../../../../../mathematics/Algebra/LinearAlgebra/LinearRecurrence/Variant11437973597e8af713335644391565944ca17017e6e8014d8676c42d1382d6da.lean/declarations/is-sol-mksol--f8e799b4c54588a3d0067e6f.md) | 92 | `result-track:f8e799b4c54588a3d0067e6f56ed3fcac27683ea47700420b039062409264133` |
| 6 | `theorem` | [mkSol_eq_init](../../../../../mathematics/Algebra/LinearAlgebra/LinearRecurrence/Variant11437973597e8af713335644391565944ca17017e6e8014d8676c42d1382d6da.lean/declarations/mksol-eq-init--4d891d6a1fd8eaabe8bcb21a.md) | 98 | `result-track:4d891d6a1fd8eaabe8bcb21a5ea3f304f1e7d29bf705c6aacb77937c5dc01f95` |
| 7 | `theorem` | [eq_mk_of_is_sol_of_eq_init](../../../../../mathematics/Algebra/LinearAlgebra/LinearRecurrence/Variant11437973597e8af713335644391565944ca17017e6e8014d8676c42d1382d6da.lean/declarations/eq-mk-of-is-sol-of-eq-init--ccc70d1506e0e438997c2a68.md) | 105 | `result-track:ccc70d1506e0e438997c2a6827b1451cf49b0f03473a27906306271bc4d08361` |
| 8 | `theorem` | [eq_mk_of_is_sol_of_eq_init'](../../../../../mathematics/Algebra/LinearAlgebra/LinearRecurrence/Variant11437973597e8af713335644391565944ca17017e6e8014d8676c42d1382d6da.lean/declarations/eq-mk-of-is-sol-of-eq-init--2ef90ea9ece415d44d816dc4.md) | 120 | `result-track:2ef90ea9ece415d44d816dc4bd83986eeb5296958b0efe447e87a415e475a413` |
| 9 | `def` | [solSpace](../../../../../mathematics/Algebra/LinearAlgebra/LinearRecurrence/Variant11437973597e8af713335644391565944ca17017e6e8014d8676c42d1382d6da.lean/declarations/solspace--fd48a3bb1101f1a7cfdeb6d3.md) | 125 | `declaration-track:fd48a3bb1101f1a7cfdeb6d3a328f5f376af7d8ce6b0109e027ffa5e998fef5c` |
| 10 | `theorem` | [is_sol_iff_mem_solSpace](../../../../../mathematics/Algebra/LinearAlgebra/LinearRecurrence/Variant11437973597e8af713335644391565944ca17017e6e8014d8676c42d1382d6da.lean/declarations/is-sol-iff-mem-solspace--59a09b5bd3869fa85121300a.md) | 133 | `result-track:59a09b5bd3869fa85121300abbe90c9f71c80f27046179c7e91ea8bec06c469b` |
| 11 | `def` | [toInit](../../../../../mathematics/Algebra/LinearAlgebra/LinearRecurrence/Variant11437973597e8af713335644391565944ca17017e6e8014d8676c42d1382d6da.lean/declarations/toinit--96a940db3aab15af14e6704b.md) | 138 | `declaration-track:96a940db3aab15af14e6704bb9290f55ed1efd4957f22774ee4e0ca736ccfed5` |
| 12 | `theorem` | [mkSol_injective](../../../../../mathematics/Algebra/LinearAlgebra/LinearRecurrence/Variant11437973597e8af713335644391565944ca17017e6e8014d8676c42d1382d6da.lean/declarations/mksol-injective--98a3fd1f7de516ce82a6d9ba.md) | 150 | `result-track:98a3fd1f7de516ce82a6d9ba562f20775d860c1d2d01a28fcea73ecd41687fe9` |
| 13 | `def` | [basis](../../../../../mathematics/Algebra/LinearAlgebra/LinearRecurrence/Variant11437973597e8af713335644391565944ca17017e6e8014d8676c42d1382d6da.lean/declarations/basis--4226504a1fc60887bfa4a909.md) | 155 | `declaration-track:4226504a1fc60887bfa4a909728f23ee584dff42ed596f180fa4d5ddda9d2b28` |
| 14 | `theorem` | [repr_basis_eq](../../../../../mathematics/Algebra/LinearAlgebra/LinearRecurrence/Variant11437973597e8af713335644391565944ca17017e6e8014d8676c42d1382d6da.lean/declarations/repr-basis-eq--6fc6168091f8504c2821e742.md) | 159 | `result-track:6fc6168091f8504c2821e7428aaa57ac54c7c5f4e2bdde3d56d37e82de7bc506` |
| 15 | `theorem` | [repr_basis_apply](../../../../../mathematics/Algebra/LinearAlgebra/LinearRecurrence/Variant11437973597e8af713335644391565944ca17017e6e8014d8676c42d1382d6da.lean/declarations/repr-basis-apply--0c257ee62c94c3c58ba35b6e.md) | 165 | `result-track:0c257ee62c94c3c58ba35b6ef33a7cd830dd77471ceb4ffc1b83eb105bd98a25` |
| 16 | `theorem` | [eq_iff_eqOn_range_order](../../../../../mathematics/Algebra/LinearAlgebra/LinearRecurrence/Variant11437973597e8af713335644391565944ca17017e6e8014d8676c42d1382d6da.lean/declarations/eq-iff-eqon-range-order--8652bee2dca70d17d9be5148.md) | 169 | `result-track:8652bee2dca70d17d9be514878b5f36c33a63a56c591a3ac2dced21dc0ae6fad` |
| 17 | `def` | [tupleSucc](../../../../../mathematics/Algebra/LinearAlgebra/LinearRecurrence/Variant11437973597e8af713335644391565944ca17017e6e8014d8676c42d1382d6da.lean/declarations/tuplesucc--5879a752ef0cc2c6882b24b2.md) | 186 | `declaration-track:5879a752ef0cc2c6882b24b214cf26bd52d63b3f87a466e5af2718a04b2c0d0e` |
| 18 | `theorem` | [solSpace_rank](../../../../../mathematics/Algebra/LinearAlgebra/LinearRecurrence/Variant11437973597e8af713335644391565944ca17017e6e8014d8676c42d1382d6da.lean/declarations/solspace-rank--399a956a958671be7614bb1d.md) | 206 | `result-track:399a956a958671be7614bb1ddf944afa3b2f88161367ad14aaeeeec6937a285c` |
| 19 | `def` | [charPoly](../../../../../mathematics/Algebra/LinearAlgebra/LinearRecurrence/Variant11437973597e8af713335644391565944ca17017e6e8014d8676c42d1382d6da.lean/declarations/charpoly--ba243c8ea950df1158f04a0b.md) | 217 | `declaration-track:ba243c8ea950df1158f04a0b6b2b40306162a01acd298c148c7304cd8e47ceb2` |
| 20 | `theorem` | [charPoly_degree_eq_order](../../../../../mathematics/Algebra/LinearAlgebra/LinearRecurrence/Variant11437973597e8af713335644391565944ca17017e6e8014d8676c42d1382d6da.lean/declarations/charpoly-degree-eq-order--20f52570103042d5f577369a.md) | 221 | `result-track:20f52570103042d5f577369a6539fbdcdbe9c5f2c2d1c7095439b27e8a734b36` |
| 21 | `theorem` | [charPoly_monic](../../../../../mathematics/Algebra/LinearAlgebra/LinearRecurrence/Variant11437973597e8af713335644391565944ca17017e6e8014d8676c42d1382d6da.lean/declarations/charpoly-monic--9bbcd6be5fca98e5b500be27.md) | 227 | `result-track:9bbcd6be5fca98e5b500be27859b09ddf91720e49b3371a4d3f12a64241718cf` |
| 22 | `theorem` | [geom_sol_iff_root_charPoly](../../../../../mathematics/Algebra/LinearAlgebra/LinearRecurrence/Variant11437973597e8af713335644391565944ca17017e6e8014d8676c42d1382d6da.lean/declarations/geom-sol-iff-root-charpoly--5de37ee7c3d7d702e0898ccc.md) | 237 | `result-track:5de37ee7c3d7d702e0898ccc0517ecc184ce63f55be8e463748f3e8d683e655c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
