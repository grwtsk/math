# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.ENatENNReal.Variant890e02b21884d0ad10ca21fc26af03735f0ba1381b6be7a01352cd13de448467

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "35a644aef847680dc254bb4987c531fd82190214",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ENatENNReal/Variant890e02b21884d0ad10ca21fc26af03735f0ba1381b6be7a01352cd13de448467.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/ENatENNReal/Variant890e02b21884d0ad10ca21fc26af03735f0ba1381b6be7a01352cd13de448467.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/ENatENNReal/Variant890e02b21884d0ad10ca21fc26af03735f0ba1381b6be7a01352cd13de448467.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `35a644aef847680dc254bb4987c531fd82190214`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ENatENNReal/Variant890e02b21884d0ad10ca21fc26af03735f0ba1381b6be7a01352cd13de448467.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ENatENNReal/Variant890e02b21884d0ad10ca21fc26af03735f0ba1381b6be7a01352cd13de448467.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.ENat.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.ENNReal` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toENNReal](../../../../mathematics/FoundationsLogicAndTypeTheory/ENatENNReal/Variant890e02b21884d0ad10ca21fc26af03735f0ba1381b6be7a01352cd13de448467.lean/declarations/toennreal--bf6ec514e100794172d54d96.md) | 35 | `declaration-track:bf6ec514e100794172d54d96321843ee873892bd593c012b36ed47a24766b495` |
| 2 | `instance` | [hasCoeENNReal](../../../../mathematics/FoundationsLogicAndTypeTheory/ENatENNReal/Variant890e02b21884d0ad10ca21fc26af03735f0ba1381b6be7a01352cd13de448467.lean/declarations/hascoeennreal--b72d8adca8bceab7fffe73d5.md) | 37 | `declaration-track:b72d8adca8bceab7fffe73d5089c7e41ddd476163f6ea78b8d765a28aa3d04fc` |
| 3 | `theorem` | [map_coe_nnreal](../../../../mathematics/FoundationsLogicAndTypeTheory/ENatENNReal/Variant890e02b21884d0ad10ca21fc26af03735f0ba1381b6be7a01352cd13de448467.lean/declarations/map-coe-nnreal--91363b95b5548080d46e129f.md) | 41 | `result-track:91363b95b5548080d46e129f0d80b6d19a1e000ef0209671b619f02282f4b6f8` |
| 4 | `def` | [toENNRealOrderEmbedding](../../../../mathematics/FoundationsLogicAndTypeTheory/ENatENNReal/Variant890e02b21884d0ad10ca21fc26af03735f0ba1381b6be7a01352cd13de448467.lean/declarations/toennrealorderembedding--0c68b95e4b88ab8dd6b06180.md) | 47 | `declaration-track:0c68b95e4b88ab8dd6b0618055560a2cd6651d1e2795dc2a8ba3ee3205f28600` |
| 5 | `def` | [toENNRealRingHom](../../../../mathematics/FoundationsLogicAndTypeTheory/ENatENNReal/Variant890e02b21884d0ad10ca21fc26af03735f0ba1381b6be7a01352cd13de448467.lean/declarations/toennrealringhom--479257ae5112f7d1185a8e8f.md) | 53 | `declaration-track:479257ae5112f7d1185a8e8ff4b73203c67595b9256c631ec12fa3a49a7a2039` |
| 6 | `theorem` | [toENNReal_top](../../../../mathematics/FoundationsLogicAndTypeTheory/ENatENNReal/Variant890e02b21884d0ad10ca21fc26af03735f0ba1381b6be7a01352cd13de448467.lean/declarations/toennreal-top--307fb459b20bb448e0912502.md) | 58 | `result-track:307fb459b20bb448e09125021bba7e9e8b22648e5576753cfcdd974076b7e2ff` |
| 7 | `theorem` | [toENNReal_coe](../../../../mathematics/FoundationsLogicAndTypeTheory/ENatENNReal/Variant890e02b21884d0ad10ca21fc26af03735f0ba1381b6be7a01352cd13de448467.lean/declarations/toennreal-coe--555a0e12a77c96aa88791e8e.md) | 63 | `result-track:555a0e12a77c96aa88791e8ec9dcc209b7d782de1da272b0d7e5c85b86611416` |
| 8 | `theorem` | [toENNReal_ofNat](../../../../mathematics/FoundationsLogicAndTypeTheory/ENatENNReal/Variant890e02b21884d0ad10ca21fc26af03735f0ba1381b6be7a01352cd13de448467.lean/declarations/toennreal-ofnat--3063bfd6bb7aa893590afa40.md) | 68 | `result-track:3063bfd6bb7aa893590afa4036f406bd6ae5702c2a8a3e3cb267f6df23320f4b` |
| 9 | `theorem` | [toENNReal_le](../../../../mathematics/FoundationsLogicAndTypeTheory/ENatENNReal/Variant890e02b21884d0ad10ca21fc26af03735f0ba1381b6be7a01352cd13de448467.lean/declarations/toennreal-le--3dcf4314f62aa33fec664ae5.md) | 72 | `result-track:3dcf4314f62aa33fec664ae523b6de092457bc8930077166d52d20b66d5e9a1b` |
| 10 | `theorem` | [toENNReal_lt](../../../../mathematics/FoundationsLogicAndTypeTheory/ENatENNReal/Variant890e02b21884d0ad10ca21fc26af03735f0ba1381b6be7a01352cd13de448467.lean/declarations/toennreal-lt--a1e21e28eacf2988a82918c8.md) | 77 | `result-track:a1e21e28eacf2988a82918c816109358ca483dd0d8bdb5b6056d5daf806c07c9` |
| 11 | `theorem` | [toENNReal_mono](../../../../mathematics/FoundationsLogicAndTypeTheory/ENatENNReal/Variant890e02b21884d0ad10ca21fc26af03735f0ba1381b6be7a01352cd13de448467.lean/declarations/toennreal-mono--40b50f584276ff792206da4b.md) | 82 | `result-track:40b50f584276ff792206da4be7a401fa6044b490ab1eaa69821805bebeb5ba4a` |
| 12 | `theorem` | [toENNReal_strictMono](../../../../mathematics/FoundationsLogicAndTypeTheory/ENatENNReal/Variant890e02b21884d0ad10ca21fc26af03735f0ba1381b6be7a01352cd13de448467.lean/declarations/toennreal-strictmono--d9a63255f0bfe69aae64d8f3.md) | 87 | `result-track:d9a63255f0bfe69aae64d8f3313e0ba244897d9754d2054bda823e52a98ac1bb` |
| 13 | `theorem` | [toENNReal_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/ENatENNReal/Variant890e02b21884d0ad10ca21fc26af03735f0ba1381b6be7a01352cd13de448467.lean/declarations/toennreal-zero--4fd20da5970d5613003a26d4.md) | 92 | `result-track:4fd20da5970d5613003a26d47a14c8186cb856fb452cf4bb334b238f72692cbf` |
| 14 | `theorem` | [toENNReal_add](../../../../mathematics/FoundationsLogicAndTypeTheory/ENatENNReal/Variant890e02b21884d0ad10ca21fc26af03735f0ba1381b6be7a01352cd13de448467.lean/declarations/toennreal-add--a1ddb6147335c9bc298f3b5f.md) | 97 | `result-track:a1ddb6147335c9bc298f3b5f1b45992e91e87981df02344e480a0f2a8423c63d` |
| 15 | `theorem` | [toENNReal_one](../../../../mathematics/FoundationsLogicAndTypeTheory/ENatENNReal/Variant890e02b21884d0ad10ca21fc26af03735f0ba1381b6be7a01352cd13de448467.lean/declarations/toennreal-one--4f7eb04c6e956dcb6cf07470.md) | 102 | `result-track:4f7eb04c6e956dcb6cf074700b39f1ebd6e7fbd2d1507c32e0930f384d97970f` |
| 16 | `theorem` | [toENNReal_mul](../../../../mathematics/FoundationsLogicAndTypeTheory/ENatENNReal/Variant890e02b21884d0ad10ca21fc26af03735f0ba1381b6be7a01352cd13de448467.lean/declarations/toennreal-mul--eda734f0d33303268a2bf577.md) | 110 | `result-track:eda734f0d33303268a2bf577f7a7333c194c4bb5fd49414f4cabdcd50c998612` |
| 17 | `theorem` | [toENNReal_min](../../../../mathematics/FoundationsLogicAndTypeTheory/ENatENNReal/Variant890e02b21884d0ad10ca21fc26af03735f0ba1381b6be7a01352cd13de448467.lean/declarations/toennreal-min--0cdb35b0f6825d2f97176877.md) | 115 | `result-track:0cdb35b0f6825d2f971768778a9f3416f6b8ae53ecc0a66fa803cd392e2bcd55` |
| 18 | `theorem` | [toENNReal_max](../../../../mathematics/FoundationsLogicAndTypeTheory/ENatENNReal/Variant890e02b21884d0ad10ca21fc26af03735f0ba1381b6be7a01352cd13de448467.lean/declarations/toennreal-max--2916b2e291055b3f253b24cf.md) | 120 | `result-track:2916b2e291055b3f253b24cf1d104d4421ccc1a85c000e6f284c4064215f8992` |
| 19 | `theorem` | [toENNReal_sub](../../../../mathematics/FoundationsLogicAndTypeTheory/ENatENNReal/Variant890e02b21884d0ad10ca21fc26af03735f0ba1381b6be7a01352cd13de448467.lean/declarations/toennreal-sub--4cbe1d78c2ee2c63c249bdb8.md) | 125 | `result-track:4cbe1d78c2ee2c63c249bdb85a3b2ab3a248b23412314c982a7b5285f600f3a1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
