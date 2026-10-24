# Verification target: GRWTSK.NumberTheory.LSeries.Checks.Positive.GaussianContour

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "61ee069e055e03b7e4ddac863e796d0857bd7df2",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/LSeries/Checks/Positive/GaussianContour.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/LSeries/Checks/Positive/GaussianContour.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/LSeries/Checks/Positive/GaussianContour.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `61ee069e055e03b7e4ddac863e796d0857bd7df2`.

Source path: `GRWTSK/NumberTheory/LSeries/Checks/Positive/GaussianContour.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/LSeries/Checks/Positive/GaussianContour.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.LSeries.GaussianContour`](../../../../../../mathematics/NumberTheory/LSeries/GaussianContour.lean/index.md) — import line 3; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [gaussianContour_generic](../../../../../../mathematics/NumberTheory/LSeries/Checks/Positive/GaussianContour.lean/declarations/gaussiancontour-generic--a8b55d31c094fcb48f95941c.md) | 10 | `result-track:a8b55d31c094fcb48f95941ccfc26be0a3aa21a8f674377454727a3eb1899ae9` |
| 2 | `theorem` | [gaussianContour_two_one](../../../../../../mathematics/NumberTheory/LSeries/Checks/Positive/GaussianContour.lean/declarations/gaussiancontour-two-one--0a7c4cbdf8ed0b03c0923d24.md) | 14 | `result-track:0a7c4cbdf8ed0b03c0923d24d14a8a22801123d2247babfee95313167dadd459` |
| 3 | `theorem` | [gaussianProfile_sum_one](../../../../../../mathematics/NumberTheory/LSeries/Checks/Positive/GaussianContour.lean/declarations/gaussianprofile-sum-one--eb83615b827c57fe761dbae3.md) | 18 | `result-track:eb83615b827c57fe761dbae34dbda7e329b5dcfc90c0866b76362b50e8acde9e` |
| 4 | `theorem` | [gaussianDirichletWeight_one_not_summable](../../../../../../mathematics/NumberTheory/LSeries/Checks/Positive/GaussianContour.lean/declarations/gaussiandirichletweight-one-not-summable--7d4a885aca0a0b0da69a796e.md) | 23 | `result-track:7d4a885aca0a0b0da69a796e2b473ab7418f231f160f4cacc5955c4886d6165a` |
| 5 | `theorem` | [gaussianZetaSummand_one_integral_norm_not_summable](../../../../../../mathematics/NumberTheory/LSeries/Checks/Positive/GaussianContour.lean/declarations/gaussianzetasummand-one-integral-norm-not-summable--15c4362235e538f2244fffcd.md) | 31 | `result-track:15c4362235e538f2244fffcd1d89e94a225b336205de62172e52104d43e5110d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
