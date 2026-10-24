# Verification target: GRWTSK.Analysis.Complex.PortFiberHolomorphy

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7567ca3677168226f8a712c0e1f8b2272dd8f468",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/PortFiberHolomorphy.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberHolomorphy.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberHolomorphy.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7567ca3677168226f8a712c0e1f8b2272dd8f468`.

Source path: `GRWTSK/Analysis/Complex/PortFiberHolomorphy.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/PortFiberHolomorphy.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Topology.PortFiber.Path`](../../../../mathematics/Topology/PortFiber/Path.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Domain](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberHolomorphy.lean/declarations/domain--eaacc81d0188c1916aca162d.md) | 8 | `declaration-track:eaacc81d0188c1916aca162d09d284b681af04af5145c12f56a17cf702b90f5c` |
| 2 | `structure` | [Port](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberHolomorphy.lean/declarations/port--692163916fcc5b15d40d19b5.md) | 12 | `declaration-track:692163916fcc5b15d40d19b5eca57b934e717e850dc6f632e5adad438a98abcf` |
| 3 | `def` | [identity](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberHolomorphy.lean/declarations/identity--78db0483f63a12bf0b173f29.md) | 19 | `declaration-track:78db0483f63a12bf0b173f29e5311c800eb1e18b237e99b91627b409106e05df` |
| 4 | `def` | [comp](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberHolomorphy.lean/declarations/comp--a2c75454eee125b53a1dd2f8.md) | 24 | `declaration-track:a2c75454eee125b53a1dd2f8a6a0678099d08bcc9152acdd704d8e822c1abf9d` |
| 5 | `def` | [system](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberHolomorphy.lean/declarations/system--5594892bae78db5febdad166.md) | 31 | `declaration-track:5594892bae78db5febdad166e63ec7bf8325a3f95b5a06f7e1092acf8b9a7a14` |
| 6 | `structure` | [HolomorphicCertificate](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberHolomorphy.lean/declarations/holomorphiccertificate--3f6686d4481027b80eb07661.md) | 46 | `declaration-track:3f6686d4481027b80eb076613799921797f42e623e6ecd58160e5553105558a3` |
| 7 | `theorem` | [continuousOn](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberHolomorphy.lean/declarations/continuouson--117f7ba9bca4ba6947607cc9.md) | 52 | `result-track:117f7ba9bca4ba6947607cc9bd840509c2b81731d9a6f7cbc302b6c8389936b1` |
| 8 | `def` | [identity](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberHolomorphy.lean/declarations/identity--7c002486e1a0ea052667f693.md) | 57 | `declaration-track:7c002486e1a0ea052667f6933d3ddf11e945fd8faba94a1cac79974cf1909eac` |
| 9 | `def` | [comp](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberHolomorphy.lean/declarations/comp--e2c733de2dffd2a520cf7a66.md) | 61 | `declaration-track:e2c733de2dffd2a520cf7a6667b55d193d42aac238053322b4f2d0e415b53f3b` |
| 10 | `def` | [composableProperty](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberHolomorphy.lean/declarations/composableproperty--546b518a3feca969223d25f3.md) | 68 | `declaration-track:546b518a3feca969223d25f3def33bb0356aaac42ff2bd4509951e201ca5ebf4` |
| 11 | `def` | [whole](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberHolomorphy.lean/declarations/whole--2d45927262d08c2752f7e1f1.md) | 79 | `declaration-track:2d45927262d08c2752f7e1f1641a1e0623804707df85a4bb0f3c50d55c39d527` |
| 12 | `def` | [translation](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberHolomorphy.lean/declarations/translation--b4b2bffff1564e572452727a.md) | 82 | `declaration-track:b4b2bffff1564e572452727a0cdf7d811503b10c44fecde71cb7beb8073a0690` |
| 13 | `def` | [translationCertificate](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberHolomorphy.lean/declarations/translationcertificate--fd2f3dd998476ce963e5afd7.md) | 87 | `declaration-track:fd2f3dd998476ce963e5afd73de609f705bcc0292ec69dfeb109b3ab159de1de` |
| 14 | `def` | [square](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberHolomorphy.lean/declarations/square--15205c5022e47f2684f08037.md) | 91 | `declaration-track:15205c5022e47f2684f08037d0636ea945b80f7cba82065117ab835a6486a586` |
| 15 | `def` | [squareCertificate](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberHolomorphy.lean/declarations/squarecertificate--d8215ed26cc9bfe00ec2f1a1.md) | 96 | `declaration-track:d8215ed26cc9bfe00ec2f1a1e890523054737c77841b7f9aa29ca7c82e806afd` |
| 16 | `def` | [translatedSquare](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberHolomorphy.lean/declarations/translatedsquare--ca0f1b834e2d9de8c996f229.md) | 100 | `declaration-track:ca0f1b834e2d9de8c996f2290c199e1de021691964b14cc600f59ce25cf8049a` |
| 17 | `def` | [translatedSquareCertificate](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberHolomorphy.lean/declarations/translatedsquarecertificate--d8bdba72d1b60b778deef565.md) | 104 | `declaration-track:d8bdba72d1b60b778deef56563afd68b04942cb11f3bcc55f5401b5153251b62` |
| 18 | `def` | [translatedSquarePath](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberHolomorphy.lean/declarations/translatedsquarepath--383ad6631934706cd3cdbd5f.md) | 109 | `declaration-track:383ad6631934706cd3cdbd5f319bc0f7c77d457445138135bd5bbe868d2f1bba` |
| 19 | `theorem` | [translatedSquarePath_certified](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberHolomorphy.lean/declarations/translatedsquarepath-certified--e9a7bbaa0d49503c5b1b633a.md) | 116 | `result-track:e9a7bbaa0d49503c5b1b633a5b04576dcc90e3b7d7635257b5dc5f50d79e0b9d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
