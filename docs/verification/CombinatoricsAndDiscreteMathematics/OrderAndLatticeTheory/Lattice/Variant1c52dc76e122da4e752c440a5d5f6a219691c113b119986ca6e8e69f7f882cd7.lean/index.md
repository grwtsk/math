# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Lattice.Variant1c52dc76e122da4e752c440a5d5f6a219691c113b119986ca6e8e69f7f882cd7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "82611af5326ff53768b1e97ed6246bf64e0d2662",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant1c52dc76e122da4e752c440a5d5f6a219691c113b119986ca6e8e69f7f882cd7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant1c52dc76e122da4e752c440a5d5f6a219691c113b119986ca6e8e69f7f882cd7.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant1c52dc76e122da4e752c440a5d5f6a219691c113b119986ca6e8e69f7f882cd7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `82611af5326ff53768b1e97ed6246bf64e0d2662`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant1c52dc76e122da4e752c440a5d5f6a219691c113b119986ca6e8e69f7f882cd7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant1c52dc76e122da4e752c440a5d5f6a219691c113b119986ca6e8e69f7f882cd7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Accumulate` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.ConditionallyCompleteLattice.Finset` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Finset.Nat` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant1c52dc76e122da4e752c440a5d5f6a219691c113b119986ca6e8e69f7f882cd7.lean/declarations/instance--15cec8a0da25a01607489fa8.md) | 34 | `declaration-track:15cec8a0da25a01607489fa8e8ecf7f20331022c9361352d786eeebca49134ad` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant1c52dc76e122da4e752c440a5d5f6a219691c113b119986ca6e8e69f7f882cd7.lean/declarations/instance--9c04ae124063d8c72628cb6e.md) | 38 | `declaration-track:9c04ae124063d8c72628cb6ea8284360bfb8331f30e6cc4ec484180fc3a69c96` |
| 3 | `theorem` | [sInf_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant1c52dc76e122da4e752c440a5d5f6a219691c113b119986ca6e8e69f7f882cd7.lean/declarations/sinf-def--2a8e475eb95a6000f6e1b7b3.md) | 42 | `result-track:2a8e475eb95a6000f6e1b7b39ad6ac18106c9852a99a436e813bc8741cb43fd6` |
| 4 | `theorem` | [sSup_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant1c52dc76e122da4e752c440a5d5f6a219691c113b119986ca6e8e69f7f882cd7.lean/declarations/ssup-def--9ad1ecbf64255ecc85583a5b.md) | 46 | `result-track:9ad1ecbf64255ecc85583a5bcf9af33fd7d776e058540a8994749559f25e04b2` |
| 5 | `theorem` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.SInfDef.Variant4cf2a4e2427224aa0339444e82b561081ae38d267f5b5832907ca20417cd3d0c.Set.Infinite.Nat.sSup_eq_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant1c52dc76e122da4e752c440a5d5f6a219691c113b119986ca6e8e69f7f882cd7.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-orderandlatticetheory-si--0fe9ef377e01f1cce44d96c1.md) | 50 | `result-track:0fe9ef377e01f1cce44d96c1c5a13416e43c2385dc5a57061362a743f570430e` |
| 6 | `theorem` | [sInf_eq_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant1c52dc76e122da4e752c440a5d5f6a219691c113b119986ca6e8e69f7f882cd7.lean/declarations/sinf-eq-zero--d98505157cf3bc75dfd84a4c.md) | 56 | `result-track:d98505157cf3bc75dfd84a4c59b5bed3146afeaa42172602c66fc4e4f40e8a28` |
| 7 | `theorem` | [sInf_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant1c52dc76e122da4e752c440a5d5f6a219691c113b119986ca6e8e69f7f882cd7.lean/declarations/sinf-empty--11897fb5737a5c874b76b4f9.md) | 64 | `result-track:11897fb5737a5c874b76b4f9c1030dfaf2b5d5ea517c20143473449f8f1de17c` |
| 8 | `theorem` | [iInf_of_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant1c52dc76e122da4e752c440a5d5f6a219691c113b119986ca6e8e69f7f882cd7.lean/declarations/iinf-of-empty--fa1b3f5e2bf1b034148b8e91.md) | 70 | `result-track:fa1b3f5e2bf1b034148b8e9194f72e37732892c738db3b0baf09743ec2e70c6c` |
| 9 | `lemma` | [iInf_const_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant1c52dc76e122da4e752c440a5d5f6a219691c113b119986ca6e8e69f7f882cd7.lean/declarations/iinf-const-zero--5e96f670d490f139fdaa5181.md) | 75 | `result-track:5e96f670d490f139fdaa518140098b74bb80ce320295ea84f9226696e5b29d05` |
| 10 | `theorem` | [sInf_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant1c52dc76e122da4e752c440a5d5f6a219691c113b119986ca6e8e69f7f882cd7.lean/declarations/sinf-mem--c6da8d86384cab7bf722c5bf.md) | 78 | `result-track:c6da8d86384cab7bf722c5bf6488f868fee7f6e65fdca744f391cdbdae8b8d75` |
| 11 | `theorem` | [notMem_of_lt_sInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant1c52dc76e122da4e752c440a5d5f6a219691c113b119986ca6e8e69f7f882cd7.lean/declarations/notmem-of-lt-sinf--aae5d1e1a0ae810ca74ca27a.md) | 83 | `result-track:aae5d1e1a0ae810ca74ca27aa88944665ca1a191dde267af55506b6688adf05e` |
| 12 | `theorem` | [sInf_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant1c52dc76e122da4e752c440a5d5f6a219691c113b119986ca6e8e69f7f882cd7.lean/declarations/sinf-le--8ae620d0bf51131360179b12.md) | 91 | `result-track:8ae620d0bf51131360179b129db1f30cd3946e7559d38d0729c70303441dddd0` |
| 13 | `theorem` | [nonempty_of_pos_sInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant1c52dc76e122da4e752c440a5d5f6a219691c113b119986ca6e8e69f7f882cd7.lean/declarations/nonempty-of-pos-sinf--516b9372eede70414f10d9bc.md) | 96 | `result-track:516b9372eede70414f10d9bc95a525ad0121cb642d4b41de3adfeba4fdc3bc3e` |
| 14 | `theorem` | [nonempty_of_sInf_eq_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant1c52dc76e122da4e752c440a5d5f6a219691c113b119986ca6e8e69f7f882cd7.lean/declarations/nonempty-of-sinf-eq-succ--e373759b30e7ae7f3b62835a.md) | 105 | `result-track:e373759b30e7ae7f3b62835aee3473b69ff8e047cf6e40060051e58198568eb5` |
| 15 | `theorem` | [eq_Ici_of_nonempty_of_upward_closed](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant1c52dc76e122da4e752c440a5d5f6a219691c113b119986ca6e8e69f7f882cd7.lean/declarations/eq-ici-of-nonempty-of-upward-closed--295d81a8b5394c7b3b23ed8d.md) | 108 | `result-track:295d81a8b5394c7b3b23ed8d051c9e088b55d631cb418cc192b8e82a918369d2` |
| 16 | `theorem` | [sInf_upward_closed_eq_succ_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant1c52dc76e122da4e752c440a5d5f6a219691c113b119986ca6e8e69f7f882cd7.lean/declarations/sinf-upward-closed-eq-succ-iff--ef732bc415caec2b662e6f93.md) | 112 | `result-track:ef732bc415caec2b662e6f932e71e1751cb893d9d6a646d04592478875254587` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant1c52dc76e122da4e752c440a5d5f6a219691c113b119986ca6e8e69f7f882cd7.lean/declarations/instance--be1128d0aece5f3416940a01.md) | 127 | `declaration-track:be1128d0aece5f3416940a01c560232c86de75c5d38a318702c38051f3e22bf6` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant1c52dc76e122da4e752c440a5d5f6a219691c113b119986ca6e8e69f7f882cd7.lean/declarations/instance--394389b692551ae7055ad2c6.md) | 131 | `declaration-track:394389b692551ae7055ad2c608eb83a0cd023be4b62b1b37aa2bc63e9d9c3ea1` |
| 19 | `theorem` | [sSup_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant1c52dc76e122da4e752c440a5d5f6a219691c113b119986ca6e8e69f7f882cd7.lean/declarations/ssup-mem--3b5436ed5ebd4ecc08a4af52.md) | 153 | `result-track:3b5436ed5ebd4ecc08a4af5206c8815afeae33fce44a4a4692de90fd165a416a` |
| 20 | `theorem` | [sInf_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant1c52dc76e122da4e752c440a5d5f6a219691c113b119986ca6e8e69f7f882cd7.lean/declarations/sinf-add--772e9124a5f675b6cd0def0d.md) | 157 | `result-track:772e9124a5f675b6cd0def0d69fbe3232e11f14b4b85a1a49310e0e2ade1e6df` |
| 21 | `theorem` | [sInf_add'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant1c52dc76e122da4e752c440a5d5f6a219691c113b119986ca6e8e69f7f882cd7.lean/declarations/sinf-add--c3de560a0c7129ab9c3ba75d.md) | 172 | `result-track:c3de560a0c7129ab9c3ba75dcb3b74e6a0a4855f2d0bafd022448d7cb13077c0` |
| 22 | `theorem` | [iSup_lt_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant1c52dc76e122da4e752c440a5d5f6a219691c113b119986ca6e8e69f7f882cd7.lean/declarations/isup-lt-succ--8eaa7fa7d187a9c43076fa2b.md) | 190 | `result-track:8eaa7fa7d187a9c43076fa2bd1e306239b56cf41bcb71bc835ccc09355b9a004` |
| 23 | `theorem` | [iSup_lt_succ'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant1c52dc76e122da4e752c440a5d5f6a219691c113b119986ca6e8e69f7f882cd7.lean/declarations/isup-lt-succ--13bc32c3294b259c974f7e67.md) | 193 | `result-track:13bc32c3294b259c974f7e67d76ca8102db0920e6414b50f728d2d2bd0727b11` |
| 24 | `theorem` | [iInf_lt_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant1c52dc76e122da4e752c440a5d5f6a219691c113b119986ca6e8e69f7f882cd7.lean/declarations/iinf-lt-succ--045f228273ba6d0ce681ff39.md) | 197 | `result-track:045f228273ba6d0ce681ff39d0d0f5d1f5e38d80e5b3771a1c7a06db799b4347` |
| 25 | `theorem` | [iInf_lt_succ'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant1c52dc76e122da4e752c440a5d5f6a219691c113b119986ca6e8e69f7f882cd7.lean/declarations/iinf-lt-succ--e3fa5e930b9d59f36a35576e.md) | 200 | `result-track:e3fa5e930b9d59f36a35576ef2bcffe15dd58722206bb5c06a546c31d2e69475` |
| 26 | `theorem` | [iSup_le_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant1c52dc76e122da4e752c440a5d5f6a219691c113b119986ca6e8e69f7f882cd7.lean/declarations/isup-le-succ--373f9610758ef2616ec4f392.md) | 203 | `result-track:373f9610758ef2616ec4f392988a18e8a58c956301037ecce5cbb4b77c06bd7d` |
| 27 | `theorem` | [iSup_le_succ'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant1c52dc76e122da4e752c440a5d5f6a219691c113b119986ca6e8e69f7f882cd7.lean/declarations/isup-le-succ--d5b692028f710f5bb8a862f4.md) | 206 | `result-track:d5b692028f710f5bb8a862f4157fd0edc3cd566d34295960fb3cf0bfb1e534e9` |
| 28 | `theorem` | [iInf_le_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant1c52dc76e122da4e752c440a5d5f6a219691c113b119986ca6e8e69f7f882cd7.lean/declarations/iinf-le-succ--47010fd9c39a4289abd3de2f.md) | 209 | `result-track:47010fd9c39a4289abd3de2f591a4d89609969de7bac7b6c92f9a76ead06eb74` |
| 29 | `theorem` | [iInf_le_succ'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant1c52dc76e122da4e752c440a5d5f6a219691c113b119986ca6e8e69f7f882cd7.lean/declarations/iinf-le-succ--9599f958e9d5c3d982bba862.md) | 212 | `result-track:9599f958e9d5c3d982bba86291d9f209eaaeb4c35f1640253729b81d03550d48` |
| 30 | `theorem` | [biUnion_lt_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant1c52dc76e122da4e752c440a5d5f6a219691c113b119986ca6e8e69f7f882cd7.lean/declarations/biunion-lt-succ--b985d10e4a62ce52d9207b0c.md) | 223 | `result-track:b985d10e4a62ce52d9207b0c3c1864807e1cdf801ceb1823b5ecf56d2b7dd0f7` |
| 31 | `theorem` | [biUnion_lt_succ'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant1c52dc76e122da4e752c440a5d5f6a219691c113b119986ca6e8e69f7f882cd7.lean/declarations/biunion-lt-succ--313bab088752082847dde748.md) | 226 | `result-track:313bab088752082847dde7481e038d95c9aaaaac81111c8bf6903a8776697503` |
| 32 | `theorem` | [biInter_lt_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant1c52dc76e122da4e752c440a5d5f6a219691c113b119986ca6e8e69f7f882cd7.lean/declarations/biinter-lt-succ--d24169a809ba71f4e725be7e.md) | 229 | `result-track:d24169a809ba71f4e725be7eae767eed0497cdd149cd13c5aa78c19810a69581` |
| 33 | `theorem` | [biInter_lt_succ'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant1c52dc76e122da4e752c440a5d5f6a219691c113b119986ca6e8e69f7f882cd7.lean/declarations/biinter-lt-succ--dccc2092c2d4b5a10ad2867e.md) | 232 | `result-track:dccc2092c2d4b5a10ad2867e86da8a4c5dea44878e20803220b08820552612bc` |
| 34 | `theorem` | [biUnion_le_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant1c52dc76e122da4e752c440a5d5f6a219691c113b119986ca6e8e69f7f882cd7.lean/declarations/biunion-le-succ--f63956b61b3072a8506f799f.md) | 235 | `result-track:f63956b61b3072a8506f799f1bedbd15666bc5db744d05b34dc3742da367451a` |
| 35 | `theorem` | [biUnion_le_succ'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant1c52dc76e122da4e752c440a5d5f6a219691c113b119986ca6e8e69f7f882cd7.lean/declarations/biunion-le-succ--96bf298e28ee54e75405e1fb.md) | 238 | `result-track:96bf298e28ee54e75405e1fb67d07efab0a1f61e5202029be4bd40e7f912a2be` |
| 36 | `theorem` | [biInter_le_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant1c52dc76e122da4e752c440a5d5f6a219691c113b119986ca6e8e69f7f882cd7.lean/declarations/biinter-le-succ--6c57ca39bb93f252559dbb35.md) | 241 | `result-track:6c57ca39bb93f252559dbb35af0e3e5be84c69c08fa9ed2f7057b11fdc8db9f4` |
| 37 | `theorem` | [biInter_le_succ'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant1c52dc76e122da4e752c440a5d5f6a219691c113b119986ca6e8e69f7f882cd7.lean/declarations/biinter-le-succ--6a32e787584aa87cd0de8ec5.md) | 244 | `result-track:6a32e787584aa87cd0de8ec573089d9d7d26ff0eaddcbc68ff6677080797c668` |
| 38 | `theorem` | [accumulate_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant1c52dc76e122da4e752c440a5d5f6a219691c113b119986ca6e8e69f7f882cd7.lean/declarations/accumulate-succ--22ee9ed62f957230cc6b7f17.md) | 247 | `result-track:22ee9ed62f957230cc6b7f178c2a3c56212d59599851419d91b353bec0b338f0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
