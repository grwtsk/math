# Verification target: GRWTSK.Algebra.LinearAlgebra.CountablyGenerated.Variant8c350e917009132d8a4ad1f1aea0217ca24e1b758a1dd829dde38d476445009d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "28f1ddb069211b4190850a3bd76fc8e08d2a54d4",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/CountablyGenerated/Variant8c350e917009132d8a4ad1f1aea0217ca24e1b758a1dd829dde38d476445009d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/CountablyGenerated/Variant8c350e917009132d8a4ad1f1aea0217ca24e1b758a1dd829dde38d476445009d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/CountablyGenerated/Variant8c350e917009132d8a4ad1f1aea0217ca24e1b758a1dd829dde38d476445009d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `28f1ddb069211b4190850a3bd76fc8e08d2a54d4`.

Source path: `GRWTSK/Algebra/LinearAlgebra/CountablyGenerated/Variant8c350e917009132d8a4ad1f1aea0217ca24e1b758a1dd829dde38d476445009d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/CountablyGenerated/Variant8c350e917009132d8a4ad1f1aea0217ca24e1b758a1dd829dde38d476445009d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Countable` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Bases.Finite` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsCountablyGenerated](../../../../../mathematics/Algebra/LinearAlgebra/CountablyGenerated/Variant8c350e917009132d8a4ad1f1aea0217ca24e1b758a1dd829dde38d476445009d.lean/declarations/iscountablygenerated--c9178f3c2c90e29217d88363.md) | 26 | `declaration-track:c9178f3c2c90e29217d883639f057f463bb396688fbf70d795a7d17a7d65f1f0` |
| 2 | `structure` | [IsCountableBasis](../../../../../mathematics/Algebra/LinearAlgebra/CountablyGenerated/Variant8c350e917009132d8a4ad1f1aea0217ca24e1b758a1dd829dde38d476445009d.lean/declarations/iscountablebasis--5be22a15c5ec60a796104b8a.md) | 31 | `declaration-track:5be22a15c5ec60a796104b8a154f8fc702653f5518b2392f3a8039caa9b79a30` |
| 3 | `structure` | [HasCountableBasis](../../../../../mathematics/Algebra/LinearAlgebra/CountablyGenerated/Variant8c350e917009132d8a4ad1f1aea0217ca24e1b758a1dd829dde38d476445009d.lean/declarations/hascountablebasis--bb2e115bf810a5013ff6c032.md) | 38 | `declaration-track:bb2e115bf810a5013ff6c03297451a66e681aeee12215029a10beb5100146e4e` |
| 4 | `structure` | [CountableFilterBasis](../../../../../mathematics/Algebra/LinearAlgebra/CountablyGenerated/Variant8c350e917009132d8a4ad1f1aea0217ca24e1b758a1dd829dde38d476445009d.lean/declarations/countablefilterbasis--b277634a5f918f35a4b3f485.md) | 46 | `declaration-track:b277634a5f918f35a4b3f48574177a5852182f35fda263026ceaa9851cf34a46` |
| 5 | `instance` | [Nat.inhabitedCountableFilterBasis](../../../../../mathematics/Algebra/LinearAlgebra/CountablyGenerated/Variant8c350e917009132d8a4ad1f1aea0217ca24e1b758a1dd829dde38d476445009d.lean/declarations/nat-inhabitedcountablefilterbasis--345bd01a70c9924920ded8e0.md) | 51 | `declaration-track:345bd01a70c9924920ded8e07deef2510d63a391dffced8978ebc9af12f3539b` |
| 6 | `theorem` | [HasCountableBasis.isCountablyGenerated](../../../../../mathematics/Algebra/LinearAlgebra/CountablyGenerated/Variant8c350e917009132d8a4ad1f1aea0217ca24e1b758a1dd829dde38d476445009d.lean/declarations/hascountablebasis-iscountablygenerated--7bf722d4c8efa9d9f179dd74.md) | 54 | `result-track:7bf722d4c8efa9d9f179dd74d17b59fba0a3ff3b83cad028312adbcb7d3c4f94` |
| 7 | `theorem` | [HasBasis.isCountablyGenerated](../../../../../mathematics/Algebra/LinearAlgebra/CountablyGenerated/Variant8c350e917009132d8a4ad1f1aea0217ca24e1b758a1dd829dde38d476445009d.lean/declarations/hasbasis-iscountablygenerated--7285d76ff821d46f6b82c77e.md) | 58 | `result-track:7285d76ff821d46f6b82c77edca4e916180b0a0aa080b23c9004e26470b37e62` |
| 8 | `theorem` | [antitone_seq_of_seq](../../../../../mathematics/Algebra/LinearAlgebra/CountablyGenerated/Variant8c350e917009132d8a4ad1f1aea0217ca24e1b758a1dd829dde38d476445009d.lean/declarations/antitone-seq-of-seq--0d9369b72709e0f41715e35a.md) | 62 | `result-track:0d9369b72709e0f41715e35a9cc36d31e226cb33d4966c715d8f7e382527db3b` |
| 9 | `theorem` | [countable_biInf_eq_iInf_seq](../../../../../mathematics/Algebra/LinearAlgebra/CountablyGenerated/Variant8c350e917009132d8a4ad1f1aea0217ca24e1b758a1dd829dde38d476445009d.lean/declarations/countable-biinf-eq-iinf-seq--f4c4eebee2ab0b954ae67ff5.md) | 73 | `result-track:f4c4eebee2ab0b954ae67ff5a4cbdfb02e3e761ddc0e7b01b4c13d339981438f` |
| 10 | `theorem` | [countable_biInf_eq_iInf_seq'](../../../../../mathematics/Algebra/LinearAlgebra/CountablyGenerated/Variant8c350e917009132d8a4ad1f1aea0217ca24e1b758a1dd829dde38d476445009d.lean/declarations/countable-biinf-eq-iinf-seq--ab636eb1ea18cd633f36fadd.md) | 78 | `result-track:ab636eb1ea18cd633f36fadd0a5302bc0ca651a05000c117209338a6209d2b77` |
| 11 | `theorem` | [countable_biInf_principal_eq_seq_iInf](../../../../../mathematics/Algebra/LinearAlgebra/CountablyGenerated/Variant8c350e917009132d8a4ad1f1aea0217ca24e1b758a1dd829dde38d476445009d.lean/declarations/countable-biinf-principal-eq-seq-iinf--3d53bcad614269ef69161587.md) | 86 | `result-track:3d53bcad614269ef691615877ccf81caa6016c0c0c159ce49f4a46d9e2df1758` |
| 12 | `theorem` | [HasAntitoneBasis.mem_iff](../../../../../mathematics/Algebra/LinearAlgebra/CountablyGenerated/Variant8c350e917009132d8a4ad1f1aea0217ca24e1b758a1dd829dde38d476445009d.lean/declarations/hasantitonebasis-mem-iff--dace9d256674ec6c090d5bf2.md) | 92 | `result-track:dace9d256674ec6c090d5bf2ffc9a412e8869a48e04a4b0382744de28816bcec` |
| 13 | `theorem` | [HasAntitoneBasis.mem](../../../../../mathematics/Algebra/LinearAlgebra/CountablyGenerated/Variant8c350e917009132d8a4ad1f1aea0217ca24e1b758a1dd829dde38d476445009d.lean/declarations/hasantitonebasis-mem--a496ee2b16c5f936421a6e28.md) | 96 | `result-track:a496ee2b16c5f936421a6e28f5c45888d3c8260c55a053b8b63e99af9d11af5e` |
| 14 | `theorem` | [HasAntitoneBasis.hasBasis_ge](../../../../../mathematics/Algebra/LinearAlgebra/CountablyGenerated/Variant8c350e917009132d8a4ad1f1aea0217ca24e1b758a1dd829dde38d476445009d.lean/declarations/hasantitonebasis-hasbasis-ge--b43b195856e40dc3751bf6d6.md) | 100 | `result-track:b43b195856e40dc3751bf6d6af3a42eee51a16618c30d5ad96115f944db319b7` |
| 15 | `theorem` | [HasBasis.exists_antitone_subbasis](../../../../../mathematics/Algebra/LinearAlgebra/CountablyGenerated/Variant8c350e917009132d8a4ad1f1aea0217ca24e1b758a1dd829dde38d476445009d.lean/declarations/hasbasis-exists-antitone-subbasis--d9fb2e345bec8d99db6d5cb0.md) | 109 | `result-track:d9fb2e345bec8d99db6d5cb06ec4eb6ef66dd4233401e6e82cf976ee5ed136c1` |
| 16 | `theorem` | [exists_antitone_basis](../../../../../mathematics/Algebra/LinearAlgebra/CountablyGenerated/Variant8c350e917009132d8a4ad1f1aea0217ca24e1b758a1dd829dde38d476445009d.lean/declarations/exists-antitone-basis--ab00258e71b094a59d2ddf11.md) | 134 | `result-track:ab00258e71b094a59d2ddf115fec4995d59f5b68b9e000667d0ff2b218c74bea` |
| 17 | `theorem` | [exists_antitone_seq](../../../../../mathematics/Algebra/LinearAlgebra/CountablyGenerated/Variant8c350e917009132d8a4ad1f1aea0217ca24e1b758a1dd829dde38d476445009d.lean/declarations/exists-antitone-seq--69a3212300e7d818c4bd912c.md) | 139 | `result-track:69a3212300e7d818c4bd912c1d6547a4ad369a61851fe6d87dbf57354e3ba4bb` |
| 18 | `instance` | [Inf.isCountablyGenerated](../../../../../mathematics/Algebra/LinearAlgebra/CountablyGenerated/Variant8c350e917009132d8a4ad1f1aea0217ca24e1b758a1dd829dde38d476445009d.lean/declarations/inf-iscountablygenerated--a72e5ad018ab219e969da5ab.md) | 144 | `declaration-track:a72e5ad018ab219e969da5abb77e1ce7f65e0c676ab69d33be543b906d51f274` |
| 19 | `instance` | [map.isCountablyGenerated](../../../../../mathematics/Algebra/LinearAlgebra/CountablyGenerated/Variant8c350e917009132d8a4ad1f1aea0217ca24e1b758a1dd829dde38d476445009d.lean/declarations/map-iscountablygenerated--f05360e296a486657d1a6378.md) | 150 | `declaration-track:f05360e296a486657d1a63781ce5d2dd3144d581dde998e6332e1831b6349b90` |
| 20 | `instance` | [comap.isCountablyGenerated](../../../../../mathematics/Algebra/LinearAlgebra/CountablyGenerated/Variant8c350e917009132d8a4ad1f1aea0217ca24e1b758a1dd829dde38d476445009d.lean/declarations/comap-iscountablygenerated--32d8032d4856832e94d34f45.md) | 155 | `declaration-track:32d8032d4856832e94d34f459754cb4b25ab597a1eacc729c96bfd0d127e62d4` |
| 21 | `instance` | [Sup.isCountablyGenerated](../../../../../mathematics/Algebra/LinearAlgebra/CountablyGenerated/Variant8c350e917009132d8a4ad1f1aea0217ca24e1b758a1dd829dde38d476445009d.lean/declarations/sup-iscountablygenerated--85405c8903f0b4bb11a2e6e0.md) | 160 | `declaration-track:85405c8903f0b4bb11a2e6e0509f3dfc1ce116048674c99f8a019452b30ab661` |
| 22 | `instance` | [prod.isCountablyGenerated](../../../../../mathematics/Algebra/LinearAlgebra/CountablyGenerated/Variant8c350e917009132d8a4ad1f1aea0217ca24e1b758a1dd829dde38d476445009d.lean/declarations/prod-iscountablygenerated--ef7ff5d0f95367003c7d4468.md) | 166 | `declaration-track:ef7ff5d0f95367003c7d446835058332bc0d7535d0824f5673f7d71470ba1b38` |
| 23 | `instance` | [coprod.isCountablyGenerated](../../../../../mathematics/Algebra/LinearAlgebra/CountablyGenerated/Variant8c350e917009132d8a4ad1f1aea0217ca24e1b758a1dd829dde38d476445009d.lean/declarations/coprod-iscountablygenerated--30fd36f937669f1d76d210e0.md) | 170 | `declaration-track:30fd36f937669f1d76d210e0cb45c0004fbc46cf97fbe0ca1a52c696f19cd74e` |
| 24 | `theorem` | [isCountablyGenerated_seq](../../../../../mathematics/Algebra/LinearAlgebra/CountablyGenerated/Variant8c350e917009132d8a4ad1f1aea0217ca24e1b758a1dd829dde38d476445009d.lean/declarations/iscountablygenerated-seq--4a838554a2943559273d677c.md) | 176 | `result-track:4a838554a2943559273d677c110479c9134673846c1808fc80c2de6989837c07` |
| 25 | `theorem` | [isCountablyGenerated_of_seq](../../../../../mathematics/Algebra/LinearAlgebra/CountablyGenerated/Variant8c350e917009132d8a4ad1f1aea0217ca24e1b758a1dd829dde38d476445009d.lean/declarations/iscountablygenerated-of-seq--30b73110bc19e11493242cba.md) | 181 | `result-track:30b73110bc19e11493242cbaffc5cb1c905a2dd618181b3038cf676eb3a66051` |
| 26 | `theorem` | [isCountablyGenerated_biInf_principal](../../../../../mathematics/Algebra/LinearAlgebra/CountablyGenerated/Variant8c350e917009132d8a4ad1f1aea0217ca24e1b758a1dd829dde38d476445009d.lean/declarations/iscountablygenerated-biinf-principal--80bac5372d718ede68d83880.md) | 186 | `result-track:80bac5372d718ede68d8388091e6f7e2a7c83fea5622f10783077536a4c24591` |
| 27 | `theorem` | [isCountablyGenerated_iff_exists_antitone_basis](../../../../../mathematics/Algebra/LinearAlgebra/CountablyGenerated/Variant8c350e917009132d8a4ad1f1aea0217ca24e1b758a1dd829dde38d476445009d.lean/declarations/iscountablygenerated-iff-exists-antitone-basis--c3a50f0c8ef66daf56e52d3e.md) | 190 | `result-track:c3a50f0c8ef66daf56e52d3e81f97f42e9891262261326d754b03ab6c839dd11` |
| 28 | `theorem` | [isCountablyGenerated_principal](../../../../../mathematics/Algebra/LinearAlgebra/CountablyGenerated/Variant8c350e917009132d8a4ad1f1aea0217ca24e1b758a1dd829dde38d476445009d.lean/declarations/iscountablygenerated-principal--3c0d1541e242b8ae3360c6fc.md) | 200 | `result-track:3c0d1541e242b8ae3360c6fce746ebb4a7113bd81715531c3c3c4215bfe5b0d3` |
| 29 | `theorem` | [isCountablyGenerated_pure](../../../../../mathematics/Algebra/LinearAlgebra/CountablyGenerated/Variant8c350e917009132d8a4ad1f1aea0217ca24e1b758a1dd829dde38d476445009d.lean/declarations/iscountablygenerated-pure--bce38243fa8f15617055c86d.md) | 204 | `result-track:bce38243fa8f15617055c86d10e373c473a8dacb560a11f8764bdc3f7f152934` |
| 30 | `theorem` | [isCountablyGenerated_bot](../../../../../mathematics/Algebra/LinearAlgebra/CountablyGenerated/Variant8c350e917009132d8a4ad1f1aea0217ca24e1b758a1dd829dde38d476445009d.lean/declarations/iscountablygenerated-bot--9327e7815619e5660ce73ce5.md) | 209 | `result-track:9327e7815619e5660ce73ce52f5a6ba0a0e05123bf1215ed5c0b11c52e188c88` |
| 31 | `theorem` | [isCountablyGenerated_top](../../../../../mathematics/Algebra/LinearAlgebra/CountablyGenerated/Variant8c350e917009132d8a4ad1f1aea0217ca24e1b758a1dd829dde38d476445009d.lean/declarations/iscountablygenerated-top--29610501db853d699e1f2d84.md) | 213 | `result-track:29610501db853d699e1f2d84c90c38a584d0ff6aa6d5dade7900a2657914068b` |
| 32 | `instance` | [iInf.isCountablyGenerated](../../../../../mathematics/Algebra/LinearAlgebra/CountablyGenerated/Variant8c350e917009132d8a4ad1f1aea0217ca24e1b758a1dd829dde38d476445009d.lean/declarations/iinf-iscountablygenerated--55921cca4fa608920dc9923d.md) | 216 | `declaration-track:55921cca4fa608920dc9923dae9bb224788cb462db9f6607118c023e83ed1317` |
| 33 | `instance` | [pi.isCountablyGenerated](../../../../../mathematics/Algebra/LinearAlgebra/CountablyGenerated/Variant8c350e917009132d8a4ad1f1aea0217ca24e1b758a1dd829dde38d476445009d.lean/declarations/pi-iscountablygenerated--8b2f6431a2662b4aa130286f.md) | 226 | `declaration-track:8b2f6431a2662b4aa130286f224945c1fc8a4d14682bd56db427f792ec1b9ecc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
