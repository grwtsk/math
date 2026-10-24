# Verification target: GRWTSK.Algebra.Equiv.Variant25136a5961947103dae933ba8b078a81f2a5e3f071e96e921f2c80bcbe43cdde

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "887b05996098695ad6e475a279bc6169466a9ee4",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Equiv/Variant25136a5961947103dae933ba8b078a81f2a5e3f071e96e921f2c80bcbe43cdde.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Equiv/Variant25136a5961947103dae933ba8b078a81f2a5e3f071e96e921f2c80bcbe43cdde.lean/index.md) · [Full source](../../../../mathematics/Algebra/Equiv/Variant25136a5961947103dae933ba8b078a81f2a5e3f071e96e921f2c80bcbe43cdde.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `887b05996098695ad6e475a279bc6169466a9ee4`.

Source path: `GRWTSK/Algebra/Equiv/Variant25136a5961947103dae933ba8b078a81f2a5e3f071e96e921f2c80bcbe43cdde.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Equiv/Variant25136a5961947103dae933ba8b078a81f2a5e3f071e96e921f2c80bcbe43cdde.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.AddConstMap.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AddConstEquiv](../../../../mathematics/Algebra/Equiv/Variant25136a5961947103dae933ba8b078a81f2a5e3f071e96e921f2c80bcbe43cdde.lean/declarations/addconstequiv--833c1872bb7bf446a6942da1.md) | 32 | `declaration-track:833c1872bb7bf446a6942da152aff204a66da6943ec355219e112d9f0b9fa424` |
| 2 | `lemma` | [toEquiv_injective](../../../../mathematics/Algebra/Equiv/Variant25136a5961947103dae933ba8b078a81f2a5e3f071e96e921f2c80bcbe43cdde.lean/declarations/toequiv-injective--3125a0423a73811f1d196fdb.md) | 48 | `result-track:3125a0423a73811f1d196fdb88a4ddfc33d6c54f3cf706b7b5e5ae399eb2f247` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Equiv/Variant25136a5961947103dae933ba8b078a81f2a5e3f071e96e921f2c80bcbe43cdde.lean/declarations/instance--514d9ed14ac7b496df26cb77.md) | 51 | `declaration-track:514d9ed14ac7b496df26cb779b4d8344237e107894797e59b9086ccc48133209` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Equiv/Variant25136a5961947103dae933ba8b078a81f2a5e3f071e96e921f2c80bcbe43cdde.lean/declarations/instance--4e9c22a3694091b78c565ffd.md) | 59 | `declaration-track:4e9c22a3694091b78c565ffda302fb6e860bbc6a0801c1244795fdb201a08e48` |
| 5 | `lemma` | [ext](../../../../mathematics/Algebra/Equiv/Variant25136a5961947103dae933ba8b078a81f2a5e3f071e96e921f2c80bcbe43cdde.lean/declarations/ext--f50989ef21311db5c6adb6b7.md) | 63 | `result-track:f50989ef21311db5c6adb6b7ad4c31c99b14dc293b324384b3e702999238b52f` |
| 6 | `lemma` | [toEquiv_inj](../../../../mathematics/Algebra/Equiv/Variant25136a5961947103dae933ba8b078a81f2a5e3f071e96e921f2c80bcbe43cdde.lean/declarations/toequiv-inj--8522c63715c8d8ae5c007157.md) | 66 | `result-track:8522c63715c8d8ae5c007157fdbd024733f4b9609e05d6efbc006d34b6662f77` |
| 7 | `lemma` | [coe_toEquiv](../../../../mathematics/Algebra/Equiv/Variant25136a5961947103dae933ba8b078a81f2a5e3f071e96e921f2c80bcbe43cdde.lean/declarations/coe-toequiv--0c200ebd0d29688ba38e9b5e.md) | 69 | `result-track:0c200ebd0d29688ba38e9b5e876644bb5d6efbf250dc4fcd59c35b9bd01cfe0b` |
| 8 | `def` | [symm](../../../../mathematics/Algebra/Equiv/Variant25136a5961947103dae933ba8b078a81f2a5e3f071e96e921f2c80bcbe43cdde.lean/declarations/symm--fb66537297b9925f825b0915.md) | 72 | `declaration-track:fb66537297b9925f825b0915ab57695e61b24cc80f4a07778ad306ace1e85041` |
| 9 | `def` | [Simps.symm_apply](../../../../mathematics/Algebra/Equiv/Variant25136a5961947103dae933ba8b078a81f2a5e3f071e96e921f2c80bcbe43cdde.lean/declarations/simps-symm-apply--541158d65f2789f69593f601.md) | 77 | `declaration-track:541158d65f2789f69593f601382fcad54cd3b96f9f147bc3f97b76f5466cfe2b` |
| 10 | `lemma` | [symm_symm](../../../../mathematics/Algebra/Equiv/Variant25136a5961947103dae933ba8b078a81f2a5e3f071e96e921f2c80bcbe43cdde.lean/declarations/symm-symm--1517ed4486dffb17bb2a5ac1.md) | 81 | `result-track:1517ed4486dffb17bb2a5ac1fdd52e3910964bffc19ad9defcf40fd12f1d4339` |
| 11 | `def` | [refl](../../../../mathematics/Algebra/Equiv/Variant25136a5961947103dae933ba8b078a81f2a5e3f071e96e921f2c80bcbe43cdde.lean/declarations/refl--b44839395770ceb9aad3057d.md) | 85 | `declaration-track:b44839395770ceb9aad3057d9bb64b3aee04ba028313237071b03a4153499533` |
| 12 | `lemma` | [symm_refl](../../../../mathematics/Algebra/Equiv/Variant25136a5961947103dae933ba8b078a81f2a5e3f071e96e921f2c80bcbe43cdde.lean/declarations/symm-refl--288a89dc608660ea2b169795.md) | 89 | `result-track:288a89dc608660ea2b16979520e7a477711afc519363f193bfdcf54a77ec07d0` |
| 13 | `def` | [trans](../../../../mathematics/Algebra/Equiv/Variant25136a5961947103dae933ba8b078a81f2a5e3f071e96e921f2c80bcbe43cdde.lean/declarations/trans--57b91583c197e35b28bd2bec.md) | 93 | `declaration-track:57b91583c197e35b28bd2bec4bab1fed84b3fd7ec26aace3f14b80ccf8aa2756` |
| 14 | `lemma` | [trans_refl](../../../../mathematics/Algebra/Equiv/Variant25136a5961947103dae933ba8b078a81f2a5e3f071e96e921f2c80bcbe43cdde.lean/declarations/trans-refl--971e777a8b68a24ae8b27de7.md) | 97 | `result-track:971e777a8b68a24ae8b27de78c26872cbf3b17ab1d6583b1932c29c00ea1b996` |
| 15 | `lemma` | [refl_trans](../../../../mathematics/Algebra/Equiv/Variant25136a5961947103dae933ba8b078a81f2a5e3f071e96e921f2c80bcbe43cdde.lean/declarations/refl-trans--c5891c4d10206de8418632e4.md) | 98 | `result-track:c5891c4d10206de8418632e479c886bebddeb8c938f049caa982c094364356ad` |
| 16 | `lemma` | [self_trans_symm](../../../../mathematics/Algebra/Equiv/Variant25136a5961947103dae933ba8b078a81f2a5e3f071e96e921f2c80bcbe43cdde.lean/declarations/self-trans-symm--fa997321fda54375b0727b78.md) | 101 | `result-track:fa997321fda54375b0727b78ff33b2fe6b2b369fce113ff1f8ed3e37960162d1` |
| 17 | `lemma` | [symm_trans_self](../../../../mathematics/Algebra/Equiv/Variant25136a5961947103dae933ba8b078a81f2a5e3f071e96e921f2c80bcbe43cdde.lean/declarations/symm-trans-self--ed644e59f5def8fd4b12377d.md) | 105 | `result-track:ed644e59f5def8fd4b12377d23b5459d34f8b6f5bec0277f5ebe6646aa70de0d` |
| 18 | `instance` | [instOne](../../../../mathematics/Algebra/Equiv/Variant25136a5961947103dae933ba8b078a81f2a5e3f071e96e921f2c80bcbe43cdde.lean/declarations/instone--980d309cc2e44378c101e98a.md) | 108 | `declaration-track:980d309cc2e44378c101e98a6a3e1b9c61e53a476d9babfbba03006019c33f2c` |
| 19 | `instance` | [instMul](../../../../mathematics/Algebra/Equiv/Variant25136a5961947103dae933ba8b078a81f2a5e3f071e96e921f2c80bcbe43cdde.lean/declarations/instmul--de14f41edb4fb1879591533f.md) | 109 | `declaration-track:de14f41edb4fb1879591533f2b87e423801382d5d5a4b8a10ccd66a95791298e` |
| 20 | `instance` | [instInv](../../../../mathematics/Algebra/Equiv/Variant25136a5961947103dae933ba8b078a81f2a5e3f071e96e921f2c80bcbe43cdde.lean/declarations/instinv--5d067e08cc11cd4769a05de4.md) | 110 | `declaration-track:5d067e08cc11cd4769a05de495365b8e642ee2a1105589edc10ff76247389a52` |
| 21 | `instance` | [instDiv](../../../../mathematics/Algebra/Equiv/Variant25136a5961947103dae933ba8b078a81f2a5e3f071e96e921f2c80bcbe43cdde.lean/declarations/instdiv--d046074bfc7e7409802005c8.md) | 111 | `declaration-track:d046074bfc7e7409802005c8bfd1c5e6de0f48d5c473efb0b5fd1033e031c665` |
| 22 | `instance` | [instPowNat](../../../../mathematics/Algebra/Equiv/Variant25136a5961947103dae933ba8b078a81f2a5e3f071e96e921f2c80bcbe43cdde.lean/declarations/instpownat--b137d8d52ae1d5be4b7d67c9.md) | 113 | `declaration-track:b137d8d52ae1d5be4b7d67c92725a512bdba3ca2b1876bfd298dd96f3642fa50` |
| 23 | `instance` | [instPowInt](../../../../mathematics/Algebra/Equiv/Variant25136a5961947103dae933ba8b078a81f2a5e3f071e96e921f2c80bcbe43cdde.lean/declarations/instpowint--5138c4b6dc4babffbcb904a8.md) | 116 | `declaration-track:5138c4b6dc4babffbcb904a8da21780ee7deeebff71fecf0462d142c12a4c37e` |
| 24 | `instance` | [instGroup](../../../../mathematics/Algebra/Equiv/Variant25136a5961947103dae933ba8b078a81f2a5e3f071e96e921f2c80bcbe43cdde.lean/declarations/instgroup--53c330499677e3753c711ee5.md) | 122 | `declaration-track:53c330499677e3753c711ee54e07a8c23ff9d869782a775a5dceb5b3cf91886d` |
| 25 | `def` | [toPerm](../../../../mathematics/Algebra/Equiv/Variant25136a5961947103dae933ba8b078a81f2a5e3f071e96e921f2c80bcbe43cdde.lean/declarations/toperm--25a84c9a60ede5ab098e87cf.md) | 128 | `declaration-track:25a84c9a60ede5ab098e87cf8774b8b3eba0ca4a356ac3cc071857f14141fa42` |
| 26 | `def` | [toAddConstMapHom](../../../../mathematics/Algebra/Equiv/Variant25136a5961947103dae933ba8b078a81f2a5e3f071e96e921f2c80bcbe43cdde.lean/declarations/toaddconstmaphom--1986d3c6802fd1b50ccd4534.md) | 133 | `declaration-track:1986d3c6802fd1b50ccd4534f897937ca5ccc259a4d814a57394b951321c3579` |
| 27 | `def` | [equivUnits](../../../../mathematics/Algebra/Equiv/Variant25136a5961947103dae933ba8b078a81f2a5e3f071e96e921f2c80bcbe43cdde.lean/declarations/equivunits--066cc2da160d6795d727b875.md) | 140 | `declaration-track:066cc2da160d6795d727b875976b34fed809d2cd812cab99379ed5ba15cb8622` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
