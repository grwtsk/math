# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Basic.Variant9579e23efe8eb095a5f09a91c9acd571e874abe575f2c16fd8f57ef99ad2cb59

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dedfd0ed6348f5d42b435673211a6bc66660c57c",
  "lexical_observation_count": 59,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9579e23efe8eb095a5f09a91c9acd571e874abe575f2c16fd8f57ef99ad2cb59.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9579e23efe8eb095a5f09a91c9acd571e874abe575f2c16fd8f57ef99ad2cb59.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9579e23efe8eb095a5f09a91c9acd571e874abe575f2c16fd8f57ef99ad2cb59.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dedfd0ed6348f5d42b435673211a6bc66660c57c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9579e23efe8eb095a5f09a91c9acd571e874abe575f2c16fd8f57ef99ad2cb59.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9579e23efe8eb095a5f09a91c9acd571e874abe575f2c16fd8f57ef99ad2cb59.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Hom.Group` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Lattice` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.SetLike.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [MulMemClass](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9579e23efe8eb095a5f09a91c9acd571e874abe575f2c16fd8f57ef99ad2cb59.lean/declarations/mulmemclass--220f5cc05f999134cf717235.md) | 62 | `declaration-track:220f5cc05f999134cf717235ee7182c0f2724e06333046f44731a822b859302b` |
