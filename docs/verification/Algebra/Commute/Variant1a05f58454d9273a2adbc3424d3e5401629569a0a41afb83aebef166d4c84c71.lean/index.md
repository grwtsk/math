# Verification target: GRWTSK.Algebra.Commute.Variant1a05f58454d9273a2adbc3424d3e5401629569a0a41afb83aebef166d4c84c71

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a38521db3b632ac6bfd40b132c70ad67bb69269b",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Commute/Variant1a05f58454d9273a2adbc3424d3e5401629569a0a41afb83aebef166d4c84c71.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Commute/Variant1a05f58454d9273a2adbc3424d3e5401629569a0a41afb83aebef166d4c84c71.lean/index.md) · [Full source](../../../../mathematics/Algebra/Commute/Variant1a05f58454d9273a2adbc3424d3e5401629569a0a41afb83aebef166d4c84c71.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a38521db3b632ac6bfd40b132c70ad67bb69269b`.

Source path: `GRWTSK/Algebra/Commute/Variant1a05f58454d9273a2adbc3424d3e5401629569a0a41afb83aebef166d4c84c71.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Commute/Variant1a05f58454d9273a2adbc3424d3e5401629569a0a41afb83aebef166d4c84c71.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Semiconj` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Units` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Commute` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [add_right](../../../../mathematics/Algebra/Commute/Variant1a05f58454d9273a2adbc3424d3e5401629569a0a41afb83aebef166d4c84c71.lean/declarations/add-right--0e091841edd385454d68a246.md) | 42 | `result-track:0e091841edd385454d68a246d1cc84805c1f1d0f1970447b68f1ae713648c791` |
| 2 | `theorem` | [add_left](../../../../mathematics/Algebra/Commute/Variant1a05f58454d9273a2adbc3424d3e5401629569a0a41afb83aebef166d4c84c71.lean/declarations/add-left--fe192821008eeded320db727.md) | 48 | `result-track:fe192821008eeded320db727cde175086090602577aa68c49fce437e31a908e0` |
| 3 | `theorem` | [bit0_right](../../../../mathematics/Algebra/Commute/Variant1a05f58454d9273a2adbc3424d3e5401629569a0a41afb83aebef166d4c84c71.lean/declarations/bit0-right--038e2b73c688e4a760373494.md) | 57 | `result-track:038e2b73c688e4a7603734947e161c3ed017ec4db6f996e2be4a669f8ea7dabf` |
| 4 | `theorem` | [bit0_left](../../../../mathematics/Algebra/Commute/Variant1a05f58454d9273a2adbc3424d3e5401629569a0a41afb83aebef166d4c84c71.lean/declarations/bit0-left--c7744c1821b87f70d58f5227.md) | 62 | `result-track:c7744c1821b87f70d58f52270ace228c5be92d340930c7f800e891aeb9cf2e0b` |
| 5 | `theorem` | [bit1_right](../../../../mathematics/Algebra/Commute/Variant1a05f58454d9273a2adbc3424d3e5401629569a0a41afb83aebef166d4c84c71.lean/declarations/bit1-right--1b798b4b2f128fdf5f9804c4.md) | 67 | `result-track:1b798b4b2f128fdf5f9804c4cd5a0aa867f25665cc24d6c7707ca0275fdd9b6f` |
| 6 | `theorem` | [bit1_left](../../../../mathematics/Algebra/Commute/Variant1a05f58454d9273a2adbc3424d3e5401629569a0a41afb83aebef166d4c84c71.lean/declarations/bit1-left--033b6e8081a3694a118c7a89.md) | 72 | `result-track:033b6e8081a3694a118c7a89b86846f38cb1ef3eacebefbc8020823c6a293d35` |
| 7 | `theorem` | [mul_self_sub_mul_self_eq](../../../../mathematics/Algebra/Commute/Variant1a05f58454d9273a2adbc3424d3e5401629569a0a41afb83aebef166d4c84c71.lean/declarations/mul-self-sub-mul-self-eq--dd8c8169ef00449f9a80739f.md) | 79 | `result-track:dd8c8169ef00449f9a80739ff0666cb961ed85d155b1868b96079f525ba82b63` |
| 8 | `theorem` | [mul_self_sub_mul_self_eq'](../../../../mathematics/Algebra/Commute/Variant1a05f58454d9273a2adbc3424d3e5401629569a0a41afb83aebef166d4c84c71.lean/declarations/mul-self-sub-mul-self-eq--5c38545b5359434450e417f9.md) | 84 | `result-track:5c38545b5359434450e417f939d972a522b62ed27ffbb8fea4c543ef754f93f2` |
| 9 | `theorem` | [mul_self_eq_mul_self_iff](../../../../mathematics/Algebra/Commute/Variant1a05f58454d9273a2adbc3424d3e5401629569a0a41afb83aebef166d4c84c71.lean/declarations/mul-self-eq-mul-self-iff--b50e3a7020ce385801c7730a.md) | 89 | `result-track:b50e3a7020ce385801c7730acabbf9bde64294dd24a3309437cd86e39c5d8f00` |
| 10 | `theorem` | [neg_right](../../../../mathematics/Algebra/Commute/Variant1a05f58454d9273a2adbc3424d3e5401629569a0a41afb83aebef166d4c84c71.lean/declarations/neg-right--5d4ae1e7b59f6dbe797ef31b.md) | 99 | `result-track:5d4ae1e7b59f6dbe797ef31bf568015951d984e7781c9f178762be3d8fc9fd40` |
| 11 | `theorem` | [neg_right_iff](../../../../mathematics/Algebra/Commute/Variant1a05f58454d9273a2adbc3424d3e5401629569a0a41afb83aebef166d4c84c71.lean/declarations/neg-right-iff--de32f62a4cca7011ce315c9f.md) | 104 | `result-track:de32f62a4cca7011ce315c9feed5f85ddb1afd44f5875778e0e271111e72896c` |
| 12 | `theorem` | [neg_left](../../../../mathematics/Algebra/Commute/Variant1a05f58454d9273a2adbc3424d3e5401629569a0a41afb83aebef166d4c84c71.lean/declarations/neg-left--2c456103a8e9fd72e6369d2a.md) | 108 | `result-track:2c456103a8e9fd72e6369d2ad2600034d5c23d27b926e2bdf35f6bc7823fdd9c` |
| 13 | `theorem` | [neg_left_iff](../../../../mathematics/Algebra/Commute/Variant1a05f58454d9273a2adbc3424d3e5401629569a0a41afb83aebef166d4c84c71.lean/declarations/neg-left-iff--ad878811aa36264a446201f1.md) | 113 | `result-track:ad878811aa36264a446201f1c05ea0c3cea22d28e24384191fa0f190277dd6c0` |
| 14 | `theorem` | [neg_one_right](../../../../mathematics/Algebra/Commute/Variant1a05f58454d9273a2adbc3424d3e5401629569a0a41afb83aebef166d4c84c71.lean/declarations/neg-one-right--08046a42ee47cca15eb7c2bf.md) | 125 | `result-track:08046a42ee47cca15eb7c2bf934e4eb6605e6d0ac6ca0fee90d9339896511ea3` |
| 15 | `theorem` | [neg_one_left](../../../../mathematics/Algebra/Commute/Variant1a05f58454d9273a2adbc3424d3e5401629569a0a41afb83aebef166d4c84c71.lean/declarations/neg-one-left--984f250d10dd4ef7dfaa402c.md) | 131 | `result-track:984f250d10dd4ef7dfaa402c426f02266262d1a9e8c784cced50bedf1a8fb777` |
| 16 | `theorem` | [sub_right](../../../../mathematics/Algebra/Commute/Variant1a05f58454d9273a2adbc3424d3e5401629569a0a41afb83aebef166d4c84c71.lean/declarations/sub-right--754b9eed1281eecfce06c669.md) | 142 | `result-track:754b9eed1281eecfce06c669159227336f15520d1888f03a2f92d92b50f850d5` |
| 17 | `theorem` | [sub_left](../../../../mathematics/Algebra/Commute/Variant1a05f58454d9273a2adbc3424d3e5401629569a0a41afb83aebef166d4c84c71.lean/declarations/sub-left--7fb6c71efb481934a9abcc5c.md) | 147 | `result-track:7fb6c71efb481934a9abcc5c2738892ba2b3beb29d4b0fca6c51b49f84cc72eb` |
| 18 | `theorem` | [mul_self_sub_mul_self](../../../../mathematics/Algebra/Commute/Variant1a05f58454d9273a2adbc3424d3e5401629569a0a41afb83aebef166d4c84c71.lean/declarations/mul-self-sub-mul-self--abb2b419b5c9e469fa0db8a0.md) | 156 | `result-track:abb2b419b5c9e469fa0db8a0fb4402e73dab5f1580e10cde544308f8e8760846` |
| 19 | `theorem` | [mul_self_sub_one](../../../../mathematics/Algebra/Commute/Variant1a05f58454d9273a2adbc3424d3e5401629569a0a41afb83aebef166d4c84c71.lean/declarations/mul-self-sub-one--ae16db03433bdce24cd85035.md) | 160 | `result-track:ae16db03433bdce24cd850353022643db07e50fbfdaf667b4d1c4495e6ddd545` |
| 20 | `theorem` | [mul_self_eq_mul_self_iff](../../../../mathematics/Algebra/Commute/Variant1a05f58454d9273a2adbc3424d3e5401629569a0a41afb83aebef166d4c84c71.lean/declarations/mul-self-eq-mul-self-iff--385d22966f42f040b39922bc.md) | 164 | `result-track:385d22966f42f040b39922bc1e0da2e5098de1903aab95ceef76a507648bcd48` |
| 21 | `theorem` | [mul_self_eq_one_iff](../../../../mathematics/Algebra/Commute/Variant1a05f58454d9273a2adbc3424d3e5401629569a0a41afb83aebef166d4c84c71.lean/declarations/mul-self-eq-one-iff--c4635d46ea67dcc49f644180.md) | 169 | `result-track:c4635d46ea67dcc49f6441805cef13f99d851419f11832731c5d5f334ba88de1` |
| 22 | `theorem` | [inv_eq_self_iff](../../../../mathematics/Algebra/Commute/Variant1a05f58454d9273a2adbc3424d3e5401629569a0a41afb83aebef166d4c84c71.lean/declarations/inv-eq-self-iff--74324bb04f345835e87430bb.md) | 178 | `result-track:74324bb04f345835e87430bbc04b532e4bc035a43d4dcbb47f7675a28be96b8b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
