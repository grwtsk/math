# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Constructions.Variant69c89eb5a4fc7cbf79494fab933a33c648b35353600c0440e0e20d0294f88d61

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d00c640fb1834aa40eae55960e72e43e1bb41437",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Constructions/Variant69c89eb5a4fc7cbf79494fab933a33c648b35353600c0440e0e20d0294f88d61.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Constructions/Variant69c89eb5a4fc7cbf79494fab933a33c648b35353600c0440e0e20d0294f88d61.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Constructions/Variant69c89eb5a4fc7cbf79494fab933a33c648b35353600c0440e0e20d0294f88d61.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d00c640fb1834aa40eae55960e72e43e1bb41437`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Constructions/Variant69c89eb5a4fc7cbf79494fab933a33c648b35353600c0440e0e20d0294f88d61.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Constructions/Variant69c89eb5a4fc7cbf79494fab933a33c648b35353600c0440e0e20d0294f88d61.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FiniteInter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Constructions/Variant69c89eb5a4fc7cbf79494fab933a33c648b35353600c0440e0e20d0294f88d61.lean/declarations/finiteinter--06813ba283faca1ae909138b.md) | 41 | `declaration-track:06813ba283faca1ae909138bb8983b094aa6b079c7bc429dfc7f3acfbcaab9c7` |
| 2 | `inductive` | [MemFiniteInterClosure](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Constructions/Variant69c89eb5a4fc7cbf79494fab933a33c648b35353600c0440e0e20d0294f88d61.lean/declarations/memfiniteinterclosure--7baf31d319a73b7bddf3bff1.md) | 51 | `declaration-track:7baf31d319a73b7bddf3bff1da09dc5c5c0de5a776db8808762c3ad2f35e9e45` |
| 3 | `def` | [finiteInterClosure](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Constructions/Variant69c89eb5a4fc7cbf79494fab933a33c648b35353600c0440e0e20d0294f88d61.lean/declarations/finiteinterclosure--5762a0def5eeefe7e81968ff.md) | 58 | `declaration-track:5762a0def5eeefe7e81968ffe041abddec7e4b5d6950ca247fc6f120736da180` |
| 4 | `lemma` | [subset_finiteInterClosure](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Constructions/Variant69c89eb5a4fc7cbf79494fab933a33c648b35353600c0440e0e20d0294f88d61.lean/declarations/subset-finiteinterclosure--69d4fded3ac1e6b36922d314.md) | 60 | `result-track:69d4fded3ac1e6b36922d31420de2999985066ca35e244a90b523993ba321d20` |
| 5 | `theorem` | [finiteInterClosure_finiteInter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Constructions/Variant69c89eb5a4fc7cbf79494fab933a33c648b35353600c0440e0e20d0294f88d61.lean/declarations/finiteinterclosure-finiteinter--9e202c2413091da0d58bc504.md) | 62 | `result-track:9e202c2413091da0d58bc5042b52eaf2d6d98d309dccc553ee200fce3e433a0e` |
| 6 | `lemma` | [finiteInterClosure_induction](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Constructions/Variant69c89eb5a4fc7cbf79494fab933a33c648b35353600c0440e0e20d0294f88d61.lean/declarations/finiteinterclosure-induction--28131c0b8cee187735b2c432.md) | 72 | `result-track:28131c0b8cee187735b2c432124deda4d2431adb695eb9dedd6dabe2688d5f7b` |
| 7 | `lemma` | [finiteInterClosure_min](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Constructions/Variant69c89eb5a4fc7cbf79494fab933a33c648b35353600c0440e0e20d0294f88d61.lean/declarations/finiteinterclosure-min--927d1b6f19eee4a115976691.md) | 85 | `result-track:927d1b6f19eee4a1159766917a4eeabb454d29f2f2fc41244bcb21bf479f4c62` |
| 8 | `theorem` | [finiteInter_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Constructions/Variant69c89eb5a4fc7cbf79494fab933a33c648b35353600c0440e0e20d0294f88d61.lean/declarations/finiteinter-mem--9ded7ca77bf76535a6ae0a17.md) | 93 | `result-track:9ded7ca77bf76535a6ae0a17ec1fd684684a046c35ba958c6757e2d08824a2b7` |
| 9 | `theorem` | [finiteInterClosure_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Constructions/Variant69c89eb5a4fc7cbf79494fab933a33c648b35353600c0440e0e20d0294f88d61.lean/declarations/finiteinterclosure-insert--1d082fd612a034dbd4f2d264.md) | 103 | `result-track:1d082fd612a034dbd4f2d2648b1fa637e90986115289af1fd9581cdaa4d3b789` |
| 10 | `theorem` | [mk₂](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Constructions/Variant69c89eb5a4fc7cbf79494fab933a33c648b35353600c0440e0e20d0294f88d61.lean/declarations/mk--b0fd039077632006d519a113.md) | 125 | `result-track:b0fd039077632006d519a113062b0160b85bf0d9ee0e6b0b3cee2a0ccf34f792` |
| 11 | `theorem` | [Set.biUnion_empty_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Constructions/Variant69c89eb5a4fc7cbf79494fab933a33c648b35353600c0440e0e20d0294f88d61.lean/declarations/set-biunion-empty-finset--a53e09fa56e2922036bd4b4e.md) | 134 | `result-track:a53e09fa56e2922036bd4b4e8fde413cf94c1d38922beade2ae3077c918959eb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
