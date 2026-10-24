# Verification target: GRWTSK.Analysis.SpecialFunctions.BohrMollerup.Variantc1acf46e23f522673b34054e746df15ef9b693f5530af7bb34a7e6e1b96eed7f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "94400ea0c85b30a04ce15d85786d3cf2523cd725",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/BohrMollerup/Variantc1acf46e23f522673b34054e746df15ef9b693f5530af7bb34a7e6e1b96eed7f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/SpecialFunctions/BohrMollerup/Variantc1acf46e23f522673b34054e746df15ef9b693f5530af7bb34a7e6e1b96eed7f.lean/index.md) · [Full source](../../../../../mathematics/Analysis/SpecialFunctions/BohrMollerup/Variantc1acf46e23f522673b34054e746df15ef9b693f5530af7bb34a7e6e1b96eed7f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `94400ea0c85b30a04ce15d85786d3cf2523cd725`.

Source path: `GRWTSK/Analysis/SpecialFunctions/BohrMollerup/Variantc1acf46e23f522673b34054e746df15ef9b693f5530af7bb34a7e6e1b96eed7f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/BohrMollerup/Variantc1acf46e23f522673b34054e746df15ef9b693f5530af7bb34a7e6e1b96eed7f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Gamma.Deriv` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Gamma_mul_add_mul_le_rpow_Gamma_mul_rpow_Gamma](../../../../../mathematics/Analysis/SpecialFunctions/BohrMollerup/Variantc1acf46e23f522673b34054e746df15ef9b693f5530af7bb34a7e6e1b96eed7f.lean/declarations/gamma-mul-add-mul-le-rpow-gamma-mul-rpow-gamma--dc1c8e72436abeefeffaa630.md) | 60 | `result-track:dc1c8e72436abeefeffaa6304fb568b5c3047afd921a4257f4628ee6eee8d17d` |
| 2 | `theorem` | [convexOn_log_Gamma](../../../../../mathematics/Analysis/SpecialFunctions/BohrMollerup/Variantc1acf46e23f522673b34054e746df15ef9b693f5530af7bb34a7e6e1b96eed7f.lean/declarations/convexon-log-gamma--7d73db42d895fa793536f400.md) | 117 | `result-track:7d73db42d895fa793536f4007ad6901aced9310bf84b0b5e5723297d2c5610e3` |
| 3 | `theorem` | [convexOn_Gamma](../../../../../mathematics/Analysis/SpecialFunctions/BohrMollerup/Variantc1acf46e23f522673b34054e746df15ef9b693f5530af7bb34a7e6e1b96eed7f.lean/declarations/convexon-gamma--9d8bd5c2b819cc08ba901dcb.md) | 128 | `result-track:9d8bd5c2b819cc08ba901dcb967cd2483808812f6cffd725ec3dd2b581f7d6f3` |
| 4 | `def` | [logGammaSeq](../../../../../mathematics/Analysis/SpecialFunctions/BohrMollerup/Variantc1acf46e23f522673b34054e746df15ef9b693f5530af7bb34a7e6e1b96eed7f.lean/declarations/loggammaseq--9956a11e398165c5f304495c.md) | 146 | `declaration-track:9956a11e398165c5f304495cb3f941a89031f3d0585cf67886132e35592c468d` |
| 5 | `theorem` | [f_nat_eq](../../../../../mathematics/Analysis/SpecialFunctions/BohrMollerup/Variantc1acf46e23f522673b34054e746df15ef9b693f5530af7bb34a7e6e1b96eed7f.lean/declarations/f-nat-eq--8c3f3705999e91d294087d42.md) | 151 | `result-track:8c3f3705999e91d294087d4228a47df628bf31a762a6970690d406ce6f65baa0` |
| 6 | `theorem` | [f_add_nat_eq](../../../../../mathematics/Analysis/SpecialFunctions/BohrMollerup/Variantc1acf46e23f522673b34054e746df15ef9b693f5530af7bb34a7e6e1b96eed7f.lean/declarations/f-add-nat-eq--c456683845d3a89e783affc1.md) | 162 | `result-track:c456683845d3a89e783affc1f4483f662c5d53a43ea5aa71e94a20560ee6bf2b` |
| 7 | `theorem` | [f_add_nat_le](../../../../../mathematics/Analysis/SpecialFunctions/BohrMollerup/Variantc1acf46e23f522673b34054e746df15ef9b693f5530af7bb34a7e6e1b96eed7f.lean/declarations/f-add-nat-le--35df1deacd67a850333439cc.md) | 174 | `result-track:35df1deacd67a850333439ccef8375199c8c2f8542fdbc6ab74736c6a8571b4a` |
| 8 | `theorem` | [f_add_nat_ge](../../../../../mathematics/Analysis/SpecialFunctions/BohrMollerup/Variantc1acf46e23f522673b34054e746df15ef9b693f5530af7bb34a7e6e1b96eed7f.lean/declarations/f-add-nat-ge--c7179768704492aa088598af.md) | 184 | `result-track:c7179768704492aa088598af00f4dc9b1a0bf44690ff1f1e5c8e912ad9e61220` |
| 9 | `theorem` | [logGammaSeq_add_one](../../../../../mathematics/Analysis/SpecialFunctions/BohrMollerup/Variantc1acf46e23f522673b34054e746df15ef9b693f5530af7bb34a7e6e1b96eed7f.lean/declarations/loggammaseq-add-one--ef98907699de861d86266fcc.md) | 196 | `result-track:ef98907699de861d86266fcc7b2308e6cfb1c74956938781608ce385912f1bda` |
| 10 | `theorem` | [le_logGammaSeq](../../../../../mathematics/Analysis/SpecialFunctions/BohrMollerup/Variantc1acf46e23f522673b34054e746df15ef9b693f5530af7bb34a7e6e1b96eed7f.lean/declarations/le-loggammaseq--b7f0322b7dca9028c60452f3.md) | 212 | `result-track:b7f0322b7dca9028c60452f32997cc60cc13a0190ffbc70ec424bfa5a35d6c94` |
| 11 | `theorem` | [ge_logGammaSeq](../../../../../mathematics/Analysis/SpecialFunctions/BohrMollerup/Variantc1acf46e23f522673b34054e746df15ef9b693f5530af7bb34a7e6e1b96eed7f.lean/declarations/ge-loggammaseq--b26abc1ee581530896bdfa9c.md) | 220 | `result-track:b26abc1ee581530896bdfa9c0d9234c144c47ec70464f121765fd3c279156c9a` |
| 12 | `theorem` | [tendsto_logGammaSeq_of_le_one](../../../../../mathematics/Analysis/SpecialFunctions/BohrMollerup/Variantc1acf46e23f522673b34054e746df15ef9b693f5530af7bb34a7e6e1b96eed7f.lean/declarations/tendsto-loggammaseq-of-le-one--5557e94c76adf0b369c973c9.md) | 231 | `result-track:5557e94c76adf0b369c973c9806be4d0713b7885227f7806fcf39baa1f78b71b` |
| 13 | `theorem` | [tendsto_logGammaSeq](../../../../../mathematics/Analysis/SpecialFunctions/BohrMollerup/Variantc1acf46e23f522673b34054e746df15ef9b693f5530af7bb34a7e6e1b96eed7f.lean/declarations/tendsto-loggammaseq--bf35a32e293f406fbfb7ef91.md) | 247 | `result-track:bf35a32e293f406fbfb7ef919def0107bbb83f2a47bb4040e4eb7916d5fe53a3` |
| 14 | `theorem` | [tendsto_log_gamma](../../../../../mathematics/Analysis/SpecialFunctions/BohrMollerup/Variantc1acf46e23f522673b34054e746df15ef9b693f5530af7bb34a7e6e1b96eed7f.lean/declarations/tendsto-log-gamma--bbb4e6100b0d1f0879cb12b1.md) | 297 | `result-track:bbb4e6100b0d1f0879cb12b18dd040e75b0e7367a6621e6d796c815468b53435` |
| 15 | `theorem` | [eq_Gamma_of_log_convex](../../../../../mathematics/Analysis/SpecialFunctions/BohrMollerup/Variantc1acf46e23f522673b34054e746df15ef9b693f5530af7bb34a7e6e1b96eed7f.lean/declarations/eq-gamma-of-log-convex--536796a4dad6332eb8120ce4.md) | 311 | `result-track:536796a4dad6332eb8120ce403cb73406c63368468030e2dafd8bbf57aa0f60b` |
| 16 | `theorem` | [Gamma_two](../../../../../mathematics/Analysis/SpecialFunctions/BohrMollerup/Variantc1acf46e23f522673b34054e746df15ef9b693f5530af7bb34a7e6e1b96eed7f.lean/declarations/gamma-two--d0b31cbac1ef244114a7b6d8.md) | 329 | `result-track:d0b31cbac1ef244114a7b6d88a3735e9891d7170547436dafa55a89b866767ff` |
| 17 | `theorem` | [Gamma_three_div_two_lt_one](../../../../../mathematics/Analysis/SpecialFunctions/BohrMollerup/Variantc1acf46e23f522673b34054e746df15ef9b693f5530af7bb34a7e6e1b96eed7f.lean/declarations/gamma-three-div-two-lt-one--554de09c16d9c3d1a04b727b.md) | 331 | `result-track:554de09c16d9c3d1a04b727b4a2baa4f694e74e9f9323ba6794595d5dd15c59f` |
| 18 | `theorem` | [Gamma_strictMonoOn_Ici](../../../../../mathematics/Analysis/SpecialFunctions/BohrMollerup/Variantc1acf46e23f522673b34054e746df15ef9b693f5530af7bb34a7e6e1b96eed7f.lean/declarations/gamma-strictmonoon-ici--d36e91406047c171cf97be4a.md) | 353 | `result-track:d36e91406047c171cf97be4a485e3a65da514b0fa2af09577a46668958ec570d` |
| 19 | `def` | [doublingGamma](../../../../../mathematics/Analysis/SpecialFunctions/BohrMollerup/Variantc1acf46e23f522673b34054e746df15ef9b693f5530af7bb34a7e6e1b96eed7f.lean/declarations/doublinggamma--7e95e2f7224d11e182d2a45c.md) | 375 | `declaration-track:7e95e2f7224d11e182d2a45ca7aab021c94036e16c51f55727658e6c363deebe` |
| 20 | `theorem` | [doublingGamma_add_one](../../../../../mathematics/Analysis/SpecialFunctions/BohrMollerup/Variantc1acf46e23f522673b34054e746df15ef9b693f5530af7bb34a7e6e1b96eed7f.lean/declarations/doublinggamma-add-one--642520a12eb8c461f388cbc3.md) | 378 | `result-track:642520a12eb8c461f388cbc3f11842afa9411374b1b7cb09c0df8ffc41f2d1f9` |
| 21 | `theorem` | [doublingGamma_one](../../../../../mathematics/Analysis/SpecialFunctions/BohrMollerup/Variantc1acf46e23f522673b34054e746df15ef9b693f5530af7bb34a7e6e1b96eed7f.lean/declarations/doublinggamma-one--032e69579c1721127ff3eb4a.md) | 384 | `result-track:032e69579c1721127ff3eb4ac8939957f28fcdf45c0555e5a6eadd040d23e389` |
| 22 | `theorem` | [log_doublingGamma_eq](../../../../../mathematics/Analysis/SpecialFunctions/BohrMollerup/Variantc1acf46e23f522673b34054e746df15ef9b693f5530af7bb34a7e6e1b96eed7f.lean/declarations/log-doublinggamma-eq--afea7bcb86ebf07f3d015b9c.md) | 388 | `result-track:afea7bcb86ebf07f3d015b9cc9157107868835cb41a7cc2e6279b4f483e05fa8` |
| 23 | `theorem` | [doublingGamma_log_convex_Ioi](../../../../../mathematics/Analysis/SpecialFunctions/BohrMollerup/Variantc1acf46e23f522673b34054e746df15ef9b693f5530af7bb34a7e6e1b96eed7f.lean/declarations/doublinggamma-log-convex-ioi--6aae4d3dbaadce7997a4b037.md) | 402 | `result-track:6aae4d3dbaadce7997a4b037d1d7551b30c02fa0b8d46b3463e8545f0e473467` |
| 24 | `theorem` | [doublingGamma_eq_Gamma](../../../../../mathematics/Analysis/SpecialFunctions/BohrMollerup/Variantc1acf46e23f522673b34054e746df15ef9b693f5530af7bb34a7e6e1b96eed7f.lean/declarations/doublinggamma-eq-gamma--cdb07f60c4cef315964de0da.md) | 425 | `result-track:cdb07f60c4cef315964de0da2df0c131a64eb66150bbe72b6fc25d6189c52f72` |
| 25 | `theorem` | [Gamma_mul_Gamma_add_half_of_pos](../../../../../mathematics/Analysis/SpecialFunctions/BohrMollerup/Variantc1acf46e23f522673b34054e746df15ef9b693f5530af7bb34a7e6e1b96eed7f.lean/declarations/gamma-mul-gamma-add-half-of-pos--17bb1fdabfe61816579194aa.md) | 435 | `result-track:17bb1fdabfe61816579194aa5347c99fcd0f0823c1f27f3f6e6bc09189b4d0c9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
