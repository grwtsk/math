# Verification target: GRWTSK.Algebra.Norm.Variant1cb1878f7fa362c1537bd66c5eec23e533b7a6270f3700b4e664465e409ff364

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "23cf92053bc2219adb62205a640dc67bbb2e5bcd",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Norm/Variant1cb1878f7fa362c1537bd66c5eec23e533b7a6270f3700b4e664465e409ff364.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Norm/Variant1cb1878f7fa362c1537bd66c5eec23e533b7a6270f3700b4e664465e409ff364.lean/index.md) · [Full source](../../../../mathematics/Algebra/Norm/Variant1cb1878f7fa362c1537bd66c5eec23e533b7a6270f3700b4e664465e409ff364.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `23cf92053bc2219adb62205a640dc67bbb2e5bcd`.

Source path: `GRWTSK/Algebra/Norm/Variant1cb1878f7fa362c1537bd66c5eec23e533b7a6270f3700b4e664465e409ff364.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Norm/Variant1cb1878f7fa362c1537bd66c5eec23e533b7a6270f3700b4e664465e409ff364.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.NumberField.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.NormTrace` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Norm.Transitivity` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Algebra.coe_norm_int](../../../../mathematics/Algebra/Norm/Variant1cb1878f7fa362c1537bd66c5eec23e533b7a6270f3700b4e664465e409ff364.lean/declarations/algebra-coe-norm-int--3f30a3890c5fa7964c44cb3a.md) | 32 | `result-track:3f30a3890c5fa7964c44cb3a3ced32a3a18f36318e660aad95c9d72015705535` |
| 2 | `theorem` | [Algebra.coe_trace_int](../../../../mathematics/Algebra/Norm/Variant1cb1878f7fa362c1537bd66c5eec23e533b7a6270f3700b4e664465e409ff364.lean/declarations/algebra-coe-trace-int--251495736775ee2eb5027e87.md) | 35 | `result-track:251495736775ee2eb5027e874d36a5ddb6a032686d59973c19b789fb79f34767` |
| 3 | `def` | [norm](../../../../mathematics/Algebra/Norm/Variant1cb1878f7fa362c1537bd66c5eec23e533b7a6270f3700b4e664465e409ff364.lean/declarations/norm--b733be2530a06943dc2672d6.md) | 45 | `declaration-track:b733be2530a06943dc2672d62151cecdba17e3a8fd9ad84c31f987f722bcf75f` |
| 4 | `lemma` | [coe_norm](../../../../mathematics/Algebra/Norm/Variant1cb1878f7fa362c1537bd66c5eec23e533b7a6270f3700b4e664465e409ff364.lean/declarations/coe-norm--b86e28bcf5b9d97906cfd307.md) | 50 | `result-track:b86e28bcf5b9d97906cfd3076a2f9f93868bb95a532e29c6c60e22bb70d4a0d7` |
| 5 | `theorem` | [coe_algebraMap_norm](../../../../mathematics/Algebra/Norm/Variant1cb1878f7fa362c1537bd66c5eec23e533b7a6270f3700b4e664465e409ff364.lean/declarations/coe-algebramap-norm--4d2c1fde91ee13697da41500.md) | 53 | `result-track:4d2c1fde91ee13697da415004114f43fed68a7b292a2baeb6dfd6c30be4ff976` |
| 6 | `theorem` | [algebraMap_norm_algebraMap](../../../../mathematics/Algebra/Norm/Variant1cb1878f7fa362c1537bd66c5eec23e533b7a6270f3700b4e664465e409ff364.lean/declarations/algebramap-norm-algebramap--e5166712cf21d3d318e10c3a.md) | 57 | `result-track:e5166712cf21d3d318e10c3adbbb6cf402200b7ef141d5bd65bbd15d3593cf9e` |
| 7 | `theorem` | [norm_algebraMap](../../../../mathematics/Algebra/Norm/Variant1cb1878f7fa362c1537bd66c5eec23e533b7a6270f3700b4e664465e409ff364.lean/declarations/norm-algebramap--80b0fac4141c471630813de3.md) | 61 | `result-track:80b0fac4141c471630813de3811f3189ca3c231cab967b483664702b3c3f8c8d` |
| 8 | `theorem` | [isUnit_norm_of_isGalois](../../../../mathematics/Algebra/Norm/Variant1cb1878f7fa362c1537bd66c5eec23e533b7a6270f3700b4e664465e409ff364.lean/declarations/isunit-norm-of-isgalois--d1af65601a716478904e526f.md) | 67 | `result-track:d1af65601a716478904e526ff370f801fd320f37aa17e78a05f2ae4aa60b5e6b` |
| 9 | `theorem` | [dvd_norm](../../../../mathematics/Algebra/Norm/Variant1cb1878f7fa362c1537bd66c5eec23e533b7a6270f3700b4e664465e409ff364.lean/declarations/dvd-norm--89b63744219ec137e97056df.md) | 84 | `result-track:89b63744219ec137e97056dff79f13c95da99600bb24e3d370a205604eeee195` |
| 10 | `theorem` | [norm_norm](../../../../mathematics/Algebra/Norm/Variant1cb1878f7fa362c1537bd66c5eec23e533b7a6270f3700b4e664465e409ff364.lean/declarations/norm-norm--dc7f55b840be769fd0674ce1.md) | 97 | `result-track:dc7f55b840be769fd0674ce14d8fb038be349fe2a8b620de74045f429b02949f` |
| 11 | `theorem` | [isUnit_norm](../../../../mathematics/Algebra/Norm/Variant1cb1878f7fa362c1537bd66c5eec23e533b7a6270f3700b4e664465e409ff364.lean/declarations/isunit-norm--ceba7c23a434ef71c148c5f9.md) | 103 | `result-track:ceba7c23a434ef71c148c5f9c03f346f068c4292084fc8acc166f0ecae0f8dfb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
