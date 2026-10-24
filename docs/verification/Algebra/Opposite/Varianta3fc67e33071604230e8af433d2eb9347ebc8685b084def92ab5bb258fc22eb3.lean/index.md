# Verification target: GRWTSK.Algebra.Opposite.Varianta3fc67e33071604230e8af433d2eb9347ebc8685b084def92ab5bb258fc22eb3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8c09e4b55cb1851bf74dd59e6a5d818ebd631928",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Opposite/Varianta3fc67e33071604230e8af433d2eb9347ebc8685b084def92ab5bb258fc22eb3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Opposite/Varianta3fc67e33071604230e8af433d2eb9347ebc8685b084def92ab5bb258fc22eb3.lean/index.md) · [Full source](../../../../mathematics/Algebra/Opposite/Varianta3fc67e33071604230e8af433d2eb9347ebc8685b084def92ab5bb258fc22eb3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8c09e4b55cb1851bf74dd59e6a5d818ebd631928`.

Source path: `GRWTSK/Algebra/Opposite/Varianta3fc67e33071604230e8af433d2eb9347ebc8685b084def92ab5bb258fc22eb3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Opposite/Varianta3fc67e33071604230e8af433d2eb9347ebc8685b084def92ab5bb258fc22eb3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Equiv.Opposite` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Opposite` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Hom.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instDistrib](../../../../mathematics/Algebra/Opposite/Varianta3fc67e33071604230e8af433d2eb9347ebc8685b084def92ab5bb258fc22eb3.lean/declarations/instdistrib--7f1cc20a6e19da32ebd176f4.md) | 26 | `declaration-track:7f1cc20a6e19da32ebd176f4bbf8c234e00491ec2890d2eaf078fb9145ee3271` |
| 2 | `instance` | [instNonUnitalNonAssocSemiring](../../../../mathematics/Algebra/Opposite/Varianta3fc67e33071604230e8af433d2eb9347ebc8685b084def92ab5bb258fc22eb3.lean/declarations/instnonunitalnonassocsemiring--ebf99f5ae80fdb5c332c9a2a.md) | 30 | `declaration-track:ebf99f5ae80fdb5c332c9a2a319262ffb6425ec9a5f5267fdf5d4f58f04a2db9` |
| 3 | `instance` | [instNonUnitalSemiring](../../../../mathematics/Algebra/Opposite/Varianta3fc67e33071604230e8af433d2eb9347ebc8685b084def92ab5bb258fc22eb3.lean/declarations/instnonunitalsemiring--e5a6947015a8961f58bdcf56.md) | 36 | `declaration-track:e5a6947015a8961f58bdcf5638c3a0190806546640cfc0cc292fd317c132af10` |
| 4 | `instance` | [instNonAssocSemiring](../../../../mathematics/Algebra/Opposite/Varianta3fc67e33071604230e8af433d2eb9347ebc8685b084def92ab5bb258fc22eb3.lean/declarations/instnonassocsemiring--70d8ebfdf2e2ad2ebe1d1ebc.md) | 40 | `declaration-track:70d8ebfdf2e2ad2ebe1d1ebc5a196bdd356082dcf8e1f26f9ca150a8b541441e` |
| 5 | `instance` | [instSemiring](../../../../mathematics/Algebra/Opposite/Varianta3fc67e33071604230e8af433d2eb9347ebc8685b084def92ab5bb258fc22eb3.lean/declarations/instsemiring--502d1c56db90eb22510f07a3.md) | 45 | `declaration-track:502d1c56db90eb22510f07a3c2fa053f3d9a4ed8989f761b81c7b39444ec8d03` |
| 6 | `instance` | [instNonUnitalCommSemiring](../../../../mathematics/Algebra/Opposite/Varianta3fc67e33071604230e8af433d2eb9347ebc8685b084def92ab5bb258fc22eb3.lean/declarations/instnonunitalcommsemiring--ae0d1b99914921a7a9d8a79b.md) | 50 | `declaration-track:ae0d1b99914921a7a9d8a79b5c19549828e774f34391705c4dd990ab58647625` |
| 7 | `instance` | [instCommSemiring](../../../../mathematics/Algebra/Opposite/Varianta3fc67e33071604230e8af433d2eb9347ebc8685b084def92ab5bb258fc22eb3.lean/declarations/instcommsemiring--288f4dccc4ad29a06ef74031.md) | 54 | `declaration-track:288f4dccc4ad29a06ef74031be528f234c8eb11a65548e0656e9ed0471444c06` |
| 8 | `instance` | [instNonUnitalNonAssocRing](../../../../mathematics/Algebra/Opposite/Varianta3fc67e33071604230e8af433d2eb9347ebc8685b084def92ab5bb258fc22eb3.lean/declarations/instnonunitalnonassocring--8ccf45402bc0d70ba38be1de.md) | 58 | `declaration-track:8ccf45402bc0d70ba38be1de2bc684dcb2716a1548206fc6579ac29cb4af3f71` |
| 9 | `instance` | [instNonUnitalRing](../../../../mathematics/Algebra/Opposite/Varianta3fc67e33071604230e8af433d2eb9347ebc8685b084def92ab5bb258fc22eb3.lean/declarations/instnonunitalring--c16ba6d87fe4c7da7016ecfc.md) | 62 | `declaration-track:c16ba6d87fe4c7da7016ecfca84b3a03c73f6456b8ecbe073d8e0c543765241f` |
| 10 | `instance` | [instNonAssocRing](../../../../mathematics/Algebra/Opposite/Varianta3fc67e33071604230e8af433d2eb9347ebc8685b084def92ab5bb258fc22eb3.lean/declarations/instnonassocring--66cf51de7be0685146bec260.md) | 66 | `declaration-track:66cf51de7be0685146bec260ad22c7370fe5f92a98a2d417034dd6a40b8e0a9c` |
| 11 | `instance` | [instRing](../../../../mathematics/Algebra/Opposite/Varianta3fc67e33071604230e8af433d2eb9347ebc8685b084def92ab5bb258fc22eb3.lean/declarations/instring--4391fa84a739cc51dd4c0536.md) | 71 | `declaration-track:4391fa84a739cc51dd4c0536b0638186ee54e09571ac2967afa9aa1fb064ee2e` |
| 12 | `instance` | [instNonUnitalCommRing](../../../../mathematics/Algebra/Opposite/Varianta3fc67e33071604230e8af433d2eb9347ebc8685b084def92ab5bb258fc22eb3.lean/declarations/instnonunitalcommring--8576e3507b291f36f854ad7d.md) | 75 | `declaration-track:8576e3507b291f36f854ad7de0c2d22fca6648803ecd6b5724914590ec3d7ef7` |
| 13 | `instance` | [instCommRing](../../../../mathematics/Algebra/Opposite/Varianta3fc67e33071604230e8af433d2eb9347ebc8685b084def92ab5bb258fc22eb3.lean/declarations/instcommring--a551fc7ec8e4327502b51ffd.md) | 79 | `declaration-track:a551fc7ec8e4327502b51ffd88396b12f067064bec95f78909fd55624ca30372` |
| 14 | `instance` | [instIsDomain](../../../../mathematics/Algebra/Opposite/Varianta3fc67e33071604230e8af433d2eb9347ebc8685b084def92ab5bb258fc22eb3.lean/declarations/instisdomain--db6c7b891eb8da29ba17419f.md) | 83 | `declaration-track:db6c7b891eb8da29ba17419fa13576aa8034b5d1eaa300b83597e16828210ad4` |
| 15 | `instance` | [instDistrib](../../../../mathematics/Algebra/Opposite/Varianta3fc67e33071604230e8af433d2eb9347ebc8685b084def92ab5bb258fc22eb3.lean/declarations/instdistrib--30a479f90c052c237006ee68.md) | 90 | `declaration-track:30a479f90c052c237006ee68a84bf8c5329bbdb8f407d38a6a1f0736e1dc1220` |
| 16 | `instance` | [instNonUnitalNonAssocSemiring](../../../../mathematics/Algebra/Opposite/Varianta3fc67e33071604230e8af433d2eb9347ebc8685b084def92ab5bb258fc22eb3.lean/declarations/instnonunitalnonassocsemiring--61d90db899dd03f59c860416.md) | 94 | `declaration-track:61d90db899dd03f59c8604162bd2843603a7fde111939e6051706010785bfc85` |
| 17 | `instance` | [instNonUnitalSemiring](../../../../mathematics/Algebra/Opposite/Varianta3fc67e33071604230e8af433d2eb9347ebc8685b084def92ab5bb258fc22eb3.lean/declarations/instnonunitalsemiring--f5a4dc0adb76668b1e3bf563.md) | 100 | `declaration-track:f5a4dc0adb76668b1e3bf5630dd907b9a48123a4e61eb801ed93f557b6a5c0b6` |
| 18 | `instance` | [instNonAssocSemiring](../../../../mathematics/Algebra/Opposite/Varianta3fc67e33071604230e8af433d2eb9347ebc8685b084def92ab5bb258fc22eb3.lean/declarations/instnonassocsemiring--4397bc2b7ea3062855c60dbb.md) | 104 | `declaration-track:4397bc2b7ea3062855c60dbb4fb227db44c7024537e66e614254717f00b92f5f` |
| 19 | `instance` | [instSemiring](../../../../mathematics/Algebra/Opposite/Varianta3fc67e33071604230e8af433d2eb9347ebc8685b084def92ab5bb258fc22eb3.lean/declarations/instsemiring--80206a02c72c2a0d6074c876.md) | 109 | `declaration-track:80206a02c72c2a0d6074c8768e4ec48abaf6c5f20d82836ead9c255bc6bb7b11` |
| 20 | `instance` | [instNonUnitalCommSemiring](../../../../mathematics/Algebra/Opposite/Varianta3fc67e33071604230e8af433d2eb9347ebc8685b084def92ab5bb258fc22eb3.lean/declarations/instnonunitalcommsemiring--5bb6378fcfa625b6f9861062.md) | 114 | `declaration-track:5bb6378fcfa625b6f9861062abb2cba29b767f063e1128e218d56173dadd5ca4` |
| 21 | `instance` | [instCommSemiring](../../../../mathematics/Algebra/Opposite/Varianta3fc67e33071604230e8af433d2eb9347ebc8685b084def92ab5bb258fc22eb3.lean/declarations/instcommsemiring--2cbd718133faa849ea720903.md) | 118 | `declaration-track:2cbd718133faa849ea720903b0e6ab285ec79b702007f3b11105a2df1696bcda` |
| 22 | `instance` | [instNonUnitalNonAssocRing](../../../../mathematics/Algebra/Opposite/Varianta3fc67e33071604230e8af433d2eb9347ebc8685b084def92ab5bb258fc22eb3.lean/declarations/instnonunitalnonassocring--dc5af0f4c6314919359d0dc7.md) | 122 | `declaration-track:dc5af0f4c6314919359d0dc755a323ac59ef06e6b36fefa1813d3d8a5e1b7660` |
| 23 | `instance` | [instNonUnitalRing](../../../../mathematics/Algebra/Opposite/Varianta3fc67e33071604230e8af433d2eb9347ebc8685b084def92ab5bb258fc22eb3.lean/declarations/instnonunitalring--41519e892958007a4ff1b2df.md) | 126 | `declaration-track:41519e892958007a4ff1b2df71e19c791bdb4b5af75f9fa122b21959ead72b69` |
| 24 | `instance` | [instNonAssocRing](../../../../mathematics/Algebra/Opposite/Varianta3fc67e33071604230e8af433d2eb9347ebc8685b084def92ab5bb258fc22eb3.lean/declarations/instnonassocring--a9d0c414dea2a9012e789173.md) | 130 | `declaration-track:a9d0c414dea2a9012e7891738c75012bcc125fdf3d3550e4ff3b7ee0bd03a470` |
| 25 | `instance` | [instRing](../../../../mathematics/Algebra/Opposite/Varianta3fc67e33071604230e8af433d2eb9347ebc8685b084def92ab5bb258fc22eb3.lean/declarations/instring--7e42c7cf153b33313d262117.md) | 135 | `declaration-track:7e42c7cf153b33313d26211777cdeac8fc8c06e8e0af1b5d04ef9f77df227a1f` |
| 26 | `instance` | [instNonUnitalCommRing](../../../../mathematics/Algebra/Opposite/Varianta3fc67e33071604230e8af433d2eb9347ebc8685b084def92ab5bb258fc22eb3.lean/declarations/instnonunitalcommring--bf0f3e9a4a9adf7e5e69a646.md) | 139 | `declaration-track:bf0f3e9a4a9adf7e5e69a646ff31fdc5fe8df5fc46429375e4341f26b3a02293` |
| 27 | `instance` | [instCommRing](../../../../mathematics/Algebra/Opposite/Varianta3fc67e33071604230e8af433d2eb9347ebc8685b084def92ab5bb258fc22eb3.lean/declarations/instcommring--8c2745d3b64f11851c04dae8.md) | 143 | `declaration-track:8c2745d3b64f11851c04dae8ebf089535f8f3658d593782f236526ac4a456ff0` |
| 28 | `instance` | [instIsDomain](../../../../mathematics/Algebra/Opposite/Varianta3fc67e33071604230e8af433d2eb9347ebc8685b084def92ab5bb258fc22eb3.lean/declarations/instisdomain--57f08c26242c7cc9636d6892.md) | 147 | `declaration-track:57f08c26242c7cc9636d6892015c9666869285b9c449663d74398b7e1983c0f9` |
| 29 | `def` | [NonUnitalRingHom.toOpposite](../../../../mathematics/Algebra/Opposite/Varianta3fc67e33071604230e8af433d2eb9347ebc8685b084def92ab5bb258fc22eb3.lean/declarations/nonunitalringhom-toopposite--d4c18b9a764941d8635a7246.md) | 157 | `declaration-track:d4c18b9a764941d8635a72466e5aada701a51de5f5c9b4654780b5af2045e0ac` |
| 30 | `def` | [NonUnitalRingHom.fromOpposite](../../../../mathematics/Algebra/Opposite/Varianta3fc67e33071604230e8af433d2eb9347ebc8685b084def92ab5bb258fc22eb3.lean/declarations/nonunitalringhom-fromopposite--83c2bd3248adca1dda7ef60a.md) | 165 | `declaration-track:83c2bd3248adca1dda7ef60a005d17c7743bd87c43e692be918bc82d49e3913a` |
| 31 | `def` | [NonUnitalRingHom.op](../../../../mathematics/Algebra/Opposite/Varianta3fc67e33071604230e8af433d2eb9347ebc8685b084def92ab5bb258fc22eb3.lean/declarations/nonunitalringhom-op--009024c570fd68dc830ac2ef.md) | 173 | `declaration-track:009024c570fd68dc830ac2ef9c1271c99b12b283f05539953fab3c89d537475a` |
| 32 | `def` | [NonUnitalRingHom.unop](../../../../mathematics/Algebra/Opposite/Varianta3fc67e33071604230e8af433d2eb9347ebc8685b084def92ab5bb258fc22eb3.lean/declarations/nonunitalringhom-unop--a1a59886f88222243a3ec381.md) | 183 | `declaration-track:a1a59886f88222243a3ec3814d46ad870ba8caeb4288b3368a515767fb5a2df4` |
| 33 | `def` | [RingHom.toOpposite](../../../../mathematics/Algebra/Opposite/Varianta3fc67e33071604230e8af433d2eb9347ebc8685b084def92ab5bb258fc22eb3.lean/declarations/ringhom-toopposite--cfccc03a2b5945643551896d.md) | 190 | `declaration-track:cfccc03a2b5945643551896d3164cb59e47c2b5b242919f7180d64cca7f999ef` |
| 34 | `def` | [RingHom.fromOpposite](../../../../mathematics/Algebra/Opposite/Varianta3fc67e33071604230e8af433d2eb9347ebc8685b084def92ab5bb258fc22eb3.lean/declarations/ringhom-fromopposite--d3911ae2ccc88bed713fb00d.md) | 198 | `declaration-track:d3911ae2ccc88bed713fb00db06f5a06c198f18488715c7a3bccb68222bc5053` |
| 35 | `def` | [RingHom.op](../../../../mathematics/Algebra/Opposite/Varianta3fc67e33071604230e8af433d2eb9347ebc8685b084def92ab5bb258fc22eb3.lean/declarations/ringhom-op--7ea9374ac3f2d04544a79f46.md) | 206 | `declaration-track:7ea9374ac3f2d04544a79f462998056fdfb2112bff282c0039399bdeb9cdec2d` |
| 36 | `def` | [RingHom.unop](../../../../mathematics/Algebra/Opposite/Varianta3fc67e33071604230e8af433d2eb9347ebc8685b084def92ab5bb258fc22eb3.lean/declarations/ringhom-unop--289e3dda10675b6491f5f557.md) | 215 | `declaration-track:289e3dda10675b6491f5f5571907860d99a4d0c4f0e9cc607aaac901cf725126` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
