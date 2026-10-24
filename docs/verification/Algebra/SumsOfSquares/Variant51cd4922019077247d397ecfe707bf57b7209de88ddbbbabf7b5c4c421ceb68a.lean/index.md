# Verification target: GRWTSK.Algebra.SumsOfSquares.Variant51cd4922019077247d397ecfe707bf57b7209de88ddbbbabf7b5c4c421ceb68a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b3fa1846fab3c24bca0b351b2ddb06e1fad4afe1",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/SumsOfSquares/Variant51cd4922019077247d397ecfe707bf57b7209de88ddbbbabf7b5c4c421ceb68a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/SumsOfSquares/Variant51cd4922019077247d397ecfe707bf57b7209de88ddbbbabf7b5c4c421ceb68a.lean/index.md) · [Full source](../../../../mathematics/Algebra/SumsOfSquares/Variant51cd4922019077247d397ecfe707bf57b7209de88ddbbbabf7b5c4c421ceb68a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b3fa1846fab3c24bca0b351b2ddb06e1fad4afe1`.

Source path: `GRWTSK/Algebra/SumsOfSquares/Variant51cd4922019077247d397ecfe707bf57b7209de88ddbbbabf7b5c4c421ceb68a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/SumsOfSquares/Variant51cd4922019077247d397ecfe707bf57b7209de88ddbbbabf7b5c4c421ceb68a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.Even` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Subsemiring.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ApplyFun` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [IsSumSq](../../../../mathematics/Algebra/SumsOfSquares/Variant51cd4922019077247d397ecfe707bf57b7209de88ddbbbabf7b5c4c421ceb68a.lean/declarations/issumsq--87aeb54872431c8afdcb8b1d.md) | 35 | `declaration-track:87aeb54872431c8afdcb8b1d2d4944ab1378a219f492487b24189b77efcf2697` |
| 2 | `theorem` | [IsSumSq.rec'](../../../../mathematics/Algebra/SumsOfSquares/Variant51cd4922019077247d397ecfe707bf57b7209de88ddbbbabf7b5c4c421ceb68a.lean/declarations/issumsq-rec--0099902e37a120eedb4c6bc8.md) | 40 | `result-track:0099902e37a120eedb4c6bc84f724a0f1fa710df974dfae250c2a3c84d188e70` |
| 3 | `theorem` | [IsSumSq.add](../../../../mathematics/Algebra/SumsOfSquares/Variant51cd4922019077247d397ecfe707bf57b7209de88ddbbbabf7b5c4c421ceb68a.lean/declarations/issumsq-add--cf2e30d543e47bb27638af5b.md) | 54 | `result-track:cf2e30d543e47bb27638af5b2d236dade1a94fedb6712fb1674a47dea975f604` |
| 4 | `def` | [sumSq](../../../../mathematics/Algebra/SumsOfSquares/Variant51cd4922019077247d397ecfe707bf57b7209de88ddbbbabf7b5c4c421ceb68a.lean/declarations/sumsq--313077c270d54cc58d70302f.md) | 67 | `declaration-track:313077c270d54cc58d70302f65f14959cc4f5625ce8f4757f7af7eb8149f8072` |
| 5 | `theorem` | [mem_sumSq](../../../../mathematics/Algebra/SumsOfSquares/Variant51cd4922019077247d397ecfe707bf57b7209de88ddbbbabf7b5c4c421ceb68a.lean/declarations/mem-sumsq--477e8325d0e1a16478ae8079.md) | 74 | `result-track:477e8325d0e1a16478ae807944900292b7745296252aa77f9770c31334f255f4` |
| 6 | `theorem` | [IsSumSq.mul_self](../../../../mathematics/Algebra/SumsOfSquares/Variant51cd4922019077247d397ecfe707bf57b7209de88ddbbbabf7b5c4c421ceb68a.lean/declarations/issumsq-mul-self--98ad7b4fbe7cef68605882a3.md) | 79 | `result-track:98ad7b4fbe7cef68605882a38be2d88039963eaba5340bd39413251e529f6b12` |
| 7 | `theorem` | [IsSquare.isSumSq](../../../../mathematics/Algebra/SumsOfSquares/Variant51cd4922019077247d397ecfe707bf57b7209de88ddbbbabf7b5c4c421ceb68a.lean/declarations/issquare-issumsq--f3f8830f8510183a71844ce1.md) | 86 | `result-track:f3f8830f8510183a71844ce16f89185d31133ae6ff3e2efc33025b457c1c5b4b` |
| 8 | `theorem` | [AddSubmonoid.closure_isSquare](../../../../mathematics/Algebra/SumsOfSquares/Variant51cd4922019077247d397ecfe707bf57b7209de88ddbbbabf7b5c4c421ceb68a.lean/declarations/addsubmonoid-closure-issquare--3dafdbc1e84e9ffbb85d6aa3.md) | 94 | `result-track:3dafdbc1e84e9ffbb85d6aa3bd13cc290b470b8102f8c56ad0e91c0fd72fb8d9` |
| 9 | `theorem` | [IsSumSq.sum](../../../../mathematics/Algebra/SumsOfSquares/Variant51cd4922019077247d397ecfe707bf57b7209de88ddbbbabf7b5c4c421ceb68a.lean/declarations/issumsq-sum--c12778d733fe07771116532b.md) | 105 | `result-track:c12778d733fe07771116532b04d8da8632858a0bab07810d1821e5b514ceb922` |
| 10 | `theorem` | [IsSumSq.sum_isSquare](../../../../mathematics/Algebra/SumsOfSquares/Variant51cd4922019077247d397ecfe707bf57b7209de88ddbbbabf7b5c4c421ceb68a.lean/declarations/issumsq-sum-issquare--14e4c58f332586396915e35b.md) | 113 | `result-track:14e4c58f332586396915e35b28f4a0f4da041b39c8465cd346bded470e7e6c81` |
| 11 | `theorem` | [IsSumSq.sum_mul_self](../../../../mathematics/Algebra/SumsOfSquares/Variant51cd4922019077247d397ecfe707bf57b7209de88ddbbbabf7b5c4c421ceb68a.lean/declarations/issumsq-sum-mul-self--d4721f3cd09844e9d536068e.md) | 122 | `result-track:d4721f3cd09844e9d536068e42bbc3b65cfc61fab2afc1ec9ffabb16177dfe05` |
| 12 | `def` | [sumSq](../../../../mathematics/Algebra/SumsOfSquares/Variant51cd4922019077247d397ecfe707bf57b7209de88ddbbbabf7b5c4c421ceb68a.lean/declarations/sumsq--c0bbaa9b471edc57bf2f52cb.md) | 135 | `declaration-track:c0bbaa9b471edc57bf2f52cb63170f489a22cf40f7c41de739dda43cc15bee68` |
| 13 | `theorem` | [sumSq_toAddSubmonoid](../../../../mathematics/Algebra/SumsOfSquares/Variant51cd4922019077247d397ecfe707bf57b7209de88ddbbbabf7b5c4c421ceb68a.lean/declarations/sumsq-toaddsubmonoid--dc2f77838c6a942a7cf3b19d.md) | 137 | `result-track:dc2f77838c6a942a7cf3b19d8db3ed3ccead42ca07788831e718dc66119e6089` |
| 14 | `theorem` | [mem_sumSq](../../../../mathematics/Algebra/SumsOfSquares/Variant51cd4922019077247d397ecfe707bf57b7209de88ddbbbabf7b5c4c421ceb68a.lean/declarations/mem-sumsq--37c6dabaa07afb918d8e1136.md) | 142 | `result-track:37c6dabaa07afb918d8e1136e710df5f89028e61d62afce9f5d56e50e9bed5fe` |
| 15 | `theorem` | [coe_sumSq](../../../../mathematics/Algebra/SumsOfSquares/Variant51cd4922019077247d397ecfe707bf57b7209de88ddbbbabf7b5c4c421ceb68a.lean/declarations/coe-sumsq--65254665f03c5c3e3a853ca1.md) | 145 | `result-track:65254665f03c5c3e3a853ca100c04326c366ba8690cc0b0e7a6a598df2342e9f` |
| 16 | `theorem` | [closure_isSquare](../../../../mathematics/Algebra/SumsOfSquares/Variant51cd4922019077247d397ecfe707bf57b7209de88ddbbbabf7b5c4c421ceb68a.lean/declarations/closure-issquare--49251de9df0a18be15102713.md) | 147 | `result-track:49251de9df0a18be15102713ed761cb7f14643713a06081813d83a60d679f5e3` |
| 17 | `theorem` | [IsSumSq.mul](../../../../mathematics/Algebra/SumsOfSquares/Variant51cd4922019077247d397ecfe707bf57b7209de88ddbbbabf7b5c4c421ceb68a.lean/declarations/issumsq-mul--fd7e912b5c18d3af71467281.md) | 156 | `result-track:fd7e912b5c18d3af71467281ab864045a4b49dba5d643db30a566d7fa256076c` |
| 18 | `theorem` | [Submonoid.square_subsemiringClosure](../../../../mathematics/Algebra/SumsOfSquares/Variant51cd4922019077247d397ecfe707bf57b7209de88ddbbbabf7b5c4c421ceb68a.lean/declarations/submonoid-square-subsemiringclosure--255f38be9c1a3174d26d9bfe.md) | 160 | `result-track:255f38be9c1a3174d26d9bfe704c5692c94250a2aa3bb582f5f791e6a7fcea45` |
| 19 | `def` | [sumSq](../../../../mathematics/Algebra/SumsOfSquares/Variant51cd4922019077247d397ecfe707bf57b7209de88ddbbbabf7b5c4c421ceb68a.lean/declarations/sumsq--58e3278774c569eaa1e7c950.md) | 171 | `declaration-track:58e3278774c569eaa1e7c9500caa17895b028941256d4805b1d54ada6d3cac37` |
| 20 | `theorem` | [sumSq_toNonUnitalSubsemiring](../../../../mathematics/Algebra/SumsOfSquares/Variant51cd4922019077247d397ecfe707bf57b7209de88ddbbbabf7b5c4c421ceb68a.lean/declarations/sumsq-tononunitalsubsemiring--a0eab65a48e2f0323e406460.md) | 175 | `result-track:a0eab65a48e2f0323e406460ddf6396ee03730e551dfb74fd88896937f93fef2` |
| 21 | `theorem` | [mem_sumSq](../../../../mathematics/Algebra/SumsOfSquares/Variant51cd4922019077247d397ecfe707bf57b7209de88ddbbbabf7b5c4c421ceb68a.lean/declarations/mem-sumsq--cea9bbd01352871c1f53ecfa.md) | 179 | `result-track:cea9bbd01352871c1f53ecfa730ef909581ca2fc5d1964b57f851608ca3a8a69` |
| 22 | `theorem` | [coe_sumSq](../../../../mathematics/Algebra/SumsOfSquares/Variant51cd4922019077247d397ecfe707bf57b7209de88ddbbbabf7b5c4c421ceb68a.lean/declarations/coe-sumsq--9ad943ad7e24c08201fcb93c.md) | 182 | `result-track:9ad943ad7e24c08201fcb93ccecedbb70c089f6f94e1abb71e761df88bf793ea` |
| 23 | `theorem` | [closure_isSquare](../../../../mathematics/Algebra/SumsOfSquares/Variant51cd4922019077247d397ecfe707bf57b7209de88ddbbbabf7b5c4c421ceb68a.lean/declarations/closure-issquare--fe1a327baafedc206ce3472c.md) | 184 | `result-track:fe1a327baafedc206ce3472cf30c0d1ec359c04781e46c1a42b9df0be23b8213` |
| 24 | `theorem` | [IsSumSq.prod](../../../../mathematics/Algebra/SumsOfSquares/Variant51cd4922019077247d397ecfe707bf57b7209de88ddbbbabf7b5c4c421ceb68a.lean/declarations/issumsq-prod--b9061a188c75526a825b1cd8.md) | 191 | `result-track:b9061a188c75526a825b1cd85eefa6dd03004371850830ae77905b90c912df27` |
| 25 | `theorem` | [IsSumSq.nonneg](../../../../mathematics/Algebra/SumsOfSquares/Variant51cd4922019077247d397ecfe707bf57b7209de88ddbbbabf7b5c4c421ceb68a.lean/declarations/issumsq-nonneg--1ccb209be000c0fe93543328.md) | 199 | `result-track:1ccb209be000c0fe93543328cb6e049e0598c1c4be90748b6971104edd1f58cc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
