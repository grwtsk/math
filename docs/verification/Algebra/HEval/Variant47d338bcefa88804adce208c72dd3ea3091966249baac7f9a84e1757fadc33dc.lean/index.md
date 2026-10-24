# Verification target: GRWTSK.Algebra.HEval.Variant47d338bcefa88804adce208c72dd3ea3091966249baac7f9a84e1757fadc33dc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5595bcab07ad6c8311770b34457259a587fef804",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/HEval/Variant47d338bcefa88804adce208c72dd3ea3091966249baac7f9a84e1757fadc33dc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/HEval/Variant47d338bcefa88804adce208c72dd3ea3091966249baac7f9a84e1757fadc33dc.lean/index.md) · [Full source](../../../../mathematics/Algebra/HEval/Variant47d338bcefa88804adce208c72dd3ea3091966249baac7f9a84e1757fadc33dc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5595bcab07ad6c8311770b34457259a587fef804`.

Source path: `GRWTSK/Algebra/HEval/Variant47d338bcefa88804adce208c72dd3ea3091966249baac7f9a84e1757fadc33dc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/HEval/Variant47d338bcefa88804adce208c72dd3ea3091966249baac7f9a84e1757fadc33dc.lean.json)

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
| 1 | `abbrev` | [powerSeriesFamily](../../../../mathematics/Algebra/HEval/Variant47d338bcefa88804adce208c72dd3ea3091966249baac7f9a84e1757fadc33dc.lean/declarations/powerseriesfamily--4c0e294e4828a3bcfbc48781.md) | 59 | `declaration-track:4c0e294e4828a3bcfbc4878179a1c930664a9ef306e221a2822a81eaec2c8f6d` |
| 2 | `theorem` | [powerSeriesFamily_of_not_orderTop_pos](../../../../mathematics/Algebra/HEval/Variant47d338bcefa88804adce208c72dd3ea3091966249baac7f9a84e1757fadc33dc.lean/declarations/powerseriesfamily-of-not-ordertop-pos--5409ff66acfaabb80248ea87.md) | 62 | `result-track:5409ff66acfaabb80248ea87517ea7e38fbdf37aae07eb3c6e2c9c5794237dc7` |
| 3 | `theorem` | [powerSeriesFamily_of_orderTop_pos](../../../../mathematics/Algebra/HEval/Variant47d338bcefa88804adce208c72dd3ea3091966249baac7f9a84e1757fadc33dc.lean/declarations/powerseriesfamily-of-ordertop-pos--8c5e626eeb669497276f27fa.md) | 68 | `result-track:8c5e626eeb669497276f27fa73c7771da2ea6cf9326bd36c1a7103db777b87e0` |
| 4 | `theorem` | [powerSeriesFamily_hsum_zero](../../../../mathematics/Algebra/HEval/Variant47d338bcefa88804adce208c72dd3ea3091966249baac7f9a84e1757fadc33dc.lean/declarations/powerseriesfamily-hsum-zero--773264b6f9f72e028a5ef06b.md) | 73 | `result-track:773264b6f9f72e028a5ef06b24604a7f61b95a890a2f1c0f99568c9017a1f259` |
| 5 | `theorem` | [powerSeriesFamily_add](../../../../mathematics/Algebra/HEval/Variant47d338bcefa88804adce208c72dd3ea3091966249baac7f9a84e1757fadc33dc.lean/declarations/powerseriesfamily-add--3254ad0115a488a6b64bad29.md) | 84 | `result-track:3254ad0115a488a6b64bad29a2a3b62432e6fe16eb3c6341b89f05146a49ad2d` |
| 6 | `theorem` | [powerSeriesFamily_smul](../../../../mathematics/Algebra/HEval/Variant47d338bcefa88804adce208c72dd3ea3091966249baac7f9a84e1757fadc33dc.lean/declarations/powerseriesfamily-smul--c49fbdf736fcb156621b0f21.md) | 89 | `result-track:c49fbdf736fcb156621b0f214620945ff08bf65bfcd61e530a355ac4b8dd9a2d` |
| 7 | `theorem` | [support_powerSeriesFamily_subset](../../../../mathematics/Algebra/HEval/Variant47d338bcefa88804adce208c72dd3ea3091966249baac7f9a84e1757fadc33dc.lean/declarations/support-powerseriesfamily-subset--dc90ccca0ab6cada601eba6e.md) | 95 | `result-track:dc90ccca0ab6cada601eba6eec274c1ad626b9438e49263b41e9b51c115a2224` |
| 8 | `theorem` | [hsum_powerSeriesFamily_mul](../../../../mathematics/Algebra/HEval/Variant47d338bcefa88804adce208c72dd3ea3091966249baac7f9a84e1757fadc33dc.lean/declarations/hsum-powerseriesfamily-mul--6639f788df93c6407af55f93.md) | 125 | `result-track:6639f788df93c6407af55f936ad0a3e300019e16b4d579a024fcfa413c98267c` |
| 9 | `def` | [heval](../../../../mathematics/Algebra/HEval/Variant47d338bcefa88804adce208c72dd3ea3091966249baac7f9a84e1757fadc33dc.lean/declarations/heval--c25aa8d6e47db00ee887eb11.md) | 175 | `declaration-track:c25aa8d6e47db00ee887eb11aa8cffa4a2a9d97948e7eb2e63139278b931882a` |
| 10 | `theorem` | [heval_mul](../../../../mathematics/Algebra/HEval/Variant47d338bcefa88804adce208c72dd3ea3091966249baac7f9a84e1757fadc33dc.lean/declarations/heval-mul--64aea863d91f1c86b1821c8c.md) | 197 | `result-track:64aea863d91f1c86b1821c8cc071bb2114fae0c018761e79fe4afbdb4b550166` |
| 11 | `theorem` | [heval_C](../../../../mathematics/Algebra/HEval/Variant47d338bcefa88804adce208c72dd3ea3091966249baac7f9a84e1757fadc33dc.lean/declarations/heval-c--ce61757a756aaee38b69e590.md) | 200 | `result-track:ce61757a756aaee38b69e5909ab50deb05459729846b26d4eed09cf98fc9d828` |
| 12 | `theorem` | [heval_X](../../../../mathematics/Algebra/HEval/Variant47d338bcefa88804adce208c72dd3ea3091966249baac7f9a84e1757fadc33dc.lean/declarations/heval-x--648ff4a796614ad7eca66d21.md) | 207 | `result-track:648ff4a796614ad7eca66d2174ebe24529b30133f35db2f2678185eb995c55c9` |
| 13 | `theorem` | [heval_unit](../../../../mathematics/Algebra/HEval/Variant47d338bcefa88804adce208c72dd3ea3091966249baac7f9a84e1757fadc33dc.lean/declarations/heval-unit--5fe45d9e09d43532d6401676.md) | 214 | `result-track:5fe45d9e09d43532d64016763d977987984ed9c726bab2473e1f5b0754814e15` |
| 14 | `theorem` | [coeff_heval](../../../../mathematics/Algebra/HEval/Variant47d338bcefa88804adce208c72dd3ea3091966249baac7f9a84e1757fadc33dc.lean/declarations/coeff-heval--00d6cc4bb65ebfac548d23e0.md) | 219 | `result-track:00d6cc4bb65ebfac548d23e0a000422ac4862dec10c5c0685d18b98fc24552da` |
| 15 | `theorem` | [coeff_heval_zero](../../../../mathematics/Algebra/HEval/Variant47d338bcefa88804adce208c72dd3ea3091966249baac7f9a84e1757fadc33dc.lean/declarations/coeff-heval-zero--ac5fc08c2b42d64fd2560ad8.md) | 224 | `result-track:ac5fc08c2b42d64fd2560ad88efb7050f94e02201eef3264f9a586633bcb3028` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
