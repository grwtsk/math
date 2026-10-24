# Verification target: GRWTSK.Algebra.Basic.Variant1439d288601a465758d402035e67d330f3c92777ee6c4e5c03cbaf29d6857b65

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0a6d46e84f8a5bab821aab377722510c487c0544",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant1439d288601a465758d402035e67d330f3c92777ee6c4e5c03cbaf29d6857b65.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant1439d288601a465758d402035e67d330f3c92777ee6c4e5c03cbaf29d6857b65.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant1439d288601a465758d402035e67d330f3c92777ee6c4e5c03cbaf29d6857b65.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0a6d46e84f8a5bab821aab377722510c487c0544`.

Source path: `GRWTSK/Algebra/Basic/Variant1439d288601a465758d402035e67d330f3c92777ee6c4e5c03cbaf29d6857b65.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant1439d288601a465758d402035e67d330f3c92777ee6c4e5c03cbaf29d6857b65.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Embedding` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Interval.Set.Monoid` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Finset.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [map_add_left_Icc](../../../../mathematics/Algebra/Basic/Variant1439d288601a465758d402035e67d330f3c92777ee6c4e5c03cbaf29d6857b65.lean/declarations/map-add-left-icc--6cb0a8e8aafc99a269ce51d4.md) | 32 | `result-track:6cb0a8e8aafc99a269ce51d4b63509ff09eb285ea93f6135e5a7ba7d581b74e5` |
| 2 | `lemma` | [map_add_right_Icc](../../../../mathematics/Algebra/Basic/Variant1439d288601a465758d402035e67d330f3c92777ee6c4e5c03cbaf29d6857b65.lean/declarations/map-add-right-icc--2a579393d530bf9c23f50681.md) | 37 | `result-track:2a579393d530bf9c23f50681f7f96006a7c0516388b9174a2a7e247dffb9291c` |
| 3 | `lemma` | [map_add_left_Ico](../../../../mathematics/Algebra/Basic/Variant1439d288601a465758d402035e67d330f3c92777ee6c4e5c03cbaf29d6857b65.lean/declarations/map-add-left-ico--a4ca68b67fcb8fd02b98ad65.md) | 42 | `result-track:a4ca68b67fcb8fd02b98ad65a17b88a1130454cfa567fc0a24eb4191205876b4` |
| 4 | `lemma` | [map_add_right_Ico](../../../../mathematics/Algebra/Basic/Variant1439d288601a465758d402035e67d330f3c92777ee6c4e5c03cbaf29d6857b65.lean/declarations/map-add-right-ico--812663109af797c2fcbced9c.md) | 47 | `result-track:812663109af797c2fcbced9caa9b66326957d0c50d6e264c37c0ec5bb61fba48` |
| 5 | `lemma` | [map_add_left_Ioc](../../../../mathematics/Algebra/Basic/Variant1439d288601a465758d402035e67d330f3c92777ee6c4e5c03cbaf29d6857b65.lean/declarations/map-add-left-ioc--acc574f6cee98dca7d80cc07.md) | 52 | `result-track:acc574f6cee98dca7d80cc07b69edc292acd92872edb1b7f76a015df537ff476` |
| 6 | `lemma` | [map_add_right_Ioc](../../../../mathematics/Algebra/Basic/Variant1439d288601a465758d402035e67d330f3c92777ee6c4e5c03cbaf29d6857b65.lean/declarations/map-add-right-ioc--956b5fea669e997c2a473ccd.md) | 57 | `result-track:956b5fea669e997c2a473ccd18ef3a3db1d3993d72be8feae34c3dbf5b9b4759` |
| 7 | `lemma` | [map_add_left_Ioo](../../../../mathematics/Algebra/Basic/Variant1439d288601a465758d402035e67d330f3c92777ee6c4e5c03cbaf29d6857b65.lean/declarations/map-add-left-ioo--bbb1a51d67a4f4557fa1ed5f.md) | 62 | `result-track:bbb1a51d67a4f4557fa1ed5fd93428d184b0a1740456bd79e83de09590125a44` |
| 8 | `lemma` | [map_add_right_Ioo](../../../../mathematics/Algebra/Basic/Variant1439d288601a465758d402035e67d330f3c92777ee6c4e5c03cbaf29d6857b65.lean/declarations/map-add-right-ioo--e637d523c0334e91c381a3f2.md) | 67 | `result-track:e637d523c0334e91c381a3f25b1839bd48755bd3922e57b50f8dbe9cc0973980` |
| 9 | `lemma` | [image_add_left_Icc](../../../../mathematics/Algebra/Basic/Variant1439d288601a465758d402035e67d330f3c92777ee6c4e5c03cbaf29d6857b65.lean/declarations/image-add-left-icc--c1ab3257c8597cbbbb949795.md) | 74 | `result-track:c1ab3257c8597cbbbb94979581d5e6f7da18b01940379d8e396eb44239c5a2a6` |
| 10 | `lemma` | [image_add_left_Ico](../../../../mathematics/Algebra/Basic/Variant1439d288601a465758d402035e67d330f3c92777ee6c4e5c03cbaf29d6857b65.lean/declarations/image-add-left-ico--04d1c7a2b1f22190abe99f6a.md) | 77 | `result-track:04d1c7a2b1f22190abe99f6a959823cd0d809b08d0b1478a420251f9c9345458` |
| 11 | `lemma` | [image_add_left_Ioc](../../../../mathematics/Algebra/Basic/Variant1439d288601a465758d402035e67d330f3c92777ee6c4e5c03cbaf29d6857b65.lean/declarations/image-add-left-ioc--7ef0ba400481f96b0d9bc54d.md) | 80 | `result-track:7ef0ba400481f96b0d9bc54dc6658e001d4bc829a46f76315b1c65d1b78e4ca7` |
| 12 | `lemma` | [image_add_left_Ioo](../../../../mathematics/Algebra/Basic/Variant1439d288601a465758d402035e67d330f3c92777ee6c4e5c03cbaf29d6857b65.lean/declarations/image-add-left-ioo--961bbe127f531de6be0ac6e3.md) | 83 | `result-track:961bbe127f531de6be0ac6e32448f31505567546c18e0bc6fa0d2c33d4191dd9` |
| 13 | `lemma` | [image_add_right_Icc](../../../../mathematics/Algebra/Basic/Variant1439d288601a465758d402035e67d330f3c92777ee6c4e5c03cbaf29d6857b65.lean/declarations/image-add-right-icc--c54b6b8eb5e86b2efd636784.md) | 86 | `result-track:c54b6b8eb5e86b2efd63678441456b61c6d6e4ffa9b64df65711d4bea1d8b3d3` |
| 14 | `lemma` | [image_add_right_Ico](../../../../mathematics/Algebra/Basic/Variant1439d288601a465758d402035e67d330f3c92777ee6c4e5c03cbaf29d6857b65.lean/declarations/image-add-right-ico--9a11a2dcf9a44c143b28618d.md) | 89 | `result-track:9a11a2dcf9a44c143b28618d2bd5b3d5847e615d3f752903127cf8f2a3d4b1cf` |
| 15 | `lemma` | [image_add_right_Ioc](../../../../mathematics/Algebra/Basic/Variant1439d288601a465758d402035e67d330f3c92777ee6c4e5c03cbaf29d6857b65.lean/declarations/image-add-right-ioc--69f1e2ece4291be15c05c9ac.md) | 92 | `result-track:69f1e2ece4291be15c05c9ac2e30261eac2a29f9aa94ada4a8daf28ff31e95fa` |
| 16 | `lemma` | [image_add_right_Ioo](../../../../mathematics/Algebra/Basic/Variant1439d288601a465758d402035e67d330f3c92777ee6c4e5c03cbaf29d6857b65.lean/declarations/image-add-right-ioo--d7222b0dc6d6069a7e8accc6.md) | 95 | `result-track:d7222b0dc6d6069a7e8accc679daa89f6be834adcb4cda2d2ae55558efb6c253` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
