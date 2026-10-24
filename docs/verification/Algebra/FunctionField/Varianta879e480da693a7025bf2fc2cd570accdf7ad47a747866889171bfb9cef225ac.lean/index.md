# Verification target: GRWTSK.Algebra.FunctionField.Varianta879e480da693a7025bf2fc2cd570accdf7ad47a747866889171bfb9cef225ac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4a55cd2c29714c907ff85e57ab6dda9fd4109a03",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/FunctionField/Varianta879e480da693a7025bf2fc2cd570accdf7ad47a747866889171bfb9cef225ac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/FunctionField/Varianta879e480da693a7025bf2fc2cd570accdf7ad47a747866889171bfb9cef225ac.lean/index.md) · [Full source](../../../../mathematics/Algebra/FunctionField/Varianta879e480da693a7025bf2fc2cd570accdf7ad47a747866889171bfb9cef225ac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4a55cd2c29714c907ff85e57ab6dda9fd4109a03`.

Source path: `GRWTSK/Algebra/FunctionField/Varianta879e480da693a7025bf2fc2cd570accdf7ad47a747866889171bfb9cef225ac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/FunctionField/Varianta879e480da693a7025bf2fc2cd570accdf7ad47a747866889171bfb9cef225ac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.RatFunc.Degree` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.DedekindDomain.IntegralClosure` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.IntegralClosure.IntegrallyClosed` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Valued.ValuedField` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [FunctionField](../../../../mathematics/Algebra/FunctionField/Varianta879e480da693a7025bf2fc2cd570accdf7ad47a747866889171bfb9cef225ac.lean/declarations/functionfield--727f3f282db7e4304b40a094.md) | 62 | `declaration-track:727f3f282db7e4304b40a094f8ef4a80a4161d07ac201d2973fa0d1e272a5f6c` |
| 2 | `theorem` | [functionField_iff](../../../../mathematics/Algebra/FunctionField/Varianta879e480da693a7025bf2fc2cd570accdf7ad47a747866889171bfb9cef225ac.lean/declarations/functionfield-iff--a6e2965f392fc3f4e996c0ee.md) | 66 | `result-track:a6e2965f392fc3f4e996c0ee3243233e57f871fdd1c6fad59f18a329906b3ef2` |
| 3 | `theorem` | [algebraMap_injective](../../../../mathematics/Algebra/FunctionField/Varianta879e480da693a7025bf2fc2cd570accdf7ad47a747866889171bfb9cef225ac.lean/declarations/algebramap-injective--f17e7ce211f09fecb9b51aea.md) | 87 | `result-track:f17e7ce211f09fecb9b51aeac1462bcff83ed6f1cee295ec0a21d772e18cd07d` |
| 4 | `def` | [ringOfIntegers](../../../../mathematics/Algebra/FunctionField/Varianta879e480da693a7025bf2fc2cd570accdf7ad47a747866889171bfb9cef225ac.lean/declarations/ringofintegers--b709ee82217263c381fe818c.md) | 101 | `declaration-track:b709ee82217263c381fe818c2e3602c0f65e8988607b0514387b2ba96dda5f7c` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FunctionField/Varianta879e480da693a7025bf2fc2cd570accdf7ad47a747866889171bfb9cef225ac.lean/declarations/instance--565245fcda651bc867379f6e.md) | 108 | `declaration-track:565245fcda651bc867379f6e71022b7f525fe8b522ae3967a56a95c47cc01d8d` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FunctionField/Varianta879e480da693a7025bf2fc2cd570accdf7ad47a747866889171bfb9cef225ac.lean/declarations/instance--34a0dce13ce703d658ef2f0d.md) | 111 | `declaration-track:34a0dce13ce703d658ef2f0d134152e27dc62eee5697b50242ce8705d0ec7d97` |
| 7 | `theorem` | [algebraMap_injective](../../../../mathematics/Algebra/FunctionField/Varianta879e480da693a7025bf2fc2cd570accdf7ad47a747866889171bfb9cef225ac.lean/declarations/algebramap-injective--742ad8c6b0d626ae544af686.md) | 116 | `result-track:742ad8c6b0d626ae544af686689ef60ebb56872cd933b0dba900a725ba49a0ed` |
| 8 | `theorem` | [not_isField](../../../../mathematics/Algebra/FunctionField/Varianta879e480da693a7025bf2fc2cd570accdf7ad47a747866889171bfb9cef225ac.lean/declarations/not-isfield--ba7544ab7806f2fa7a5a62ac.md) | 126 | `result-track:ba7544ab7806f2fa7a5a62ac2c4d92cabc34e9191102674f6f5eabb18fdcddc8` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FunctionField/Varianta879e480da693a7025bf2fc2cd570accdf7ad47a747866889171bfb9cef225ac.lean/declarations/instance--e8b2b6b4fc7a168d0dfbd235.md) | 133 | `declaration-track:e8b2b6b4fc7a168d0dfbd235abc14179da1e749a54bc7e135e15f10896367690` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FunctionField/Varianta879e480da693a7025bf2fc2cd570accdf7ad47a747866889171bfb9cef225ac.lean/declarations/instance--db0994b8d7d2acff5c5438e1.md) | 136 | `declaration-track:db0994b8d7d2acff5c5438e1d82a9cc679aa57f1a2fb6dd253be16069604a5d9` |
| 11 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FunctionField/Varianta879e480da693a7025bf2fc2cd570accdf7ad47a747866889171bfb9cef225ac.lean/declarations/instance--3df22958c678e51fa9828fbf.md) | 139 | `declaration-track:3df22958c678e51fa9828fbf85273ebb143a04f2049c9667d91b559f51e1e7c6` |
| 12 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FunctionField/Varianta879e480da693a7025bf2fc2cd570accdf7ad47a747866889171bfb9cef225ac.lean/declarations/instance--736f5d8a7823fe49fac5fbc3.md) | 142 | `declaration-track:736f5d8a7823fe49fac5fbc3bb59cbfebb9ddc458d267bf4a891e982c684b76a` |
| 13 | `def` | [inftyValuationDef](../../../../mathematics/Algebra/FunctionField/Varianta879e480da693a7025bf2fc2cd570accdf7ad47a747866889171bfb9cef225ac.lean/declarations/inftyvaluationdef--50c666a94849a90f2e334b23.md) | 157 | `declaration-track:50c666a94849a90f2e334b23e07fc453407a24f4857e05bc6d3def599eafcf82` |
| 14 | `theorem` | [InftyValuation.map_zero'](../../../../mathematics/Algebra/FunctionField/Varianta879e480da693a7025bf2fc2cd570accdf7ad47a747866889171bfb9cef225ac.lean/declarations/inftyvaluation-map-zero--d8fb5ba3aaacbc97ade711db.md) | 160 | `result-track:d8fb5ba3aaacbc97ade711db4902b4355d0028ad51983e4d2e1e0d7bef9675c1` |
| 15 | `theorem` | [InftyValuation.map_one'](../../../../mathematics/Algebra/FunctionField/Varianta879e480da693a7025bf2fc2cd570accdf7ad47a747866889171bfb9cef225ac.lean/declarations/inftyvaluation-map-one--b98e501676c8d76b2c8ecac3.md) | 163 | `result-track:b98e501676c8d76b2c8ecac3d38c01306f6148e2cf451d33cc1a2e856c316c71` |
| 16 | `theorem` | [InftyValuation.map_mul'](../../../../mathematics/Algebra/FunctionField/Varianta879e480da693a7025bf2fc2cd570accdf7ad47a747866889171bfb9cef225ac.lean/declarations/inftyvaluation-map-mul--cfecf438e5856f9bbda8a580.md) | 166 | `result-track:cfecf438e5856f9bbda8a5802a216cc1a92a003d984bece03e809deea072995a` |
| 17 | `theorem` | [InftyValuation.map_add_le_max'](../../../../mathematics/Algebra/FunctionField/Varianta879e480da693a7025bf2fc2cd570accdf7ad47a747866889171bfb9cef225ac.lean/declarations/inftyvaluation-map-add-le-max--a9b6c93983658f3d184f8af3.md) | 176 | `result-track:a9b6c93983658f3d184f8af3fa38ee98c7d7cac5cbe3a6291fcbc3cf9dbfd444` |
| 18 | `theorem` | [inftyValuation_of_nonzero](../../../../mathematics/Algebra/FunctionField/Varianta879e480da693a7025bf2fc2cd570accdf7ad47a747866889171bfb9cef225ac.lean/declarations/inftyvaluation-of-nonzero--79a4649355ba33877f59ec1c.md) | 195 | `result-track:79a4649355ba33877f59ec1c39b61e4f805564d3ca098a52d72063ef8057b674` |
| 19 | `def` | [inftyValuation](../../../../mathematics/Algebra/FunctionField/Varianta879e480da693a7025bf2fc2cd570accdf7ad47a747866889171bfb9cef225ac.lean/declarations/inftyvaluation--3c42a011697dd4b8f6550814.md) | 200 | `declaration-track:3c42a011697dd4b8f6550814406ec2ebc5c8e10bb670037b518a6ce3a9990389` |
| 20 | `theorem` | [inftyValuation_apply](../../../../mathematics/Algebra/FunctionField/Varianta879e480da693a7025bf2fc2cd570accdf7ad47a747866889171bfb9cef225ac.lean/declarations/inftyvaluation-apply--59ae639f47e938dadb81cbc6.md) | 208 | `result-track:59ae639f47e938dadb81cbc635055089d759b9a616c15c7a5a3b9b3c514a85f0` |
| 21 | `theorem` | [inftyValuation.C](../../../../mathematics/Algebra/FunctionField/Varianta879e480da693a7025bf2fc2cd570accdf7ad47a747866889171bfb9cef225ac.lean/declarations/inftyvaluation-c--60d4d4096018fe92218ad90b.md) | 211 | `result-track:60d4d4096018fe92218ad90b038b568f553b22cb30070a307d2a96e11225ece6` |
| 22 | `theorem` | [inftyValuation.X](../../../../mathematics/Algebra/FunctionField/Varianta879e480da693a7025bf2fc2cd570accdf7ad47a747866889171bfb9cef225ac.lean/declarations/inftyvaluation-x--3b1c169c2febd2c29e62d820.md) | 216 | `result-track:3b1c169c2febd2c29e62d8200429d3f2bf1c3b24424bd1f515ce7b539667a216` |
| 23 | `theorem` | [inftyValuation.polynomial](../../../../mathematics/Algebra/FunctionField/Varianta879e480da693a7025bf2fc2cd570accdf7ad47a747866889171bfb9cef225ac.lean/declarations/inftyvaluation-polynomial--789f251dd87664c3be4602b0.md) | 221 | `result-track:789f251dd87664c3be4602b0d6b5da19c88d60cd46d9a05e99f69e5e6d20c46a` |
| 24 | `def` | [inftyValuedFqt](../../../../mathematics/Algebra/FunctionField/Varianta879e480da693a7025bf2fc2cd570accdf7ad47a747866889171bfb9cef225ac.lean/declarations/inftyvaluedfqt--4137c852b13d1243b0b2a74a.md) | 228 | `declaration-track:4137c852b13d1243b0b2a74ad2ac64b02387cdf03a122eb541aa3c3fb4de4f10` |
| 25 | `theorem` | [inftyValuedFqt.def](../../../../mathematics/Algebra/FunctionField/Varianta879e480da693a7025bf2fc2cd570accdf7ad47a747866889171bfb9cef225ac.lean/declarations/inftyvaluedfqt-def--1cdf71aa0a67d6c7099ad643.md) | 231 | `result-track:1cdf71aa0a67d6c7099ad643db605817358ae1a28e33d0770a58a501df0d87dd` |
| 26 | `def` | [FqtInfty](../../../../mathematics/Algebra/FunctionField/Varianta879e480da693a7025bf2fc2cd570accdf7ad47a747866889171bfb9cef225ac.lean/declarations/fqtinfty--c5f47bab3de5bf797298c1db.md) | 236 | `declaration-track:c5f47bab3de5bf797298c1dbdc0fe9fe57507e31524f07a20bf9d52b21c330e0` |
| 27 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FunctionField/Varianta879e480da693a7025bf2fc2cd570accdf7ad47a747866889171bfb9cef225ac.lean/declarations/instance--c5bcbb3088c8ee75a3708dfb.md) | 239 | `declaration-track:c5bcbb3088c8ee75a3708dfb6e5cd034f395aea2691cfd2a332e7d242b6ec3e9` |
| 28 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FunctionField/Varianta879e480da693a7025bf2fc2cd570accdf7ad47a747866889171bfb9cef225ac.lean/declarations/instance--05d125e88cc3bad14c3eb2bf.md) | 243 | `declaration-track:05d125e88cc3bad14c3eb2bfee8ceaa9afb8e62bba13d751e063dd51f072c59b` |
| 29 | `instance` | [valuedFqtInfty](../../../../mathematics/Algebra/FunctionField/Varianta879e480da693a7025bf2fc2cd570accdf7ad47a747866889171bfb9cef225ac.lean/declarations/valuedfqtinfty--a283b942418a6835c1c280fb.md) | 247 | `declaration-track:a283b942418a6835c1c280fbd7a68c0a61ff9ef307c73d8fbc05cac65282ca08` |
| 30 | `theorem` | [valuedFqtInfty.def](../../../../mathematics/Algebra/FunctionField/Varianta879e480da693a7025bf2fc2cd570accdf7ad47a747866889171bfb9cef225ac.lean/declarations/valuedfqtinfty-def--ca9cb6de6978d8cd92cf85f0.md) | 250 | `result-track:ca9cb6de6978d8cd92cf85f0916e1cdfcfe496349502323c15d0fb3d1b707f30` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
