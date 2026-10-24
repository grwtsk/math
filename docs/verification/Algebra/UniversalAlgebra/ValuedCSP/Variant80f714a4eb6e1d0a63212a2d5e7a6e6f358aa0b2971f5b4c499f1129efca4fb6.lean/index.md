# Verification target: GRWTSK.Algebra.UniversalAlgebra.ValuedCSP.Variant80f714a4eb6e1d0a63212a2d5e7a6e6f358aa0b2971f5b4c499f1129efca4fb6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "83e6c39d7488285969c6a0770ce826a1ecd2fe23",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/ValuedCSP/Variant80f714a4eb6e1d0a63212a2d5e7a6e6f358aa0b2971f5b4c499f1129efca4fb6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant80f714a4eb6e1d0a63212a2d5e7a6e6f358aa0b2971f5b4c499f1129efca4fb6.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant80f714a4eb6e1d0a63212a2d5e7a6e6f358aa0b2971f5b4c499f1129efca4fb6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `83e6c39d7488285969c6a0770ce826a1ecd2fe23`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/ValuedCSP/Variant80f714a4eb6e1d0a63212a2d5e7a6e6f358aa0b2971f5b4c499f1129efca4fb6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/ValuedCSP/Variant80f714a4eb6e1d0a63212a2d5e7a6e6f358aa0b2971f5b4c499f1129efca4fb6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.AbsoluteValue.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Rat` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Optimization.ValuedCSP` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.Tuple.Curry` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.VecNotation` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ValuedCSP.unaryTerm](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant80f714a4eb6e1d0a63212a2d5e7a6e6f358aa0b2971f5b4c499f1129efca4fb6.lean/declarations/valuedcsp-unaryterm--3c7056b16e6719d10d411254.md) | 24 | `declaration-track:3c7056b16e6719d10d411254f44560878d7d377115474817ab2137bce852e6c7` |
| 2 | `def` | [ValuedCSP.binaryTerm](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant80f714a4eb6e1d0a63212a2d5e7a6e6f358aa0b2971f5b4c499f1129efca4fb6.lean/declarations/valuedcsp-binaryterm--b8d16aeac45d29bbfd3bfe5b.md) | 29 | `declaration-track:b8d16aeac45d29bbfd3bfe5b62514f8fd28d6531d8507a5b39ea2ec4c2710e7d` |
| 3 | `def` | [absRat](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant80f714a4eb6e1d0a63212a2d5e7a6e6f358aa0b2971f5b4c499f1129efca4fb6.lean/declarations/absrat--169c514ad084ae25404c5ec0.md) | 36 | `declaration-track:169c514ad084ae25404c5ec090255ceb9fb49ff3ca361bd819ca1f21d84425e1` |
| 4 | `def` | [exampleAbs](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant80f714a4eb6e1d0a63212a2d5e7a6e6f358aa0b2971f5b4c499f1129efca4fb6.lean/declarations/exampleabs--0435a838ce45c19d0ccafcfd.md) | 39 | `declaration-track:0435a838ce45c19d0ccafcfd53a52a3c5d8c680b961fed02811e641e3b2f331b` |
| 5 | `def` | [exampleFiniteValuedCSP](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant80f714a4eb6e1d0a63212a2d5e7a6e6f358aa0b2971f5b4c499f1129efca4fb6.lean/declarations/examplefinitevaluedcsp--3de4b58fa64e7f65fb618b98.md) | 41 | `declaration-track:3de4b58fa64e7f65fb618b9837561abcb835dbfe59689811e3efcf535140f20b` |
| 6 | `lemma` | [abs_in](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant80f714a4eb6e1d0a63212a2d5e7a6e6f358aa0b2971f5b4c499f1129efca4fb6.lean/declarations/abs-in--b7ea38705b76d12bf8c09660.md) | 43 | `result-track:b7ea38705b76d12bf8c096605174c688380ce9b006ccc59c34c1781895747336` |
| 7 | `def` | [exampleFiniteValuedInstance](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant80f714a4eb6e1d0a63212a2d5e7a6e6f358aa0b2971f5b4c499f1129efca4fb6.lean/declarations/examplefinitevaluedinstance--9c62bc70f5a8b55afbca1fa3.md) | 45 | `declaration-track:9c62bc70f5a8b55afbca1fa309b88fb1334fd56e66a0982b8df46d420ebeb059` |
| 8 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant80f714a4eb6e1d0a63212a2d5e7a6e6f358aa0b2971f5b4c499f1129efca4fb6.lean/declarations/example--a148e78f773cd7c779e18981.md) | 48 | `declaration-track:a148e78f773cd7c779e189813fcae53023603f97ee2514445c93c0c17a6d9dd9` |
| 9 | `def` | [Bool_add_le_add_left](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant80f714a4eb6e1d0a63212a2d5e7a6e6f358aa0b2971f5b4c499f1129efca4fb6.lean/declarations/bool-add-le-add-left--cd3cf7c86be5be157b602779.md) | 61 | `declaration-track:cd3cf7c86be5be157b602779e262df04f39646b7e81d59e5cbfeb48f05b0dfc9` |
| 10 | `instance` | [crispCodomainZero](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant80f714a4eb6e1d0a63212a2d5e7a6e6f358aa0b2971f5b4c499f1129efca4fb6.lean/declarations/crispcodomainzero--f482ab58589b69a7f0d6b422.md) | 67 | `declaration-track:f482ab58589b69a7f0d6b422124368463757bd873a8b217b1ef71869752c1c50` |
| 11 | `instance` | [crispCodomainAdd](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant80f714a4eb6e1d0a63212a2d5e7a6e6f358aa0b2971f5b4c499f1129efca4fb6.lean/declarations/crispcodomainadd--9af6fe517fbebc253527a26e.md) | 69 | `declaration-track:9af6fe517fbebc253527a26e8b57a967974decdbe6070f4555faec98e7a498f8` |
| 12 | `instance` | [crispCodomainAddCommMonoid](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant80f714a4eb6e1d0a63212a2d5e7a6e6f358aa0b2971f5b4c499f1129efca4fb6.lean/declarations/crispcodomainaddcommmonoid--9e576cb723ebad10596cb3e3.md) | 71 | `declaration-track:9e576cb723ebad10596cb3e31c440238bef414d846e4fda9b4622304e7c6a5fa` |
| 13 | `instance` | [crispCodomain](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant80f714a4eb6e1d0a63212a2d5e7a6e6f358aa0b2971f5b4c499f1129efca4fb6.lean/declarations/crispcodomain--9e2271832f2dc5e8d0976aa4.md) | 78 | `declaration-track:9e2271832f2dc5e8d0976aa4ebe17b658fe3f4862fa2c89018b7342168faaa2f` |
| 14 | `def` | [beqBool](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant80f714a4eb6e1d0a63212a2d5e7a6e6f358aa0b2971f5b4c499f1129efca4fb6.lean/declarations/beqbool--bec8cb98961af2f662a7e76f.md) | 81 | `declaration-track:bec8cb98961af2f662a7e76ffb3ee74bd4c338ab6b63d0856312a8c49973c149` |
| 15 | `def` | [exampleEquality](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant80f714a4eb6e1d0a63212a2d5e7a6e6f358aa0b2971f5b4c499f1129efca4fb6.lean/declarations/exampleequality--23cc9ec3cb70c303e0eb5776.md) | 84 | `declaration-track:23cc9ec3cb70c303e0eb577656e62fbcdd8d9c6d12ce7b6b1da93cfb1dce185c` |
| 16 | `def` | [exampleCrispCSP](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant80f714a4eb6e1d0a63212a2d5e7a6e6f358aa0b2971f5b4c499f1129efca4fb6.lean/declarations/examplecrispcsp--677e81f07adab4a8480402a1.md) | 86 | `declaration-track:677e81f07adab4a8480402a18c10eba6f5eafccebe93ffda023248f5b59db0e8` |
| 17 | `lemma` | [beqBool_mem](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant80f714a4eb6e1d0a63212a2d5e7a6e6f358aa0b2971f5b4c499f1129efca4fb6.lean/declarations/beqbool-mem--9e31662fe361b8c0d10e9484.md) | 88 | `result-track:9e31662fe361b8c0d10e9484a3b4e74d0ec25bbf788eec435d60b2aab4ce7fa5` |
| 18 | `def` | [exampleTermAB](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant80f714a4eb6e1d0a63212a2d5e7a6e6f358aa0b2971f5b4c499f1129efca4fb6.lean/declarations/exampletermab--a508e480d36a2bd15c9893f1.md) | 90 | `declaration-track:a508e480d36a2bd15c9893f17dce155458e4181629700764c6790e8440be071e` |
| 19 | `def` | [exampleTermBC](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant80f714a4eb6e1d0a63212a2d5e7a6e6f358aa0b2971f5b4c499f1129efca4fb6.lean/declarations/exampletermbc--10860934e308487df1c088bd.md) | 93 | `declaration-track:10860934e308487df1c088bd5c219d0e77243f12b1b7981597bfb58f6e286e2a` |
| 20 | `def` | [exampleTermCA](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant80f714a4eb6e1d0a63212a2d5e7a6e6f358aa0b2971f5b4c499f1129efca4fb6.lean/declarations/exampletermca--f16fb3cb16c3b959a82279ae.md) | 96 | `declaration-track:f16fb3cb16c3b959a82279aef35684a61adb353565f0d704d6c11513d0aa10e1` |
| 21 | `def` | [exampleTermBD](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant80f714a4eb6e1d0a63212a2d5e7a6e6f358aa0b2971f5b4c499f1129efca4fb6.lean/declarations/exampletermbd--296877e5b2819ff49d9042d1.md) | 99 | `declaration-track:296877e5b2819ff49d9042d11ad94c47feb6b373fcf1277783e5b707e2bacb52` |
| 22 | `def` | [exampleTermCD](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant80f714a4eb6e1d0a63212a2d5e7a6e6f358aa0b2971f5b4c499f1129efca4fb6.lean/declarations/exampletermcd--bdcf6fcc459d272afc55f6f3.md) | 102 | `declaration-track:bdcf6fcc459d272afc55f6f34aa83fbbf4add645791a943870f9140fcedcd66f` |
| 23 | `def` | [exampleCrispCspInstance](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant80f714a4eb6e1d0a63212a2d5e7a6e6f358aa0b2971f5b4c499f1129efca4fb6.lean/declarations/examplecrispcspinstance--a2b31e5314a29a3574d554f5.md) | 105 | `declaration-track:a2b31e5314a29a3574d554f5d5694329d32a8c42febd646aed08ce09d94ddc3b` |
| 24 | `def` | [exampleSolutionCorrect0](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant80f714a4eb6e1d0a63212a2d5e7a6e6f358aa0b2971f5b4c499f1129efca4fb6.lean/declarations/examplesolutioncorrect0--a9d77601e9aa1ba3a50bce36.md) | 115 | `declaration-track:a9d77601e9aa1ba3a50bce36087d765e3ee1c77bcde92641d9498964d669ebf9` |
| 25 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant80f714a4eb6e1d0a63212a2d5e7a6e6f358aa0b2971f5b4c499f1129efca4fb6.lean/declarations/example--14b4ca6e41febeb02d1146c7.md) | 117 | `declaration-track:14b4ca6e41febeb02d1146c73cd97e3032b3f4944a808b1a16a7046e8f4b447c` |
| 26 | `def` | [exampleSolutionCorrect1](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant80f714a4eb6e1d0a63212a2d5e7a6e6f358aa0b2971f5b4c499f1129efca4fb6.lean/declarations/examplesolutioncorrect1--128669be2bfded3ac22972f2.md) | 127 | `declaration-track:128669be2bfded3ac22972f20edeb0d6d6215b5dafd673d9def155cf76d253d7` |
| 27 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant80f714a4eb6e1d0a63212a2d5e7a6e6f358aa0b2971f5b4c499f1129efca4fb6.lean/declarations/example--a49d526b7d102a32324b685f.md) | 129 | `declaration-track:a49d526b7d102a32324b685ff91c81e6c3cfd82e965ab5ab23ecb964020c5b18` |
| 28 | `def` | [exampleSolutionCorrect2](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant80f714a4eb6e1d0a63212a2d5e7a6e6f358aa0b2971f5b4c499f1129efca4fb6.lean/declarations/examplesolutioncorrect2--b979ce212610408efaa72f1d.md) | 139 | `declaration-track:b979ce212610408efaa72f1da0f83b336ea04891d597ede7ffe602bc092056e6` |
| 29 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant80f714a4eb6e1d0a63212a2d5e7a6e6f358aa0b2971f5b4c499f1129efca4fb6.lean/declarations/example--f071574efca97f420aa80433.md) | 141 | `declaration-track:f071574efca97f420aa80433fb9e90ca8b9aafbcbfa766ee8690f38e7fcd0a0a` |
| 30 | `def` | [exampleSolutionCorrect3](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant80f714a4eb6e1d0a63212a2d5e7a6e6f358aa0b2971f5b4c499f1129efca4fb6.lean/declarations/examplesolutioncorrect3--e247a07fdbb75ca4bc172bf8.md) | 151 | `declaration-track:e247a07fdbb75ca4bc172bf8296c3e15f1def84d025419b85948b46bb300cd06` |
| 31 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant80f714a4eb6e1d0a63212a2d5e7a6e6f358aa0b2971f5b4c499f1129efca4fb6.lean/declarations/example--18ec7b42cba6b8cd840a50b1.md) | 153 | `declaration-track:18ec7b42cba6b8cd840a50b1a8cf7f8c9161e1a16114fe18e1f278f3d69b47ef` |
| 32 | `def` | [exampleSolutionCorrect4](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant80f714a4eb6e1d0a63212a2d5e7a6e6f358aa0b2971f5b4c499f1129efca4fb6.lean/declarations/examplesolutioncorrect4--97eede332edabb1560a7fee5.md) | 163 | `declaration-track:97eede332edabb1560a7fee53d543b7064b938290e01901ebb10858b6d6dfaa6` |
| 33 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant80f714a4eb6e1d0a63212a2d5e7a6e6f358aa0b2971f5b4c499f1129efca4fb6.lean/declarations/example--60fa7da9f42ec9cca22d4fb7.md) | 165 | `declaration-track:60fa7da9f42ec9cca22d4fb7fff25fea9ea79d9097a9834845a92c96b05c81df` |
| 34 | `def` | [exampleSolutionCorrect5](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant80f714a4eb6e1d0a63212a2d5e7a6e6f358aa0b2971f5b4c499f1129efca4fb6.lean/declarations/examplesolutioncorrect5--9825ffcce9f0e38c677456e3.md) | 175 | `declaration-track:9825ffcce9f0e38c677456e356d1da7a3dc5d5ed27ff7505d9583afec740a5ed` |
| 35 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant80f714a4eb6e1d0a63212a2d5e7a6e6f358aa0b2971f5b4c499f1129efca4fb6.lean/declarations/example--c5175088c9e8653083ce5c4b.md) | 177 | `declaration-track:c5175088c9e8653083ce5c4bde108489e2a44d20dce7a3bd2c2ba1d8ca8726bc` |
| 36 | `def` | [exampleSolutionIncorrect0](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant80f714a4eb6e1d0a63212a2d5e7a6e6f358aa0b2971f5b4c499f1129efca4fb6.lean/declarations/examplesolutionincorrect0--563b3be2b1ef879bd695fd49.md) | 187 | `declaration-track:563b3be2b1ef879bd695fd49a5c20db147423610896424d02cb2c21a5e01725b` |
| 37 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant80f714a4eb6e1d0a63212a2d5e7a6e6f358aa0b2971f5b4c499f1129efca4fb6.lean/declarations/example--9f8c242bb964c71d03ae99e2.md) | 189 | `declaration-track:9f8c242bb964c71d03ae99e2583ffd085c054d8439144a304be7bb41d4d690e3` |
| 38 | `def` | [exampleSolutionIncorrect1](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant80f714a4eb6e1d0a63212a2d5e7a6e6f358aa0b2971f5b4c499f1129efca4fb6.lean/declarations/examplesolutionincorrect1--ca16075db79a253ec127bc8d.md) | 202 | `declaration-track:ca16075db79a253ec127bc8d480ddd986025dce43f63c23a47befb133831b00f` |
| 39 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant80f714a4eb6e1d0a63212a2d5e7a6e6f358aa0b2971f5b4c499f1129efca4fb6.lean/declarations/example--85ea2d4cca293bc6436f5287.md) | 204 | `declaration-track:85ea2d4cca293bc6436f5287625f9cd6ff92903096e1c05119f26c1e85021ae5` |
| 40 | `def` | [exampleSolutionIncorrect2](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant80f714a4eb6e1d0a63212a2d5e7a6e6f358aa0b2971f5b4c499f1129efca4fb6.lean/declarations/examplesolutionincorrect2--ef494e8827bccab4382b5d84.md) | 217 | `declaration-track:ef494e8827bccab4382b5d84cef224fefc9693a8cee6638c96deb86459dec044` |
| 41 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant80f714a4eb6e1d0a63212a2d5e7a6e6f358aa0b2971f5b4c499f1129efca4fb6.lean/declarations/example--abecd08a8c6464bfd2813083.md) | 219 | `declaration-track:abecd08a8c6464bfd2813083be9ed25e44cbbababf8140188963694cec0e04aa` |
| 42 | `def` | [exampleSolutionIncorrect3](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant80f714a4eb6e1d0a63212a2d5e7a6e6f358aa0b2971f5b4c499f1129efca4fb6.lean/declarations/examplesolutionincorrect3--ce5e2f5afc93675b28e6f875.md) | 232 | `declaration-track:ce5e2f5afc93675b28e6f875fa1b476a63e9430bb44badc7aba46ae4c6ba56e6` |
| 43 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant80f714a4eb6e1d0a63212a2d5e7a6e6f358aa0b2971f5b4c499f1129efca4fb6.lean/declarations/example--d0432b89aa03b435821d664c.md) | 234 | `declaration-track:d0432b89aa03b435821d664cddf8302d70b45b6f4d8bbc99a4d51340b1029e8b` |
| 44 | `def` | [exampleSolutionIncorrect4](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant80f714a4eb6e1d0a63212a2d5e7a6e6f358aa0b2971f5b4c499f1129efca4fb6.lean/declarations/examplesolutionincorrect4--5fa5986557fdb5a0f5bd3f2d.md) | 247 | `declaration-track:5fa5986557fdb5a0f5bd3f2d95dcaa50e1f48a233f448658cb641e4923275c48` |
| 45 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant80f714a4eb6e1d0a63212a2d5e7a6e6f358aa0b2971f5b4c499f1129efca4fb6.lean/declarations/example--577fbe603a4f25c9901ee5f4.md) | 249 | `declaration-track:577fbe603a4f25c9901ee5f45806ae77efbac2a5b28b9a47b279b114d69538c6` |
| 46 | `def` | [exampleSolutionIncorrect5](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant80f714a4eb6e1d0a63212a2d5e7a6e6f358aa0b2971f5b4c499f1129efca4fb6.lean/declarations/examplesolutionincorrect5--156c87be9a53ec349f089dcf.md) | 262 | `declaration-track:156c87be9a53ec349f089dcfd12094bdd62bc3ad5c6631b5881540a12d2df1b7` |
| 47 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant80f714a4eb6e1d0a63212a2d5e7a6e6f358aa0b2971f5b4c499f1129efca4fb6.lean/declarations/example--d7b75f3769129d85b6d47438.md) | 264 | `declaration-track:d7b75f3769129d85b6d4743825efd1a2ac1b93c6c5a44360cf36bbdaca6f63d2` |
| 48 | `def` | [exampleSolutionIncorrect6](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant80f714a4eb6e1d0a63212a2d5e7a6e6f358aa0b2971f5b4c499f1129efca4fb6.lean/declarations/examplesolutionincorrect6--bf2ec482efd2c35c69491901.md) | 277 | `declaration-track:bf2ec482efd2c35c694919018ff004224a2ccc5d29bd4b1b7696d661d87458ff` |
| 49 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant80f714a4eb6e1d0a63212a2d5e7a6e6f358aa0b2971f5b4c499f1129efca4fb6.lean/declarations/example--4afd290e08994a924b72d7bc.md) | 279 | `declaration-track:4afd290e08994a924b72d7bc224efb3e03041e4cfbb84f1fb9d59bb735ce8b1c` |
| 50 | `def` | [exampleSolutionIncorrect7](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant80f714a4eb6e1d0a63212a2d5e7a6e6f358aa0b2971f5b4c499f1129efca4fb6.lean/declarations/examplesolutionincorrect7--c1b57cdd92465a6963b6fc63.md) | 292 | `declaration-track:c1b57cdd92465a6963b6fc63a5bdec4e8ce97261df2484f2a335b39f184c0c20` |
| 51 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/ValuedCSP/Variant80f714a4eb6e1d0a63212a2d5e7a6e6f358aa0b2971f5b4c499f1129efca4fb6.lean/declarations/example--7eda5d63adcfec06a8cf7de7.md) | 294 | `declaration-track:7eda5d63adcfec06a8cf7de727e18df1830fb120973beb4be1953579e346c54c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
