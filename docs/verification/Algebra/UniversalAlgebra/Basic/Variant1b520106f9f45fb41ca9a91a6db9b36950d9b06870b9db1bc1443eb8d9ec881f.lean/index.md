# Verification target: GRWTSK.Algebra.UniversalAlgebra.Basic.Variant1b520106f9f45fb41ca9a91a6db9b36950d9b06870b9db1bc1443eb8d9ec881f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5d659594f1efa6c7e8c48144ed488aa25fe3a31a",
  "lexical_observation_count": 57,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant1b520106f9f45fb41ca9a91a6db9b36950d9b06870b9db1bc1443eb8d9ec881f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1b520106f9f45fb41ca9a91a6db9b36950d9b06870b9db1bc1443eb8d9ec881f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1b520106f9f45fb41ca9a91a6db9b36950d9b06870b9db1bc1443eb8d9ec881f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5d659594f1efa6c7e8c48144ed488aa25fe3a31a`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Basic/Variant1b520106f9f45fb41ca9a91a6db9b36950d9b06870b9db1bc1443eb8d9ec881f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Basic/Variant1b520106f9f45fb41ca9a91a6db9b36950d9b06870b9db1bc1443eb8d9ec881f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Sub.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Unbundled.ExistsOfLE` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [add_tsub_cancel_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1b520106f9f45fb41ca9a91a6db9b36950d9b06870b9db1bc1443eb8d9ec881f.lean/declarations/add-tsub-cancel-of-le--2e1de05cd4db6a8103e0d8b1.md) | 32 | `result-track:2e1de05cd4db6a8103e0d8b1ebef79a7642135f19e95bc429fa56d57dffff793` |
