# Verification target: GRWTSK.Algebra.ReduceModChar.Variantc98a4d50a5e5323113b873d4d1ed0e1f19bddd1fc4255230bbd7b0f95f833eeb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "94bbc328731b374328bade0b1a821cf2c6bcc540",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/ReduceModChar/Variantc98a4d50a5e5323113b873d4d1ed0e1f19bddd1fc4255230bbd7b0f95f833eeb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/ReduceModChar/Variantc98a4d50a5e5323113b873d4d1ed0e1f19bddd1fc4255230bbd7b0f95f833eeb.lean/index.md) · [Full source](../../../../mathematics/Algebra/ReduceModChar/Variantc98a4d50a5e5323113b873d4d1ed0e1f19bddd1fc4255230bbd7b0f95f833eeb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `94bbc328731b374328bade0b1a821cf2c6bcc540`.

Source path: `GRWTSK/Algebra/ReduceModChar/Variantc98a4d50a5e5323113b873d4d1ed0e1f19bddd1fc4255230bbd7b0f95f833eeb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/ReduceModChar/Variantc98a4d50a5e5323113b873d4d1ed0e1f19bddd1fc4255230bbd7b0f95f833eeb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.NormNum.DivMod` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [CharP.isInt_of_mod](../../../../mathematics/Algebra/ReduceModChar/Variantc98a4d50a5e5323113b873d4d1ed0e1f19bddd1fc4255230bbd7b0f95f833eeb.lean/declarations/charp-isint-of-mod--f970a0a6e31ae18415832895.md) | 54 | `result-track:f970a0a6e31ae184158328954af476908dd8f88fe05a5f223269594e2a070576` |
| 2 | `lemma` | [CharP.isNat_pow](../../../../mathematics/Algebra/ReduceModChar/Variantc98a4d50a5e5323113b873d4d1ed0e1f19bddd1fc4255230bbd7b0f95f833eeb.lean/declarations/charp-isnat-pow--fd987e1305f2ff774b28dd02.md) | 58 | `result-track:fd987e1305f2ff774b28dd029ebc4ccdf95cacb84480dc6336903db1e6f13f9a` |
| 3 | `def` | [normBareNumeral](../../../../mathematics/Algebra/ReduceModChar/Variantc98a4d50a5e5323113b873d4d1ed0e1f19bddd1fc4255230bbd7b0f95f833eeb.lean/declarations/normbarenumeral--2432f0b1bd9158d7fa775097.md) | 67 | `declaration-track:2432f0b1bd9158d7fa775097fa29c251908aa1e0a203c19266537ba02e2e92ff` |
| 4 | `def` | [normPow](../../../../mathematics/Algebra/ReduceModChar/Variantc98a4d50a5e5323113b873d4d1ed0e1f19bddd1fc4255230bbd7b0f95f833eeb.lean/declarations/normpow--955a2f799d5465a3d8e291a4.md) | 79 | `declaration-track:955a2f799d5465a3d8e291a470aefcac13a7923bbf357eaef8df7771d4fdb999` |
| 5 | `def` | [normIntNumeral'](../../../../mathematics/Algebra/ReduceModChar/Variantc98a4d50a5e5323113b873d4d1ed0e1f19bddd1fc4255230bbd7b0f95f833eeb.lean/declarations/normintnumeral--9affd23aa08348c6c0b3326f.md) | 93 | `declaration-track:9affd23aa08348c6c0b3326fe8b38179f6edb990baa1e542784f9d1916912908` |
| 6 | `lemma` | [CharP.intCast_eq_mod](../../../../mathematics/Algebra/ReduceModChar/Variantc98a4d50a5e5323113b873d4d1ed0e1f19bddd1fc4255230bbd7b0f95f833eeb.lean/declarations/charp-intcast-eq-mod--0f25345cf3f2f0099514ffff.md) | 99 | `result-track:0f25345cf3f2f0099514ffffdd3af6610396bf788c3961e2fe2988050b22aaac` |
| 7 | `def` | [normIntNumeral](../../../../mathematics/Algebra/ReduceModChar/Variantc98a4d50a5e5323113b873d4d1ed0e1f19bddd1fc4255230bbd7b0f95f833eeb.lean/declarations/normintnumeral--ecb3462fe9dad5517d23a04e.md) | 105 | `declaration-track:ecb3462fe9dad5517d23a04e5b698d40c29d502ae1b2426003d49b34282af670` |
| 8 | `lemma` | [CharP.neg_eq_sub_one_mul](../../../../mathematics/Algebra/ReduceModChar/Variantc98a4d50a5e5323113b873d4d1ed0e1f19bddd1fc4255230bbd7b0f95f833eeb.lean/declarations/charp-neg-eq-sub-one-mul--4e43b677f43e94af33320c6c.md) | 110 | `result-track:4e43b677f43e94af33320c6c2ba8fb3841cdbf5ba8b54d1a6e5ead89bdb9e9c9` |
| 9 | `def` | [normNeg](../../../../mathematics/Algebra/ReduceModChar/Variantc98a4d50a5e5323113b873d4d1ed0e1f19bddd1fc4255230bbd7b0f95f833eeb.lean/declarations/normneg--b71abc2620ef575235bdd3b9.md) | 123 | `declaration-track:b71abc2620ef575235bdd3b951c70b3b5228e1a670f276f23f67ac347cb32906` |
| 10 | `lemma` | [CharP.neg_mul_eq_sub_one_mul](../../../../mathematics/Algebra/ReduceModChar/Variantc98a4d50a5e5323113b873d4d1ed0e1f19bddd1fc4255230bbd7b0f95f833eeb.lean/declarations/charp-neg-mul-eq-sub-one-mul--5c94cd31eefacccf6136aab2.md) | 139 | `result-track:5c94cd31eefacccf6136aab2afb679294691ba9c8afc077c23b890dc8bca2606` |
| 11 | `def` | [normNegCoeffMul](../../../../mathematics/Algebra/ReduceModChar/Variantc98a4d50a5e5323113b873d4d1ed0e1f19bddd1fc4255230bbd7b0f95f833eeb.lean/declarations/normnegcoeffmul--a865e3a6d3a24a7b42e72093.md) | 148 | `declaration-track:a865e3a6d3a24a7b42e720933bce9f8822ec6ad22ce27c6cf827e8302fad2ab7` |
| 12 | `inductive` | [TypeToCharPResult](../../../../mathematics/Algebra/ReduceModChar/Variantc98a4d50a5e5323113b873d4d1ed0e1f19bddd1fc4255230bbd7b0f95f833eeb.lean/declarations/typetocharpresult--15452cf51c4e5ad19cdddfc6.md) | 168 | `declaration-track:15452cf51c4e5ad19cdddfc67b477e95f77220e6c027e91d8a04cc05f1ff9b79` |
| 13 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ReduceModChar/Variantc98a4d50a5e5323113b873d4d1ed0e1f19bddd1fc4255230bbd7b0f95f833eeb.lean/declarations/instance--858befd59209e05fbd0d03b8.md) | 172 | `declaration-track:858befd59209e05fbd0d03b829829d1283c2ada68006152c8a863c68587ade86` |
| 14 | `def` | [typeToCharP](../../../../mathematics/Algebra/ReduceModChar/Variantc98a4d50a5e5323113b873d4d1ed0e1f19bddd1fc4255230bbd7b0f95f833eeb.lean/declarations/typetocharp--c86ee3ff33f153106284d763.md) | 179 | `declaration-track:c86ee3ff33f153106284d76390565194b7b8fe4e7f0cc62855da07744467ba03` |
| 15 | `def` | [matchAndNorm](../../../../mathematics/Algebra/ReduceModChar/Variantc98a4d50a5e5323113b873d4d1ed0e1f19bddd1fc4255230bbd7b0f95f833eeb.lean/declarations/matchandnorm--4f8b06fd72a8fc80670b80aa.md) | 212 | `declaration-track:4f8b06fd72a8fc80670b80aa3a5b44881ffa41706a2e9ad33b259d5ae6c914b8` |
| 16 | `def` | [derive](../../../../mathematics/Algebra/ReduceModChar/Variantc98a4d50a5e5323113b873d4d1ed0e1f19bddd1fc4255230bbd7b0f95f833eeb.lean/declarations/derive--3e188659add209c3c8844e85.md) | 242 | `declaration-track:3e188659add209c3c8844e85ef65a66bc00d11be3965da731056c81a65fa7be0` |
| 17 | `syntax` | [(anonymous)](../../../../mathematics/Algebra/ReduceModChar/Variantc98a4d50a5e5323113b873d4d1ed0e1f19bddd1fc4255230bbd7b0f95f833eeb.lean/declarations/syntax--abdaf798ce6f8295fc74f33d.md) | 292 | `declaration-track:abdaf798ce6f8295fc74f33d93d223d3ac77040bc89b2a3901de7de1cc723e60` |
| 18 | `syntax` | [(anonymous)](../../../../mathematics/Algebra/ReduceModChar/Variantc98a4d50a5e5323113b873d4d1ed0e1f19bddd1fc4255230bbd7b0f95f833eeb.lean/declarations/syntax--e1259ae4a4e2107053e869f1.md) | 294 | `declaration-track:e1259ae4a4e2107053e869f120c20bc28c28684e19ec64e4544761a73b627ab3` |
| 19 | `elab_rules` | [(anonymous)](../../../../mathematics/Algebra/ReduceModChar/Variantc98a4d50a5e5323113b873d4d1ed0e1f19bddd1fc4255230bbd7b0f95f833eeb.lean/declarations/elab-rules--ec50200cdb23d7ecc215299c.md) | 297 | `declaration-track:ec50200cdb23d7ecc215299c80f54564c5454116b27c2143f97aad3a4e951dd2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
