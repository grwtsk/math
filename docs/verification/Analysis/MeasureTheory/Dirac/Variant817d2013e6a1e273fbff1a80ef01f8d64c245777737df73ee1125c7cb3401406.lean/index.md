# Verification target: GRWTSK.Analysis.MeasureTheory.Dirac.Variant817d2013e6a1e273fbff1a80ef01f8d64c245777737df73ee1125c7cb3401406

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9b6e68ec654b6e0b72e4c105315a90342f192839",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Dirac/Variant817d2013e6a1e273fbff1a80ef01f8d64c245777737df73ee1125c7cb3401406.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant817d2013e6a1e273fbff1a80ef01f8d64c245777737df73ee1125c7cb3401406.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant817d2013e6a1e273fbff1a80ef01f8d64c245777737df73ee1125c7cb3401406.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9b6e68ec654b6e0b72e4c105315a90342f192839`.

Source path: `GRWTSK/Analysis/MeasureTheory/Dirac/Variant817d2013e6a1e273fbff1a80ef01f8d64c245777737df73ee1125c7cb3401406.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Dirac/Variant817d2013e6a1e273fbff1a80ef01f8d64c245777737df73ee1125c7cb3401406.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.MeasureSpace` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dirac](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant817d2013e6a1e273fbff1a80ef01f8d64c245777737df73ee1125c7cb3401406.lean/declarations/dirac--7374ee75bb52139c12891f9e.md) | 36 | `declaration-track:7374ee75bb52139c12891f9e98bd3803170cf836105456950e98a0eaafc23c79` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant817d2013e6a1e273fbff1a80ef01f8d64c245777737df73ee1125c7cb3401406.lean/declarations/instance--aef660b8a95dd6663d23e8be.md) | 39 | `declaration-track:aef660b8a95dd6663d23e8be0e7cdb26e41b198498b714d5142e3a2b4e9c1b58` |
| 3 | `theorem` | [le_dirac_apply](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant817d2013e6a1e273fbff1a80ef01f8d64c245777737df73ee1125c7cb3401406.lean/declarations/le-dirac-apply--3767a1a8fa02917f15f07cfd.md) | 42 | `result-track:3767a1a8fa02917f15f07cfdf72121fbc4b0825ef390a95e5faa6a92313e3b2b` |
| 4 | `theorem` | [dirac_apply'](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant817d2013e6a1e273fbff1a80ef01f8d64c245777737df73ee1125c7cb3401406.lean/declarations/dirac-apply--bcb63b3cfae75b96cb2d172a.md) | 47 | `result-track:bcb63b3cfae75b96cb2d172a9931af5db5d58553da59ff5a57706e130cb91c3a` |
| 5 | `theorem` | [dirac_apply_of_mem](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant817d2013e6a1e273fbff1a80ef01f8d64c245777737df73ee1125c7cb3401406.lean/declarations/dirac-apply-of-mem--8ca70d569e52de7ea712cfa3.md) | 52 | `result-track:8ca70d569e52de7ea712cfa31c7fe529dfffc6eff04b7ba3c9789428c6b63111` |
| 6 | `theorem` | [dirac_apply](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant817d2013e6a1e273fbff1a80ef01f8d64c245777737df73ee1125c7cb3401406.lean/declarations/dirac-apply--04f4cd8517515145598e4681.md) | 60 | `result-track:04f4cd8517515145598e46810470a21a9fbe06b40c86b8cc1f6cb0c372c2123c` |
| 7 | `theorem` | [map_dirac](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant817d2013e6a1e273fbff1a80ef01f8d64c245777737df73ee1125c7cb3401406.lean/declarations/map-dirac--6e25f9f3027de0e5426fe9f2.md) | 70 | `result-track:6e25f9f3027de0e5426fe9f254da79c67cc550aa5fc4ce33cc491019799a42fe` |
| 8 | `theorem` | [restrict_singleton](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant817d2013e6a1e273fbff1a80ef01f8d64c245777737df73ee1125c7cb3401406.lean/declarations/restrict-singleton--7007789886eb6f12705b70a8.md) | 75 | `result-track:7007789886eb6f12705b70a86fda95b8c334a5083157b072018774b8b2be74af` |
| 9 | `theorem` | [map_eq_sum](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant817d2013e6a1e273fbff1a80ef01f8d64c245777737df73ee1125c7cb3401406.lean/declarations/map-eq-sum--5467b64fb8a57ff80716cfa8.md) | 85 | `result-track:5467b64fb8a57ff80716cfa8d7fcc838ce31c7babaf7abd7851d7fa41731fa88` |
| 10 | `theorem` | [sum_smul_dirac](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant817d2013e6a1e273fbff1a80ef01f8d64c245777737df73ee1125c7cb3401406.lean/declarations/sum-smul-dirac--83b1ab7778c4b4ab6f5fd38e.md) | 95 | `result-track:83b1ab7778c4b4ab6f5fd38efecfad72499d16f27140e6a3480ad9367fc0ddef` |
| 11 | `theorem` | [tsum_indicator_apply_singleton](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant817d2013e6a1e273fbff1a80ef01f8d64c245777737df73ee1125c7cb3401406.lean/declarations/tsum-indicator-apply-singleton--5dc6417c988b80a788111471.md) | 101 | `result-track:5dc6417c988b80a78811147185500f423828450255cb7a5841350634a6474c83` |
| 12 | `theorem` | [mem_ae_dirac_iff](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant817d2013e6a1e273fbff1a80ef01f8d64c245777737df73ee1125c7cb3401406.lean/declarations/mem-ae-dirac-iff--45ed71d57cdb4b24dc47896d.md) | 115 | `result-track:45ed71d57cdb4b24dc47896dfb3cd46b35f182ebc90de0fec36df007caa263ed` |
| 13 | `theorem` | [ae_dirac_iff](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant817d2013e6a1e273fbff1a80ef01f8d64c245777737df73ee1125c7cb3401406.lean/declarations/ae-dirac-iff--855ab087b3068175a760cf2b.md) | 119 | `result-track:855ab087b3068175a760cf2b43190a89d5b42354ba2d3e79a07f8bc3ae549ea3` |
| 14 | `theorem` | [ae_dirac_eq](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant817d2013e6a1e273fbff1a80ef01f8d64c245777737df73ee1125c7cb3401406.lean/declarations/ae-dirac-eq--d79915af728f21506a3787c6.md) | 125 | `result-track:d79915af728f21506a3787c67f27c702835a92fb740ff402387333cce22296a1` |
| 15 | `theorem` | [ae_eq_dirac'](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant817d2013e6a1e273fbff1a80ef01f8d64c245777737df73ee1125c7cb3401406.lean/declarations/ae-eq-dirac--fa784ad310238c018fbb9867.md) | 130 | `result-track:fa784ad310238c018fbb9867c7c5862d54d1af5ff1f87910174e8c85badb8e5f` |
| 16 | `theorem` | [ae_eq_dirac](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant817d2013e6a1e273fbff1a80ef01f8d64c245777737df73ee1125c7cb3401406.lean/declarations/ae-eq-dirac--5698c7857b0abea6d6aecbb7.md) | 135 | `result-track:5698c7857b0abea6d6aecbb7339e077b67f0abc13f74269506ac354f128219ff` |
| 17 | `instance` | [Measure.dirac.isProbabilityMeasure](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant817d2013e6a1e273fbff1a80ef01f8d64c245777737df73ee1125c7cb3401406.lean/declarations/measure-dirac-isprobabilitymeasure--2a87ecba967f2adffc383193.md) | 139 | `declaration-track:2a87ecba967f2adffc383193a005d08d3445081aaf23419572fa15de44275bc6` |
| 18 | `theorem` | [restrict_dirac'](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant817d2013e6a1e273fbff1a80ef01f8d64c245777737df73ee1125c7cb3401406.lean/declarations/restrict-dirac--d95008319b570225cc2f1c72.md) | 144 | `result-track:d95008319b570225cc2f1c720e780077480861b2cec7fb0adadb899cacba06a5` |
| 19 | `theorem` | [restrict_dirac](../../../../../mathematics/Analysis/MeasureTheory/Dirac/Variant817d2013e6a1e273fbff1a80ef01f8d64c245777737df73ee1125c7cb3401406.lean/declarations/restrict-dirac--d3b479d5c5db59b2105aac65.md) | 152 | `result-track:d3b479d5c5db59b2105aac65ad2f0cb19d13402535746d37d3dd06e067878733` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