| 2 | `theorem` | [tsub_add_cancel_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1b520106f9f45fb41ca9a91a6db9b36950d9b06870b9db1bc1443eb8d9ec881f.lean/declarations/tsub-add-cancel-of-le--b879c44059dce2851b9254aa.md) | 37 | `result-track:b879c44059dce2851b9254aa122064c4ecf4bbe98dafbbe711a62eb4999469ba` |
| 3 | `theorem` | [add_le_of_le_tsub_right_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1b520106f9f45fb41ca9a91a6db9b36950d9b06870b9db1bc1443eb8d9ec881f.lean/declarations/add-le-of-le-tsub-right-of-le--aae084c485bf3accac3e7c1f.md) | 41 | `result-track:aae084c485bf3accac3e7c1ff4e280b414486b5980b2c0d06e1d6a1ac9c26023` |
| 4 | `theorem` | [add_le_of_le_tsub_left_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1b520106f9f45fb41ca9a91a6db9b36950d9b06870b9db1bc1443eb8d9ec881f.lean/declarations/add-le-of-le-tsub-left-of-le--1443256d45176d0981b9c00e.md) | 44 | `result-track:1443256d45176d0981b9c00e38e1099e80ee0c4853e80fbe87b03eb172a4eb34` |
| 5 | `theorem` | [tsub_le_tsub_iff_right](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1b520106f9f45fb41ca9a91a6db9b36950d9b06870b9db1bc1443eb8d9ec881f.lean/declarations/tsub-le-tsub-iff-right--d233586298e1aaa51be593b0.md) | 47 | `result-track:d233586298e1aaa51be593b054cf2b31bd64b0a64d36279f1a645e3ef0315db7` |
| 6 | `theorem` | [tsub_left_inj](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1b520106f9f45fb41ca9a91a6db9b36950d9b06870b9db1bc1443eb8d9ec881f.lean/declarations/tsub-left-inj--8126aa9565d5bad5af67f04c.md) | 50 | `result-track:8126aa9565d5bad5af67f04cdc276daef61dbb0c329594eba699369b52d409d8` |
| 7 | `theorem` | [tsub_inj_left](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1b520106f9f45fb41ca9a91a6db9b36950d9b06870b9db1bc1443eb8d9ec881f.lean/declarations/tsub-inj-left--caad4e048541c30edb999c8f.md) | 53 | `result-track:caad4e048541c30edb999c8fde768d99e87a261c22cb710a96e66880db2eb101` |
| 8 | `theorem` | [lt_of_tsub_lt_tsub_right_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1b520106f9f45fb41ca9a91a6db9b36950d9b06870b9db1bc1443eb8d9ec881f.lean/declarations/lt-of-tsub-lt-tsub-right-of-le--56dea2ebcd582cbac5244ad2.md) | 57 | `result-track:56dea2ebcd582cbac5244ad2cc8dc6026009454955ca58871b6145e11c47b26b` |
| 9 | `theorem` | [tsub_add_tsub_cancel](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1b520106f9f45fb41ca9a91a6db9b36950d9b06870b9db1bc1443eb8d9ec881f.lean/declarations/tsub-add-tsub-cancel--56c599c33c6afa4128a257fc.md) | 62 | `result-track:56c599c33c6afa4128a257fc57b49de41852c1e428db780675c152854f02f764` |
| 10 | `theorem` | [tsub_tsub_tsub_cancel_right](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1b520106f9f45fb41ca9a91a6db9b36950d9b06870b9db1bc1443eb8d9ec881f.lean/declarations/tsub-tsub-tsub-cancel-right--cb283197031ce20268e74545.md) | 66 | `result-track:cb283197031ce20268e74545fcb9206cf4fcdeb726b0a537594bf50756a5dee1` |
| 11 | `theorem` | [eq_tsub_iff_add_eq_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1b520106f9f45fb41ca9a91a6db9b36950d9b06870b9db1bc1443eb8d9ec881f.lean/declarations/eq-tsub-iff-add-eq-of-le--5b96e739cbb7533b06b39684.md) | 74 | `result-track:5b96e739cbb7533b06b3968487495a12d835fc7a715b4e289cb3425d59d74f87` |
| 12 | `theorem` | [tsub_eq_iff_eq_add_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1b520106f9f45fb41ca9a91a6db9b36950d9b06870b9db1bc1443eb8d9ec881f.lean/declarations/tsub-eq-iff-eq-add-of-le--148e9810f0ef55cdbe2168bf.md) | 80 | `result-track:148e9810f0ef55cdbe2168bf25ce2e60bbd4f38b91f4bcb381cf8e9f8269c929` |
| 13 | `theorem` | [add_tsub_assoc_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1b520106f9f45fb41ca9a91a6db9b36950d9b06870b9db1bc1443eb8d9ec881f.lean/declarations/add-tsub-assoc-of-le--4acdc81c2c9c7900f747811a.md) | 83 | `result-track:4acdc81c2c9c7900f747811a38bb3f4ac5209213f6d07218c7fbd7f9e6fbc962` |
| 14 | `theorem` | [tsub_add_eq_add_tsub](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1b520106f9f45fb41ca9a91a6db9b36950d9b06870b9db1bc1443eb8d9ec881f.lean/declarations/tsub-add-eq-add-tsub--c4ea7b900c373297cc784ec9.md) | 87 | `result-track:c4ea7b900c373297cc784ec9fc5960f0307d328f6ba86107c189e2d0146b6b68` |
| 15 | `theorem` | [tsub_tsub_assoc](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1b520106f9f45fb41ca9a91a6db9b36950d9b06870b9db1bc1443eb8d9ec881f.lean/declarations/tsub-tsub-assoc--30e2671ba9d9d34928d9b5de.md) | 90 | `result-track:30e2671ba9d9d34928d9b5deb0e44e87abd00deb773568ac9b3ebfa65cdae586` |
| 16 | `theorem` | [tsub_add_tsub_comm](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1b520106f9f45fb41ca9a91a6db9b36950d9b06870b9db1bc1443eb8d9ec881f.lean/declarations/tsub-add-tsub-comm--6bd30e6b84019d32ed86ea77.md) | 94 | `result-track:6bd30e6b84019d32ed86ea776eac52e2957bd02cc5dc97cd52808b0381cc0fc3` |
| 17 | `theorem` | [le_tsub_iff_left](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1b520106f9f45fb41ca9a91a6db9b36950d9b06870b9db1bc1443eb8d9ec881f.lean/declarations/le-tsub-iff-left--150c85a044a635c89543afb8.md) | 98 | `result-track:150c85a044a635c89543afb825bb41e7327e0ec9417f3d61f4edc3333fc34f2e` |
| 18 | `theorem` | [le_tsub_iff_right](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1b520106f9f45fb41ca9a91a6db9b36950d9b06870b9db1bc1443eb8d9ec881f.lean/declarations/le-tsub-iff-right--d139854a0bb88f2220e5d2e9.md) | 101 | `result-track:d139854a0bb88f2220e5d2e98c72ad43fe0cf50fdda44024405308b4070cda17` |
| 19 | `theorem` | [tsub_lt_iff_left](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1b520106f9f45fb41ca9a91a6db9b36950d9b06870b9db1bc1443eb8d9ec881f.lean/declarations/tsub-lt-iff-left--b7d4c2af33dd44bafbe3dceb.md) | 106 | `result-track:b7d4c2af33dd44bafbe3dcebbc1c2a85db60db1635f18a3426d9b03e8077689c` |
| 20 | `theorem` | [tsub_lt_iff_right](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1b520106f9f45fb41ca9a91a6db9b36950d9b06870b9db1bc1443eb8d9ec881f.lean/declarations/tsub-lt-iff-right--1a1b119b43554a42796713ef.md) | 112 | `result-track:1a1b119b43554a42796713ef3f394be43adaf94f8739a94c86c188c5396af33a` |
| 21 | `theorem` | [tsub_lt_iff_tsub_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1b520106f9f45fb41ca9a91a6db9b36950d9b06870b9db1bc1443eb8d9ec881f.lean/declarations/tsub-lt-iff-tsub-lt--7cd27be7ae6e259613499d1d.md) | 117 | `result-track:7cd27be7ae6e259613499d1db7a0ce4abc9cd6d92724c06eb71d7956754b631d` |
| 22 | `theorem` | [le_tsub_iff_le_tsub](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1b520106f9f45fb41ca9a91a6db9b36950d9b06870b9db1bc1443eb8d9ec881f.lean/declarations/le-tsub-iff-le-tsub--c04fdc8816821098d75fff5a.md) | 121 | `result-track:c04fdc8816821098d75fff5a13cf509b898c6720e832c2119892281cd16dca73` |
| 23 | `theorem` | [lt_tsub_iff_right_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1b520106f9f45fb41ca9a91a6db9b36950d9b06870b9db1bc1443eb8d9ec881f.lean/declarations/lt-tsub-iff-right-of-le--f4d0560e8053563c3d99483d.md) | 125 | `result-track:f4d0560e8053563c3d99483d96c1e91c5eb5a63fef78b1c6bc1915327749b90d` |
| 24 | `theorem` | [lt_tsub_iff_left_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1b520106f9f45fb41ca9a91a6db9b36950d9b06870b9db1bc1443eb8d9ec881f.lean/declarations/lt-tsub-iff-left-of-le--3570a46724a5ede2a65b8e1e.md) | 131 | `result-track:3570a46724a5ede2a65b8e1e70cbe881a85bafcda094a6164cd79db26a358bac` |
| 25 | `theorem` | [tsub_inj_right](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1b520106f9f45fb41ca9a91a6db9b36950d9b06870b9db1bc1443eb8d9ec881f.lean/declarations/tsub-inj-right--7ca2cd4683a4d1bf17bf8606.md) | 136 | `result-track:7ca2cd4683a4d1bf17bf8606c021b574c63e4e8f8cb317d64126c19d2e849302` |
| 26 | `theorem` | [lt_of_tsub_lt_tsub_left_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1b520106f9f45fb41ca9a91a6db9b36950d9b06870b9db1bc1443eb8d9ec881f.lean/declarations/lt-of-tsub-lt-tsub-left-of-le--bc9a9cfe2577df166787d08b.md) | 141 | `result-track:bc9a9cfe2577df166787d08b9f3abc7711194cdf8308c0ce65a41da19391bd69` |
| 27 | `theorem` | [tsub_lt_tsub_left_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1b520106f9f45fb41ca9a91a6db9b36950d9b06870b9db1bc1443eb8d9ec881f.lean/declarations/tsub-lt-tsub-left-of-le--aa693818b3dc8ee5fdb913b7.md) | 146 | `result-track:aa693818b3dc8ee5fdb913b7f90cb876ee0509a08804a8d9c8a6ebd5ba760e66` |
| 28 | `theorem` | [tsub_lt_tsub_right_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1b520106f9f45fb41ca9a91a6db9b36950d9b06870b9db1bc1443eb8d9ec881f.lean/declarations/tsub-lt-tsub-right-of-le--4c9f645fd9b210f25fecee2f.md) | 150 | `result-track:4c9f645fd9b210f25fecee2f62969891a3aa7851cd30f6705c007990b842f0f9` |
| 29 | `theorem` | [tsub_lt_tsub_iff_left_of_le_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1b520106f9f45fb41ca9a91a6db9b36950d9b06870b9db1bc1443eb8d9ec881f.lean/declarations/tsub-lt-tsub-iff-left-of-le-of-le--c57f8b52a14fe17a7c64be1e.md) | 155 | `result-track:c57f8b52a14fe17a7c64be1ea50ec8a2786c222b9a51130e4327b354ac65be9f` |
| 30 | `lemma` | [add_add_tsub_cancel](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1b520106f9f45fb41ca9a91a6db9b36950d9b06870b9db1bc1443eb8d9ec881f.lean/declarations/add-add-tsub-cancel--cc93672ce1ae151f14db6449.md) | 161 | `result-track:cc93672ce1ae151f14db6449a909b0904719e51f7b26d703e30b8fcde5ce0f47` |
| 31 | `theorem` | [add_tsub_tsub_cancel](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1b520106f9f45fb41ca9a91a6db9b36950d9b06870b9db1bc1443eb8d9ec881f.lean/declarations/add-tsub-tsub-cancel--b502add7a30dbf013940fa5a.md) | 166 | `result-track:b502add7a30dbf013940fa5a09b9ef7dc118eca5fa3558452d2d3805136c80d1` |
| 32 | `theorem` | [tsub_tsub_cancel_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1b520106f9f45fb41ca9a91a6db9b36950d9b06870b9db1bc1443eb8d9ec881f.lean/declarations/tsub-tsub-cancel-of-le--ba8b680d77c383b46b03e709.md) | 170 | `result-track:ba8b680d77c383b46b03e7098f7a4d5de3f508f56d1100c537e5cf05865dc467` |
| 33 | `theorem` | [tsub_tsub_tsub_cancel_left](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1b520106f9f45fb41ca9a91a6db9b36950d9b06870b9db1bc1443eb8d9ec881f.lean/declarations/tsub-tsub-tsub-cancel-left--63a8a27b7f33a7e7b1d3ebc9.md) | 174 | `result-track:63a8a27b7f33a7e7b1d3ebc973f2e959107f69f2d253465147ea1a3d15843342` |
| 34 | `theorem` | [eq_tsub_iff_add_eq_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1b520106f9f45fb41ca9a91a6db9b36950d9b06870b9db1bc1443eb8d9ec881f.lean/declarations/eq-tsub-iff-add-eq-of-le--828d51e32a0bb5c8727b8710.md) | 186 | `result-track:828d51e32a0bb5c8727b8710b77d53cafa5adc8f39983727abb3da3fd4860604` |
| 35 | `theorem` | [tsub_eq_iff_eq_add_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1b520106f9f45fb41ca9a91a6db9b36950d9b06870b9db1bc1443eb8d9ec881f.lean/declarations/tsub-eq-iff-eq-add-of-le--0fc27a3eb4b8112e9aadbd5a.md) | 189 | `result-track:0fc27a3eb4b8112e9aadbd5a3e5bd8b3b8d0d1cc80dd150b49821d8c48b8b3ac` |
| 36 | `theorem` | [add_tsub_assoc_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1b520106f9f45fb41ca9a91a6db9b36950d9b06870b9db1bc1443eb8d9ec881f.lean/declarations/add-tsub-assoc-of-le--3486df3b43eb3f695017a590.md) | 193 | `result-track:3486df3b43eb3f695017a5900f524794180e4da59e5e3eebbbe27355bb6c8785` |
| 37 | `theorem` | [tsub_add_eq_add_tsub](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1b520106f9f45fb41ca9a91a6db9b36950d9b06870b9db1bc1443eb8d9ec881f.lean/declarations/tsub-add-eq-add-tsub--750baa0549140cea91efdc1f.md) | 196 | `result-track:750baa0549140cea91efdc1f560bd5bc3d004e025478bda064675b0eab020372` |
| 38 | `theorem` | [tsub_tsub_assoc](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1b520106f9f45fb41ca9a91a6db9b36950d9b06870b9db1bc1443eb8d9ec881f.lean/declarations/tsub-tsub-assoc--a5dad1c16e9725f3f491552c.md) | 199 | `result-track:a5dad1c16e9725f3f491552cc19491b543398ef0e35cebdd421dd277423f9b4a` |
| 39 | `theorem` | [tsub_add_tsub_comm](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1b520106f9f45fb41ca9a91a6db9b36950d9b06870b9db1bc1443eb8d9ec881f.lean/declarations/tsub-add-tsub-comm--c6c24cfc80ac0d869ad8b127.md) | 202 | `result-track:c6c24cfc80ac0d869ad8b12797eb3201c0ad6238259f3a2a6e0acdbe8753d146` |
| 40 | `theorem` | [le_tsub_iff_left](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1b520106f9f45fb41ca9a91a6db9b36950d9b06870b9db1bc1443eb8d9ec881f.lean/declarations/le-tsub-iff-left--a5156f9fcc65d3ec20de2a49.md) | 205 | `result-track:a5156f9fcc65d3ec20de2a494e1acb580d6a17afefca89c1cd9039b0e3b1bf6c` |
| 41 | `theorem` | [le_tsub_iff_right](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1b520106f9f45fb41ca9a91a6db9b36950d9b06870b9db1bc1443eb8d9ec881f.lean/declarations/le-tsub-iff-right--c876637fee9da293c5664f9c.md) | 208 | `result-track:c876637fee9da293c5664f9c2856fab72d05a6c88148793e0e2d550080ac3737` |
| 42 | `theorem` | [tsub_lt_iff_left](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1b520106f9f45fb41ca9a91a6db9b36950d9b06870b9db1bc1443eb8d9ec881f.lean/declarations/tsub-lt-iff-left--565625b08a99ebb1fb075296.md) | 211 | `result-track:565625b08a99ebb1fb0752966152a2fec91bb496168a41d3a37c8af465c7b27c` |
| 43 | `theorem` | [tsub_lt_iff_right](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1b520106f9f45fb41ca9a91a6db9b36950d9b06870b9db1bc1443eb8d9ec881f.lean/declarations/tsub-lt-iff-right--05762b2a68916aacf55b0906.md) | 214 | `result-track:05762b2a68916aacf55b0906608eb8e6044ac74dfac0bf9f26c543a4155f5c17` |
| 44 | `theorem` | [tsub_lt_iff_tsub_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1b520106f9f45fb41ca9a91a6db9b36950d9b06870b9db1bc1443eb8d9ec881f.lean/declarations/tsub-lt-iff-tsub-lt--76661ddd7501ea4602d47a25.md) | 217 | `result-track:76661ddd7501ea4602d47a251c0e722013c446a5fea9287126d6a1abed4b422c` |
| 45 | `theorem` | [le_tsub_iff_le_tsub](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1b520106f9f45fb41ca9a91a6db9b36950d9b06870b9db1bc1443eb8d9ec881f.lean/declarations/le-tsub-iff-le-tsub--0a7e3934543ed51b3d1b1b69.md) | 220 | `result-track:0a7e3934543ed51b3d1b1b69ee74019890a29db01e1a49204c5b223b0af0e25d` |
| 46 | `theorem` | [lt_tsub_iff_right_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1b520106f9f45fb41ca9a91a6db9b36950d9b06870b9db1bc1443eb8d9ec881f.lean/declarations/lt-tsub-iff-right-of-le--061d348c125148527296ec23.md) | 224 | `result-track:061d348c125148527296ec2329bdb82a877f84dac22ef9de6ba51ddf63481bcb` |
| 47 | `theorem` | [lt_tsub_iff_left_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1b520106f9f45fb41ca9a91a6db9b36950d9b06870b9db1bc1443eb8d9ec881f.lean/declarations/lt-tsub-iff-left-of-le--7c22536bae2259c3aa8f86d4.md) | 228 | `result-track:7c22536bae2259c3aa8f86d459b03bb1bc8e6e6c05290f6573f535488342bdf4` |
| 48 | `theorem` | [lt_of_tsub_lt_tsub_left_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1b520106f9f45fb41ca9a91a6db9b36950d9b06870b9db1bc1443eb8d9ec881f.lean/declarations/lt-of-tsub-lt-tsub-left-of-le--06baf3783f7e989bb4960e82.md) | 232 | `result-track:06baf3783f7e989bb4960e82b797b0fa69a1ca051fdd2d309a25caeae083dda9` |
| 49 | `theorem` | [tsub_lt_tsub_left_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1b520106f9f45fb41ca9a91a6db9b36950d9b06870b9db1bc1443eb8d9ec881f.lean/declarations/tsub-lt-tsub-left-of-le--9caaaeb7d3d76c950cebfec6.md) | 236 | `result-track:9caaaeb7d3d76c950cebfec602df0bd3fd0049be9f4e3a13e461a0924d51e91e` |
| 50 | `theorem` | [tsub_lt_tsub_right_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1b520106f9f45fb41ca9a91a6db9b36950d9b06870b9db1bc1443eb8d9ec881f.lean/declarations/tsub-lt-tsub-right-of-le--0243d84868875fa56f652b0e.md) | 239 | `result-track:0243d84868875fa56f652b0ee7d98ffc82904c28922d2aaf80e62afe13ef8628` |
| 51 | `theorem` | [tsub_inj_right](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1b520106f9f45fb41ca9a91a6db9b36950d9b06870b9db1bc1443eb8d9ec881f.lean/declarations/tsub-inj-right--59a7b999a9f720cade07c72f.md) | 242 | `result-track:59a7b999a9f720cade07c72fc98cb49208b1c32ed2df9a2d212e62a9bbd0ae04` |
| 52 | `theorem` | [tsub_lt_tsub_iff_left_of_le_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1b520106f9f45fb41ca9a91a6db9b36950d9b06870b9db1bc1443eb8d9ec881f.lean/declarations/tsub-lt-tsub-iff-left-of-le-of-le--f96e8afe850128a8440f7fbf.md) | 246 | `result-track:f96e8afe850128a8440f7fbf9450b36897eff228eb704d53c25bacac4d73e482` |
| 53 | `lemma` | [add_add_tsub_cancel](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1b520106f9f45fb41ca9a91a6db9b36950d9b06870b9db1bc1443eb8d9ec881f.lean/declarations/add-add-tsub-cancel--cef339015554b0f762ff34f1.md) | 252 | `result-track:cef339015554b0f762ff34f19ed7336890ba82def5b7d3d3ff2d4664fe59e528` |
| 54 | `theorem` | [add_tsub_tsub_cancel](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1b520106f9f45fb41ca9a91a6db9b36950d9b06870b9db1bc1443eb8d9ec881f.lean/declarations/add-tsub-tsub-cancel--62ebf2cf8d18b0e831be30fc.md) | 256 | `result-track:62ebf2cf8d18b0e831be30fc94ba8a7f805054e43c6c2c60f476e397a364c36c` |
| 55 | `theorem` | [tsub_tsub_cancel_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1b520106f9f45fb41ca9a91a6db9b36950d9b06870b9db1bc1443eb8d9ec881f.lean/declarations/tsub-tsub-cancel-of-le--c34b360661c4dc819717dbd7.md) | 260 | `result-track:c34b360661c4dc819717dbd7c235db9eb8d8f30a462c8a134bc067dbdb79a619` |
| 56 | `theorem` | [tsub_tsub_tsub_cancel_left](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1b520106f9f45fb41ca9a91a6db9b36950d9b06870b9db1bc1443eb8d9ec881f.lean/declarations/tsub-tsub-tsub-cancel-left--b14239311011f5e055a65ca4.md) | 263 | `result-track:b14239311011f5e055a65ca4147425fbca1922b602b427f31199599bdc20765f` |
| 57 | `theorem` | [tsub_tsub_eq_add_tsub_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1b520106f9f45fb41ca9a91a6db9b36950d9b06870b9db1bc1443eb8d9ec881f.lean/declarations/tsub-tsub-eq-add-tsub-of-le--c4897c7e97989d7746128968.md) | 268 | `result-track:c4897c7e97989d774612896851ce3924f41218dbea238f4a49048c6a909fbd75` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
