# Verification target: GRWTSK.Algebra.Basic.Variantcb3d5350e10b5e3e9f2fc23cd06800c39d4d124958331dc17cca6761de770351

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0c15afafdf275fe888c024385d9ad4a0b7268ed6",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variantcb3d5350e10b5e3e9f2fc23cd06800c39d4d124958331dc17cca6761de770351.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variantcb3d5350e10b5e3e9f2fc23cd06800c39d4d124958331dc17cca6761de770351.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variantcb3d5350e10b5e3e9f2fc23cd06800c39d4d124958331dc17cca6761de770351.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0c15afafdf275fe888c024385d9ad4a0b7268ed6`.

Source path: `GRWTSK/Algebra/Basic/Variantcb3d5350e10b5e3e9f2fc23cd06800c39d4d124958331dc17cca6761de770351.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variantcb3d5350e10b5e3e9f2fc23cd06800c39d4d124958331dc17cca6761de770351.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Units.Opposite` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [of_isUnit_or_isUnit_of_isUnit_add](../../../../mathematics/Algebra/Basic/Variantcb3d5350e10b5e3e9f2fc23cd06800c39d4d124958331dc17cca6761de770351.lean/declarations/of-isunit-or-isunit-of-isunit-add--8a4f69b7649f254460a7ace7.md) | 31 | `result-track:8a4f69b7649f254460a7ace76c6b4616b985539513d123d5bb72db2c0bc4449a` |
| 2 | `theorem` | [of_nonunits_add](../../../../mathematics/Algebra/Basic/Variantcb3d5350e10b5e3e9f2fc23cd06800c39d4d124958331dc17cca6761de770351.lean/declarations/of-nonunits-add--309184960c2ae34a487141e2.md) | 36 | `result-track:309184960c2ae34a487141e2908a8eee887f5de99ea68205ad22b72722a83ea2` |
| 3 | `theorem` | [isUnit_or_isUnit_of_isUnit_add](../../../../mathematics/Algebra/Basic/Variantcb3d5350e10b5e3e9f2fc23cd06800c39d4d124958331dc17cca6761de770351.lean/declarations/isunit-or-isunit-of-isunit-add--4c41f146d406d1ef6ab86a6e.md) | 43 | `result-track:4c41f146d406d1ef6ab86a6ec06d0376b62d711b6ef81ff551b77631dffaa10a` |
| 4 | `theorem` | [nonunits_add](../../../../mathematics/Algebra/Basic/Variantcb3d5350e10b5e3e9f2fc23cd06800c39d4d124958331dc17cca6761de770351.lean/declarations/nonunits-add--4c429059a297d11d34b25403.md) | 48 | `result-track:4c429059a297d11d34b254031341fb10638b509ee06f3d8b3648ce4249d6c084` |
| 5 | `def` | [nonunitsAddSubmonoid](../../../../mathematics/Algebra/Basic/Variantcb3d5350e10b5e3e9f2fc23cd06800c39d4d124958331dc17cca6761de770351.lean/declarations/nonunitsaddsubmonoid--24f6f9e7205238ead7ef0e89.md) | 53 | `declaration-track:24f6f9e7205238ead7ef0e8961094022c916c8fa1d3dfa2f9df4803bcabd8278` |
| 6 | `theorem` | [exists_of_isUnit_sum](../../../../mathematics/Algebra/Basic/Variantcb3d5350e10b5e3e9f2fc23cd06800c39d4d124958331dc17cca6761de770351.lean/declarations/exists-of-isunit-sum--4ded976fd0b6e22c35a2461c.md) | 58 | `result-track:4ded976fd0b6e22c35a2461c7cf34111c579da2c2025409aaec24fc5287e9451` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantcb3d5350e10b5e3e9f2fc23cd06800c39d4d124958331dc17cca6761de770351.lean/declarations/instance--98339e523bcd842d071fa4c0.md) | 62 | `declaration-track:98339e523bcd842d071fa4c0f956daa05a006c1c4c350cdd5c8d08a0347a1391` |
| 8 | `theorem` | [of_unique_max_ideal](../../../../mathematics/Algebra/Basic/Variantcb3d5350e10b5e3e9f2fc23cd06800c39d4d124958331dc17cca6761de770351.lean/declarations/of-unique-max-ideal--a72da05433b82125b039bbcb.md) | 73 | `result-track:a72da05433b82125b039bbcb102a1817d30f2b31b6edf13ecc72238c87795b6e` |
| 9 | `theorem` | [of_unique_nonzero_prime](../../../../mathematics/Algebra/Basic/Variantcb3d5350e10b5e3e9f2fc23cd06800c39d4d124958331dc17cca6761de770351.lean/declarations/of-unique-nonzero-prime--a01aa739db4bd4ffee6c59bd.md) | 86 | `result-track:a01aa739db4bd4ffee6c59bd55a8503f84e38c7daf34068afdc0b5df62755089` |
| 10 | `theorem` | [of_isUnit_or_isUnit_one_sub_self](../../../../mathematics/Algebra/Basic/Variantcb3d5350e10b5e3e9f2fc23cd06800c39d4d124958331dc17cca6761de770351.lean/declarations/of-isunit-or-isunit-one-sub-self--b5e4dfc3cbb13607e0ea672a.md) | 102 | `result-track:b5e4dfc3cbb13607e0ea672a9adfd9f47d2ec061a66243ced8319af5a8aaaa4a` |
| 11 | `theorem` | [isUnit_or_isUnit_one_sub_self](../../../../mathematics/Algebra/Basic/Variantcb3d5350e10b5e3e9f2fc23cd06800c39d4d124958331dc17cca6761de770351.lean/declarations/isunit-or-isunit-one-sub-self--7526c3df0945c9c85ac4def0.md) | 108 | `result-track:7526c3df0945c9c85ac4def01a9c2722f3d9fdb81ccf382396490f7f5cd8cc9f` |
| 12 | `theorem` | [isUnit_of_mem_nonunits_one_sub_self](../../../../mathematics/Algebra/Basic/Variantcb3d5350e10b5e3e9f2fc23cd06800c39d4d124958331dc17cca6761de770351.lean/declarations/isunit-of-mem-nonunits-one-sub-self--d28411dced4d10df9c09ba49.md) | 111 | `result-track:d28411dced4d10df9c09ba493176376d2555d5297c9381777b94423dc05c36e1` |
| 13 | `theorem` | [isUnit_one_sub_self_of_mem_nonunits](../../../../mathematics/Algebra/Basic/Variantcb3d5350e10b5e3e9f2fc23cd06800c39d4d124958331dc17cca6761de770351.lean/declarations/isunit-one-sub-self-of-mem-nonunits--787d07c743c8449aa1c1a1fc.md) | 114 | `result-track:787d07c743c8449aa1c1a1fcea4f3c36b8e7fbd167b8022cf977719283f4f3d4` |
| 14 | `theorem` | [of_surjective'](../../../../mathematics/Algebra/Basic/Variantcb3d5350e10b5e3e9f2fc23cd06800c39d4d124958331dc17cca6761de770351.lean/declarations/of-surjective--7b7f06bc48fe385bf769d606.md) | 117 | `result-track:7b7f06bc48fe385bf769d6066df485330c83cd425180a835c1ee1e19fc7706b5` |
| 15 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantcb3d5350e10b5e3e9f2fc23cd06800c39d4d124958331dc17cca6761de770351.lean/declarations/instance--1fdf210246e0322c1883f97e.md) | 135 | `declaration-track:1fdf210246e0322c1883f97e91607a3decd706d214ed84d1462f8e5265db9ced` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
