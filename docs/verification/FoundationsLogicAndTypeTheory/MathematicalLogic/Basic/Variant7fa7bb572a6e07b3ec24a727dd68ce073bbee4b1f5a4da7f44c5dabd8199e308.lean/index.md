# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Basic.Variant7fa7bb572a6e07b3ec24a727dd68ce073bbee4b1f5a4da7f44c5dabd8199e308

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7967a15c20894d1bed1868b33f41d0f53590eb11",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant7fa7bb572a6e07b3ec24a727dd68ce073bbee4b1f5a4da7f44c5dabd8199e308.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant7fa7bb572a6e07b3ec24a727dd68ce073bbee4b1f5a4da7f44c5dabd8199e308.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant7fa7bb572a6e07b3ec24a727dd68ce073bbee4b1f5a4da7f44c5dabd8199e308.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7967a15c20894d1bed1868b33f41d0f53590eb11`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant7fa7bb572a6e07b3ec24a727dd68ce073bbee4b1f5a4da7f44c5dabd8199e308.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant7fa7bb572a6e07b3ec24a727dd68ce073bbee4b1f5a4da7f44c5dabd8199e308.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Commute.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Units.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Unbundled.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NthRewrite` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsLeftRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant7fa7bb572a6e07b3ec24a727dd68ce073bbee4b1f5a4da7f44c5dabd8199e308.lean/declarations/isleftregular--7bdaf98d91aaa743109c46be.md) | 41 | `declaration-track:7bdaf98d91aaa743109c46be084561c79202bcfcfcfd661840f35d9739de0398` |
| 2 | `def` | [IsRightRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant7fa7bb572a6e07b3ec24a727dd68ce073bbee4b1f5a4da7f44c5dabd8199e308.lean/declarations/isrightregular--b4e5f95e32417f9eeebc1fb2.md) | 48 | `declaration-track:b4e5f95e32417f9eeebc1fb2a2aaa748668dcb9a63273010d905cc01e5f14427` |
| 3 | `structure` | [IsAddRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant7fa7bb572a6e07b3ec24a727dd68ce073bbee4b1f5a4da7f44c5dabd8199e308.lean/declarations/isaddregular--d8d2d6247f76b89e71a2bdaa.md) | 53 | `declaration-track:d8d2d6247f76b89e71a2bdaacb7c209d84ad68a83747b8fedfe02696613d2084` |
| 4 | `structure` | [IsRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant7fa7bb572a6e07b3ec24a727dd68ce073bbee4b1f5a4da7f44c5dabd8199e308.lean/declarations/isregular--9423eb9807c5cef274e05894.md) | 61 | `declaration-track:9423eb9807c5cef274e058947697b6d4f67bf2bdf4aeceb89cd78381555c72f0` |
| 5 | `theorem` | [isRegular_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant7fa7bb572a6e07b3ec24a727dd68ce073bbee4b1f5a4da7f44c5dabd8199e308.lean/declarations/isregular-iff--05410a9e1c3ba9f255aebf1a.md) | 72 | `result-track:05410a9e1c3ba9f255aebf1a799fb4870e01f642c9c79d5e1959cf11614e1916` |
| 6 | `theorem` | [MulLECancellable.isLeftRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant7fa7bb572a6e07b3ec24a727dd68ce073bbee4b1f5a4da7f44c5dabd8199e308.lean/declarations/mullecancellable-isleftregular--c575c54f3e5833b6430fa75a.md) | 76 | `result-track:c575c54f3e5833b6430fa75a39e1567ecae5f94af52b0021506ff132319c1304` |
| 7 | `theorem` | [IsLeftRegular.right_of_commute](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant7fa7bb572a6e07b3ec24a727dd68ce073bbee4b1f5a4da7f44c5dabd8199e308.lean/declarations/isleftregular-right-of-commute--0664ff12b7c3992f93588565.md) | 80 | `result-track:0664ff12b7c3992f93588565f6081cf89844cff9de6d786482904a349626b50a` |
| 8 | `theorem` | [IsRightRegular.left_of_commute](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant7fa7bb572a6e07b3ec24a727dd68ce073bbee4b1f5a4da7f44c5dabd8199e308.lean/declarations/isrightregular-left-of-commute--7655a92dd65e02311351b6c9.md) | 84 | `result-track:7655a92dd65e02311351b6c9271cfe8e2455651fe3aecbba719f47d7702bb6e2` |
| 9 | `theorem` | [Commute.isRightRegular_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant7fa7bb572a6e07b3ec24a727dd68ce073bbee4b1f5a4da7f44c5dabd8199e308.lean/declarations/commute-isrightregular-iff--d8d40569ca4405db7e2e6b97.md) | 89 | `result-track:d8d40569ca4405db7e2e6b97fc111916fc75e6a1a306491a85cf38281b947ae6` |
| 10 | `theorem` | [Commute.isRegular_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant7fa7bb572a6e07b3ec24a727dd68ce073bbee4b1f5a4da7f44c5dabd8199e308.lean/declarations/commute-isregular-iff--b4f081359701c74cb20692e6.md) | 93 | `result-track:b4f081359701c74cb20692e644e1042b13b5151042dcf3d8c2eb010a1497b407` |
| 11 | `theorem` | [IsLeftRegular.mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant7fa7bb572a6e07b3ec24a727dd68ce073bbee4b1f5a4da7f44c5dabd8199e308.lean/declarations/isleftregular-mul--1f082159bde127cefd706627.md) | 104 | `result-track:1f082159bde127cefd706627b069584b824b8a2cbccfcb771ce29b4259bca4e0` |
| 12 | `theorem` | [IsRightRegular.mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant7fa7bb572a6e07b3ec24a727dd68ce073bbee4b1f5a4da7f44c5dabd8199e308.lean/declarations/isrightregular-mul--95c67e6113dfa26d28edea34.md) | 110 | `result-track:95c67e6113dfa26d28edea34b1fcfb306a527fa09247927b530370fd2c2ca965` |
| 13 | `theorem` | [IsRegular.mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant7fa7bb572a6e07b3ec24a727dd68ce073bbee4b1f5a4da7f44c5dabd8199e308.lean/declarations/isregular-mul--1972dd2ed460f62ad856cfeb.md) | 116 | `result-track:1972dd2ed460f62ad856cfebb4c501fe562c20ff81852ab8d9afe37e03af8526` |
| 14 | `theorem` | [IsLeftRegular.of_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant7fa7bb572a6e07b3ec24a727dd68ce073bbee4b1f5a4da7f44c5dabd8199e308.lean/declarations/isleftregular-of-mul--70cf4d2e703ac96ba2f76ae0.md) | 124 | `result-track:70cf4d2e703ac96ba2f76ae0272335ad78a4247d54ffedcab3c3c34453009656` |
| 15 | `theorem` | [mul_isLeftRegular_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant7fa7bb572a6e07b3ec24a727dd68ce073bbee4b1f5a4da7f44c5dabd8199e308.lean/declarations/mul-isleftregular-iff--64e252c52d138ceb623ad4ec.md) | 131 | `result-track:64e252c52d138ceb623ad4ecdbe9635dbc9d4a56d2e5e39e2a3fa168c52acd2e` |
| 16 | `theorem` | [IsRightRegular.of_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant7fa7bb572a6e07b3ec24a727dd68ce073bbee4b1f5a4da7f44c5dabd8199e308.lean/declarations/isrightregular-of-mul--0d65de22284d93018a7da776.md) | 139 | `result-track:0d65de22284d93018a7da776bfbaa049009d29e712494818926b630f8817984e` |
| 17 | `theorem` | [mul_isRightRegular_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant7fa7bb572a6e07b3ec24a727dd68ce073bbee4b1f5a4da7f44c5dabd8199e308.lean/declarations/mul-isrightregular-iff--ec9ac08731f254885d1c639f.md) | 149 | `result-track:ec9ac08731f254885d1c639fe7c9ebdf0913556db8edb023ac9304c4240f4ff8` |
| 18 | `theorem` | [isRegular_mul_and_mul_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant7fa7bb572a6e07b3ec24a727dd68ce073bbee4b1f5a4da7f44c5dabd8199e308.lean/declarations/isregular-mul-and-mul-iff--f631abaaec4755a158d0c82e.md) | 157 | `result-track:f631abaaec4755a158d0c82ea5b1cf6f8ddd4354af7149bb6fd877f89beed43d` |
| 19 | `theorem` | [IsRegular.and_of_mul_of_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant7fa7bb572a6e07b3ec24a727dd68ce073bbee4b1f5a4da7f44c5dabd8199e308.lean/declarations/isregular-and-of-mul-of-mul--44f2704676993629ceffd811.md) | 170 | `result-track:44f2704676993629ceffd811854f351f0835e436a8a09998afd1727d975fbf9e` |
| 20 | `theorem` | [IsLeftRegular.subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant7fa7bb572a6e07b3ec24a727dd68ce073bbee4b1f5a4da7f44c5dabd8199e308.lean/declarations/isleftregular-subsingleton--3577741fd411744213f03e26.md) | 181 | `result-track:3577741fd411744213f03e26c6841f07cd5a848ab53c845b92af589979073de4` |
| 21 | `theorem` | [IsRightRegular.subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant7fa7bb572a6e07b3ec24a727dd68ce073bbee4b1f5a4da7f44c5dabd8199e308.lean/declarations/isrightregular-subsingleton--a48d26edf8babadb0c9acf8e.md) | 185 | `result-track:a48d26edf8babadb0c9acf8e7b618f2282a09447c35e5211731fc00d61cca2bd` |
| 22 | `theorem` | [IsRegular.subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant7fa7bb572a6e07b3ec24a727dd68ce073bbee4b1f5a4da7f44c5dabd8199e308.lean/declarations/isregular-subsingleton--b89f8ffe01b7e9c441afaaec.md) | 189 | `result-track:b89f8ffe01b7e9c441afaaecbda7c3a4ed186969e98cc97a1491030f1c736ca5` |
| 23 | `theorem` | [isLeftRegular_zero_iff_subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant7fa7bb572a6e07b3ec24a727dd68ce073bbee4b1f5a4da7f44c5dabd8199e308.lean/declarations/isleftregular-zero-iff-subsingleton--71fa1bbe3790107f9ada9799.md) | 193 | `result-track:71fa1bbe3790107f9ada979991a53cf16c8409617a712aef7525bb5b5c62ca52` |
| 24 | `theorem` | [not_isLeftRegular_zero_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant7fa7bb572a6e07b3ec24a727dd68ce073bbee4b1f5a4da7f44c5dabd8199e308.lean/declarations/not-isleftregular-zero-iff--7091a05fc46b86e28145310e.md) | 197 | `result-track:7091a05fc46b86e28145310e0b9282195ff9c8132f983de1ab77787bf6baca00` |
| 25 | `theorem` | [isRightRegular_zero_iff_subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant7fa7bb572a6e07b3ec24a727dd68ce073bbee4b1f5a4da7f44c5dabd8199e308.lean/declarations/isrightregular-zero-iff-subsingleton--c86974bc7553f0181dcfa83f.md) | 203 | `result-track:c86974bc7553f0181dcfa83fa2df0898154889411df43db572ab5db4030caff9` |
| 26 | `theorem` | [not_isRightRegular_zero_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant7fa7bb572a6e07b3ec24a727dd68ce073bbee4b1f5a4da7f44c5dabd8199e308.lean/declarations/not-isrightregular-zero-iff--9461fcfe9c67ea5006f06557.md) | 207 | `result-track:9461fcfe9c67ea5006f06557162dfe9d7d233b16cede682b0c2a5ef6c6f8185e` |
| 27 | `theorem` | [isRegular_iff_subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant7fa7bb572a6e07b3ec24a727dd68ce073bbee4b1f5a4da7f44c5dabd8199e308.lean/declarations/isregular-iff-subsingleton--f49b30f220dda5cbda0eaf69.md) | 213 | `result-track:f49b30f220dda5cbda0eaf6969c46ae4e00f3a9547e877e8a0204daf22f51f49` |
| 28 | `theorem` | [IsLeftRegular.ne_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant7fa7bb572a6e07b3ec24a727dd68ce073bbee4b1f5a4da7f44c5dabd8199e308.lean/declarations/isleftregular-ne-zero--1f67857f535becfa0420018a.md) | 218 | `result-track:1f67857f535becfa0420018a1532752818a3171a7f538733c87f2be0b3d371de` |
| 29 | `theorem` | [IsRightRegular.ne_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant7fa7bb572a6e07b3ec24a727dd68ce073bbee4b1f5a4da7f44c5dabd8199e308.lean/declarations/isrightregular-ne-zero--e65959665688fccf93fce86f.md) | 225 | `result-track:e65959665688fccf93fce86fe12ebcc92ab8d045e23c92c2be83f1278d38f2d5` |
| 30 | `theorem` | [IsRegular.ne_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant7fa7bb572a6e07b3ec24a727dd68ce073bbee4b1f5a4da7f44c5dabd8199e308.lean/declarations/isregular-ne-zero--6fc373924044c36d5586a4db.md) | 232 | `result-track:6fc373924044c36d5586a4dbb21cb057f1ffc1598b4209286579c287aef2f8c3` |
| 31 | `theorem` | [not_isLeftRegular_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant7fa7bb572a6e07b3ec24a727dd68ce073bbee4b1f5a4da7f44c5dabd8199e308.lean/declarations/not-isleftregular-zero--d4a375fcb0a49c981b14996e.md) | 236 | `result-track:d4a375fcb0a49c981b14996eb8ee3fe530aa9b6e43918ce679b8b3c9dd5e0bff` |
| 32 | `theorem` | [not_isRightRegular_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant7fa7bb572a6e07b3ec24a727dd68ce073bbee4b1f5a4da7f44c5dabd8199e308.lean/declarations/not-isrightregular-zero--4274730af1c5480ad45f56d9.md) | 240 | `result-track:4274730af1c5480ad45f56d9dd4b017a7b0273ac327ddceccef22cc900a2af68` |
| 33 | `theorem` | [not_isRegular_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant7fa7bb572a6e07b3ec24a727dd68ce073bbee4b1f5a4da7f44c5dabd8199e308.lean/declarations/not-isregular-zero--17553c9b23cacf25db1324d0.md) | 244 | `result-track:17553c9b23cacf25db1324d0b96d6d4fa648b96950d2e21953988e1fe9b3b44e` |
| 34 | `lemma` | [IsLeftRegular.mul_left_eq_zero_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant7fa7bb572a6e07b3ec24a727dd68ce073bbee4b1f5a4da7f44c5dabd8199e308.lean/declarations/isleftregular-mul-left-eq-zero-iff--8e6b1bbeddb91ac02432cf1e.md) | 246 | `result-track:8e6b1bbeddb91ac02432cf1e2cabc865b331bc293d4747f1f37f0ff51846e7a4` |
| 35 | `lemma` | [IsRightRegular.mul_right_eq_zero_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant7fa7bb572a6e07b3ec24a727dd68ce073bbee4b1f5a4da7f44c5dabd8199e308.lean/declarations/isrightregular-mul-right-eq-zero-iff--582ff6458051a0736f9cb560.md) | 250 | `result-track:582ff6458051a0736f9cb560d8955a5b0f06ddd14263573dd97c100d597ba9c3` |
| 36 | `theorem` | [isRegular_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant7fa7bb572a6e07b3ec24a727dd68ce073bbee4b1f5a4da7f44c5dabd8199e308.lean/declarations/isregular-one--87ac1c854048a253d29d3624.md) | 262 | `result-track:87ac1c854048a253d29d36245bc667872a6ddadac7764a25530834a1ce0ae15c` |
| 37 | `theorem` | [isRegular_mul_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant7fa7bb572a6e07b3ec24a727dd68ce073bbee4b1f5a4da7f44c5dabd8199e308.lean/declarations/isregular-mul-iff--a4b7e74aa18f88b4338d23c5.md) | 274 | `result-track:a4b7e74aa18f88b4338d23c586145dd1d4779de35b8fb7953c1a75de2b3166ba` |
| 38 | `theorem` | [isLeftRegular_of_mul_eq_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant7fa7bb572a6e07b3ec24a727dd68ce073bbee4b1f5a4da7f44c5dabd8199e308.lean/declarations/isleftregular-of-mul-eq-one--65772502a1b4385a07304d66.md) | 286 | `result-track:65772502a1b4385a07304d66592bd317a2ad8bb56365224ed1e047d4564a01af` |
| 39 | `theorem` | [isRightRegular_of_mul_eq_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant7fa7bb572a6e07b3ec24a727dd68ce073bbee4b1f5a4da7f44c5dabd8199e308.lean/declarations/isrightregular-of-mul-eq-one--488bd8582f67e4a82053becc.md) | 291 | `result-track:488bd8582f67e4a82053becc82d6c9687351401c066b5f8ddba56eb256a25b0b` |
| 40 | `theorem` | [Units.isRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant7fa7bb572a6e07b3ec24a727dd68ce073bbee4b1f5a4da7f44c5dabd8199e308.lean/declarations/units-isregular--62470466a0a48dcc068ba1f4.md) | 296 | `result-track:62470466a0a48dcc068ba1f4d042c9be940279f4b474e8c3eda633ee372b7975` |
| 41 | `theorem` | [IsUnit.isRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant7fa7bb572a6e07b3ec24a727dd68ce073bbee4b1f5a4da7f44c5dabd8199e308.lean/declarations/isunit-isregular--434cb3971aaaec90e5af1d17.md) | 301 | `result-track:434cb3971aaaec90e5af1d17799532ceeb8db189a75f435dd253caf04cafce14` |
| 42 | `lemma` | [IsLeftRegular.pow](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant7fa7bb572a6e07b3ec24a727dd68ce073bbee4b1f5a4da7f44c5dabd8199e308.lean/declarations/isleftregular-pow--6b9dcd2e18225a22a189e494.md) | 306 | `result-track:6b9dcd2e18225a22a189e494a7f5273ad3a4f745924baf8d97cd1ead632baf2f` |
| 43 | `lemma` | [IsRightRegular.pow](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant7fa7bb572a6e07b3ec24a727dd68ce073bbee4b1f5a4da7f44c5dabd8199e308.lean/declarations/isrightregular-pow--97e45ccafa60031dbf12b887.md) | 310 | `result-track:97e45ccafa60031dbf12b887884634651f446a1efc98ddcdcd0fe036b9b8d6ef` |
| 44 | `lemma` | [IsRegular.pow](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant7fa7bb572a6e07b3ec24a727dd68ce073bbee4b1f5a4da7f44c5dabd8199e308.lean/declarations/isregular-pow--35c9beeebaa9f4d6f6353a08.md) | 315 | `result-track:35c9beeebaa9f4d6f6353a082f2fdf069eba18c1e60d082d7aaf2b459d36ac15` |
| 45 | `lemma` | [IsLeftRegular.pow_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant7fa7bb572a6e07b3ec24a727dd68ce073bbee4b1f5a4da7f44c5dabd8199e308.lean/declarations/isleftregular-pow-iff--de99cd960452008969a04139.md) | 319 | `result-track:de99cd960452008969a041391b8ffad8bab97e15653a57e18aea71cf61bced0b` |
| 46 | `lemma` | [IsRightRegular.pow_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant7fa7bb572a6e07b3ec24a727dd68ce073bbee4b1f5a4da7f44c5dabd8199e308.lean/declarations/isrightregular-pow-iff--137583f8eb4ea68ef64b1c01.md) | 324 | `result-track:137583f8eb4ea68ef64b1c0160105e303c70c5892aefbc7b99c939ec47fb91ad` |
| 47 | `lemma` | [IsRegular.pow_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant7fa7bb572a6e07b3ec24a727dd68ce073bbee4b1f5a4da7f44c5dabd8199e308.lean/declarations/isregular-pow-iff--658e108f52963736d2dca448.md) | 329 | `result-track:658e108f52963736d2dca4480fc9b6b5f44ce91618ba6b99a5fa76aa5584057b` |
| 48 | `theorem` | [IsLeftRegular.all](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant7fa7bb572a6e07b3ec24a727dd68ce073bbee4b1f5a4da7f44c5dabd8199e308.lean/declarations/isleftregular-all--3a9009f6db9f9fafb774bb65.md) | 337 | `result-track:3a9009f6db9f9fafb774bb65726bb91bdf341befcc6e4242e0ccac4059b04d8f` |
| 49 | `theorem` | [IsRightRegular.all](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant7fa7bb572a6e07b3ec24a727dd68ce073bbee4b1f5a4da7f44c5dabd8199e308.lean/declarations/isrightregular-all--e9cea48d84d94e3483e63b4e.md) | 342 | `result-track:e9cea48d84d94e3483e63b4e9998ebbaea6c035770fedb0c86a6cc16f6399385` |
| 50 | `theorem` | [IsRegular.all](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant7fa7bb572a6e07b3ec24a727dd68ce073bbee4b1f5a4da7f44c5dabd8199e308.lean/declarations/isregular-all--ded14b7d966c8fe7830bbc75.md) | 347 | `result-track:ded14b7d966c8fe7830bbc75f857453943c8494249f9974fbaee3362a8aac0fb` |
| 51 | `theorem` | [isRegular_of_ne_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant7fa7bb572a6e07b3ec24a727dd68ce073bbee4b1f5a4da7f44c5dabd8199e308.lean/declarations/isregular-of-ne-zero--070e9b01e7e95db0d53bd865.md) | 355 | `result-track:070e9b01e7e95db0d53bd86515a74f8893e0e9f2bb6723da90650cb1a14c3f02` |
| 52 | `theorem` | [isRegular_iff_ne_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant7fa7bb572a6e07b3ec24a727dd68ce073bbee4b1f5a4da7f44c5dabd8199e308.lean/declarations/isregular-iff-ne-zero--a1eaeefd6d1b2ea8bd0b6586.md) | 359 | `result-track:a1eaeefd6d1b2ea8bd0b6586b34be3f0cc9202f9c95bca99d46ae2aa119ebe22` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
