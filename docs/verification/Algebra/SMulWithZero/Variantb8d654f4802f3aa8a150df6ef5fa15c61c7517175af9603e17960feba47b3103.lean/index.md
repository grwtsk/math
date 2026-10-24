# Verification target: GRWTSK.Algebra.SMulWithZero.Variantb8d654f4802f3aa8a150df6ef5fa15c61c7517175af9603e17960feba47b3103

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e02df180a9118837e67f31eae886909c6a88ecba",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/SMulWithZero/Variantb8d654f4802f3aa8a150df6ef5fa15c61c7517175af9603e17960feba47b3103.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/SMulWithZero/Variantb8d654f4802f3aa8a150df6ef5fa15c61c7517175af9603e17960feba47b3103.lean/index.md) · [Full source](../../../../mathematics/Algebra/SMulWithZero/Variantb8d654f4802f3aa8a150df6ef5fa15c61c7517175af9603e17960feba47b3103.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e02df180a9118837e67f31eae886909c6a88ecba`.

Source path: `GRWTSK/Algebra/SMulWithZero/Variantb8d654f4802f3aa8a150df6ef5fa15c61c7517175af9603e17960feba47b3103.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/SMulWithZero/Variantb8d654f4802f3aa8a150df6ef5fa15c61c7517175af9603e17960feba47b3103.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupPower.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Opposite` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Opposite` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Prod` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [SMulWithZero](../../../../mathematics/Algebra/SMulWithZero/Variantb8d654f4802f3aa8a150df6ef5fa15c61c7517175af9603e17960feba47b3103.lean/declarations/smulwithzero--3acc4821a5a8fafdac5c0d54.md) | 49 | `declaration-track:3acc4821a5a8fafdac5c0d5453caa11d91b3881460968196ff8915f48e25d0e0` |
| 2 | `instance` | [MulZeroClass.toSMulWithZero](../../../../mathematics/Algebra/SMulWithZero/Variantb8d654f4802f3aa8a150df6ef5fa15c61c7517175af9603e17960feba47b3103.lean/declarations/mulzeroclass-tosmulwithzero--c1386e883fa8c81cdbf6c619.md) | 54 | `declaration-track:c1386e883fa8c81cdbf6c6194617fae2f80ff7316101c534e4045b6152d50190` |
| 3 | `instance` | [MulZeroClass.toOppositeSMulWithZero](../../../../mathematics/Algebra/SMulWithZero/Variantb8d654f4802f3aa8a150df6ef5fa15c61c7517175af9603e17960feba47b3103.lean/declarations/mulzeroclass-tooppositesmulwithzero--284096457f3bc28efff1b01d.md) | 61 | `declaration-track:284096457f3bc28efff1b01d30c040093f8ec9668c88f0f6651edd900db67254` |
| 4 | `theorem` | [zero_smul](../../../../mathematics/Algebra/SMulWithZero/Variantb8d654f4802f3aa8a150df6ef5fa15c61c7517175af9603e17960feba47b3103.lean/declarations/zero-smul--c87546d28216839cfa8becd4.md) | 70 | `result-track:c87546d28216839cfa8becd4806141a9ee8eb3c0232cd45fd9a2ecb7c427194f` |
| 5 | `lemma` | [smul_eq_zero_of_left](../../../../mathematics/Algebra/SMulWithZero/Variantb8d654f4802f3aa8a150df6ef5fa15c61c7517175af9603e17960feba47b3103.lean/declarations/smul-eq-zero-of-left--ca69f8cb31a24236b430d254.md) | 76 | `result-track:ca69f8cb31a24236b430d254400f0463d9f1bf7743a36139c6932f4a5e8d98ce` |
| 6 | `lemma` | [smul_eq_zero_of_right](../../../../mathematics/Algebra/SMulWithZero/Variantb8d654f4802f3aa8a150df6ef5fa15c61c7517175af9603e17960feba47b3103.lean/declarations/smul-eq-zero-of-right--129ebc04a366a90668566cc1.md) | 78 | `result-track:129ebc04a366a90668566cc1b49bcae18e9efc2cc3fc2efbf4986f025b195991` |
| 7 | `lemma` | [left_ne_zero_of_smul](../../../../mathematics/Algebra/SMulWithZero/Variantb8d654f4802f3aa8a150df6ef5fa15c61c7517175af9603e17960feba47b3103.lean/declarations/left-ne-zero-of-smul--0c8f3a07d6e7fe0a77ca542b.md) | 80 | `result-track:0c8f3a07d6e7fe0a77ca542b7beee429bf75d87be913d8d68f007925f6a19e98` |
| 8 | `lemma` | [right_ne_zero_of_smul](../../../../mathematics/Algebra/SMulWithZero/Variantb8d654f4802f3aa8a150df6ef5fa15c61c7517175af9603e17960feba47b3103.lean/declarations/right-ne-zero-of-smul--d4c414136958a8ae678af30b.md) | 82 | `result-track:d4c414136958a8ae678af30b403a89d54e59372c808f787bebc8975208e64853` |
| 9 | `def` | [Function.Injective.smulWithZero](../../../../mathematics/Algebra/SMulWithZero/Variantb8d654f4802f3aa8a150df6ef5fa15c61c7517175af9603e17960feba47b3103.lean/declarations/function-injective-smulwithzero--b14ded602294b82ba679667a.md) | 90 | `declaration-track:b14ded602294b82ba679667a116b69d7e614891476aac3e9b8c4b3afc3840939` |
| 10 | `def` | [Function.Surjective.smulWithZero](../../../../mathematics/Algebra/SMulWithZero/Variantb8d654f4802f3aa8a150df6ef5fa15c61c7517175af9603e17960feba47b3103.lean/declarations/function-surjective-smulwithzero--ef25ec474af809d16e9aca7f.md) | 101 | `declaration-track:ef25ec474af809d16e9aca7f848fd77737a7527e74af7b98bdf7617235dab647` |
| 11 | `def` | [SMulWithZero.compHom](../../../../mathematics/Algebra/SMulWithZero/Variantb8d654f4802f3aa8a150df6ef5fa15c61c7517175af9603e17960feba47b3103.lean/declarations/smulwithzero-comphom--886d7510c5fb2625d5237b28.md) | 114 | `declaration-track:886d7510c5fb2625d5237b28858a67688038704c591d3db74483bacfa64ecf44` |
| 12 | `instance` | [AddMonoid.natSMulWithZero](../../../../mathematics/Algebra/SMulWithZero/Variantb8d654f4802f3aa8a150df6ef5fa15c61c7517175af9603e17960feba47b3103.lean/declarations/addmonoid-natsmulwithzero--7f018b4a929d1d8af9ade289.md) | 122 | `declaration-track:7f018b4a929d1d8af9ade289989b24a87282f3544c0d927560607dcd422b17f1` |
| 13 | `instance` | [AddGroup.intSMulWithZero](../../../../mathematics/Algebra/SMulWithZero/Variantb8d654f4802f3aa8a150df6ef5fa15c61c7517175af9603e17960feba47b3103.lean/declarations/addgroup-intsmulwithzero--225694013cc6ba4ee6b23a2f.md) | 127 | `declaration-track:225694013cc6ba4ee6b23a2f33c630fa0fb95981906bca920fb5f5cf2ed902b1` |
| 14 | `class` | [MulActionWithZero](../../../../mathematics/Algebra/SMulWithZero/Variantb8d654f4802f3aa8a150df6ef5fa15c61c7517175af9603e17960feba47b3103.lean/declarations/mulactionwithzero--08c9066e1c470217583b8dd2.md) | 141 | `declaration-track:08c9066e1c470217583b8dd29a44c7eb2edf9284449ffc083886f747042032d9` |
| 15 | `instance` | [(anonymous)](../../../../mathematics/Algebra/SMulWithZero/Variantb8d654f4802f3aa8a150df6ef5fa15c61c7517175af9603e17960feba47b3103.lean/declarations/instance--58ae0f453a378b50d918b44a.md) | 150 | `declaration-track:58ae0f453a378b50d918b44a5905b9aea85a144135ad5c27c5a1eefe0e10d47e` |
| 16 | `instance` | [MonoidWithZero.toMulActionWithZero](../../../../mathematics/Algebra/SMulWithZero/Variantb8d654f4802f3aa8a150df6ef5fa15c61c7517175af9603e17960feba47b3103.lean/declarations/monoidwithzero-tomulactionwithzero--a23a35308d79f75bf9e29488.md) | 156 | `declaration-track:a23a35308d79f75bf9e29488d6fe2c5d86f8dbe6a0cb889d04ab9fddbdcad30f` |
| 17 | `instance` | [MonoidWithZero.toOppositeMulActionWithZero](../../../../mathematics/Algebra/SMulWithZero/Variantb8d654f4802f3aa8a150df6ef5fa15c61c7517175af9603e17960feba47b3103.lean/declarations/monoidwithzero-tooppositemulactionwithzero--14a454d120e1c58a163fd717.md) | 162 | `declaration-track:14a454d120e1c58a163fd717d407d42f1e457a4663655028fde61548f4164e34` |
| 18 | `lemma` | [MulActionWithZero.subsingleton](../../../../mathematics/Algebra/SMulWithZero/Variantb8d654f4802f3aa8a150df6ef5fa15c61c7517175af9603e17960feba47b3103.lean/declarations/mulactionwithzero-subsingleton--a790efbd4ef1cd97320a98ed.md) | 166 | `result-track:a790efbd4ef1cd97320a98ed0055cc6cda0cbcade5c9eaafe2092ddf6b8d1b5a` |
| 19 | `lemma` | [MulActionWithZero.nontrivial](../../../../mathematics/Algebra/SMulWithZero/Variantb8d654f4802f3aa8a150df6ef5fa15c61c7517175af9603e17960feba47b3103.lean/declarations/mulactionwithzero-nontrivial--567b36281873e116312b64e6.md) | 171 | `result-track:567b36281873e116312b64e60a4cc04109bf4c2b76c81153ab2a8ac6bb102c2b` |
| 20 | `def` | [Function.Injective.mulActionWithZero](../../../../mathematics/Algebra/SMulWithZero/Variantb8d654f4802f3aa8a150df6ef5fa15c61c7517175af9603e17960feba47b3103.lean/declarations/function-injective-mulactionwithzero--18fd9500a27c7d6c08f0a367.md) | 183 | `declaration-track:18fd9500a27c7d6c08f0a36745c527372c654b41547dd89a22d69c4a6c53aea1` |
| 21 | `def` | [Function.Surjective.mulActionWithZero](../../../../mathematics/Algebra/SMulWithZero/Variantb8d654f4802f3aa8a150df6ef5fa15c61c7517175af9603e17960feba47b3103.lean/declarations/function-surjective-mulactionwithzero--b2fa0721ea798b92f6a08c85.md) | 191 | `declaration-track:b2fa0721ea798b92f6a08c85aa5245d5cd8ab27d64c3ab977e2f1b3d0735fbbb` |
| 22 | `def` | [MulActionWithZero.compHom](../../../../mathematics/Algebra/SMulWithZero/Variantb8d654f4802f3aa8a150df6ef5fa15c61c7517175af9603e17960feba47b3103.lean/declarations/mulactionwithzero-comphom--d1057197c7e22b46c74e76f4.md) | 199 | `declaration-track:d1057197c7e22b46c74e76f4c57583a743be6f1e98ea17f9def8223727551e8c` |
| 23 | `theorem` | [smul_inv₀](../../../../mathematics/Algebra/SMulWithZero/Variantb8d654f4802f3aa8a150df6ef5fa15c61c7517175af9603e17960feba47b3103.lean/declarations/smul-inv--2a9bcc630b5c7bcfe34f8684.md) | 212 | `result-track:2a9bcc630b5c7bcfe34f8684cd4da674dce6b058523e3c0de878813d71ddc7f9` |
| 24 | `def` | [smulMonoidWithZeroHom](../../../../mathematics/Algebra/SMulWithZero/Variantb8d654f4802f3aa8a150df6ef5fa15c61c7517175af9603e17960feba47b3103.lean/declarations/smulmonoidwithzerohom--a727605f7731c5111162182f.md) | 226 | `declaration-track:a727605f7731c5111162182f4d306d2e6a3cbe7873047b1d9cd507246cbdbeb6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
