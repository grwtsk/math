# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variant931605da7c0d3995712b1db3cdb58230eec1252d0633a6eb721ebe1d173c155b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a9ee878fdebb52641d1b7a391620b24a3b6b192f",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant931605da7c0d3995712b1db3cdb58230eec1252d0633a6eb721ebe1d173c155b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant931605da7c0d3995712b1db3cdb58230eec1252d0633a6eb721ebe1d173c155b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant931605da7c0d3995712b1db3cdb58230eec1252d0633a6eb721ebe1d173c155b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a9ee878fdebb52641d1b7a391620b24a3b6b192f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant931605da7c0d3995712b1db3cdb58230eec1252d0633a6eb721ebe1d173c155b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant931605da7c0d3995712b1db3cdb58230eec1252d0633a6eb721ebe1d173c155b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.FiniteDimensional` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [projectivizationSetoid](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant931605da7c0d3995712b1db3cdb58230eec1252d0633a6eb721ebe1d173c155b.lean/declarations/projectivizationsetoid--d19c8dd2e7c7fbfdcead33dc.md) | 39 | `declaration-track:d19c8dd2e7c7fbfdcead33dc9c32bf9da9da03bc5fab69e8b489a234fb9db24d` |
| 2 | `def` | [Projectivization](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant931605da7c0d3995712b1db3cdb58230eec1252d0633a6eb721ebe1d173c155b.lean/declarations/projectivization--c810da6c3d1f71d9fa8ae894.md) | 45 | `declaration-track:c810da6c3d1f71d9fa8ae8941040093dd49a4d0776715718705ad52ab71070db` |
| 3 | `def` | [mk](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant931605da7c0d3995712b1db3cdb58230eec1252d0633a6eb721ebe1d173c155b.lean/declarations/mk--0bb42cc2783f313334d10d44.md) | 55 | `declaration-track:0bb42cc2783f313334d10d4406a5b263a65af0353b95ea908091c9ba66308a41` |
| 4 | `def` | [mk'](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant931605da7c0d3995712b1db3cdb58230eec1252d0633a6eb721ebe1d173c155b.lean/declarations/mk--9e3ec683ecf6dca3565869c3.md) | 60 | `declaration-track:9e3ec683ecf6dca3565869c3271d1db3e964e2a49c050129093117585956f50c` |
| 5 | `theorem` | [mk'_eq_mk](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant931605da7c0d3995712b1db3cdb58230eec1252d0633a6eb721ebe1d173c155b.lean/declarations/mk-eq-mk--fd28da7809af00b33e9a696e.md) | 65 | `result-track:fd28da7809af00b33e9a696e98e50310ab88dc782cc239601c9aeae502b9a81e` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant931605da7c0d3995712b1db3cdb58230eec1252d0633a6eb721ebe1d173c155b.lean/declarations/instance--ea3c8209b0de40e3e1abf167.md) | 68 | `declaration-track:ea3c8209b0de40e3e1abf167dc040716a7b39a18ddc8068d904f4146a408b1a9` |
| 7 | `def` | [rep](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant931605da7c0d3995712b1db3cdb58230eec1252d0633a6eb721ebe1d173c155b.lean/declarations/rep--88488ca59edc44b5a171feec.md) | 75 | `declaration-track:88488ca59edc44b5a171feec73835f55ecadb3ed7b39d5d4e814f01a63a63003` |
| 8 | `theorem` | [rep_nonzero](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant931605da7c0d3995712b1db3cdb58230eec1252d0633a6eb721ebe1d173c155b.lean/declarations/rep-nonzero--6e486ffbf3e0843f3033fb56.md) | 79 | `result-track:6e486ffbf3e0843f3033fb56cdf7d38561a32b8033c2d1266d68cb6165fb58a9` |
| 9 | `theorem` | [mk_rep](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant931605da7c0d3995712b1db3cdb58230eec1252d0633a6eb721ebe1d173c155b.lean/declarations/mk-rep--967ebc6f6e1beede2f5d82e7.md) | 84 | `result-track:967ebc6f6e1beede2f5d82e717fe7f1dd282277dc8092d259781ed4649e74c23` |
| 10 | `def` | [submodule](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant931605da7c0d3995712b1db3cdb58230eec1252d0633a6eb721ebe1d173c155b.lean/declarations/submodule--7654bc249b451ccacc92c617.md) | 90 | `declaration-track:7654bc249b451ccacc92c61708f45466f7490d85e618ddca1a86445a8b3cb2b6` |
| 11 | `theorem` | [mk_eq_mk_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant931605da7c0d3995712b1db3cdb58230eec1252d0633a6eb721ebe1d173c155b.lean/declarations/mk-eq-mk-iff--001edddbe20bbca60bf32a71.md) | 98 | `result-track:001edddbe20bbca60bf32a71eed5cb819dd4747f82064af09d9b8f56742d4e75` |
| 12 | `theorem` | [mk_eq_mk_iff'](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant931605da7c0d3995712b1db3cdb58230eec1252d0633a6eb721ebe1d173c155b.lean/declarations/mk-eq-mk-iff--3cec8727e4c30e0061bdabab.md) | 105 | `result-track:3cec8727e4c30e0061bdabab4ae51a98af1ab8117e400ec9721c9eabf91b0a8d` |
| 13 | `theorem` | [exists_smul_eq_mk_rep](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant931605da7c0d3995712b1db3cdb58230eec1252d0633a6eb721ebe1d173c155b.lean/declarations/exists-smul-eq-mk-rep--7745456e81b53e07c34dfdfb.md) | 116 | `result-track:7745456e81b53e07c34dfdfb4bcbfe5fa2bef8f5dc85344bc1d363ba173809d1` |
| 14 | `theorem` | [ind](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant931605da7c0d3995712b1db3cdb58230eec1252d0633a6eb721ebe1d173c155b.lean/declarations/ind--264faa9b6a32f5f0096b205b.md) | 125 | `result-track:264faa9b6a32f5f0096b205b3c41f665b6a2174fd4f038c76eb6e58defaf4884` |
| 15 | `theorem` | [submodule_mk](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant931605da7c0d3995712b1db3cdb58230eec1252d0633a6eb721ebe1d173c155b.lean/declarations/submodule-mk--af5d26b187f29ed1b793a58d.md) | 130 | `result-track:af5d26b187f29ed1b793a58ddbd3db94f85d823cabb6f423b80a1cf08eb45543` |
| 16 | `theorem` | [submodule_eq](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant931605da7c0d3995712b1db3cdb58230eec1252d0633a6eb721ebe1d173c155b.lean/declarations/submodule-eq--5cdf53043e2ca3cf8394907e.md) | 134 | `result-track:5cdf53043e2ca3cf8394907e943173c985c7e2d109aaab05bc7adf33ebb71f7e` |
| 17 | `theorem` | [finrank_submodule](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant931605da7c0d3995712b1db3cdb58230eec1252d0633a6eb721ebe1d173c155b.lean/declarations/finrank-submodule--ac4347190daf8f4f789be46b.md) | 138 | `result-track:ac4347190daf8f4f789be46b2ef165691fb717397a1c085238e0a8c5232be7ab` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant931605da7c0d3995712b1db3cdb58230eec1252d0633a6eb721ebe1d173c155b.lean/declarations/instance--0938c69ebd1f14724365ca36.md) | 143 | `declaration-track:0938c69ebd1f14724365ca363833b1aa4bcfad5cc88fa040b74a185c8adec3e7` |
| 19 | `theorem` | [submodule_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant931605da7c0d3995712b1db3cdb58230eec1252d0633a6eb721ebe1d173c155b.lean/declarations/submodule-injective--9f4509cd65705a298b9b97fa.md) | 148 | `result-track:9f4509cd65705a298b9b97fa10e1bb2721ac5e818c8a26476171a8506bb60f5a` |
| 20 | `def` | [equivSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant931605da7c0d3995712b1db3cdb58230eec1252d0633a6eb721ebe1d173c155b.lean/declarations/equivsubmodule--e3a00c971fe0d0ec7518483e.md) | 160 | `declaration-track:e3a00c971fe0d0ec7518483ec4f550580481f93276e4a189754d92a8700749e0` |
| 21 | `def` | [mk''](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant931605da7c0d3995712b1db3cdb58230eec1252d0633a6eb721ebe1d173c155b.lean/declarations/mk--08af845f60cbab0d1d6af2c9.md) | 174 | `declaration-track:08af845f60cbab0d1d6af2c9f8da0c7076e3c94b4c11b2104d611aae96506589` |
| 22 | `theorem` | [submodule_mk''](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant931605da7c0d3995712b1db3cdb58230eec1252d0633a6eb721ebe1d173c155b.lean/declarations/submodule-mk--f7f4f07b06f9ade2e600a504.md) | 179 | `result-track:f7f4f07b06f9ade2e600a5044e1adde050a50cd0ed7819e4061e2df99a9826de` |
| 23 | `theorem` | [mk''_submodule](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant931605da7c0d3995712b1db3cdb58230eec1252d0633a6eb721ebe1d173c155b.lean/declarations/mk-submodule--175185168c8ca3813616fbc4.md) | 184 | `result-track:175185168c8ca3813616fbc4acef23fc41fc16d8228b25caf9ba0c5baed728c4` |
| 24 | `def` | [map](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant931605da7c0d3995712b1db3cdb58230eec1252d0633a6eb721ebe1d173c155b.lean/declarations/map--117f8d147f454460df1a0071.md) | 193 | `declaration-track:117f8d147f454460df1a00713fc6b439128a9067779b3aa9eed885d22f8aecc7` |
| 25 | `theorem` | [map_mk](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant931605da7c0d3995712b1db3cdb58230eec1252d0633a6eb721ebe1d173c155b.lean/declarations/map-mk--ae6c705fbeaee68f070e1262.md) | 202 | `result-track:ae6c705fbeaee68f070e12622410794b2642842889a4dc66717fa012f3a05a57` |
| 26 | `theorem` | [map_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant931605da7c0d3995712b1db3cdb58230eec1252d0633a6eb721ebe1d173c155b.lean/declarations/map-injective--74bca516d1dffba61d5d875f.md) | 208 | `result-track:74bca516d1dffba61d5d875ff3ca0381b59938c07011764ac71faa0354f94d71` |
| 27 | `theorem` | [map_id](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant931605da7c0d3995712b1db3cdb58230eec1252d0633a6eb721ebe1d173c155b.lean/declarations/map-id--187cd64313c4734b9be398cb.md) | 218 | `result-track:187cd64313c4734b9be398cbc0481b44a556f7fb3a4e5809fd9b786ddc1bb39d` |
| 28 | `theorem` | [map_comp](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant931605da7c0d3995712b1db3cdb58230eec1252d0633a6eb721ebe1d173c155b.lean/declarations/map-comp--4f22f3a3517c96887e70a949.md) | 224 | `result-track:4f22f3a3517c96887e70a9494231a135c79822c71c7abb7057f2e046bcc3c9ff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
