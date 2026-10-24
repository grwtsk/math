# Verification target: GRWTSK.Algebra.GroupTheory.Instances.Variant83b864bd7b8bd718bf267981603ef19e30a8c2c987816542f8e009260bd0bda0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e291741a0df28ec8c8628903145d8733c18d60b7",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Instances/Variant83b864bd7b8bd718bf267981603ef19e30a8c2c987816542f8e009260bd0bda0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Instances/Variant83b864bd7b8bd718bf267981603ef19e30a8c2c987816542f8e009260bd0bda0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Instances/Variant83b864bd7b8bd718bf267981603ef19e30a8c2c987816542f8e009260bd0bda0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e291741a0df28ec8c8628903145d8733c18d60b7`.

Source path: `GRWTSK/Algebra/GroupTheory/Instances/Variant83b864bd7b8bd718bf267981603ef19e30a8c2c987816542f8e009260bd0bda0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Instances/Variant83b864bd7b8bd718bf267981603ef19e30a8c2c987816542f8e009260bd0bda0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Hom.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [MonoidHom.instCommMonoid](../../../../../mathematics/Algebra/GroupTheory/Instances/Variant83b864bd7b8bd718bf267981603ef19e30a8c2c987816542f8e009260bd0bda0.lean/declarations/monoidhom-instcommmonoid--1b6313ecebdeafac9c0cf818.md) | 38 | `declaration-track:1b6313ecebdeafac9c0cf8180273324c87985b1d3750cebf0747d15b3042a37e` |
| 2 | `instance` | [MonoidHom.instCommGroup](../../../../../mathematics/Algebra/GroupTheory/Instances/Variant83b864bd7b8bd718bf267981603ef19e30a8c2c987816542f8e009260bd0bda0.lean/declarations/monoidhom-instcommgroup--6acd47785746d026b5bd39f0.md) | 58 | `declaration-track:6acd47785746d026b5bd39f05bc41d8b8a45225a5c336224df443a29acb75a04` |
| 3 | `instance` | [AddMonoid.End.instAddCommMonoid](../../../../../mathematics/Algebra/GroupTheory/Instances/Variant83b864bd7b8bd718bf267981603ef19e30a8c2c987816542f8e009260bd0bda0.lean/declarations/addmonoid-end-instaddcommmonoid--be04ec187727fa4fe463002a.md) | 81 | `declaration-track:be04ec187727fa4fe463002a064cd1476828f76bfade99df67604dbf59b61442` |
| 4 | `theorem` | [AddMonoid.End.zero_apply](../../../../../mathematics/Algebra/GroupTheory/Instances/Variant83b864bd7b8bd718bf267981603ef19e30a8c2c987816542f8e009260bd0bda0.lean/declarations/addmonoid-end-zero-apply--8bc07bc439704cdf51c36a30.md) | 85 | `result-track:8bc07bc439704cdf51c36a30c45dde2e2ead9f69a457f0614039d0a2f212d49c` |
| 5 | `theorem` | [AddMonoid.End.one_apply](../../../../../mathematics/Algebra/GroupTheory/Instances/Variant83b864bd7b8bd718bf267981603ef19e30a8c2c987816542f8e009260bd0bda0.lean/declarations/addmonoid-end-one-apply--37e5dea84960363456b76a81.md) | 89 | `result-track:37e5dea84960363456b76a8193341b080b0d3f4db2f5a785764b3f4212e14d40` |
| 6 | `instance` | [AddMonoid.End.instAddCommGroup](../../../../../mathematics/Algebra/GroupTheory/Instances/Variant83b864bd7b8bd718bf267981603ef19e30a8c2c987816542f8e009260bd0bda0.lean/declarations/addmonoid-end-instaddcommgroup--698e88d795a95b5b29b41894.md) | 92 | `declaration-track:698e88d795a95b5b29b41894d36c58aa656504b424221bc8899b06bd56b06c16` |
| 7 | `instance` | [AddMonoid.End.instIntCast](../../../../../mathematics/Algebra/GroupTheory/Instances/Variant83b864bd7b8bd718bf267981603ef19e30a8c2c987816542f8e009260bd0bda0.lean/declarations/addmonoid-end-instintcast--c136904fdae6c91371aa08a9.md) | 95 | `declaration-track:c136904fdae6c91371aa08a98617e9e69cac6c7bc54bb818fce958d49a41a78f` |
| 8 | `theorem` | [AddMonoid.End.intCast_apply](../../../../../mathematics/Algebra/GroupTheory/Instances/Variant83b864bd7b8bd718bf267981603ef19e30a8c2c987816542f8e009260bd0bda0.lean/declarations/addmonoid-end-intcast-apply--3c4034adb951d39ba2c9f5e8.md) | 100 | `result-track:3c4034adb951d39ba2c9f5e816d606d294b3110aefcc93560d6563063ad5c34a` |
| 9 | `lemma` | [MonoidHom.pow_apply](../../../../../mathematics/Algebra/GroupTheory/Instances/Variant83b864bd7b8bd718bf267981603ef19e30a8c2c987816542f8e009260bd0bda0.lean/declarations/monoidhom-pow-apply--f90460778114043b23eff202.md) | 104 | `result-track:f90460778114043b23eff202659d1f54f16f9bdce79529ff51a8db380c67fdf1` |
| 10 | `theorem` | [ext_iff₂](../../../../../mathematics/Algebra/GroupTheory/Instances/Variant83b864bd7b8bd718bf267981603ef19e30a8c2c987816542f8e009260bd0bda0.lean/declarations/ext-iff--484c045c39036c1ac7f07efc.md) | 120 | `result-track:484c045c39036c1ac7f07efc33d22abc52d983a94c184160a44dffd41423c296` |
| 11 | `def` | [flip](../../../../../mathematics/Algebra/GroupTheory/Instances/Variant83b864bd7b8bd718bf267981603ef19e30a8c2c987816542f8e009260bd0bda0.lean/declarations/flip--75ebe501e110fc4a57eaefda.md) | 126 | `declaration-track:75ebe501e110fc4a57eaefdaa27dcc748ec4c5f83adacc8a4f99df2f340dd52c` |
| 12 | `theorem` | [flip_apply](../../../../../mathematics/Algebra/GroupTheory/Instances/Variant83b864bd7b8bd718bf267981603ef19e30a8c2c987816542f8e009260bd0bda0.lean/declarations/flip-apply--b4c6c2d26786a0eea3726e24.md) | 136 | `result-track:b4c6c2d26786a0eea3726e2463baaf53d80deadeb708b25daefbd47fa634c117` |
| 13 | `theorem` | [map_one₂](../../../../../mathematics/Algebra/GroupTheory/Instances/Variant83b864bd7b8bd718bf267981603ef19e30a8c2c987816542f8e009260bd0bda0.lean/declarations/map-one--524624a41618ee873007c9e9.md) | 141 | `result-track:524624a41618ee873007c9e9d2b35fe39695fce318565b7e38a98003c5b167be` |
| 14 | `theorem` | [map_mul₂](../../../../../mathematics/Algebra/GroupTheory/Instances/Variant83b864bd7b8bd718bf267981603ef19e30a8c2c987816542f8e009260bd0bda0.lean/declarations/map-mul--b0982308e5145e459b7ae3dc.md) | 146 | `result-track:b0982308e5145e459b7ae3dcede91cbb351c32e8335a09d97b529e0e48b69ed3` |
| 15 | `theorem` | [map_inv₂](../../../../../mathematics/Algebra/GroupTheory/Instances/Variant83b864bd7b8bd718bf267981603ef19e30a8c2c987816542f8e009260bd0bda0.lean/declarations/map-inv--dc6330a7d07dd5eb8a402ebd.md) | 151 | `result-track:dc6330a7d07dd5eb8a402ebd6a024c25bfdde18e61e47e2687ace458302b30a9` |
| 16 | `theorem` | [map_div₂](../../../../../mathematics/Algebra/GroupTheory/Instances/Variant83b864bd7b8bd718bf267981603ef19e30a8c2c987816542f8e009260bd0bda0.lean/declarations/map-div--592f3863cadd0d8676c331ed.md) | 156 | `result-track:592f3863cadd0d8676c331ed4d220339d874fa1ff1bbb4cc1f5f010bc1fcc483` |
| 17 | `def` | [eval](../../../../../mathematics/Algebra/GroupTheory/Instances/Variant83b864bd7b8bd718bf267981603ef19e30a8c2c987816542f8e009260bd0bda0.lean/declarations/eval--5927f474ef0e7fb186f1b6bb.md) | 165 | `declaration-track:5927f474ef0e7fb186f1b6bb49199a9367e12f66677f2322e0e73bf0b6082e66` |
| 18 | `def` | [compHom'](../../../../../mathematics/Algebra/GroupTheory/Instances/Variant83b864bd7b8bd718bf267981603ef19e30a8c2c987816542f8e009260bd0bda0.lean/declarations/comphom--e908c2298d98ddb8c1715b9d.md) | 175 | `declaration-track:e908c2298d98ddb8c1715b9d166248c8c3eecd1a80d4b31277c65897b90e4022` |
| 19 | `def` | [compHom](../../../../../mathematics/Algebra/GroupTheory/Instances/Variant83b864bd7b8bd718bf267981603ef19e30a8c2c987816542f8e009260bd0bda0.lean/declarations/comphom--bdea44a5521b7dcb159581a7.md) | 188 | `declaration-track:bdea44a5521b7dcb159581a7bb95859595f9378fff884d09b12633ef259c6550` |
| 20 | `def` | [flipHom](../../../../../mathematics/Algebra/GroupTheory/Instances/Variant83b864bd7b8bd718bf267981603ef19e30a8c2c987816542f8e009260bd0bda0.lean/declarations/fliphom--5747fdc11093c484e38ab1e9.md) | 202 | `declaration-track:5747fdc11093c484e38ab1e9fb7692caa3968a138b028a704ceac04157cafe2a` |
| 21 | `def` | [compl₂](../../../../../mathematics/Algebra/GroupTheory/Instances/Variant83b864bd7b8bd718bf267981603ef19e30a8c2c987816542f8e009260bd0bda0.lean/declarations/compl--fb3a61b3f5f975f2f7f5f6ff.md) | 217 | `declaration-track:fb3a61b3f5f975f2f7f5f6ffaddbee1a7bed43cae0e3754ba5ab2c3c4bb494ce` |
| 22 | `theorem` | [compl₂_apply](../../../../../mathematics/Algebra/GroupTheory/Instances/Variant83b864bd7b8bd718bf267981603ef19e30a8c2c987816542f8e009260bd0bda0.lean/declarations/compl-apply--58ea9b10248a121c718f5a69.md) | 222 | `result-track:58ea9b10248a121c718f5a69f54ba2d6099d768cc534bd635be729beb2f6ce9b` |
| 23 | `def` | [compr₂](../../../../../mathematics/Algebra/GroupTheory/Instances/Variant83b864bd7b8bd718bf267981603ef19e30a8c2c987816542f8e009260bd0bda0.lean/declarations/compr--d5db4d66664581a0d8d0a1a9.md) | 231 | `declaration-track:d5db4d66664581a0d8d0a1a9c74a2617349465efabd84d14e6f79faffddeba74` |
| 24 | `theorem` | [compr₂_apply](../../../../../mathematics/Algebra/GroupTheory/Instances/Variant83b864bd7b8bd718bf267981603ef19e30a8c2c987816542f8e009260bd0bda0.lean/declarations/compr-apply--e4869c112dbe50ef945a740e.md) | 236 | `result-track:e4869c112dbe50ef945a740e3a8a64df601e36651c023f6c08b4ca8fb3326ce6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
