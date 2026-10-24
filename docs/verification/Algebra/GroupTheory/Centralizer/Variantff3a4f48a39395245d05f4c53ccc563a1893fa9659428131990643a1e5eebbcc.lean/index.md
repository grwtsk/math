# Verification target: GRWTSK.Algebra.GroupTheory.Centralizer.Variantff3a4f48a39395245d05f4c53ccc563a1893fa9659428131990643a1e5eebbcc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5618839bffb542c8fb1c2491a0fccd44f26b949e",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Centralizer/Variantff3a4f48a39395245d05f4c53ccc563a1893fa9659428131990643a1e5eebbcc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantff3a4f48a39395245d05f4c53ccc563a1893fa9659428131990643a1e5eebbcc.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantff3a4f48a39395245d05f4c53ccc563a1893fa9659428131990643a1e5eebbcc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5618839bffb542c8fb1c2491a0fccd44f26b949e`.

Source path: `GRWTSK/Algebra/GroupTheory/Centralizer/Variantff3a4f48a39395245d05f4c53ccc563a1893fa9659428131990643a1e5eebbcc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Centralizer/Variantff3a4f48a39395245d05f4c53ccc563a1893fa9659428131990643a1e5eebbcc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.End` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Subgroup.Center` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Submonoid.Centralizer` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [centralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantff3a4f48a39395245d05f4c53ccc563a1893fa9659428131990643a1e5eebbcc.lean/declarations/centralizer--d169fd1b64d1cb7136c308e4.md) | 25 | `declaration-track:d169fd1b64d1cb7136c308e446a00efed6e83b8d23058fef7d31caea8ac2325b` |
| 2 | `theorem` | [mem_centralizer_iff](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantff3a4f48a39395245d05f4c53ccc563a1893fa9659428131990643a1e5eebbcc.lean/declarations/mem-centralizer-iff--a356b5361fc5a6474ce76483.md) | 31 | `result-track:a356b5361fc5a6474ce76483d03f7e935bee39c9db7f8e5eab8f658c5e27d8f8` |
| 3 | `theorem` | [mem_centralizer_iff_commutator_eq_one](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantff3a4f48a39395245d05f4c53ccc563a1893fa9659428131990643a1e5eebbcc.lean/declarations/mem-centralizer-iff-commutator-eq-one--06d3c2a01490d076488153c9.md) | 35 | `result-track:06d3c2a01490d076488153c9450f271f2f99884b202f8d1fa526a9d3863ce2c3` |
| 4 | `lemma` | [mem_centralizer_singleton_iff](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantff3a4f48a39395245d05f4c53ccc563a1893fa9659428131990643a1e5eebbcc.lean/declarations/mem-centralizer-singleton-iff--d1e06ec95544cd478ab99d11.md) | 40 | `result-track:d1e06ec95544cd478ab99d11868f40fb34167e455270ffd53be732a1cca01e03` |
| 5 | `theorem` | [centralizer_univ](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantff3a4f48a39395245d05f4c53ccc563a1893fa9659428131990643a1e5eebbcc.lean/declarations/centralizer-univ--89c561b8ba7775e7e20a7c5d.md) | 46 | `result-track:89c561b8ba7775e7e20a7c5d20d16b2847cd142de25322a3bc859a513b1511db` |
| 6 | `theorem` | [le_centralizer_iff](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantff3a4f48a39395245d05f4c53ccc563a1893fa9659428131990643a1e5eebbcc.lean/declarations/le-centralizer-iff--fac1af47acfd7737a4f2a57f.md) | 50 | `result-track:fac1af47acfd7737a4f2a57fc32ac4b650e767a78d9e9ea95d2365c765462f98` |
| 7 | `theorem` | [center_le_centralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantff3a4f48a39395245d05f4c53ccc563a1893fa9659428131990643a1e5eebbcc.lean/declarations/center-le-centralizer--a1eee6ba87344a420b2ea38e.md) | 54 | `result-track:a1eee6ba87344a420b2ea38ecd0b8e091aa23298c3b535f1cbc6c1684ecc2977` |
| 8 | `theorem` | [centralizer_le](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantff3a4f48a39395245d05f4c53ccc563a1893fa9659428131990643a1e5eebbcc.lean/declarations/centralizer-le--37933fd449d53119d9dbef6f.md) | 58 | `result-track:37933fd449d53119d9dbef6f31816a006c2cb42d0af29730128bce451ea5346f` |
| 9 | `theorem` | [centralizer_eq_top_iff_subset](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantff3a4f48a39395245d05f4c53ccc563a1893fa9659428131990643a1e5eebbcc.lean/declarations/centralizer-eq-top-iff-subset--b9df697554e276a6621a1ec4.md) | 62 | `result-track:b9df697554e276a6621a1ec4e00ca104805738381cdf92e9d37ae799455f0dba` |
| 10 | `theorem` | [map_centralizer_le_centralizer_image](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantff3a4f48a39395245d05f4c53ccc563a1893fa9659428131990643a1e5eebbcc.lean/declarations/map-centralizer-le-centralizer-image--03fa967e18a75e25904b085b.md) | 66 | `result-track:03fa967e18a75e25904b085bbfe12491b99943fb525e250ceb3a84e8bd93c817` |
| 11 | `instance` | [Centralizer.characteristic](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantff3a4f48a39395245d05f4c53ccc563a1893fa9659428131990643a1e5eebbcc.lean/declarations/centralizer-characteristic--b74032d5eb10a391ad24db94.md) | 72 | `declaration-track:b74032d5eb10a391ad24db94fbf7db46316caffc37427706229bb829eb36c2f1` |
| 12 | `theorem` | [le_centralizer_iff_isMulCommutative](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantff3a4f48a39395245d05f4c53ccc563a1893fa9659428131990643a1e5eebbcc.lean/declarations/le-centralizer-iff-ismulcommutative--bfb535df0cfbd87c3b5ebf90.md) | 79 | `result-track:bfb535df0cfbd87c3b5ebf909cf6300b3ebcccff8c63aa35615ff5fa29844071` |
| 13 | `theorem` | [le_centralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantff3a4f48a39395245d05f4c53ccc563a1893fa9659428131990643a1e5eebbcc.lean/declarations/le-centralizer--cb97951550480c07ebf0dcc7.md) | 91 | `result-track:cb97951550480c07ebf0dcc7f8f954a2e1cdfacdd51be7efab006d7cf7d52cbf` |
| 14 | `lemma` | [closure_le_centralizer_centralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantff3a4f48a39395245d05f4c53ccc563a1893fa9659428131990643a1e5eebbcc.lean/declarations/closure-le-centralizer-centralizer--06e7c2619e05ce2c122b4951.md) | 96 | `result-track:06e7c2619e05ce2c122b4951069b0ce222e0d4b368015ad22452bdbf121c6b64` |
| 15 | `abbrev` | [closureCommGroupOfComm](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantff3a4f48a39395245d05f4c53ccc563a1893fa9659428131990643a1e5eebbcc.lean/declarations/closurecommgroupofcomm--e93eeefaa31c404cd3c195cf.md) | 104 | `declaration-track:e93eeefaa31c404cd3c195cf4025d7a8bc40b7d0515d0f9c18cd55a5c21b349b` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantff3a4f48a39395245d05f4c53ccc563a1893fa9659428131990643a1e5eebbcc.lean/declarations/instance--6b760428260ddcb03dc93137.md) | 113 | `declaration-track:6b760428260ddcb03dc931375e4e051a5a2facd22a48c44f0bd7c75c2f1c215e` |
| 17 | `def` | [normalizerMonoidHom](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantff3a4f48a39395245d05f4c53ccc563a1893fa9659428131990643a1e5eebbcc.lean/declarations/normalizermonoidhom--5ba43767a8b38d6803ccf25f.md) | 122 | `declaration-track:5ba43767a8b38d6803ccf25f1036d7104e342508dab6126d0d4162a493ac664b` |
| 18 | `theorem` | [normalizerMonoidHom_ker](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantff3a4f48a39395245d05f4c53ccc563a1893fa9659428131990643a1e5eebbcc.lean/declarations/normalizermonoidhom-ker--0195b3bc8fd01006fc71f0da.md) | 125 | `result-track:0195b3bc8fd01006fc71f0da7685ccb62f2e4f08e32fdf130148ecc36c3b18e5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
