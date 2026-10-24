# Verification target: GRWTSK.Algebra.Commute.Variante034e483c49d84d1dc0bb2b6d229cd5f47bdde71c018d28627998037c084ceb3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "539802ac1e58cbcb6a99ef58f3c841ae3093c524",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Commute/Variante034e483c49d84d1dc0bb2b6d229cd5f47bdde71c018d28627998037c084ceb3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Commute/Variante034e483c49d84d1dc0bb2b6d229cd5f47bdde71c018d28627998037c084ceb3.lean/index.md) · [Full source](../../../../mathematics/Algebra/Commute/Variante034e483c49d84d1dc0bb2b6d229cd5f47bdde71c018d28627998037c084ceb3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `539802ac1e58cbcb6a99ef58f3c841ae3093c524`.

Source path: `GRWTSK/Algebra/Commute/Variante034e483c49d84d1dc0bb2b6d229cd5f47bdde71c018d28627998037c084ceb3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Commute/Variante034e483c49d84d1dc0bb2b6d229cd5f47bdde71c018d28627998037c084ceb3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Semiconj` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Units` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Commute` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [add_right](../../../../mathematics/Algebra/Commute/Variante034e483c49d84d1dc0bb2b6d229cd5f47bdde71c018d28627998037c084ceb3.lean/declarations/add-right--aa2e653d3319eaf5569015ce.md) | 34 | `result-track:aa2e653d3319eaf5569015cecc6c51fff3fbc3af1ea2b8fa1bb4e99125a2dd5c` |
| 2 | `theorem` | [add_left](../../../../mathematics/Algebra/Commute/Variante034e483c49d84d1dc0bb2b6d229cd5f47bdde71c018d28627998037c084ceb3.lean/declarations/add-left--10f116788a482e5f7ac05fdb.md) | 40 | `result-track:10f116788a482e5f7ac05fdb09547827bd710a43766215f6a599f910c5ef5c19` |
| 3 | `theorem` | [bit0_right](../../../../mathematics/Algebra/Commute/Variante034e483c49d84d1dc0bb2b6d229cd5f47bdde71c018d28627998037c084ceb3.lean/declarations/bit0-right--7af80e9a78317c531e6b5f7c.md) | 49 | `result-track:7af80e9a78317c531e6b5f7c7e1165cb5996a61863656b4b310ce02e100e3734` |
| 4 | `theorem` | [bit0_left](../../../../mathematics/Algebra/Commute/Variante034e483c49d84d1dc0bb2b6d229cd5f47bdde71c018d28627998037c084ceb3.lean/declarations/bit0-left--2d3c2834175997f59a7ef35f.md) | 54 | `result-track:2d3c2834175997f59a7ef35f06273dd9cc0d904723ee7034c64fef1f6b9c2d3d` |
| 5 | `theorem` | [bit1_right](../../../../mathematics/Algebra/Commute/Variante034e483c49d84d1dc0bb2b6d229cd5f47bdde71c018d28627998037c084ceb3.lean/declarations/bit1-right--065f24eed60868911f0536fd.md) | 59 | `result-track:065f24eed60868911f0536fd9b32f27f6d7bf6538a56df8f2debd84c9d242d4d` |
| 6 | `theorem` | [bit1_left](../../../../mathematics/Algebra/Commute/Variante034e483c49d84d1dc0bb2b6d229cd5f47bdde71c018d28627998037c084ceb3.lean/declarations/bit1-left--99e642ffaaf5c14a634091c6.md) | 64 | `result-track:99e642ffaaf5c14a634091c6a8d64b91fe9a3bf3040ef6c93bb27cc9cab105d1` |
| 7 | `theorem` | [mul_self_sub_mul_self_eq](../../../../mathematics/Algebra/Commute/Variante034e483c49d84d1dc0bb2b6d229cd5f47bdde71c018d28627998037c084ceb3.lean/declarations/mul-self-sub-mul-self-eq--2e8e482c16fb7c0346c47f28.md) | 71 | `result-track:2e8e482c16fb7c0346c47f282d381b9f54d1eee76eb8afbaaa5ff9fb90d4ce60` |
| 8 | `theorem` | [mul_self_sub_mul_self_eq'](../../../../mathematics/Algebra/Commute/Variante034e483c49d84d1dc0bb2b6d229cd5f47bdde71c018d28627998037c084ceb3.lean/declarations/mul-self-sub-mul-self-eq--78655b030544a6a8416f723d.md) | 76 | `result-track:78655b030544a6a8416f723dae0ebb2e972692a60d8e5ec00dd562cdbd931a31` |
| 9 | `theorem` | [mul_self_eq_mul_self_iff](../../../../mathematics/Algebra/Commute/Variante034e483c49d84d1dc0bb2b6d229cd5f47bdde71c018d28627998037c084ceb3.lean/declarations/mul-self-eq-mul-self-iff--e56d963332e5cc925c7f48f4.md) | 81 | `result-track:e56d963332e5cc925c7f48f400e34d0788c70e0c548cc273d84bc6d76c75fdf5` |
| 10 | `theorem` | [neg_right](../../../../mathematics/Algebra/Commute/Variante034e483c49d84d1dc0bb2b6d229cd5f47bdde71c018d28627998037c084ceb3.lean/declarations/neg-right--dabca26e9b58eb90db8a20c9.md) | 91 | `result-track:dabca26e9b58eb90db8a20c9ca4c838ad8ded89a7125f86a4ea064058388c201` |
| 11 | `theorem` | [neg_right_iff](../../../../mathematics/Algebra/Commute/Variante034e483c49d84d1dc0bb2b6d229cd5f47bdde71c018d28627998037c084ceb3.lean/declarations/neg-right-iff--29b43db26b969960a8201dc7.md) | 96 | `result-track:29b43db26b969960a8201dc7fea9825afe2c0038b598514f798e9c70b18a1b9b` |
| 12 | `theorem` | [neg_left](../../../../mathematics/Algebra/Commute/Variante034e483c49d84d1dc0bb2b6d229cd5f47bdde71c018d28627998037c084ceb3.lean/declarations/neg-left--c8cb3070c67913c78553a67b.md) | 100 | `result-track:c8cb3070c67913c78553a67be00da9ed236412ed62d415cb6a1c33d6236c339c` |
| 13 | `theorem` | [neg_left_iff](../../../../mathematics/Algebra/Commute/Variante034e483c49d84d1dc0bb2b6d229cd5f47bdde71c018d28627998037c084ceb3.lean/declarations/neg-left-iff--2afd24f72cdf284c1195b75f.md) | 105 | `result-track:2afd24f72cdf284c1195b75fe7d9693f514a8b32d921aaf3e1e0b7084cc1f105` |
| 14 | `theorem` | [neg_one_right](../../../../mathematics/Algebra/Commute/Variante034e483c49d84d1dc0bb2b6d229cd5f47bdde71c018d28627998037c084ceb3.lean/declarations/neg-one-right--dd5daea3efe435180832b822.md) | 117 | `result-track:dd5daea3efe435180832b822646f36ca417925ed83a6eac0a161c35013b30884` |
| 15 | `theorem` | [neg_one_left](../../../../mathematics/Algebra/Commute/Variante034e483c49d84d1dc0bb2b6d229cd5f47bdde71c018d28627998037c084ceb3.lean/declarations/neg-one-left--0fb41ac7c8931127de5280e4.md) | 123 | `result-track:0fb41ac7c8931127de5280e4076045823bccb2e32576ac4b2b0fd86b40d748fa` |
| 16 | `theorem` | [sub_right](../../../../mathematics/Algebra/Commute/Variante034e483c49d84d1dc0bb2b6d229cd5f47bdde71c018d28627998037c084ceb3.lean/declarations/sub-right--cb99a0b26dc84ed49df1d7d3.md) | 134 | `result-track:cb99a0b26dc84ed49df1d7d3e4b8b349ba0274ea3121f43f4772a46181b15d1d` |
| 17 | `theorem` | [sub_left](../../../../mathematics/Algebra/Commute/Variante034e483c49d84d1dc0bb2b6d229cd5f47bdde71c018d28627998037c084ceb3.lean/declarations/sub-left--462834699f8f618be475909e.md) | 139 | `result-track:462834699f8f618be475909e72817854c1c3b99cc0409114d779d46b408f3e0c` |
| 18 | `theorem` | [mul_self_sub_mul_self](../../../../mathematics/Algebra/Commute/Variante034e483c49d84d1dc0bb2b6d229cd5f47bdde71c018d28627998037c084ceb3.lean/declarations/mul-self-sub-mul-self--a6bd27b693221024110ccb75.md) | 148 | `result-track:a6bd27b693221024110ccb75b9d0335cc3f2f8f6a1cb5112febfabbe635644f6` |
| 19 | `theorem` | [mul_self_sub_one](../../../../mathematics/Algebra/Commute/Variante034e483c49d84d1dc0bb2b6d229cd5f47bdde71c018d28627998037c084ceb3.lean/declarations/mul-self-sub-one--ec715137d8fcf5fd823319bb.md) | 152 | `result-track:ec715137d8fcf5fd823319bb4e8b136d6f22c45f261350b6a42e341259dff490` |
| 20 | `theorem` | [mul_self_eq_mul_self_iff](../../../../mathematics/Algebra/Commute/Variante034e483c49d84d1dc0bb2b6d229cd5f47bdde71c018d28627998037c084ceb3.lean/declarations/mul-self-eq-mul-self-iff--cc66de1657dd98a3b50cd488.md) | 156 | `result-track:cc66de1657dd98a3b50cd488dc4dbd1589603edb64191da555010600e096690a` |
| 21 | `theorem` | [mul_self_eq_one_iff](../../../../mathematics/Algebra/Commute/Variante034e483c49d84d1dc0bb2b6d229cd5f47bdde71c018d28627998037c084ceb3.lean/declarations/mul-self-eq-one-iff--7fee3330a09198edd04b7c55.md) | 161 | `result-track:7fee3330a09198edd04b7c5532b9717f223afacebe077c28e49b99af44e4879c` |
| 22 | `theorem` | [inv_eq_self_iff](../../../../mathematics/Algebra/Commute/Variante034e483c49d84d1dc0bb2b6d229cd5f47bdde71c018d28627998037c084ceb3.lean/declarations/inv-eq-self-iff--61b0b681445b93862751a9ad.md) | 170 | `result-track:61b0b681445b93862751a9adf268585b310578cf2794e0727533a8d29a37b8a1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
