# Verification target: GRWTSK.Algebra.Pointwise.Variant90315292345de035953ed6f41404bb4237643f1927122940deb097c0b4fc78f0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2f47c086a4086227577b30d515e0aeb0be63f75d",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Pointwise/Variant90315292345de035953ed6f41404bb4237643f1927122940deb097c0b4fc78f0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Pointwise/Variant90315292345de035953ed6f41404bb4237643f1927122940deb097c0b4fc78f0.lean/index.md) · [Full source](../../../../mathematics/Algebra/Pointwise/Variant90315292345de035953ed6f41404bb4237643f1927122940deb097c0b4fc78f0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2f47c086a4086227577b30d515e0aeb0be63f75d`.

Source path: `GRWTSK/Algebra/Pointwise/Variant90315292345de035953ed6f41404bb4237643f1927122940deb097c0b4fc78f0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Pointwise/Variant90315292345de035953ed6f41404bb4237643f1927122940deb097c0b4fc78f0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Subgroup` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Subring.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Subsemiring.Pointwise` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pointwiseMulAction](../../../../mathematics/Algebra/Pointwise/Variant90315292345de035953ed6f41404bb4237643f1927122940deb097c0b4fc78f0.lean/declarations/pointwisemulaction--5b3ebd62879857be229e1561.md) | 38 | `declaration-track:5b3ebd62879857be229e1561a031c68c4c7e71a913f5a38e78879edc8f09b403` |
| 2 | `theorem` | [pointwise_smul_def](../../../../mathematics/Algebra/Pointwise/Variant90315292345de035953ed6f41404bb4237643f1927122940deb097c0b4fc78f0.lean/declarations/pointwise-smul-def--57e3e2918068c333a85a3f8a.md) | 48 | `result-track:57e3e2918068c333a85a3f8a28de7729bbbfdb0529719060e7bcd06dfe48164d` |
| 3 | `theorem` | [coe_pointwise_smul](../../../../mathematics/Algebra/Pointwise/Variant90315292345de035953ed6f41404bb4237643f1927122940deb097c0b4fc78f0.lean/declarations/coe-pointwise-smul--f46847dd5fd2d43e2290dead.md) | 53 | `result-track:f46847dd5fd2d43e2290dead988a4f97a3ee7a5f7bd7e02d44aa38c5406726e7` |
| 4 | `theorem` | [pointwise_smul_toAddSubgroup](../../../../mathematics/Algebra/Pointwise/Variant90315292345de035953ed6f41404bb4237643f1927122940deb097c0b4fc78f0.lean/declarations/pointwise-smul-toaddsubgroup--52903d4376b207bcd66a1108.md) | 57 | `result-track:52903d4376b207bcd66a110867a03eebe165f34685b735e6fbe363466772d425` |
| 5 | `theorem` | [pointwise_smul_toSubsemiring](../../../../mathematics/Algebra/Pointwise/Variant90315292345de035953ed6f41404bb4237643f1927122940deb097c0b4fc78f0.lean/declarations/pointwise-smul-tosubsemiring--319e3bd8c1c31f05a4544fc5.md) | 62 | `result-track:319e3bd8c1c31f05a4544fc59fceb57b8e78fb5c14c03af75fb9211c6dc2eb9e` |
| 6 | `theorem` | [smul_mem_pointwise_smul](../../../../mathematics/Algebra/Pointwise/Variant90315292345de035953ed6f41404bb4237643f1927122940deb097c0b4fc78f0.lean/declarations/smul-mem-pointwise-smul--f005feccfde7bd8c9cb94088.md) | 66 | `result-track:f005feccfde7bd8c9cb940880e85f437a57b89db883b8c1f7c6cbd64805234f5` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Pointwise/Variant90315292345de035953ed6f41404bb4237643f1927122940deb097c0b4fc78f0.lean/declarations/instance--8fffa90a741a7f27197d602a.md) | 69 | `declaration-track:8fffa90a741a7f27197d602a9d819878479f0ac8c50928bb580ba78df1f33a3e` |
| 8 | `theorem` | [mem_smul_pointwise_iff_exists](../../../../mathematics/Algebra/Pointwise/Variant90315292345de035953ed6f41404bb4237643f1927122940deb097c0b4fc78f0.lean/declarations/mem-smul-pointwise-iff-exists--cb452a298b845b6a874e0b70.md) | 72 | `result-track:cb452a298b845b6a874e0b7035150d2bfad0e19339d68ffe1097c32baa9e644d` |
| 9 | `theorem` | [smul_bot](../../../../mathematics/Algebra/Pointwise/Variant90315292345de035953ed6f41404bb4237643f1927122940deb097c0b4fc78f0.lean/declarations/smul-bot--60b33d2481e984f01fc1953a.md) | 77 | `result-track:60b33d2481e984f01fc1953aea9157fea100c62475bb0668f1b6669f395e8e82` |
| 10 | `theorem` | [smul_sup](../../../../mathematics/Algebra/Pointwise/Variant90315292345de035953ed6f41404bb4237643f1927122940deb097c0b4fc78f0.lean/declarations/smul-sup--9d0f8ee885865574b578937a.md) | 80 | `result-track:9d0f8ee885865574b578937a0e74bc060ced3e59265ca1561d2fcbead59d858c` |
| 11 | `theorem` | [smul_closure](../../../../mathematics/Algebra/Pointwise/Variant90315292345de035953ed6f41404bb4237643f1927122940deb097c0b4fc78f0.lean/declarations/smul-closure--22e74bb52761cbfcdaf50d1c.md) | 83 | `result-track:22e74bb52761cbfcdaf50d1c7e7887a3fa2bd1ddd2f181f2fb15bf27de76419f` |
| 12 | `instance` | [pointwise_central_scalar](../../../../mathematics/Algebra/Pointwise/Variant90315292345de035953ed6f41404bb4237643f1927122940deb097c0b4fc78f0.lean/declarations/pointwise-central-scalar--c1eb99b2bd9986f59f6fddc0.md) | 86 | `declaration-track:c1eb99b2bd9986f59f6fddc06d3ba266d14f58aa979820a6166c62267762e474` |
| 13 | `theorem` | [smul_mem_pointwise_smul_iff](../../../../mathematics/Algebra/Pointwise/Variant90315292345de035953ed6f41404bb4237643f1927122940deb097c0b4fc78f0.lean/declarations/smul-mem-pointwise-smul-iff--342d702cea56763e8080e508.md) | 99 | `result-track:342d702cea56763e8080e508b6eb857b15e1fbfbb33f55f61c1f6b75f4c55ec6` |
| 14 | `theorem` | [mem_pointwise_smul_iff_inv_smul_mem](../../../../mathematics/Algebra/Pointwise/Variant90315292345de035953ed6f41404bb4237643f1927122940deb097c0b4fc78f0.lean/declarations/mem-pointwise-smul-iff-inv-smul-mem--10991985e208ae15737e56ba.md) | 102 | `result-track:10991985e208ae15737e56ba39887f688666ea788ca038c9f13f80c6090b81f5` |
| 15 | `theorem` | [mem_inv_pointwise_smul_iff](../../../../mathematics/Algebra/Pointwise/Variant90315292345de035953ed6f41404bb4237643f1927122940deb097c0b4fc78f0.lean/declarations/mem-inv-pointwise-smul-iff--892b26324e7316514e1b557e.md) | 106 | `result-track:892b26324e7316514e1b557e990d8985841b2987294578c046d0e3ade0072f64` |
| 16 | `theorem` | [pointwise_smul_le_pointwise_smul_iff](../../../../mathematics/Algebra/Pointwise/Variant90315292345de035953ed6f41404bb4237643f1927122940deb097c0b4fc78f0.lean/declarations/pointwise-smul-le-pointwise-smul-iff--d23c6b9416e0b95a1cc17300.md) | 110 | `result-track:d23c6b9416e0b95a1cc1730002e6ace5163ebc9cf6f0fcbbfe2c89a56eb7a6a6` |
| 17 | `theorem` | [pointwise_smul_subset_iff](../../../../mathematics/Algebra/Pointwise/Variant90315292345de035953ed6f41404bb4237643f1927122940deb097c0b4fc78f0.lean/declarations/pointwise-smul-subset-iff--52b544a38ba6c2259fbfd1fd.md) | 113 | `result-track:52b544a38ba6c2259fbfd1fd691921b81ec54fd3077f4fa8c9db37b740f255cd` |
| 18 | `theorem` | [subset_pointwise_smul_iff](../../../../mathematics/Algebra/Pointwise/Variant90315292345de035953ed6f41404bb4237643f1927122940deb097c0b4fc78f0.lean/declarations/subset-pointwise-smul-iff--203a23d2e2fce6b349ccb6c8.md) | 116 | `result-track:203a23d2e2fce6b349ccb6c8474224bc03489c7bc1a354b8340dbaafdd3e9ac3` |
| 19 | `theorem` | [smul_mem_pointwise_smul_iff₀](../../../../mathematics/Algebra/Pointwise/Variant90315292345de035953ed6f41404bb4237643f1927122940deb097c0b4fc78f0.lean/declarations/smul-mem-pointwise-smul-iff--cd00c679d949c5fe446ffbd8.md) | 131 | `result-track:cd00c679d949c5fe446ffbd89157e437fc5b0c295244da5acf94c2a22616b4ef` |
| 20 | `theorem` | [mem_pointwise_smul_iff_inv_smul_mem₀](../../../../mathematics/Algebra/Pointwise/Variant90315292345de035953ed6f41404bb4237643f1927122940deb097c0b4fc78f0.lean/declarations/mem-pointwise-smul-iff-inv-smul-mem--8e8c9209fc77ff8e22c55942.md) | 135 | `result-track:8e8c9209fc77ff8e22c55942048652c699359cf79a9af8b2d27afe803e0bd821` |
| 21 | `theorem` | [mem_inv_pointwise_smul_iff₀](../../../../mathematics/Algebra/Pointwise/Variant90315292345de035953ed6f41404bb4237643f1927122940deb097c0b4fc78f0.lean/declarations/mem-inv-pointwise-smul-iff--4ca2dbd8dd0761fa47c21bb5.md) | 139 | `result-track:4ca2dbd8dd0761fa47c21bb519ae096a6010a5f378cc0eaac496acab793769f2` |
| 22 | `theorem` | [pointwise_smul_le_pointwise_smul_iff₀](../../../../mathematics/Algebra/Pointwise/Variant90315292345de035953ed6f41404bb4237643f1927122940deb097c0b4fc78f0.lean/declarations/pointwise-smul-le-pointwise-smul-iff--0dd5aa9859a4ca9ffba67a1e.md) | 144 | `result-track:0dd5aa9859a4ca9ffba67a1ecdba555121ff95fd992c0eb9bcd5a933241b3dbc` |
| 23 | `theorem` | [pointwise_smul_le_iff₀](../../../../mathematics/Algebra/Pointwise/Variant90315292345de035953ed6f41404bb4237643f1927122940deb097c0b4fc78f0.lean/declarations/pointwise-smul-le-iff--80da596a2c3266d164261034.md) | 148 | `result-track:80da596a2c3266d164261034bb1d012fba57d66bf58323fd76872002e6065cf5` |
| 24 | `theorem` | [le_pointwise_smul_iff₀](../../../../mathematics/Algebra/Pointwise/Variant90315292345de035953ed6f41404bb4237643f1927122940deb097c0b4fc78f0.lean/declarations/le-pointwise-smul-iff--5521e0b5ee819aca5ac05430.md) | 151 | `result-track:5521e0b5ee819aca5ac05430aafd63f60d42cda7495a023ca97586a16d746759` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