| 2 | `class` | [AddMemClass](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9579e23efe8eb095a5f09a91c9acd571e874abe575f2c16fd8f57ef99ad2cb59.lean/declarations/addmemclass--1eb0a55cd9c60f05e30750ab.md) | 70 | `declaration-track:1eb0a55cd9c60f05e30750ab2b6b28634a2769339fbe92fb691b2cc056449dd5` |
| 3 | `structure` | [Subsemigroup](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9579e23efe8eb095a5f09a91c9acd571e874abe575f2c16fd8f57ef99ad2cb59.lean/declarations/subsemigroup--ed6d3c83a538147593ef1559.md) | 80 | `declaration-track:ed6d3c83a538147593ef15597fd6f5f03a2edd2ab142aab57248dfce370fc69d` |
| 4 | `structure` | [AddSubsemigroup](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9579e23efe8eb095a5f09a91c9acd571e874abe575f2c16fd8f57ef99ad2cb59.lean/declarations/addsubsemigroup--93451a1d1706a146de36cce1.md) | 88 | `declaration-track:93451a1d1706a146de36cce1a598a6a47eef5ee11d4643d6a9f5f3ea2d842d58` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9579e23efe8eb095a5f09a91c9acd571e874abe575f2c16fd8f57ef99ad2cb59.lean/declarations/instance--7814a3b53f3697ffce325830.md) | 100 | `declaration-track:7814a3b53f3697ffce3258304b7db5f27e8fca1278daa044b319ecae7cc9ca70` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9579e23efe8eb095a5f09a91c9acd571e874abe575f2c16fd8f57ef99ad2cb59.lean/declarations/instance--35bdc86ffc459fe1a7dda16e.md) | 104 | `declaration-track:35bdc86ffc459fe1a7dda16e5c722d24c8cf7dfe952eeea1f092b803c321b081` |
| 7 | `theorem` | [mem_carrier](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9579e23efe8eb095a5f09a91c9acd571e874abe575f2c16fd8f57ef99ad2cb59.lean/declarations/mem-carrier--13ebfe65b69a2d3c78b43d11.md) | 110 | `result-track:13ebfe65b69a2d3c78b43d11d635d4f224165fbc2b6668ca3a441060aedbe7d4` |
| 8 | `theorem` | [mem_mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9579e23efe8eb095a5f09a91c9acd571e874abe575f2c16fd8f57ef99ad2cb59.lean/declarations/mem-mk--f0951873064c62bd6a4391e4.md) | 116 | `result-track:f0951873064c62bd6a4391e432e91ea566ee875b93893bbcdc3570168b1e43c3` |
| 9 | `theorem` | [coe_set_mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9579e23efe8eb095a5f09a91c9acd571e874abe575f2c16fd8f57ef99ad2cb59.lean/declarations/coe-set-mk--aadf1ca61886e26f51dbfc9d.md) | 122 | `result-track:aadf1ca61886e26f51dbfc9d6046a45b8ba41c027631459e48bc3c9d65387b05` |
| 10 | `theorem` | [mk_le_mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9579e23efe8eb095a5f09a91c9acd571e874abe575f2c16fd8f57ef99ad2cb59.lean/declarations/mk-le-mk--f120edd2594c7a35f64f8094.md) | 128 | `result-track:f120edd2594c7a35f64f809489a86d05a4870dc2716fd9ac9624214b0ed8a1ee` |
| 11 | `theorem` | [ext](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9579e23efe8eb095a5f09a91c9acd571e874abe575f2c16fd8f57ef99ad2cb59.lean/declarations/ext--f7279f30ea8032404aa5aec2.md) | 135 | `result-track:f7279f30ea8032404aa5aec2cdf82fc281d1068f748692904a5a84baacb212e7` |
| 12 | `def` | [copy](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9579e23efe8eb095a5f09a91c9acd571e874abe575f2c16fd8f57ef99ad2cb59.lean/declarations/copy--781bfa0a40f7949aa305e431.md) | 142 | `declaration-track:781bfa0a40f7949aa305e4314d6889c1b809926b11270f2a2cfe2f004dd215a5` |
| 13 | `theorem` | [coe_copy](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9579e23efe8eb095a5f09a91c9acd571e874abe575f2c16fd8f57ef99ad2cb59.lean/declarations/coe-copy--e085d4072c5fd4faa7f7b931.md) | 152 | `result-track:e085d4072c5fd4faa7f7b9314b52af7202dc210cadee96efd274dc5ca2162eb3` |
| 14 | `theorem` | [copy_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9579e23efe8eb095a5f09a91c9acd571e874abe575f2c16fd8f57ef99ad2cb59.lean/declarations/copy-eq--a524c7cc74633e9218ae81fd.md) | 158 | `result-track:a524c7cc74633e9218ae81fd132c9abed50a86c5b1b5f22126021e7ba98f5dfd` |
| 15 | `theorem` | [mul_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9579e23efe8eb095a5f09a91c9acd571e874abe575f2c16fd8f57ef99ad2cb59.lean/declarations/mul-mem--9ee40c1b9b9024afc72f4f97.md) | 167 | `result-track:9ee40c1b9b9024afc72f4f9744d4e38c0d39c3cf142c566572ca0e7ae9226ba8` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9579e23efe8eb095a5f09a91c9acd571e874abe575f2c16fd8f57ef99ad2cb59.lean/declarations/instance--a85a55fd6c16eab3cb5467f1.md) | 174 | `declaration-track:a85a55fd6c16eab3cb5467f1464bd9de64a36286d5cc80506d83f15d32e96636` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9579e23efe8eb095a5f09a91c9acd571e874abe575f2c16fd8f57ef99ad2cb59.lean/declarations/instance--e9e5ffd1dae6748a06ec114c.md) | 180 | `declaration-track:e9e5ffd1dae6748a06ec114ce46cbb4fd242e5ac372213b69ef27de0e1452e04` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9579e23efe8eb095a5f09a91c9acd571e874abe575f2c16fd8f57ef99ad2cb59.lean/declarations/instance--4ab58658c8117927cc06f8a6.md) | 185 | `declaration-track:4ab58658c8117927cc06f8a6eb9f4ec16cd7df1c615e28cbf9bbf78e482118be` |
| 19 | `theorem` | [not_mem_bot](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9579e23efe8eb095a5f09a91c9acd571e874abe575f2c16fd8f57ef99ad2cb59.lean/declarations/not-mem-bot--fec90c1cf5095e1bc57ebc2b.md) | 189 | `result-track:fec90c1cf5095e1bc57ebc2be8c4b4b7c171bd9b8e19f44d4f95dcf866af8c2b` |
| 20 | `theorem` | [mem_top](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9579e23efe8eb095a5f09a91c9acd571e874abe575f2c16fd8f57ef99ad2cb59.lean/declarations/mem-top--50f5c99733a2116640964b3c.md) | 195 | `result-track:50f5c99733a2116640964b3c6d886ec58b7a4018f4f72774595ea4d8b2b14df6` |
| 21 | `theorem` | [coe_top](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9579e23efe8eb095a5f09a91c9acd571e874abe575f2c16fd8f57ef99ad2cb59.lean/declarations/coe-top--afe7fdf5b740de4ce7f2d92e.md) | 201 | `result-track:afe7fdf5b740de4ce7f2d92e4088652f5ef13cec992b9c32880cfcf793af7903` |
| 22 | `theorem` | [coe_bot](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9579e23efe8eb095a5f09a91c9acd571e874abe575f2c16fd8f57ef99ad2cb59.lean/declarations/coe-bot--15527fb2a24d86ab788c839b.md) | 207 | `result-track:15527fb2a24d86ab788c839b9e4face155bbba2743421fa0d3f4cdf1a67295b1` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9579e23efe8eb095a5f09a91c9acd571e874abe575f2c16fd8f57ef99ad2cb59.lean/declarations/instance--38b7b1ce234a033afdeb82ad.md) | 214 | `declaration-track:38b7b1ce234a033afdeb82ad4badf953afd1d838eb4d7b4db41aa2900b3dfad8` |
| 24 | `theorem` | [coe_inf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9579e23efe8eb095a5f09a91c9acd571e874abe575f2c16fd8f57ef99ad2cb59.lean/declarations/coe-inf--9d29b2f546be4c72f8f5b0a3.md) | 220 | `result-track:9d29b2f546be4c72f8f5b0a37fc04eece16340eec49b6cacd54baa3b00bbb3ac` |
| 25 | `theorem` | [mem_inf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9579e23efe8eb095a5f09a91c9acd571e874abe575f2c16fd8f57ef99ad2cb59.lean/declarations/mem-inf--6095f93bf63efc3b7bcb4ea1.md) | 226 | `result-track:6095f93bf63efc3b7bcb4ea1221d0e06775c5de20a3ff0c90d2197418cf5d375` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9579e23efe8eb095a5f09a91c9acd571e874abe575f2c16fd8f57ef99ad2cb59.lean/declarations/instance--7502ab795fe9df1bbea0dc6b.md) | 232 | `declaration-track:7502ab795fe9df1bbea0dc6bb2ca26b7805b15c88223801f126a4f7189452686` |
| 27 | `theorem` | [coe_sInf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9579e23efe8eb095a5f09a91c9acd571e874abe575f2c16fd8f57ef99ad2cb59.lean/declarations/coe-sinf--92e83d672b1a8be7f12de09f.md) | 240 | `result-track:92e83d672b1a8be7f12de09f5ecc0f9bf256fa7b8f848c5a8d74ca23ae833570` |
| 28 | `theorem` | [mem_sInf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9579e23efe8eb095a5f09a91c9acd571e874abe575f2c16fd8f57ef99ad2cb59.lean/declarations/mem-sinf--4e2984115710fe42cc8c5ecc.md) | 246 | `result-track:4e2984115710fe42cc8c5ecc8f845203ac98b885c7a53b6b2be57c87ed585233` |
| 29 | `theorem` | [mem_iInf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9579e23efe8eb095a5f09a91c9acd571e874abe575f2c16fd8f57ef99ad2cb59.lean/declarations/mem-iinf--be1515fe4cbb065d0c2f1914.md) | 252 | `result-track:be1515fe4cbb065d0c2f1914a29abd052552b7a83d3040f69326f762d7f10a27` |
| 30 | `theorem` | [coe_iInf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9579e23efe8eb095a5f09a91c9acd571e874abe575f2c16fd8f57ef99ad2cb59.lean/declarations/coe-iinf--d1e976eeadc68f8041e837c5.md) | 258 | `result-track:d1e976eeadc68f8041e837c5738eeb6868fc60db5585f3a0d3b9892353802d27` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9579e23efe8eb095a5f09a91c9acd571e874abe575f2c16fd8f57ef99ad2cb59.lean/declarations/instance--2298875255dceabb3bcd3830.md) | 265 | `declaration-track:2298875255dceabb3bcd3830b5ddb1902f40fba172540a7f722c6b9cea9b30bf` |
| 32 | `theorem` | [subsingleton_of_subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9579e23efe8eb095a5f09a91c9acd571e874abe575f2c16fd8f57ef99ad2cb59.lean/declarations/subsingleton-of-subsingleton--21d202ceed909814b3e91f26.md) | 281 | `result-track:21d202ceed909814b3e91f266711d81ed7cd9fdee95a28ad5e2234fc8c941e46` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9579e23efe8eb095a5f09a91c9acd571e874abe575f2c16fd8f57ef99ad2cb59.lean/declarations/instance--744b80f6c4baab77cfe2c641.md) | 289 | `declaration-track:744b80f6c4baab77cfe2c641e2de0c4238667ee52fe4ba1b693f851296280027` |
| 34 | `def` | [closure](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9579e23efe8eb095a5f09a91c9acd571e874abe575f2c16fd8f57ef99ad2cb59.lean/declarations/closure--d04bff4bb3b87f70b2f26660.md) | 297 | `declaration-track:d04bff4bb3b87f70b2f266609324b48ad98b27fbf581957d3d54a3d21dc3388c` |
| 35 | `theorem` | [mem_closure](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9579e23efe8eb095a5f09a91c9acd571e874abe575f2c16fd8f57ef99ad2cb59.lean/declarations/mem-closure--09fde9d81df2696ed8fd22f3.md) | 303 | `result-track:09fde9d81df2696ed8fd22f367c7439fc66e7cdd093fc29133863d996e182e66` |
| 36 | `theorem` | [subset_closure](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9579e23efe8eb095a5f09a91c9acd571e874abe575f2c16fd8f57ef99ad2cb59.lean/declarations/subset-closure--829fe798ecf18c70ad3e7ac8.md) | 310 | `result-track:829fe798ecf18c70ad3e7ac8307a3a8c27589516ce098ca1d4767a0f478aa094` |
| 37 | `theorem` | [not_mem_of_not_mem_closure](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9579e23efe8eb095a5f09a91c9acd571e874abe575f2c16fd8f57ef99ad2cb59.lean/declarations/not-mem-of-not-mem-closure--6e202a6820e5495a15bf21b6.md) | 315 | `result-track:6e202a6820e5495a15bf21b65af481904edf0ed6148a58dc65086978539f8c2d` |
| 38 | `theorem` | [closure_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9579e23efe8eb095a5f09a91c9acd571e874abe575f2c16fd8f57ef99ad2cb59.lean/declarations/closure-le--8fa6c65c7902d18f3ff5c4ca.md) | 327 | `result-track:8fa6c65c7902d18f3ff5c4ca9d2c099dc336afa14bdf0023882a21ec5efde9c8` |
| 39 | `theorem` | [closure_mono](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9579e23efe8eb095a5f09a91c9acd571e874abe575f2c16fd8f57ef99ad2cb59.lean/declarations/closure-mono--6b8732f3e202954db8408bc1.md) | 336 | `result-track:6b8732f3e202954db8408bc12bc57085611295e43c488b201e739cee39c9584e` |
| 40 | `theorem` | [closure_eq_of_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9579e23efe8eb095a5f09a91c9acd571e874abe575f2c16fd8f57ef99ad2cb59.lean/declarations/closure-eq-of-le--c1bdb17f34faf04942ee8274.md) | 342 | `result-track:c1bdb17f34faf04942ee8274011565e6f7a87683917fc2358c6d2f970d692b4e` |
| 41 | `theorem` | [closure_induction](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9579e23efe8eb095a5f09a91c9acd571e874abe575f2c16fd8f57ef99ad2cb59.lean/declarations/closure-induction--5cc7132355c3127eda690171.md) | 354 | `result-track:5cc7132355c3127eda69017157d5d8d8862151ca6668f393744117212c4f0125` |
| 42 | `theorem` | [closure_induction'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9579e23efe8eb095a5f09a91c9acd571e874abe575f2c16fd8f57ef99ad2cb59.lean/declarations/closure-induction--bc33ea9bcd1eb9a45ec0ed47.md) | 362 | `result-track:bc33ea9bcd1eb9a45ec0ed47f1f93a933b94cbdec359f5bf10583dbcee701001` |
| 43 | `theorem` | [closure_induction₂](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9579e23efe8eb095a5f09a91c9acd571e874abe575f2c16fd8f57ef99ad2cb59.lean/declarations/closure-induction--7de91fc97ea35eec560e2a9d.md) | 376 | `result-track:7de91fc97ea35eec560e2a9d01a12a11d11b55b276adf3e48d03f450086a7017` |
| 44 | `theorem` | [dense_induction](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9579e23efe8eb095a5f09a91c9acd571e874abe575f2c16fd8f57ef99ad2cb59.lean/declarations/dense-induction--6d1e527a442b03777e459853.md) | 392 | `result-track:6d1e527a442b03777e459853a83f25359047cd6b56705ae013cd7b1ef8c7492d` |
| 45 | `def` | [gi](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9579e23efe8eb095a5f09a91c9acd571e874abe575f2c16fd8f57ef99ad2cb59.lean/declarations/gi--fe7bb56ebce4992cda2d5fb6.md) | 403 | `declaration-track:fe7bb56ebce4992cda2d5fb65edce1ab1ac25cb4f50e345125219f306cbb9af9` |
| 46 | `theorem` | [closure_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9579e23efe8eb095a5f09a91c9acd571e874abe575f2c16fd8f57ef99ad2cb59.lean/declarations/closure-eq--410a1d806495407706fbe28d.md) | 412 | `result-track:410a1d806495407706fbe28ddd849e22422bc4b3086f3054bdf2aaae8f9595b4` |
| 47 | `theorem` | [closure_empty](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9579e23efe8eb095a5f09a91c9acd571e874abe575f2c16fd8f57ef99ad2cb59.lean/declarations/closure-empty--47f4044e9eb91e98e6796ac6.md) | 418 | `result-track:47f4044e9eb91e98e6796ac6bf07830f9e341a9415885a9aa7bc7eb427909917` |
| 48 | `theorem` | [closure_univ](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9579e23efe8eb095a5f09a91c9acd571e874abe575f2c16fd8f57ef99ad2cb59.lean/declarations/closure-univ--7527400605724e4e9ab7787e.md) | 424 | `result-track:7527400605724e4e9ab7787eb8fc23b7d91175730a9a2fa6e3db4761561be01d` |
| 49 | `theorem` | [closure_union](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9579e23efe8eb095a5f09a91c9acd571e874abe575f2c16fd8f57ef99ad2cb59.lean/declarations/closure-union--42c471006a4c4dffdff06a45.md) | 430 | `result-track:42c471006a4c4dffdff06a45f267ad818ea39e8deee47e4aa5b752584aac773d` |
| 50 | `theorem` | [closure_iUnion](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9579e23efe8eb095a5f09a91c9acd571e874abe575f2c16fd8f57ef99ad2cb59.lean/declarations/closure-iunion--805456148315873aeee19e28.md) | 436 | `result-track:805456148315873aeee19e2832b776528422bd50ce774910efa306b8b4d2d94d` |
| 51 | `theorem` | [closure_singleton_le_iff_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9579e23efe8eb095a5f09a91c9acd571e874abe575f2c16fd8f57ef99ad2cb59.lean/declarations/closure-singleton-le-iff-mem--f2b18aa49f47aea11ad77dd7.md) | 442 | `result-track:f2b18aa49f47aea11ad77dd7275b5efd106e5fc9f7a04b3f93227453b34e2055` |
| 52 | `theorem` | [mem_iSup](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9579e23efe8eb095a5f09a91c9acd571e874abe575f2c16fd8f57ef99ad2cb59.lean/declarations/mem-isup--bb476f72d2b9806f29cde652.md) | 448 | `result-track:bb476f72d2b9806f29cde6523aa65098d5626596e3c96cf532b1a04758479411` |
| 53 | `theorem` | [iSup_eq_closure](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9579e23efe8eb095a5f09a91c9acd571e874abe575f2c16fd8f57ef99ad2cb59.lean/declarations/isup-eq-closure--9fdcbb566fe433d19d607349.md) | 456 | `result-track:9fdcbb566fe433d19d60734903b64c5bb0b3372bf7a84d9fa921c89cb81da5e1` |
| 54 | `def` | [eqLocus](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9579e23efe8eb095a5f09a91c9acd571e874abe575f2c16fd8f57ef99ad2cb59.lean/declarations/eqlocus--0ca76f44fb98ad336885896f.md) | 472 | `declaration-track:0ca76f44fb98ad336885896f15759c500228521632405a41d55768621dbb72f2` |
| 55 | `theorem` | [eqOn_closure](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9579e23efe8eb095a5f09a91c9acd571e874abe575f2c16fd8f57ef99ad2cb59.lean/declarations/eqon-closure--b64b76aff4b0d27f6c68a540.md) | 481 | `result-track:b64b76aff4b0d27f6c68a54002f21f7512efae9e2f027b04e89a8d3e78a0ee5e` |
| 56 | `theorem` | [eq_of_eqOn_top](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9579e23efe8eb095a5f09a91c9acd571e874abe575f2c16fd8f57ef99ad2cb59.lean/declarations/eq-of-eqon-top--bdca5a8ede24af061c0700a8.md) | 488 | `result-track:bdca5a8ede24af061c0700a8deff5fbdae61998171ed198757a63e0e90079a0e` |
| 57 | `theorem` | [eq_of_eqOn_dense](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9579e23efe8eb095a5f09a91c9acd571e874abe575f2c16fd8f57ef99ad2cb59.lean/declarations/eq-of-eqon-dense--75ca45e9c98f6a68c82802b7.md) | 494 | `result-track:75ca45e9c98f6a68c82802b7e0a52a40be3658e28a1391c9826f0c611a3c1181` |
| 58 | `def` | [ofDense](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9579e23efe8eb095a5f09a91c9acd571e874abe575f2c16fd8f57ef99ad2cb59.lean/declarations/ofdense--d7e8e5d3cbe983cfd3ac3989.md) | 514 | `declaration-track:d7e8e5d3cbe983cfd3ac3989dd7becd9b9ce39349b2141aa1af4b42d9213bd34` |
| 59 | `theorem` | [coe_ofDense](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9579e23efe8eb095a5f09a91c9acd571e874abe575f2c16fd8f57ef99ad2cb59.lean/declarations/coe-ofdense--548e23b05dd39ce3f15b9cb3.md) | 530 | `result-track:548e23b05dd39ce3f15b9cb3f636889b129bbfd1e07a9e917359b441da1de0a4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
