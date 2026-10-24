# Verification target: GRWTSK.Topology.GeneralTopology.Attempt07.Variant6b90a061be1a379420d9bd6ae4f419019ccb2befefc3206619cf7037910b7e71

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b44f6a0bcdcef6d2d52102567f026b5071de9f9a",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Attempt07/Variant6b90a061be1a379420d9bd6ae4f419019ccb2befefc3206619cf7037910b7e71.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Attempt07/Variant6b90a061be1a379420d9bd6ae4f419019ccb2befefc3206619cf7037910b7e71.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Attempt07/Variant6b90a061be1a379420d9bd6ae4f419019ccb2befefc3206619cf7037910b7e71.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b44f6a0bcdcef6d2d52102567f026b5071de9f9a`.

Source path: `GRWTSK/Topology/GeneralTopology/Attempt07/Variant6b90a061be1a379420d9bd6ae4f419019ccb2befefc3206619cf7037910b7e71.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Attempt07/Variant6b90a061be1a379420d9bd6ae4f419019ccb2befefc3206619cf7037910b7e71.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Laplace.Expansion` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Exp` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [p](../../../../../mathematics/Topology/GeneralTopology/Attempt07/Variant6b90a061be1a379420d9bd6ae4f419019ccb2befefc3206619cf7037910b7e71.lean/declarations/p--7a8c17e1cc3e9482293df2ed.md) | 23 | `declaration-track:7a8c17e1cc3e9482293df2ede99b03495ca25b97d20fe3da1546e8159d0c1b4e` |
| 2 | `def` | [normalizedSquare](../../../../../mathematics/Topology/GeneralTopology/Attempt07/Variant6b90a061be1a379420d9bd6ae4f419019ccb2befefc3206619cf7037910b7e71.lean/declarations/normalizedsquare--f69378d4b61ca067b9ace71c.md) | 25 | `declaration-track:f69378d4b61ca067b9ace71cd590cd1c7d8134f197984fd163546f93df1dc035` |
| 3 | `theorem` | [p_coe](../../../../../mathematics/Topology/GeneralTopology/Attempt07/Variant6b90a061be1a379420d9bd6ae4f419019ccb2befefc3206619cf7037910b7e71.lean/declarations/p-coe--06c80912b8fa998587418046.md) | 28 | `result-track:06c80912b8fa9985874180462ed8938699666bda42d4692d4870a72c66348930` |
| 4 | `theorem` | [actual_scaled_square_real](../../../../../mathematics/Topology/GeneralTopology/Attempt07/Variant6b90a061be1a379420d9bd6ae4f419019ccb2befefc3206619cf7037910b7e71.lean/declarations/actual-scaled-square-real--70d646572c467622b16ff47c.md) | 31 | `result-track:70d646572c467622b16ff47c812d8e17d1399eac6c72dc74eddc8af48a45bd7e` |
| 5 | `theorem` | [p_ratio](../../../../../mathematics/Topology/GeneralTopology/Attempt07/Variant6b90a061be1a379420d9bd6ae4f419019ccb2befefc3206619cf7037910b7e71.lean/declarations/p-ratio--79e9c38d3ac5314575513a9d.md) | 57 | `result-track:79e9c38d3ac5314575513a9dbd68b782cf0db16503c19206c8d230dd19358767` |
| 6 | `theorem` | [p_ratio_tendsto](../../../../../mathematics/Topology/GeneralTopology/Attempt07/Variant6b90a061be1a379420d9bd6ae4f419019ccb2befefc3206619cf7037910b7e71.lean/declarations/p-ratio-tendsto--1329fd042b1d459d350160de.md) | 61 | `result-track:1329fd042b1d459d350160dedac6b67401858d49ec9b9b2c75a8d22204dea9a0` |
| 7 | `theorem` | [normalization_tendsto](../../../../../mathematics/Topology/GeneralTopology/Attempt07/Variant6b90a061be1a379420d9bd6ae4f419019ccb2befefc3206619cf7037910b7e71.lean/declarations/normalization-tendsto--33c9309e7f45fa1fa438498d.md) | 78 | `result-track:33c9309e7f45fa1fa438498d1ab6f29cc36ae9ea39235559f17af00ae12c3d8f` |
| 8 | `theorem` | [exp_scaled_neg_tendsto](../../../../../mathematics/Topology/GeneralTopology/Attempt07/Variant6b90a061be1a379420d9bd6ae4f419019ccb2befefc3206619cf7037910b7e71.lean/declarations/exp-scaled-neg-tendsto--649023b3d4156e308fcde1a4.md) | 87 | `result-track:649023b3d4156e308fcde1a4f50cf6095f2d1f38ecade22d4da3863bcf5135ac` |
| 9 | `theorem` | [exp_square_rescale](../../../../../mathematics/Topology/GeneralTopology/Attempt07/Variant6b90a061be1a379420d9bd6ae4f419019ccb2befefc3206619cf7037910b7e71.lean/declarations/exp-square-rescale--c2a5a50b19b8c432889f534b.md) | 92 | `result-track:c2a5a50b19b8c432889f534b5dce0d58e4760c2318fd2f7069e042c8e58810c6` |
| 10 | `theorem` | [scaled_square_exact](../../../../../mathematics/Topology/GeneralTopology/Attempt07/Variant6b90a061be1a379420d9bd6ae4f419019ccb2befefc3206619cf7037910b7e71.lean/declarations/scaled-square-exact--87e75e8cab8489370ebfa91e.md) | 101 | `result-track:87e75e8cab8489370ebfa91eb030adbcf9ec7d0f385b19cb779a0d40ac6092d2` |
| 11 | `theorem` | [scaled_square_tendsto](../../../../../mathematics/Topology/GeneralTopology/Attempt07/Variant6b90a061be1a379420d9bd6ae4f419019ccb2befefc3206619cf7037910b7e71.lean/declarations/scaled-square-tendsto--8eec241213f19f149837f10f.md) | 125 | `result-track:8eec241213f19f149837f10fbc70481f71a2c5b9c358382cc0af597c292fb020` |
| 12 | `theorem` | [quarter_scaled_limit](../../../../../mathematics/Topology/GeneralTopology/Attempt07/Variant6b90a061be1a379420d9bd6ae4f419019ccb2befefc3206619cf7037910b7e71.lean/declarations/quarter-scaled-limit--4a3843f76e4b25419bc4a79e.md) | 145 | `result-track:4a3843f76e4b25419bc4a79e2a9d1c367119f77113ac6021bb2e8d8d8deed847` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
