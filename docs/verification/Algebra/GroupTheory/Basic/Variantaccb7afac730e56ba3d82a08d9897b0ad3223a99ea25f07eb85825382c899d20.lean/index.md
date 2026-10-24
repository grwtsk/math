# Verification target: GRWTSK.Algebra.GroupTheory.Basic.Variantaccb7afac730e56ba3d82a08d9897b0ad3223a99ea25f07eb85825382c899d20

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8c8202afaf07ed281bc5fdc5ab7546062ffb45eb",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variantaccb7afac730e56ba3d82a08d9897b0ad3223a99ea25f07eb85825382c899d20.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantaccb7afac730e56ba3d82a08d9897b0ad3223a99ea25f07eb85825382c899d20.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantaccb7afac730e56ba3d82a08d9897b0ad3223a99ea25f07eb85825382c899d20.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8c8202afaf07ed281bc5fdc5ab7546062ffb45eb`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variantaccb7afac730e56ba3d82a08d9897b0ad3223a99ea25f07eb85825382c899d20.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variantaccb7afac730e56ba3d82a08d9897b0ad3223a99ea25f07eb85825382c899d20.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Units` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Invertible.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pi.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Embedding.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [MulAction.toPerm](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantaccb7afac730e56ba3d82a08d9897b0ad3223a99ea25f07eb85825382c899d20.lean/declarations/mulaction-toperm--c72ccfd04bcd1c37b9208e7e.md) | 38 | `declaration-track:c72ccfd04bcd1c37b9208e7e405e23c641839e5ef9fdbf803d2272f5eca9e9fa` |
| 2 | `lemma` | [MulAction.toPerm_injective](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantaccb7afac730e56ba3d82a08d9897b0ad3223a99ea25f07eb85825382c899d20.lean/declarations/mulaction-toperm-injective--49f00e104eabbb0a74f0297e.md) | 46 | `result-track:49f00e104eabbb0a74f0297e37e0f426244e3837c7ef595340bbc7287f571ec4` |
| 3 | `lemma` | [MulAction.bijective](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantaccb7afac730e56ba3d82a08d9897b0ad3223a99ea25f07eb85825382c899d20.lean/declarations/mulaction-bijective--9407c7591ae2ddf89b544322.md) | 51 | `result-track:9407c7591ae2ddf89b5443229efa1c270904389761f5baa24ed97dec1e50a813` |
| 4 | `lemma` | [MulAction.injective](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantaccb7afac730e56ba3d82a08d9897b0ad3223a99ea25f07eb85825382c899d20.lean/declarations/mulaction-injective--5c43de1bcd2565ef94c51154.md) | 55 | `result-track:5c43de1bcd2565ef94c51154855b389da540a2e6221deebe11426bc91f2189b5` |
| 5 | `lemma` | [MulAction.surjective](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantaccb7afac730e56ba3d82a08d9897b0ad3223a99ea25f07eb85825382c899d20.lean/declarations/mulaction-surjective--b48af4bdf2b29a8608ef9276.md) | 59 | `result-track:b48af4bdf2b29a8608ef9276025eb675a0aa70e138fd0f55d1414e28dbe01943` |
| 6 | `lemma` | [smul_left_cancel](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantaccb7afac730e56ba3d82a08d9897b0ad3223a99ea25f07eb85825382c899d20.lean/declarations/smul-left-cancel--d6ce59e55a7a076b7b35c053.md) | 63 | `result-track:d6ce59e55a7a076b7b35c053d19039ab9a9943bf58d6eff649ea2174d9d814d8` |
| 7 | `lemma` | [smul_left_cancel_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantaccb7afac730e56ba3d82a08d9897b0ad3223a99ea25f07eb85825382c899d20.lean/declarations/smul-left-cancel-iff--039b61b68512f3ff0b847c64.md) | 66 | `result-track:039b61b68512f3ff0b847c64c8116c8263995a498e2dd924bf4cd25a17ec4ba7` |
| 8 | `lemma` | [smul_eq_iff_eq_inv_smul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantaccb7afac730e56ba3d82a08d9897b0ad3223a99ea25f07eb85825382c899d20.lean/declarations/smul-eq-iff-eq-inv-smul--b536e7e0013201cdf250a0d2.md) | 70 | `result-track:b536e7e0013201cdf250a0d26d8fbb96ec1da65e426dea0de5f2e0a72618971e` |
| 9 | `lemma` | [invOf_smul_smul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantaccb7afac730e56ba3d82a08d9897b0ad3223a99ea25f07eb85825382c899d20.lean/declarations/invof-smul-smul--1a422947c99f4fbef58d508a.md) | 78 | `result-track:1a422947c99f4fbef58d508afcf5320c113812ab9d050f66a01fc8c6add7ecde` |
| 10 | `lemma` | [smul_invOf_smul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantaccb7afac730e56ba3d82a08d9897b0ad3223a99ea25f07eb85825382c899d20.lean/declarations/smul-invof-smul--b297d506e52d7b3c18065d6a.md) | 79 | `result-track:b297d506e52d7b3c18065d6ae9505906b96edc3bccac9d6e9567b0ceaf8b23bc` |
| 11 | `lemma` | [invOf_smul_eq_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantaccb7afac730e56ba3d82a08d9897b0ad3223a99ea25f07eb85825382c899d20.lean/declarations/invof-smul-eq-iff--42a71c205b78eb10ef9995da.md) | 83 | `result-track:42a71c205b78eb10ef9995daaee5614e20ccfe437dcac5fbd1d4e9db28c90345` |
| 12 | `lemma` | [smul_eq_iff_eq_invOf_smul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantaccb7afac730e56ba3d82a08d9897b0ad3223a99ea25f07eb85825382c899d20.lean/declarations/smul-eq-iff-eq-invof-smul--12ff005ac549005dea0e1759.md) | 85 | `result-track:12ff005ac549005dea0e17598855dc5c6aba7fc7709f7e8a9b3531e887eb42c8` |
| 13 | `def` | [arrowAction](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantaccb7afac730e56ba3d82a08d9897b0ad3223a99ea25f07eb85825382c899d20.lean/declarations/arrowaction--9f9adf503f1f0e74f70b3f82.md) | 97 | `declaration-track:9f9adf503f1f0e74f70b3f8217513388e27e24b0a8abb0919a67566dbad6b237` |
| 14 | `def` | [arrowMulDistribMulAction](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantaccb7afac730e56ba3d82a08d9897b0ad3223a99ea25f07eb85825382c899d20.lean/declarations/arrowmuldistribmulaction--800fe7d7288a0f9584256445.md) | 111 | `declaration-track:800fe7d7288a0f9584256445d68c0dc088293ff5501abbdb9cf0f319b0dd3def` |
| 15 | `theorem` | [smul_bijective](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantaccb7afac730e56ba3d82a08d9897b0ad3223a99ea25f07eb85825382c899d20.lean/declarations/smul-bijective--5ff18670cd27fc1a0722bfdd.md) | 121 | `result-track:5ff18670cd27fc1a0722bfdd80922f415b64ed4524299bc741c6effb7154e9f2` |
| 16 | `lemma` | [smul_left_cancel](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantaccb7afac730e56ba3d82a08d9897b0ad3223a99ea25f07eb85825382c899d20.lean/declarations/smul-left-cancel--86c498155b531a47ff9d9ca4.md) | 133 | `result-track:86c498155b531a47ff9d9ca4c8fb4fadec8c6fa7c3523a9c7c7b6db35755ca72` |
| 17 | `lemma` | [isUnit_smul_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantaccb7afac730e56ba3d82a08d9897b0ad3223a99ea25f07eb85825382c899d20.lean/declarations/isunit-smul-iff--8d5bab2531a6efb3065495e5.md) | 142 | `result-track:8d5bab2531a6efb3065495e5292ca5b1791f65b4f46afaf61470cbd7738ecaf3` |
| 18 | `def` | [toFun](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantaccb7afac730e56ba3d82a08d9897b0ad3223a99ea25f07eb85825382c899d20.lean/declarations/tofun--22e92af17e21987e72eaf489.md) | 154 | `declaration-track:22e92af17e21987e72eaf489394c33fa879921d151c7cfdeda3412f00715768d` |
| 19 | `lemma` | [toFun_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantaccb7afac730e56ba3d82a08d9897b0ad3223a99ea25f07eb85825382c899d20.lean/declarations/tofun-apply--be4972616411d7700d72bc1e.md) | 158 | `result-track:be4972616411d7700d72bc1e668fa1f25d070c0648644fce4e6877ae2d59c693` |
| 20 | `abbrev` | [Function.Injective.mulDistribMulAction](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantaccb7afac730e56ba3d82a08d9897b0ad3223a99ea25f07eb85825382c899d20.lean/declarations/function-injective-muldistribmulaction--45d386e90c6a1a5166792384.md) | 168 | `declaration-track:45d386e90c6a1a5166792384a019f1a1daad0640dda58a624cd90441e9280ba9` |
| 21 | `abbrev` | [Function.Surjective.mulDistribMulAction](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantaccb7afac730e56ba3d82a08d9897b0ad3223a99ea25f07eb85825382c899d20.lean/declarations/function-surjective-muldistribmulaction--860a8cf91825721e6393f59a.md) | 177 | `declaration-track:860a8cf91825721e6393f59ab7b0897e57454cb62abef705e58d77e051dd2de1` |
| 22 | `def` | [MulDistribMulAction.toMonoidHom](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantaccb7afac730e56ba3d82a08d9897b0ad3223a99ea25f07eb85825382c899d20.lean/declarations/muldistribmulaction-tomonoidhom--4a3069795f890f7bdd2d0a8e.md) | 185 | `declaration-track:4a3069795f890f7bdd2d0a8ee2f04c102fcc0d0aad7250f5ac16ded6781b57f2` |
| 23 | `lemma` | [smul_pow'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantaccb7afac730e56ba3d82a08d9897b0ad3223a99ea25f07eb85825382c899d20.lean/declarations/smul-pow--afae20f3801c6ec26ef426aa.md) | 190 | `result-track:afae20f3801c6ec26ef426aa78116476cfd4d1c794bff418ebf807719a5acf04` |
| 24 | `def` | [MulDistribMulAction.toMonoidEnd](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantaccb7afac730e56ba3d82a08d9897b0ad3223a99ea25f07eb85825382c899d20.lean/declarations/muldistribmulaction-tomonoidend--14bf22c0585e807d23043189.md) | 196 | `declaration-track:14bf22c0585e807d23043189b15987eed90b51fa0da472c4d959634bf73c2892` |
| 25 | `lemma` | [smul_inv'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantaccb7afac730e56ba3d82a08d9897b0ad3223a99ea25f07eb85825382c899d20.lean/declarations/smul-inv--bb144c3abd9b2f76b6d2451d.md) | 206 | `result-track:bb144c3abd9b2f76b6d2451d7d84416b67f59769ae65b865d65f7b6ec33267f2` |
| 26 | `lemma` | [smul_div'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantaccb7afac730e56ba3d82a08d9897b0ad3223a99ea25f07eb85825382c899d20.lean/declarations/smul-div--92844baa8c7dac280c9430fb.md) | 209 | `result-track:92844baa8c7dac280c9430fb3d56eedb023a2416f6f447acee8dc319ec48e911` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
