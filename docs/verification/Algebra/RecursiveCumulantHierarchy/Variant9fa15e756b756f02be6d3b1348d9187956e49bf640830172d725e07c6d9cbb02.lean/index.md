# Verification target: GRWTSK.Algebra.RecursiveCumulantHierarchy.Variant9fa15e756b756f02be6d3b1348d9187956e49bf640830172d725e07c6d9cbb02

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "24cb97fcd9249a683daa5ae97c81a7df4f350672",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RecursiveCumulantHierarchy/Variant9fa15e756b756f02be6d3b1348d9187956e49bf640830172d725e07c6d9cbb02.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/RecursiveCumulantHierarchy/Variant9fa15e756b756f02be6d3b1348d9187956e49bf640830172d725e07c6d9cbb02.lean/index.md) · [Full source](../../../../mathematics/Algebra/RecursiveCumulantHierarchy/Variant9fa15e756b756f02be6d3b1348d9187956e49bf640830172d725e07c6d9cbb02.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `24cb97fcd9249a683daa5ae97c81a7df4f350672`.

Source path: `GRWTSK/Algebra/RecursiveCumulantHierarchy/Variant9fa15e756b756f02be6d3b1348d9187956e49bf640830172d725e07c6d9cbb02.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RecursiveCumulantHierarchy/Variant9fa15e756b756f02be6d3b1348d9187956e49bf640830172d725e07c6d9cbb02.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.FiniteCumulantPrefix` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [DirectionMomentFamily](../../../../mathematics/Algebra/RecursiveCumulantHierarchy/Variant9fa15e756b756f02be6d3b1348d9187956e49bf640830172d725e07c6d9cbb02.lean/declarations/directionmomentfamily--4d7b552051990a5f18bbb528.md) | 34 | `declaration-track:4d7b552051990a5f18bbb528c53195404391424510b465a66185fa8ddfd604ff` |
| 2 | `def` | [lowerFamily](../../../../mathematics/Algebra/RecursiveCumulantHierarchy/Variant9fa15e756b756f02be6d3b1348d9187956e49bf640830172d725e07c6d9cbb02.lean/declarations/lowerfamily--eeac73493e590f54dd2c1875.md) | 41 | `declaration-track:eeac73493e590f54dd2c1875bf5fdb1b1bb919bf869dbc597090a72641113619` |
| 3 | `def` | [recursiveCumulantStep](../../../../mathematics/Algebra/RecursiveCumulantHierarchy/Variant9fa15e756b756f02be6d3b1348d9187956e49bf640830172d725e07c6d9cbb02.lean/declarations/recursivecumulantstep--bd302c31abc3794259baad6b.md) | 50 | `declaration-track:bd302c31abc3794259baad6b9fa12e43a8b3c7e3bcc6616ca7bb023c820ac1a1` |
| 4 | `def` | [recursiveCumulantAux](../../../../mathematics/Algebra/RecursiveCumulantHierarchy/Variant9fa15e756b756f02be6d3b1348d9187956e49bf640830172d725e07c6d9cbb02.lean/declarations/recursivecumulantaux--3c4674b2d27bdd8425978a44.md) | 65 | `declaration-track:3c4674b2d27bdd8425978a44f3f3736bb29a36bf7b77611424e24d93fd874e7d` |
| 5 | `def` | [recursiveCumulantFamily](../../../../mathematics/Algebra/RecursiveCumulantHierarchy/Variant9fa15e756b756f02be6d3b1348d9187956e49bf640830172d725e07c6d9cbb02.lean/declarations/recursivecumulantfamily--b4cb88a976df2048a41396ff.md) | 75 | `declaration-track:b4cb88a976df2048a41396ffe571d5af1df4849ef95f86d3fe02ffa44ce686df` |
| 6 | `theorem` | [recursiveCumulantAux_eq_step](../../../../mathematics/Algebra/RecursiveCumulantHierarchy/Variant9fa15e756b756f02be6d3b1348d9187956e49bf640830172d725e07c6d9cbb02.lean/declarations/recursivecumulantaux-eq-step--a3c168eb8bc832cb4db9e59c.md) | 81 | `result-track:a3c168eb8bc832cb4db9e59cb94027e18c9177ab4386d3359b8b543cf92dfe63` |
| 7 | `theorem` | [recursiveCumulantFamily_zero](../../../../mathematics/Algebra/RecursiveCumulantHierarchy/Variant9fa15e756b756f02be6d3b1348d9187956e49bf640830172d725e07c6d9cbb02.lean/declarations/recursivecumulantfamily-zero--41248bf18b0522dbb02b740b.md) | 92 | `result-track:41248bf18b0522dbb02b740bd47bd74bec0479ee97bd9466238534b5ba83669e` |
| 8 | `theorem` | [recursiveCumulantFamily_succ](../../../../mathematics/Algebra/RecursiveCumulantHierarchy/Variant9fa15e756b756f02be6d3b1348d9187956e49bf640830172d725e07c6d9cbb02.lean/declarations/recursivecumulantfamily-succ--84904ebdcca12a4f8fb3137b.md) | 103 | `result-track:84904ebdcca12a4f8fb3137b2d8f9982bd18c6167418a56ddbe04e3b549fb904` |
| 9 | `theorem` | [recursiveCumulantFamily_eq_recursive](../../../../mathematics/Algebra/RecursiveCumulantHierarchy/Variant9fa15e756b756f02be6d3b1348d9187956e49bf640830172d725e07c6d9cbb02.lean/declarations/recursivecumulantfamily-eq-recursive--64616cfa56090df0b522fc3a.md) | 138 | `result-track:64616cfa56090df0b522fc3a89a11f9ab6148393ad1185b999ff1c3bcb222252` |
| 10 | `theorem` | [recursiveCumulantFamily_eq_moment_sub_proper](../../../../mathematics/Algebra/RecursiveCumulantHierarchy/Variant9fa15e756b756f02be6d3b1348d9187956e49bf640830172d725e07c6d9cbb02.lean/declarations/recursivecumulantfamily-eq-moment-sub-proper--03d9b9163c56d49b08b60b72.md) | 155 | `result-track:03d9b9163c56d49b08b60b726d6bdc230fefb5f563732f5a2ff0cace582e8e58` |
| 11 | `structure` | [IsRecursiveCumulantFamily](../../../../mathematics/Algebra/RecursiveCumulantHierarchy/Variant9fa15e756b756f02be6d3b1348d9187956e49bf640830172d725e07c6d9cbb02.lean/declarations/isrecursivecumulantfamily--9e4e1ec66a8079e80bbb2fc1.md) | 170 | `declaration-track:9e4e1ec66a8079e80bbb2fc15d243f40a66e8443344dc4c48c6851966539fc81` |
| 12 | `theorem` | [recursiveCumulantFamily_isRecursive](../../../../mathematics/Algebra/RecursiveCumulantHierarchy/Variant9fa15e756b756f02be6d3b1348d9187956e49bf640830172d725e07c6d9cbb02.lean/declarations/recursivecumulantfamily-isrecursive--050b6ac9d88edabf563a457f.md) | 184 | `result-track:050b6ac9d88edabf563a457fdb5ee10647b78f7237a1ef6688f6905e66f3714d` |
| 13 | `theorem` | [IsRecursiveCumulantFamily.unique](../../../../mathematics/Algebra/RecursiveCumulantHierarchy/Variant9fa15e756b756f02be6d3b1348d9187956e49bf640830172d725e07c6d9cbb02.lean/declarations/isrecursivecumulantfamily-unique--6b798cc06e299245d836085d.md) | 193 | `result-track:6b798cc06e299245d836085d8fed1f05ce735cab0b591be3b4cfceaa057176c1` |
| 14 | `theorem` | [recursiveCumulantFamily_unique](../../../../mathematics/Algebra/RecursiveCumulantHierarchy/Variant9fa15e756b756f02be6d3b1348d9187956e49bf640830172d725e07c6d9cbb02.lean/declarations/recursivecumulantfamily-unique--4ccd042e8793bceff4a9e4e7.md) | 216 | `result-track:4ccd042e8793bceff4a9e4e74aa5aee5dc5b26df945632a9c812cc25c632ebae` |
| 15 | `def` | [MomentsAgreeBelow](../../../../mathematics/Algebra/RecursiveCumulantHierarchy/Variant9fa15e756b756f02be6d3b1348d9187956e49bf640830172d725e07c6d9cbb02.lean/declarations/momentsagreebelow--cbb761717cd7766062d38efb.md) | 225 | `declaration-track:cbb761717cd7766062d38efbba7a30fdc5e5a98ee696ef78dc5a691a6974d872` |
| 16 | `theorem` | [MomentsAgreeBelow.refl](../../../../mathematics/Algebra/RecursiveCumulantHierarchy/Variant9fa15e756b756f02be6d3b1348d9187956e49bf640830172d725e07c6d9cbb02.lean/declarations/momentsagreebelow-refl--cca42ce6604e8968f0736b5b.md) | 233 | `result-track:cca42ce6604e8968f0736b5b612b8d4a8220eb2029616a473a390f2b6af82bdd` |
| 17 | `theorem` | [MomentsAgreeBelow.symm](../../../../mathematics/Algebra/RecursiveCumulantHierarchy/Variant9fa15e756b756f02be6d3b1348d9187956e49bf640830172d725e07c6d9cbb02.lean/declarations/momentsagreebelow-symm--7d0b46a1265fdf3d06f6630b.md) | 241 | `result-track:7d0b46a1265fdf3d06f6630b8e44305a239af4c3188e516eebc8c018266353af` |
| 18 | `theorem` | [MomentsAgreeBelow.trans](../../../../mathematics/Algebra/RecursiveCumulantHierarchy/Variant9fa15e756b756f02be6d3b1348d9187956e49bf640830172d725e07c6d9cbb02.lean/declarations/momentsagreebelow-trans--d8173b8356fb17e837cf9b25.md) | 250 | `result-track:d8173b8356fb17e837cf9b25545c6436d9874388fecd6789c29a8e14cbcb31cd` |
| 19 | `theorem` | [recursiveCumulantFamily_agreeBelow_of_momentsAgreeBelow](../../../../mathematics/Algebra/RecursiveCumulantHierarchy/Variant9fa15e756b756f02be6d3b1348d9187956e49bf640830172d725e07c6d9cbb02.lean/declarations/recursivecumulantfamily-agreebelow-of-momentsagreebelow--9a6de8bc8232d726382beb7f.md) | 261 | `result-track:9a6de8bc8232d726382beb7f9db92656ee6d5bd1fdf009b2febb9e6b5a09e107` |
| 20 | `theorem` | [recursiveCumulantFamily_eq_of_momentsAgreeBelow_succ](../../../../mathematics/Algebra/RecursiveCumulantHierarchy/Variant9fa15e756b756f02be6d3b1348d9187956e49bf640830172d725e07c6d9cbb02.lean/declarations/recursivecumulantfamily-eq-of-momentsagreebelow-succ--62d3d33dd54599b5efcf3d12.md) | 295 | `result-track:62d3d33dd54599b5efcf3d125ea32e793bf1b7b80fdaf34230f15865c7f525ab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
