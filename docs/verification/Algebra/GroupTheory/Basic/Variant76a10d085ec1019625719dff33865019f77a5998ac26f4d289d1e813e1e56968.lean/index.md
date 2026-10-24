# Verification target: GRWTSK.Algebra.GroupTheory.Basic.Variant76a10d085ec1019625719dff33865019f77a5998ac26f4d289d1e813e1e56968

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a11be9fc34dd379e2a79565ff60204a795fb125d",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variant76a10d085ec1019625719dff33865019f77a5998ac26f4d289d1e813e1e56968.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant76a10d085ec1019625719dff33865019f77a5998ac26f4d289d1e813e1e56968.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant76a10d085ec1019625719dff33865019f77a5998ac26f4d289d1e813e1e56968.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a11be9fc34dd379e2a79565ff60204a795fb125d`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variant76a10d085ec1019625719dff33865019f77a5998ac26f4d289d1e813e1e56968.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variant76a10d085ec1019625719dff33865019f77a5998ac26f4d289d1e813e1e56968.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.FreeMonoid.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Submonoid.Operations` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Congruence.Hom` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PresentedMonoid](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant76a10d085ec1019625719dff33865019f77a5998ac26f4d289d1e813e1e56968.lean/declarations/presentedmonoid--979fabc143374299923e2231.md) | 37 | `declaration-track:979fabc143374299923e22315546c27b9357b7342f8d5ceac08a2bc96fa2ec73` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant76a10d085ec1019625719dff33865019f77a5998ac26f4d289d1e813e1e56968.lean/declarations/instance--0cef40fb8f6ac38898ea4f97.md) | 45 | `declaration-track:0cef40fb8f6ac38898ea4f973dd0a2ea31581ed20af15a549bf570097aaf3685` |
| 3 | `def` | [mk](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant76a10d085ec1019625719dff33865019f77a5998ac26f4d289d1e813e1e56968.lean/declarations/mk--2a50589e62d0091403b96ee4.md) | 52 | `declaration-track:2a50589e62d0091403b96ee4c99ac54dff2a4024175e2dbc6cec338b30a4044d` |
| 4 | `def` | [of](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant76a10d085ec1019625719dff33865019f77a5998ac26f4d289d1e813e1e56968.lean/declarations/of--1aca85b507a17e0210ac53f9.md) | 61 | `declaration-track:1aca85b507a17e0210ac53f9d873daf662ca3e963aa985303ff4f5744c237503` |
| 5 | `theorem` | [inductionOn](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant76a10d085ec1019625719dff33865019f77a5998ac26f4d289d1e813e1e56968.lean/declarations/inductionon--161cfa09ef349a0a38aa46d1.md) | 74 | `result-track:161cfa09ef349a0a38aa46d1db56a46610b41347f94850473ad85fd26aa6b6e1` |
| 6 | `theorem` | [inductionOn₂](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant76a10d085ec1019625719dff33865019f77a5998ac26f4d289d1e813e1e56968.lean/declarations/inductionon--cca69072348f16e44444d7e1.md) | 78 | `result-track:cca69072348f16e44444d7e1899eff25437280f66d3bffa95d4257f5de974d07` |
| 7 | `theorem` | [inductionOn₃](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant76a10d085ec1019625719dff33865019f77a5998ac26f4d289d1e813e1e56968.lean/declarations/inductionon--044eca0b996710cd9b8ce0e4.md) | 83 | `result-track:044eca0b996710cd9b8ce0e4f0731772aba7bcf47a8581736197fc40f2dc240b` |
| 8 | `theorem` | [closure_range_of](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant76a10d085ec1019625719dff33865019f77a5998ac26f4d289d1e813e1e56968.lean/declarations/closure-range-of--ed18bc4895bfd0735831573d.md) | 96 | `result-track:ed18bc4895bfd0735831573d64f45f1bd2ab479a16b4cb53dd0c238899eb688e` |
| 9 | `theorem` | [surjective_mk](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant76a10d085ec1019625719dff33865019f77a5998ac26f4d289d1e813e1e56968.lean/declarations/surjective-mk--fef4b56b3f7bc36d9194a8d3.md) | 107 | `result-track:fef4b56b3f7bc36d9194a8d3f2d219cca5f0a81e8ae869723b9142a5a166334f` |
| 10 | `def` | [lift](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant76a10d085ec1019625719dff33865019f77a5998ac26f4d289d1e813e1e56968.lean/declarations/lift--825f050203dc5e906cbe34d4.md) | 119 | `declaration-track:825f050203dc5e906cbe34d40c2e55de0b32823133feca2f4ab705dcc1c27396` |
| 11 | `theorem` | [toMonoid.unique](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant76a10d085ec1019625719dff33865019f77a5998ac26f4d289d1e813e1e56968.lean/declarations/tomonoid-unique--0e7dc49b9fcb0ffa2843ba75.md) | 123 | `result-track:0e7dc49b9fcb0ffa2843ba75285c09b51a49393357c65e35c0463f6d7f1128ce` |
| 12 | `theorem` | [lift_of](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant76a10d085ec1019625719dff33865019f77a5998ac26f4d289d1e813e1e56968.lean/declarations/lift-of--e1a635e88563944e60883890.md) | 128 | `result-track:e1a635e88563944e60883890bae74e5ee8cad6560bec11a08f037b648d29caf1` |
| 13 | `theorem` | [ext](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant76a10d085ec1019625719dff33865019f77a5998ac26f4d289d1e813e1e56968.lean/declarations/ext--2d7697ed942412706f41e1bc.md) | 133 | `result-track:2d7697ed942412706f41e1bc25fe82f08b060e860e2c2daef02a029666e7a249` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
