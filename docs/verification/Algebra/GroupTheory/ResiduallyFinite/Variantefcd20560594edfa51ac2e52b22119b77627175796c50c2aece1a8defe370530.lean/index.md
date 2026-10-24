# Verification target: GRWTSK.Algebra.GroupTheory.ResiduallyFinite.Variantefcd20560594edfa51ac2e52b22119b77627175796c50c2aece1a8defe370530

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e439f78a063d7ab21ba78a73ca14e41b4c490009",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/ResiduallyFinite/Variantefcd20560594edfa51ac2e52b22119b77627175796c50c2aece1a8defe370530.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/ResiduallyFinite/Variantefcd20560594edfa51ac2e52b22119b77627175796c50c2aece1a8defe370530.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/ResiduallyFinite/Variantefcd20560594edfa51ac2e52b22119b77627175796c50c2aece1a8defe370530.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e439f78a063d7ab21ba78a73ca14e41b4c490009`.

Source path: `GRWTSK/Algebra/GroupTheory/ResiduallyFinite/Variantefcd20560594edfa51ac2e52b22119b77627175796c50c2aece1a8defe370530.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/ResiduallyFinite/Variantefcd20560594edfa51ac2e52b22119b77627175796c50c2aece1a8defe370530.lean.json)

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
| 1 | `class` | [AddGroup.ResiduallyFinite](../../../../../mathematics/Algebra/GroupTheory/ResiduallyFinite/Variantefcd20560594edfa51ac2e52b22119b77627175796c50c2aece1a8defe370530.lean/declarations/addgroup-residuallyfinite--2155be1fc635808e4496698a.md) | 34 | `declaration-track:2155be1fc635808e4496698a2c12d00802450659505c1a0dcd10d729329c0713` |
| 2 | `class` | [ResiduallyFinite](../../../../../mathematics/Algebra/GroupTheory/ResiduallyFinite/Variantefcd20560594edfa51ac2e52b22119b77627175796c50c2aece1a8defe370530.lean/declarations/residuallyfinite--7bf1a06b61c9ebea5850bb2d.md) | 41 | `declaration-track:7bf1a06b61c9ebea5850bb2d0a7e2b8a5cc04eb05b47c22cda017821a3646e49` |
| 3 | `theorem` | [residuallyFinite_def](../../../../../mathematics/Algebra/GroupTheory/ResiduallyFinite/Variantefcd20560594edfa51ac2e52b22119b77627175796c50c2aece1a8defe370530.lean/declarations/residuallyfinite-def--06f88133be4e2af702cae196.md) | 49 | `result-track:06f88133be4e2af702cae1961ec86f97381d84557314d079b45af72b17602be3` |
| 4 | `theorem` | [residuallyFinite_iff_forall_finiteIndexNormalSubgroup](../../../../../mathematics/Algebra/GroupTheory/ResiduallyFinite/Variantefcd20560594edfa51ac2e52b22119b77627175796c50c2aece1a8defe370530.lean/declarations/residuallyfinite-iff-forall-finiteindexnormalsubgroup--97c8e606d3409f7fac3985f6.md) | 54 | `result-track:97c8e606d3409f7fac3985f6d7248c0a655429b31ee096b843aa21f86847b76d` |
| 5 | `theorem` | [eq_one_iff_forall_finiteIndexNormalSubroup](../../../../../mathematics/Algebra/GroupTheory/ResiduallyFinite/Variantefcd20560594edfa51ac2e52b22119b77627175796c50c2aece1a8defe370530.lean/declarations/eq-one-iff-forall-finiteindexnormalsubroup--8830436d3ba0df24717e5aa4.md) | 60 | `result-track:8830436d3ba0df24717e5aa496d41503fa551598894ed33aac7a84cf6b8fef58` |
| 6 | `theorem` | [residuallyFinite_iff_exists_finiteIndexNormalSubgroup](../../../../../mathematics/Algebra/GroupTheory/ResiduallyFinite/Variantefcd20560594edfa51ac2e52b22119b77627175796c50c2aece1a8defe370530.lean/declarations/residuallyfinite-iff-exists-finiteindexnormalsubgroup--d8593759f0c31bbca819e25c.md) | 65 | `result-track:d8593759f0c31bbca819e25cb10794b8e6d065b3f3281be969a438599a75ce30` |
| 7 | `theorem` | [exists_finiteIndexNormalSubgroup_notMem](../../../../../mathematics/Algebra/GroupTheory/ResiduallyFinite/Variantefcd20560594edfa51ac2e52b22119b77627175796c50c2aece1a8defe370530.lean/declarations/exists-finiteindexnormalsubgroup-notmem--0bb9f68dcead399ed2e6cba1.md) | 70 | `result-track:0bb9f68dcead399ed2e6cba1992d904ea7e5270873b25544458fe73922457df6` |
| 8 | `theorem` | [residuallyFinite_iff_forall_finiteIndex](../../../../../mathematics/Algebra/GroupTheory/ResiduallyFinite/Variantefcd20560594edfa51ac2e52b22119b77627175796c50c2aece1a8defe370530.lean/declarations/residuallyfinite-iff-forall-finiteindex--31b2ae07d5dcb5dda3c6bd34.md) | 75 | `result-track:31b2ae07d5dcb5dda3c6bd349c33eafea7300a54ad4a03af7f3286d35d546766` |
| 9 | `theorem` | [residuallyFinite_iff_exists_finiteIndex](../../../../../mathematics/Algebra/GroupTheory/ResiduallyFinite/Variantefcd20560594edfa51ac2e52b22119b77627175796c50c2aece1a8defe370530.lean/declarations/residuallyfinite-iff-exists-finiteindex--0a90de8655a0c90317eff407.md) | 82 | `result-track:0a90de8655a0c90317eff407b44be6360ad3c4ecedfc21c7b1c49b39fe0e1baf` |
| 10 | `theorem` | [exists_finiteIndexNormalSubgroup_of_residuallyFinite](../../../../../mathematics/Algebra/GroupTheory/ResiduallyFinite/Variantefcd20560594edfa51ac2e52b22119b77627175796c50c2aece1a8defe370530.lean/declarations/exists-finiteindexnormalsubgroup-of-residuallyfinite--25b386338121250ed20ff15e.md) | 92 | `result-track:25b386338121250ed20ff15e4d470e11b6390821b92e43526a5f89466650a5ab` |
| 11 | `theorem` | [residuallyFinite_of_forall_exists_finite_monoidHom.](../../../../../mathematics/Algebra/GroupTheory/ResiduallyFinite/Variantefcd20560594edfa51ac2e52b22119b77627175796c50c2aece1a8defe370530.lean/declarations/residuallyfinite-of-forall-exists-finite-monoidhom--5207fa9769691a32e95178aa.md) | 102 | `result-track:5207fa9769691a32e95178aa00a568353046bf88f0170df7cf57dfbefd55163a` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ResiduallyFinite/Variantefcd20560594edfa51ac2e52b22119b77627175796c50c2aece1a8defe370530.lean/declarations/instance--4c949ac540ed637e76b59c55.md) | 111 | `declaration-track:4c949ac540ed637e76b59c55f0ddfcae6348d1f5ca9077100149ed5646cf8942` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ResiduallyFinite/Variantefcd20560594edfa51ac2e52b22119b77627175796c50c2aece1a8defe370530.lean/declarations/instance--4de5c7cffedf179e078cfd4d.md) | 115 | `declaration-track:4de5c7cffedf179e078cfd4d2242dd0ab6d816fd1bf4df1313c98260d5daab93` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ResiduallyFinite/Variantefcd20560594edfa51ac2e52b22119b77627175796c50c2aece1a8defe370530.lean/declarations/instance--4bf511f2d6671a4b0a65a8d2.md) | 122 | `declaration-track:4bf511f2d6671a4b0a65a8d2732664d035262a71cc08d9002b838e5bcf147c91` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
