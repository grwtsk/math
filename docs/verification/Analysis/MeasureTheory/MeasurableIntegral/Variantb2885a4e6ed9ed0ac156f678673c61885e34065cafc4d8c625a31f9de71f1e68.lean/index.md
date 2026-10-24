# Verification target: GRWTSK.Analysis.MeasureTheory.MeasurableIntegral.Variantb2885a4e6ed9ed0ac156f678673c61885e34065cafc4d8c625a31f9de71f1e68

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "52213a5c2fb76687f78d93d536d935668db8bd8c",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/MeasurableIntegral/Variantb2885a4e6ed9ed0ac156f678673c61885e34065cafc4d8c625a31f9de71f1e68.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/MeasurableIntegral/Variantb2885a4e6ed9ed0ac156f678673c61885e34065cafc4d8c625a31f9de71f1e68.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/MeasurableIntegral/Variantb2885a4e6ed9ed0ac156f678673c61885e34065cafc4d8c625a31f9de71f1e68.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `52213a5c2fb76687f78d93d536d935668db8bd8c`.

Source path: `GRWTSK/Analysis/MeasureTheory/MeasurableIntegral/Variantb2885a4e6ed9ed0ac156f678673c61885e34065cafc4d8c625a31f9de71f1e68.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/MeasurableIntegral/Variantb2885a4e6ed9ed0ac156f678673c61885e34065cafc4d8c625a31f9de71f1e68.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Kernel.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [measurable_kernel_prod_mk_left_of_finite](../../../../../mathematics/Analysis/MeasureTheory/MeasurableIntegral/Variantb2885a4e6ed9ed0ac156f678673c61885e34065cafc4d8c625a31f9de71f1e68.lean/declarations/measurable-kernel-prod-mk-left-of-finite--7812a1246300748cb11a6e41.md) | 40 | `result-track:7812a1246300748cb11a6e41e400f96fecbfd16c11ad4390cd665f7f3389a377` |
| 2 | `theorem` | [measurable_kernel_prod_mk_left](../../../../../mathematics/Analysis/MeasureTheory/MeasurableIntegral/Variantb2885a4e6ed9ed0ac156f678673c61885e34065cafc4d8c625a31f9de71f1e68.lean/declarations/measurable-kernel-prod-mk-left--a550326d896387e9b4772ed5.md) | 100 | `result-track:a550326d896387e9b4772ed5745b18422f64d39c1db682f124a7b69bbe59bc3f` |
| 3 | `theorem` | [measurable_kernel_prod_mk_left'](../../../../../mathematics/Analysis/MeasureTheory/MeasurableIntegral/Variantb2885a4e6ed9ed0ac156f678673c61885e34065cafc4d8c625a31f9de71f1e68.lean/declarations/measurable-kernel-prod-mk-left--aacb9feeb0728448492ec362.md) | 111 | `result-track:aacb9feeb0728448492ec3623d6a014336feb14f9cb378642ec0955eb3bc7f2f` |
| 4 | `theorem` | [measurable_kernel_prod_mk_right](../../../../../mathematics/Analysis/MeasureTheory/MeasurableIntegral/Variantb2885a4e6ed9ed0ac156f678673c61885e34065cafc4d8c625a31f9de71f1e68.lean/declarations/measurable-kernel-prod-mk-right--a51b20bf2933d7ddfff7fae1.md) | 120 | `result-track:a51b20bf2933d7ddfff7fae1b6043cd33cf05b8a24729834d53fcc1275847c6e` |
| 5 | `theorem` | [kernel.measurable_lintegral_indicator_const](../../../../../mathematics/Analysis/MeasureTheory/MeasurableIntegral/Variantb2885a4e6ed9ed0ac156f678673c61885e34065cafc4d8c625a31f9de71f1e68.lean/declarations/kernel-measurable-lintegral-indicator-const--9050a9c2aaeed02abf086639.md) | 134 | `result-track:9050a9c2aaeed02abf086639450a9165dd7a74f30b80835a8dacf95013714bbd` |
| 6 | `theorem` | [_root_.Measurable.lintegral_kernel_prod_right](../../../../../mathematics/Analysis/MeasureTheory/MeasurableIntegral/Variantb2885a4e6ed9ed0ac156f678673c61885e34065cafc4d8c625a31f9de71f1e68.lean/declarations/root-measurable-lintegral-kernel-prod-right--359bdfa58e2e5ad859b4edf4.md) | 149 | `result-track:359bdfa58e2e5ad859b4edf42792aaec844a78498b04797e12fa6614a05074af` |
| 7 | `theorem` | [_root_.Measurable.lintegral_kernel_prod_right'](../../../../../mathematics/Analysis/MeasureTheory/MeasurableIntegral/Variantb2885a4e6ed9ed0ac156f678673c61885e34065cafc4d8c625a31f9de71f1e68.lean/declarations/root-measurable-lintegral-kernel-prod-right--69e34105013d847b38d4513d.md) | 184 | `result-track:69e34105013d847b38d4513da96cbf613e02fb54e17b5113fca6ec0fc4341aa2` |
| 8 | `theorem` | [_root_.Measurable.lintegral_kernel_prod_right''](../../../../../mathematics/Analysis/MeasureTheory/MeasurableIntegral/Variantb2885a4e6ed9ed0ac156f678673c61885e34065cafc4d8c625a31f9de71f1e68.lean/declarations/root-measurable-lintegral-kernel-prod-right--2bb44869ef5c8ad0c681afa5.md) | 192 | `result-track:2bb44869ef5c8ad0c681afa528e436afb2391afbf6247ae92274d1a94a8b6ea5` |
| 9 | `theorem` | [_root_.Measurable.set_lintegral_kernel_prod_right](../../../../../mathematics/Analysis/MeasureTheory/MeasurableIntegral/Variantb2885a4e6ed9ed0ac156f678673c61885e34065cafc4d8c625a31f9de71f1e68.lean/declarations/root-measurable-set-lintegral-kernel-prod-right--1cb1a4b3a3dfd107550cfc46.md) | 204 | `result-track:1cb1a4b3a3dfd107550cfc46ff1357d2f89b0d803e8e84b7ffcb831a78e66375` |
| 10 | `theorem` | [_root_.Measurable.lintegral_kernel_prod_left'](../../../../../mathematics/Analysis/MeasureTheory/MeasurableIntegral/Variantb2885a4e6ed9ed0ac156f678673c61885e34065cafc4d8c625a31f9de71f1e68.lean/declarations/root-measurable-lintegral-kernel-prod-left--471490b7052d0671776bed0a.md) | 210 | `result-track:471490b7052d0671776bed0ac9fb5f55d0837bf76d090134fa0edae16fc30ad9` |
| 11 | `theorem` | [_root_.Measurable.lintegral_kernel_prod_left](../../../../../mathematics/Analysis/MeasureTheory/MeasurableIntegral/Variantb2885a4e6ed9ed0ac156f678673c61885e34065cafc4d8c625a31f9de71f1e68.lean/declarations/root-measurable-lintegral-kernel-prod-left--2547ca266e5d8d72b1eee8bb.md) | 215 | `result-track:2547ca266e5d8d72b1eee8bbb137629a8eca048c9e57240f049a0a4e7433e05f` |
| 12 | `theorem` | [_root_.Measurable.set_lintegral_kernel_prod_left](../../../../../mathematics/Analysis/MeasureTheory/MeasurableIntegral/Variantb2885a4e6ed9ed0ac156f678673c61885e34065cafc4d8c625a31f9de71f1e68.lean/declarations/root-measurable-set-lintegral-kernel-prod-left--6dd1e1bbdf0a0c63c8323685.md) | 220 | `result-track:6dd1e1bbdf0a0c63c832368504a451b43ef528648ca46561ea6be96fcf63b05e` |
| 13 | `theorem` | [_root_.Measurable.lintegral_kernel](../../../../../mathematics/Analysis/MeasureTheory/MeasurableIntegral/Variantb2885a4e6ed9ed0ac156f678673c61885e34065cafc4d8c625a31f9de71f1e68.lean/declarations/root-measurable-lintegral-kernel--dc066ffaa1ec882af9c83e85.md) | 226 | `result-track:dc066ffaa1ec882af9c83e853c2cb5ccd14daf8dde5497f9616fbaacc1e6153e` |
| 14 | `theorem` | [_root_.Measurable.set_lintegral_kernel](../../../../../mathematics/Analysis/MeasureTheory/MeasurableIntegral/Variantb2885a4e6ed9ed0ac156f678673c61885e34065cafc4d8c625a31f9de71f1e68.lean/declarations/root-measurable-set-lintegral-kernel--98d7ae8dd39b1d28490557c4.md) | 231 | `result-track:98d7ae8dd39b1d28490557c4bcb6a8fbf154106d6cc46f6a130e36bd41be3abc` |
| 15 | `theorem` | [measurableSet_kernel_integrable](../../../../../mathematics/Analysis/MeasureTheory/MeasurableIntegral/Variantb2885a4e6ed9ed0ac156f678673c61885e34065cafc4d8c625a31f9de71f1e68.lean/declarations/measurableset-kernel-integrable--9575db9d9543bb423cfd1401.md) | 242 | `result-track:9575db9d9543bb423cfd1401ea324a894abdf33a8fe397b4dbd5cc48b44a4804` |
| 16 | `theorem` | [StronglyMeasurable.integral_kernel_prod_right](../../../../../mathematics/Analysis/MeasureTheory/MeasurableIntegral/Variantb2885a4e6ed9ed0ac156f678673c61885e34065cafc4d8c625a31f9de71f1e68.lean/declarations/stronglymeasurable-integral-kernel-prod-right--90abbfd2905a01e66daccaa3.md) | 257 | `result-track:90abbfd2905a01e66daccaa35d0715cbc70d1ce883f3344158c08511cf0094f6` |
| 17 | `theorem` | [StronglyMeasurable.integral_kernel_prod_right'](../../../../../mathematics/Analysis/MeasureTheory/MeasurableIntegral/Variantb2885a4e6ed9ed0ac156f678673c61885e34065cafc4d8c625a31f9de71f1e68.lean/declarations/stronglymeasurable-integral-kernel-prod-right--fb4d2a5a1c71b12222d0b5d2.md) | 305 | `result-track:fb4d2a5a1c71b12222d0b5d2ca84f97e7196ef297c1323772747a9e9b893ce2d` |
| 18 | `theorem` | [StronglyMeasurable.integral_kernel_prod_right''](../../../../../mathematics/Analysis/MeasureTheory/MeasurableIntegral/Variantb2885a4e6ed9ed0ac156f678673c61885e34065cafc4d8c625a31f9de71f1e68.lean/declarations/stronglymeasurable-integral-kernel-prod-right--87f33839503d223f47d946f0.md) | 311 | `result-track:87f33839503d223f47d946f004fc6a87da33699396bd13997722f156d917699d` |
| 19 | `theorem` | [StronglyMeasurable.integral_kernel_prod_left](../../../../../mathematics/Analysis/MeasureTheory/MeasurableIntegral/Variantb2885a4e6ed9ed0ac156f678673c61885e34065cafc4d8c625a31f9de71f1e68.lean/declarations/stronglymeasurable-integral-kernel-prod-left--62d967b1441513fc5ae46d1f.md) | 325 | `result-track:62d967b1441513fc5ae46d1ffae1b2ff68e67ab528080795d7f95d040c725a65` |
| 20 | `theorem` | [StronglyMeasurable.integral_kernel_prod_left'](../../../../../mathematics/Analysis/MeasureTheory/MeasurableIntegral/Variantb2885a4e6ed9ed0ac156f678673c61885e34065cafc4d8c625a31f9de71f1e68.lean/declarations/stronglymeasurable-integral-kernel-prod-left--4e52d35d6eacd3df4f447de9.md) | 330 | `result-track:4e52d35d6eacd3df4f447de974ba9cfadd7909eb9236e8df014602c72af23652` |
| 21 | `theorem` | [StronglyMeasurable.integral_kernel_prod_left''](../../../../../mathematics/Analysis/MeasureTheory/MeasurableIntegral/Variantb2885a4e6ed9ed0ac156f678673c61885e34065cafc4d8c625a31f9de71f1e68.lean/declarations/stronglymeasurable-integral-kernel-prod-left--d593c281e3512501751d8d51.md) | 335 | `result-track:d593c281e3512501751d8d51b09d2c992cf796fbca91acdaf54def85722dfbfd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
