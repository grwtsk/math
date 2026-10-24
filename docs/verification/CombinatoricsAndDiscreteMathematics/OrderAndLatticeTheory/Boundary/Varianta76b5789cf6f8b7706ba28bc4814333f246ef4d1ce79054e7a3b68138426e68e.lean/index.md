# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Boundary.Varianta76b5789cf6f8b7706ba28bc4814333f246ef4d1ce79054e7a3b68138426e68e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cb20144e461015edc5134ae22ac7ca865ea945d4",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Boundary/Varianta76b5789cf6f8b7706ba28bc4814333f246ef4d1ce79054e7a3b68138426e68e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Boundary/Varianta76b5789cf6f8b7706ba28bc4814333f246ef4d1ce79054e7a3b68138426e68e.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Boundary/Varianta76b5789cf6f8b7706ba28bc4814333f246ef4d1ce79054e7a3b68138426e68e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cb20144e461015edc5134ae22ac7ca865ea945d4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Boundary/Varianta76b5789cf6f8b7706ba28bc4814333f246ef4d1ce79054e7a3b68138426e68e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Boundary/Varianta76b5789cf6f8b7706ba28bc4814333f246ef4d1ce79054e7a3b68138426e68e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.BooleanAlgebra` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [boundary](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Boundary/Varianta76b5789cf6f8b7706ba28bc4814333f246ef4d1ce79054e7a3b68138426e68e.lean/declarations/boundary--c8049f3447da9803e067abba.md) | 43 | `declaration-track:c8049f3447da9803e067abba2724a58612aed96f34b3ca8305c2b4ffdb8ad1c6` |
| 2 | `theorem` | [inf_hnot_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Boundary/Varianta76b5789cf6f8b7706ba28bc4814333f246ef4d1ce79054e7a3b68138426e68e.lean/declarations/inf-hnot-self--e504d8d62c591f7987825fe9.md) | 53 | `result-track:e504d8d62c591f7987825fe98e8555972ee65439db34be19054c129f1c751086` |
| 3 | `theorem` | [boundary_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Boundary/Varianta76b5789cf6f8b7706ba28bc4814333f246ef4d1ce79054e7a3b68138426e68e.lean/declarations/boundary-le--fe061f936fde3161675d4d80.md) | 57 | `result-track:fe061f936fde3161675d4d805e8d5735db06a6a22b788ea070319964f20cf487` |
| 4 | `theorem` | [boundary_le_hnot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Boundary/Varianta76b5789cf6f8b7706ba28bc4814333f246ef4d1ce79054e7a3b68138426e68e.lean/declarations/boundary-le-hnot--820a7ba5fff8061e82afa591.md) | 61 | `result-track:820a7ba5fff8061e82afa591bb2895bbfb7905aa06c267cf0caeb61597f5f7eb` |
| 5 | `theorem` | [boundary_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Boundary/Varianta76b5789cf6f8b7706ba28bc4814333f246ef4d1ce79054e7a3b68138426e68e.lean/declarations/boundary-bot--bd34fc8b637a2479d4600818.md) | 66 | `result-track:bd34fc8b637a2479d4600818d40194dc2be049ccb17dd25ae0ec5931eba10e6a` |
| 6 | `theorem` | [boundary_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Boundary/Varianta76b5789cf6f8b7706ba28bc4814333f246ef4d1ce79054e7a3b68138426e68e.lean/declarations/boundary-top--08e6017bf23d7b97926b342a.md) | 71 | `result-track:08e6017bf23d7b97926b342aa09288d8b33ca0bbfc1e505d5cd08640653ec430` |
| 7 | `theorem` | [boundary_hnot_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Boundary/Varianta76b5789cf6f8b7706ba28bc4814333f246ef4d1ce79054e7a3b68138426e68e.lean/declarations/boundary-hnot-le--69b8372339ac02ccdb6809fe.md) | 74 | `result-track:69b8372339ac02ccdb6809fe9fc853847f10a7ef142932b0a2770e4a86e1b8d6` |
| 8 | `theorem` | [boundary_hnot_hnot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Boundary/Varianta76b5789cf6f8b7706ba28bc4814333f246ef4d1ce79054e7a3b68138426e68e.lean/declarations/boundary-hnot-hnot--0f7029d0d4ced7bb790202a8.md) | 79 | `result-track:0f7029d0d4ced7bb790202a8813a3b2719f79c8d634b8c1958a0f91bef2ef36a` |
| 9 | `theorem` | [hnot_boundary](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Boundary/Varianta76b5789cf6f8b7706ba28bc4814333f246ef4d1ce79054e7a3b68138426e68e.lean/declarations/hnot-boundary--17b45a27a56f99eac42b7058.md) | 84 | `result-track:17b45a27a56f99eac42b7058d736f953be4e2126402112f0160850c0d9beea69` |
| 10 | `theorem` | [boundary_inf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Boundary/Varianta76b5789cf6f8b7706ba28bc4814333f246ef4d1ce79054e7a3b68138426e68e.lean/declarations/boundary-inf--f65093feff1aeae73d4ff54d.md) | 88 | `result-track:f65093feff1aeae73d4ff54ddb13a26b00f3793639382284acf8cffb278d3948` |
| 11 | `theorem` | [boundary_inf_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Boundary/Varianta76b5789cf6f8b7706ba28bc4814333f246ef4d1ce79054e7a3b68138426e68e.lean/declarations/boundary-inf-le--a7448ab6da372f973d58903d.md) | 93 | `result-track:a7448ab6da372f973d58903d3433e8b660b8b12d585596a77082ace238e102e2` |
| 12 | `theorem` | [boundary_sup_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Boundary/Varianta76b5789cf6f8b7706ba28bc4814333f246ef4d1ce79054e7a3b68138426e68e.lean/declarations/boundary-sup-le--cc9af8fff872be18bbb545af.md) | 97 | `result-track:cc9af8fff872be18bbb545af332903d08370c025c36d555534004e679a215fa3` |
| 13 | `example` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Boundary/Varianta76b5789cf6f8b7706ba28bc4814333f246ef4d1ce79054e7a3b68138426e68e.lean/declarations/example--f84371e96cbdb96548e208e8.md) | 108 | `declaration-track:f84371e96cbdb96548e208e8744ca600dedf0f755d27d5b85501beac1e7f861e` |
| 14 | `theorem` | [boundary_le_boundary_sup_sup_boundary_inf_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Boundary/Varianta76b5789cf6f8b7706ba28bc4814333f246ef4d1ce79054e7a3b68138426e68e.lean/declarations/boundary-le-boundary-sup-sup-boundary-inf-left--54346bdc6a8865f4815e3e81.md) | 113 | `result-track:54346bdc6a8865f4815e3e81073eaa14b1d9c2041877972d8c211faa4b826335` |
| 15 | `theorem` | [boundary_le_boundary_sup_sup_boundary_inf_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Boundary/Varianta76b5789cf6f8b7706ba28bc4814333f246ef4d1ce79054e7a3b68138426e68e.lean/declarations/boundary-le-boundary-sup-sup-boundary-inf-right--de9aaef1b1c2aa25c6fe09b3.md) | 128 | `result-track:de9aaef1b1c2aa25c6fe09b3e5fb85fdc8e90eb42bbf231c50e3599ad5e4dce1` |
| 16 | `theorem` | [boundary_sup_sup_boundary_inf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Boundary/Varianta76b5789cf6f8b7706ba28bc4814333f246ef4d1ce79054e7a3b68138426e68e.lean/declarations/boundary-sup-sup-boundary-inf--22a2dac2dcc5f55e72cadbd3.md) | 133 | `result-track:22a2dac2dcc5f55e72cadbd3ad182bedb5a55c9b364b455799f4f00d59125690` |
| 17 | `theorem` | [boundary_idem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Boundary/Varianta76b5789cf6f8b7706ba28bc4814333f246ef4d1ce79054e7a3b68138426e68e.lean/declarations/boundary-idem--0648d134cdece877e567ecdc.md) | 140 | `result-track:0648d134cdece877e567ecdcc2d480edc34395c8cd79d6d2be7cebacb463da21` |
| 18 | `theorem` | [hnot_hnot_sup_boundary](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Boundary/Varianta76b5789cf6f8b7706ba28bc4814333f246ef4d1ce79054e7a3b68138426e68e.lean/declarations/hnot-hnot-sup-boundary--2fd4b82bce1ecc83e042b48f.md) | 143 | `result-track:2fd4b82bce1ecc83e042b48f9367b54957efb27c985a9420f656c17ce8fcc9e6` |
| 19 | `theorem` | [hnot_eq_top_iff_exists_boundary](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Boundary/Varianta76b5789cf6f8b7706ba28bc4814333f246ef4d1ce79054e7a3b68138426e68e.lean/declarations/hnot-eq-top-iff-exists-boundary--96c0caeadecb722d894273ac.md) | 148 | `result-track:96c0caeadecb722d894273ac6500abef6558092c9599ec24f4b50db42c5a27da` |
| 20 | `theorem` | [Coheyting.boundary_eq_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Boundary/Varianta76b5789cf6f8b7706ba28bc4814333f246ef4d1ce79054e7a3b68138426e68e.lean/declarations/coheyting-boundary-eq-bot--582cae5126c02269960d82e4.md) | 163 | `result-track:582cae5126c02269960d82e48049df5ccfcecb25930ba4976b9906118e8d9269` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
