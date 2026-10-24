# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Sigma.Variantbb453ae5330ed1485115fc40e6c203c2fcfbc2ce384fdd88f27178807ba9752a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d5b97c543a26014d360f906527ad802b5b55f1b0",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Sigma/Variantbb453ae5330ed1485115fc40e6c203c2fcfbc2ce384fdd88f27178807ba9752a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variantbb453ae5330ed1485115fc40e6c203c2fcfbc2ce384fdd88f27178807ba9752a.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variantbb453ae5330ed1485115fc40e6c203c2fcfbc2ce384fdd88f27178807ba9752a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d5b97c543a26014d360f906527ad802b5b55f1b0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Sigma/Variantbb453ae5330ed1485115fc40e6c203c2fcfbc2ce384fdd88f27178807ba9752a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Sigma/Variantbb453ae5330ed1485115fc40e6c203c2fcfbc2ce384fdd88f27178807ba9752a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.DFinsupp.Module` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Quotient` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sigmaCurry](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variantbb453ae5330ed1485115fc40e6c203c2fcfbc2ce384fdd88f27178807ba9752a.lean/declarations/sigmacurry--15f74f71f49e1774ad717ccb.md) | 51 | `declaration-track:15f74f71f49e1774ad717ccb12a6609cbf05c0439c8a59527ad348873661a935` |
| 2 | `theorem` | [sigmaCurry_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variantbb453ae5330ed1485115fc40e6c203c2fcfbc2ce384fdd88f27178807ba9752a.lean/declarations/sigmacurry-apply--53a2ee338222dad5f2b6cfd0.md) | 63 | `result-track:53a2ee338222dad5f2b6cfd0b62c2ccfce836c120bcd1f25bbe353c44b22407c` |
| 3 | `theorem` | [sigmaCurry_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variantbb453ae5330ed1485115fc40e6c203c2fcfbc2ce384fdd88f27178807ba9752a.lean/declarations/sigmacurry-zero--968cccce5afdf51f729d76f3.md) | 68 | `result-track:968cccce5afdf51f729d76f357291c4e88df7ada1db8567eb208ab3c72f21b3a` |
| 4 | `theorem` | [sigmaCurry_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variantbb453ae5330ed1485115fc40e6c203c2fcfbc2ce384fdd88f27178807ba9752a.lean/declarations/sigmacurry-add--568d5ecb774b49301035e2c6.md) | 73 | `result-track:568d5ecb774b49301035e2c62d183e9ad3750ef82c49396e4b1a52ac590a4ce9` |
| 5 | `theorem` | [sigmaCurry_smul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variantbb453ae5330ed1485115fc40e6c203c2fcfbc2ce384fdd88f27178807ba9752a.lean/declarations/sigmacurry-smul--cc592261cf1a2784c1d1bde3.md) | 81 | `result-track:cc592261cf1a2784c1d1bde35c686c39a013d0db5e83fe1c8483d1eaab456a2b` |
| 6 | `theorem` | [sigmaCurry_single](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variantbb453ae5330ed1485115fc40e6c203c2fcfbc2ce384fdd88f27178807ba9752a.lean/declarations/sigmacurry-single--d44178666d4f6c01f01cd1d5.md) | 90 | `result-track:d44178666d4f6c01f01cd1d50d327d256bc22f0ef86af486b30074eb5796be19` |
| 7 | `def` | [sigmaUncurry](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variantbb453ae5330ed1485115fc40e6c203c2fcfbc2ce384fdd88f27178807ba9752a.lean/declarations/sigmauncurry--b3a60027f2cf3f177f43d88e.md) | 108 | `declaration-track:b3a60027f2cf3f177f43d88e6bd1f02d45650ef95f0498121a73895048a6f2eb` |
| 8 | `theorem` | [sigmaUncurry_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variantbb453ae5330ed1485115fc40e6c203c2fcfbc2ce384fdd88f27178807ba9752a.lean/declarations/sigmauncurry-apply--747afed712c4592fa6c97ef8.md) | 129 | `result-track:747afed712c4592fa6c97ef8b6031846c6a25b4c33fce23aeba973b7d8ad01bc` |
| 9 | `theorem` | [sigmaUncurry_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variantbb453ae5330ed1485115fc40e6c203c2fcfbc2ce384fdd88f27178807ba9752a.lean/declarations/sigmauncurry-zero--8c552bccabe0b9ea8f341bca.md) | 135 | `result-track:8c552bccabe0b9ea8f341bca63d3f16b3286a466f307405928aece423ee21df0` |
| 10 | `theorem` | [sigmaUncurry_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variantbb453ae5330ed1485115fc40e6c203c2fcfbc2ce384fdd88f27178807ba9752a.lean/declarations/sigmauncurry-add--49a366c80e360da4db41bf8b.md) | 140 | `result-track:49a366c80e360da4db41bf8b6d7c868467218ca09306521955969a3a6902b207` |
| 11 | `theorem` | [sigmaUncurry_smul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variantbb453ae5330ed1485115fc40e6c203c2fcfbc2ce384fdd88f27178807ba9752a.lean/declarations/sigmauncurry-smul--9721ba7363f36c41ecfb3ffe.md) | 145 | `result-track:9721ba7363f36c41ecfb3ffe84aea6cdbf2d350b515b341a5dd25b0876799768` |
| 12 | `theorem` | [sigmaUncurry_single](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variantbb453ae5330ed1485115fc40e6c203c2fcfbc2ce384fdd88f27178807ba9752a.lean/declarations/sigmauncurry-single--440b6ad333a5f26410a3cdc5.md) | 151 | `result-track:440b6ad333a5f26410a3cdc5bca105f37c5ba587ac8d8fc7c31077fd4ea9c87b` |
| 13 | `def` | [sigmaCurryEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variantbb453ae5330ed1485115fc40e6c203c2fcfbc2ce384fdd88f27178807ba9752a.lean/declarations/sigmacurryequiv--a83021d7917f41a99eea9334.md) | 169 | `declaration-track:a83021d7917f41a99eea9334eb1c009b1aa7e301aa3c7a3d2d8aaf85a1fcaef7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
