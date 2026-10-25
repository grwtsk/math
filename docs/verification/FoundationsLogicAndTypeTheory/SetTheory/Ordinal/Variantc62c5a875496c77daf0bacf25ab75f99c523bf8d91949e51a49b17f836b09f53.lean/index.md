# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Ordinal.Variantc62c5a875496c77daf0bacf25ab75f99c523bf8d91949e51a49b17f836b09f53

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "97235e3261fdc56f243d41a3007ddd24ecfff269",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantc62c5a875496c77daf0bacf25ab75f99c523bf8d91949e51a49b17f836b09f53.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantc62c5a875496c77daf0bacf25ab75f99c523bf8d91949e51a49b17f836b09f53.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantc62c5a875496c77daf0bacf25ab75f99c523bf8d91949e51a49b17f836b09f53.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `97235e3261fdc56f243d41a3007ddd24ecfff269`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantc62c5a875496c77daf0bacf25ab75f99c523bf8d91949e51a49b17f836b09f53.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantc62c5a875496c77daf0bacf25ab75f99c523bf8d91949e51a49b17f836b09f53.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.GameAdd` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.RelIso.Set` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.ZFC.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsTransitive](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantc62c5a875496c77daf0bacf25ab75f99c523bf8d91949e51a49b17f836b09f53.lean/declarations/istransitive--9e1c281aad335d229cdb607e.md) | 39 | `declaration-track:9e1c281aad335d229cdb607e940aeb28169c6092ddc5b906016a8e02af5f3dd2` |
| 2 | `theorem` | [isTransitive_empty](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantc62c5a875496c77daf0bacf25ab75f99c523bf8d91949e51a49b17f836b09f53.lean/declarations/istransitive-empty--0a6d88626fd6ea5c1de6422d.md) | 43 | `result-track:0a6d88626fd6ea5c1de6422dbf48c11192354a737302b4aa09b735d272a075c4` |
| 3 | `theorem` | [IsTransitive.subset_of_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantc62c5a875496c77daf0bacf25ab75f99c523bf8d91949e51a49b17f836b09f53.lean/declarations/istransitive-subset-of-mem--a003e52ac6fb1b8a5467041c.md) | 45 | `result-track:a003e52ac6fb1b8a5467041ced52131c8999a7d427944ee1e909148795abda55` |
| 4 | `theorem` | [isTransitive_iff_mem_trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantc62c5a875496c77daf0bacf25ab75f99c523bf8d91949e51a49b17f836b09f53.lean/declarations/istransitive-iff-mem-trans--42cceec3c0741cb8b803a527.md) | 47 | `result-track:42cceec3c0741cb8b803a5275524961ab2b1530af7d3c29d0321430c374e6e10` |
| 5 | `theorem` | [IsTransitive.inter](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantc62c5a875496c77daf0bacf25ab75f99c523bf8d91949e51a49b17f836b09f53.lean/declarations/istransitive-inter--4a863c0ce35d9dea6ad216ac.md) | 52 | `result-track:4a863c0ce35d9dea6ad216acacd0aebcb5acb61171093edff6c122fafb7f8dc5` |
| 6 | `theorem` | [IsTransitive.sUnion](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantc62c5a875496c77daf0bacf25ab75f99c523bf8d91949e51a49b17f836b09f53.lean/declarations/istransitive-sunion--c8e1a6563a23c60750b9c586.md) | 58 | `result-track:c8e1a6563a23c60750b9c58640ed08a441af7b5fa22f1e3f415218afce4216ca` |
| 7 | `theorem` | [IsTransitive.sUnion'](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantc62c5a875496c77daf0bacf25ab75f99c523bf8d91949e51a49b17f836b09f53.lean/declarations/istransitive-sunion--06064beb6e46a1011127e747.md) | 64 | `result-track:06064beb6e46a1011127e747fef38175fd826a6aa20aafba607baf414f0c32ba` |
| 8 | `theorem` | [IsTransitive.union](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantc62c5a875496c77daf0bacf25ab75f99c523bf8d91949e51a49b17f836b09f53.lean/declarations/istransitive-union--e4e9f038b35013c694ebe78e.md) | 69 | `result-track:e4e9f038b35013c694ebe78ed4c136cc431acda7a7a007dd92caf76d1494e024` |
| 9 | `theorem` | [IsTransitive.powerset](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantc62c5a875496c77daf0bacf25ab75f99c523bf8d91949e51a49b17f836b09f53.lean/declarations/istransitive-powerset--a6900c5cf8794214288fdc1e.md) | 78 | `result-track:a6900c5cf8794214288fdc1ecf2f3ca1f255b2b232b02d7560ee688ff84a1239` |
| 10 | `theorem` | [isTransitive_iff_sUnion_subset](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantc62c5a875496c77daf0bacf25ab75f99c523bf8d91949e51a49b17f836b09f53.lean/declarations/istransitive-iff-sunion-subset--dc571b67f23d631284eff8fd.md) | 83 | `result-track:dc571b67f23d631284eff8fd7853d0791c1a41ddf68e3d37319c65599cf021a1` |
| 11 | `theorem` | [isTransitive_iff_subset_powerset](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantc62c5a875496c77daf0bacf25ab75f99c523bf8d91949e51a49b17f836b09f53.lean/declarations/istransitive-iff-subset-powerset--d11b784f17ae065b4df81981.md) | 92 | `result-track:d11b784f17ae065b4df81981466176156b39dd0e0edc66610185648198d3ae18` |
| 12 | `structure` | [IsOrdinal](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantc62c5a875496c77daf0bacf25ab75f99c523bf8d91949e51a49b17f836b09f53.lean/declarations/isordinal--e385e19ce1c45743d604bf96.md) | 104 | `declaration-track:e385e19ce1c45743d604bf965de1ce647d977015751cccc37afa86d94790f978` |
| 13 | `theorem` | [subset_of_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantc62c5a875496c77daf0bacf25ab75f99c523bf8d91949e51a49b17f836b09f53.lean/declarations/subset-of-mem--5197eb5fc5141930bfe978a6.md) | 112 | `result-track:5197eb5fc5141930bfe978a68f03658a5cabbe8c1b8e766f0190a1ef83ec9eca` |
| 14 | `theorem` | [mem_trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantc62c5a875496c77daf0bacf25ab75f99c523bf8d91949e51a49b17f836b09f53.lean/declarations/mem-trans--9734d215b3990f4fb2d8b608.md) | 115 | `result-track:9734d215b3990f4fb2d8b608f67e5cc2a8e353ac720f3e390ef3f1f9e0ff185d` |
| 15 | `theorem` | [isTrans](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantc62c5a875496c77daf0bacf25ab75f99c523bf8d91949e51a49b17f836b09f53.lean/declarations/istrans--3b53ad0df27fb6fa405aeb00.md) | 118 | `result-track:3b53ad0df27fb6fa405aeb006b0db5fa6d88c54d1217bac7491c3abe3d1c6e83` |
| 16 | `theorem` | [_root_.ZFSet.isOrdinal_iff_isTrans](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantc62c5a875496c77daf0bacf25ab75f99c523bf8d91949e51a49b17f836b09f53.lean/declarations/root-zfset-isordinal-iff-istrans--e62460cf39485c63c7106e78.md) | 123 | `result-track:e62460cf39485c63c7106e78a767aa8280d7dba2cc77a714b1dbcc4c62912e53` |
| 17 | `theorem` | [mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantc62c5a875496c77daf0bacf25ab75f99c523bf8d91949e51a49b17f836b09f53.lean/declarations/mem--0e5deb0e44e5f1efff35037e.md) | 132 | `result-track:0e5deb0e44e5f1efff35037e60b23b7274c3be1d47921590b79579d9a5f6edb3` |
| 18 | `theorem` | [_root_.ZFSet.isOrdinal_iff_forall_mem_isTransitive](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantc62c5a875496c77daf0bacf25ab75f99c523bf8d91949e51a49b17f836b09f53.lean/declarations/root-zfset-isordinal-iff-forall-mem-istransitive--c6bb5b3818c0387526545174.md) | 138 | `result-track:c6bb5b3818c038752654517467678b15074d9208f57b364e4e63f0492f0ac022` |
| 19 | `theorem` | [_root_.ZFSet.isOrdinal_iff_forall_mem_isOrdinal](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantc62c5a875496c77daf0bacf25ab75f99c523bf8d91949e51a49b17f836b09f53.lean/declarations/root-zfset-isordinal-iff-forall-mem-isordinal--603638fda93d571132c912f7.md) | 144 | `result-track:603638fda93d571132c912f79301657c98415dcf44cee4195b844cea38d2b232` |
| 20 | `theorem` | [subset_iff_eq_or_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantc62c5a875496c77daf0bacf25ab75f99c523bf8d91949e51a49b17f836b09f53.lean/declarations/subset-iff-eq-or-mem--dd620aec63bed5c901ec3765.md) | 150 | `result-track:dd620aec63bed5c901ec37650f360986cd0a7a2cc7c00421052c9799d8d6c213` |
| 21 | `theorem` | [mem_of_subset_of_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantc62c5a875496c77daf0bacf25ab75f99c523bf8d91949e51a49b17f836b09f53.lean/declarations/mem-of-subset-of-mem--beb5c916a99af7d238f1fab0.md) | 172 | `result-track:beb5c916a99af7d238f1fab0ab25fa28a8aff9108d8ae3a92a8955a370fc7b37` |
| 22 | `theorem` | [notMem_iff_subset](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantc62c5a875496c77daf0bacf25ab75f99c523bf8d91949e51a49b17f836b09f53.lean/declarations/notmem-iff-subset--b85249ce988d50c1c3178d97.md) | 178 | `result-track:b85249ce988d50c1c3178d97f92cb2effda34a6de3ec9fbad7a589a48acbed98` |
| 23 | `theorem` | [not_subset_iff_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantc62c5a875496c77daf0bacf25ab75f99c523bf8d91949e51a49b17f836b09f53.lean/declarations/not-subset-iff-mem--f717a619bd13e61000005dd6.md) | 188 | `result-track:f717a619bd13e61000005dd6e2a8c2d867fc8b1d86eef53c084966a814191838` |
| 24 | `theorem` | [mem_or_subset](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantc62c5a875496c77daf0bacf25ab75f99c523bf8d91949e51a49b17f836b09f53.lean/declarations/mem-or-subset--06c65cf40956b3041309da36.md) | 191 | `result-track:06c65cf40956b3041309da36a39d7b48033a1666dee1ede726e396f13ca95223` |
| 25 | `theorem` | [subset_total](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantc62c5a875496c77daf0bacf25ab75f99c523bf8d91949e51a49b17f836b09f53.lean/declarations/subset-total--e3c275f4ea485849bed0b4bc.md) | 195 | `result-track:e3c275f4ea485849bed0b4bcdedcc20d0454b915b8c7cb799d015b4040b1c0af` |
| 26 | `theorem` | [mem_trichotomous](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantc62c5a875496c77daf0bacf25ab75f99c523bf8d91949e51a49b17f836b09f53.lean/declarations/mem-trichotomous--dea2ec91d34b220a5e9b99bd.md) | 200 | `result-track:dea2ec91d34b220a5e9b99bd7d8811f4b574efd12e9df7bb50ddd819fe6a03b4` |
| 27 | `theorem` | [isTrichotomous](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantc62c5a875496c77daf0bacf25ab75f99c523bf8d91949e51a49b17f836b09f53.lean/declarations/istrichotomous--cb629bdb3d08cefb77dcb533.md) | 204 | `result-track:cb629bdb3d08cefb77dcb5337bc8372665982e47dc7741c648e9b656096ffe23` |
| 28 | `theorem` | [_root_.ZFSet.isOrdinal_iff_isTrichotomous](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantc62c5a875496c77daf0bacf25ab75f99c523bf8d91949e51a49b17f836b09f53.lean/declarations/root-zfset-isordinal-iff-istrichotomous--2c246fd14055bfce296142db.md) | 208 | `result-track:2c246fd14055bfce296142db9a04e84e8248601668657be2e10d3713592190a8` |
| 29 | `theorem` | [isWellOrder](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantc62c5a875496c77daf0bacf25ab75f99c523bf8d91949e51a49b17f836b09f53.lean/declarations/iswellorder--7c4d945098c4e29ede4093b3.md) | 220 | `result-track:7c4d945098c4e29ede4093b3295ca911fc11a329d1d892417304898317fa6bd7` |
| 30 | `theorem` | [_root_.ZFSet.isOrdinal_iff_isWellOrder](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantc62c5a875496c77daf0bacf25ab75f99c523bf8d91949e51a49b17f836b09f53.lean/declarations/root-zfset-isordinal-iff-iswellorder--df02debe91b13b21781860eb.md) | 226 | `result-track:df02debe91b13b21781860eb434c932c9e0681ea5afd4dadeb038aea7bff385b` |
| 31 | `theorem` | [isOrdinal_empty](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantc62c5a875496c77daf0bacf25ab75f99c523bf8d91949e51a49b17f836b09f53.lean/declarations/isordinal-empty--cc06a5d81a8bd21dc8b32253.md) | 236 | `result-track:cc06a5d81a8bd21dc8b322539f95a3d4e4dfbf50fd694efa6e0acdfbe8bfde26` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
