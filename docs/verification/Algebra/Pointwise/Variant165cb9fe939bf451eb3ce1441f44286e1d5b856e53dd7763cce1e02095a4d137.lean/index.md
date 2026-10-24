# Verification target: GRWTSK.Algebra.Pointwise.Variant165cb9fe939bf451eb3ce1441f44286e1d5b856e53dd7763cce1e02095a4d137

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f6dc2e2c5fde2c27e3a03f8cbade2157f8365a94",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Pointwise/Variant165cb9fe939bf451eb3ce1441f44286e1d5b856e53dd7763cce1e02095a4d137.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Pointwise/Variant165cb9fe939bf451eb3ce1441f44286e1d5b856e53dd7763cce1e02095a4d137.lean/index.md) · [Full source](../../../../mathematics/Algebra/Pointwise/Variant165cb9fe939bf451eb3ce1441f44286e1d5b856e53dd7763cce1e02095a4d137.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f6dc2e2c5fde2c27e3a03f8cbade2157f8365a94`.

Source path: `GRWTSK/Algebra/Pointwise/Variant165cb9fe939bf451eb3ce1441f44286e1d5b856e53dd7763cce1e02095a4d137.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Pointwise/Variant165cb9fe939bf451eb3ce1441f44286e1d5b856e53dd7763cce1e02095a4d137.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finsupp.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Pi` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Pointwise/Variant165cb9fe939bf451eb3ce1441f44286e1d5b856e53dd7763cce1e02095a4d137.lean/declarations/instance--000e7d37d876dbaa98d4dd7a.md) | 40 | `declaration-track:000e7d37d876dbaa98d4dd7a296568798e3048cb5c78588fa9ef2e09163fe21d` |
| 2 | `theorem` | [coe_mul](../../../../mathematics/Algebra/Pointwise/Variant165cb9fe939bf451eb3ce1441f44286e1d5b856e53dd7763cce1e02095a4d137.lean/declarations/coe-mul--5fc93686a2c3b1fae5aa01a8.md) | 43 | `result-track:5fc93686a2c3b1fae5aa01a8f01cc73f9a74cf17789cc841b4bcdcd3eef1e7f7` |
| 3 | `theorem` | [mul_apply](../../../../mathematics/Algebra/Pointwise/Variant165cb9fe939bf451eb3ce1441f44286e1d5b856e53dd7763cce1e02095a4d137.lean/declarations/mul-apply--bbb48dd99aac5094f73c57bf.md) | 48 | `result-track:bbb48dd99aac5094f73c57bf99be6e77c8366548f7423cbbdfb0e891616100f6` |
| 4 | `theorem` | [support_mul](../../../../mathematics/Algebra/Pointwise/Variant165cb9fe939bf451eb3ce1441f44286e1d5b856e53dd7763cce1e02095a4d137.lean/declarations/support-mul--0711840044d812ba10609f32.md) | 52 | `result-track:0711840044d812ba10609f327e868887cf2cf67d5368b9823360f356c8b268de` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Pointwise/Variant165cb9fe939bf451eb3ce1441f44286e1d5b856e53dd7763cce1e02095a4d137.lean/declarations/instance--ad5f8de4f0cd46fbc2d149c7.md) | 63 | `declaration-track:ad5f8de4f0cd46fbc2d149c7b5f1aeb7dbdb0e1a061a5346773112be219ba156` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Pointwise/Variant165cb9fe939bf451eb3ce1441f44286e1d5b856e53dd7763cce1e02095a4d137.lean/declarations/instance--997e2cdfae97a389375936c8.md) | 68 | `declaration-track:997e2cdfae97a389375936c8134426e80870038f87f21301c75171ffc1e07d25` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Pointwise/Variant165cb9fe939bf451eb3ce1441f44286e1d5b856e53dd7763cce1e02095a4d137.lean/declarations/instance--017180c3f11e4e822eed6621.md) | 71 | `declaration-track:017180c3f11e4e822eed6621fd73911d987a20378eb5377d79651847f6a2a85f` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Pointwise/Variant165cb9fe939bf451eb3ce1441f44286e1d5b856e53dd7763cce1e02095a4d137.lean/declarations/instance--b0b6fc9856945c7178f80fae.md) | 74 | `declaration-track:b0b6fc9856945c7178f80fae094ec31578ee15c83744d664230fbe7f1c85bb72` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Pointwise/Variant165cb9fe939bf451eb3ce1441f44286e1d5b856e53dd7763cce1e02095a4d137.lean/declarations/instance--f9dd18c8c5c937d00fe0753d.md) | 77 | `declaration-track:f9dd18c8c5c937d00fe0753d9e3af9bf12e0631b335972e1161704fb3de2a8dd` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Pointwise/Variant165cb9fe939bf451eb3ce1441f44286e1d5b856e53dd7763cce1e02095a4d137.lean/declarations/instance--891b2331f400a55628d29fb7.md) | 80 | `declaration-track:891b2331f400a55628d29fb7922074353094bb3e0cb008986e50c2a937f3cf33` |
| 11 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Pointwise/Variant165cb9fe939bf451eb3ce1441f44286e1d5b856e53dd7763cce1e02095a4d137.lean/declarations/instance--35e6d1f7bc507939abe17dcd.md) | 84 | `declaration-track:35e6d1f7bc507939abe17dcdbf78ac90a59b31b8fbac192195793410bc1d58c5` |
| 12 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Pointwise/Variant165cb9fe939bf451eb3ce1441f44286e1d5b856e53dd7763cce1e02095a4d137.lean/declarations/instance--cb1d14ecf2dad2351d4c9a4b.md) | 88 | `declaration-track:cb1d14ecf2dad2351d4c9a4b7306aec8902fbd099c8300c01dda442e9dfff5bd` |
| 13 | `instance` | [pointwiseScalar](../../../../mathematics/Algebra/Pointwise/Variant165cb9fe939bf451eb3ce1441f44286e1d5b856e53dd7763cce1e02095a4d137.lean/declarations/pointwisescalar--a5c55d11fa8f245290d94ed2.md) | 95 | `declaration-track:a5c55d11fa8f245290d94ed2a815fad76dd97fe06312530036521b3d158daf4c` |
| 14 | `theorem` | [coe_pointwise_smul](../../../../mathematics/Algebra/Pointwise/Variant165cb9fe939bf451eb3ce1441f44286e1d5b856e53dd7763cce1e02095a4d137.lean/declarations/coe-pointwise-smul--26df79b380ca52724a5a4191.md) | 107 | `result-track:26df79b380ca52724a5a4191516df9eba042d3b29bb29f792255199bb5ea9a0f` |
| 15 | `instance` | [pointwiseModule](../../../../mathematics/Algebra/Pointwise/Variant165cb9fe939bf451eb3ce1441f44286e1d5b856e53dd7763cce1e02095a4d137.lean/declarations/pointwisemodule--afb0fbb89324b388206088c6.md) | 112 | `declaration-track:afb0fbb89324b388206088c639bc5158b6cbb429e6928c190bff05b8a7a2c321` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
