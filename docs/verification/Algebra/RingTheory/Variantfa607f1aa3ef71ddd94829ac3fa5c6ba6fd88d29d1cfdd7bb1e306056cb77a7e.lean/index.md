# Verification target: GRWTSK.Algebra.Ring.Variantfa607f1aa3ef71ddd94829ac3fa5c6ba6fd88d29d1cfdd7bb1e306056cb77a7e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9e95c55fadfb5940ff9f9d102c1374b15ff6ae7b",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Ring/Variantfa607f1aa3ef71ddd94829ac3fa5c6ba6fd88d29d1cfdd7bb1e306056cb77a7e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/RingTheory/Variantfa607f1aa3ef71ddd94829ac3fa5c6ba6fd88d29d1cfdd7bb1e306056cb77a7e.lean/index.md) · [Full source](../../../../mathematics/Algebra/RingTheory/Variantfa607f1aa3ef71ddd94829ac3fa5c6ba6fd88d29d1cfdd7bb1e306056cb77a7e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9e95c55fadfb5940ff9f9d102c1374b15ff6ae7b`.

Source path: `GRWTSK/Algebra/Ring/Variantfa607f1aa3ef71ddd94829ac3fa5c6ba6fd88d29d1cfdd7bb1e306056cb77a7e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Ring/Variantfa607f1aa3ef71ddd94829ac3fa5c6ba6fd88d29d1cfdd7bb1e306056cb77a7e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.GrindInstances` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Field.Defs` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `axiom` | [Real](../../../../mathematics/Algebra/RingTheory/Variantfa607f1aa3ef71ddd94829ac3fa5c6ba6fd88d29d1cfdd7bb1e306056cb77a7e.lean/declarations/real--e38a273680a6a114d5b7a7a9.md) | 14 | `declaration-track:e38a273680a6a114d5b7a7a90221d7b6f4eb6e11dc87daed48be30404c2e279c` |
| 2 | `axiom` | [Real.field](../../../../mathematics/Algebra/RingTheory/Variantfa607f1aa3ef71ddd94829ac3fa5c6ba6fd88d29d1cfdd7bb1e306056cb77a7e.lean/declarations/real-field--815db48c3573278558417669.md) | 16 | `declaration-track:815db48c357327855841766960963cc300f915070a49eccd5c2533bd25cfcd03` |
| 3 | `axiom` | [Real.linearOrder](../../../../mathematics/Algebra/RingTheory/Variantfa607f1aa3ef71ddd94829ac3fa5c6ba6fd88d29d1cfdd7bb1e306056cb77a7e.lean/declarations/real-linearorder--12fec137a9724cb544750c05.md) | 17 | `declaration-track:12fec137a9724cb544750c053734ab9fa4ba6bd71d60b29fa923980a5785e18a` |
| 4 | `axiom` | [Real.isStrictOrderedRing](../../../../mathematics/Algebra/RingTheory/Variantfa607f1aa3ef71ddd94829ac3fa5c6ba6fd88d29d1cfdd7bb1e306056cb77a7e.lean/declarations/real-isstrictorderedring--77cce7b2c769de36a4a007fd.md) | 18 | `declaration-track:77cce7b2c769de36a4a007fddfe85484b93fb991ef7af62458ba270d1ce26b3e` |
| 5 | `example` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantfa607f1aa3ef71ddd94829ac3fa5c6ba6fd88d29d1cfdd7bb1e306056cb77a7e.lean/declarations/example--684bf793d37d1a75621217db.md) | 20 | `declaration-track:684bf793d37d1a75621217dbbd08b0c4b34a22c552cd230391ced4752de98ffd` |
| 6 | `example` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantfa607f1aa3ef71ddd94829ac3fa5c6ba6fd88d29d1cfdd7bb1e306056cb77a7e.lean/declarations/example--d97610239e1cd49a2d0cd819.md) | 21 | `declaration-track:d97610239e1cd49a2d0cd819b4b7ee1c7f6eb67307cfdd466933c330c53cf432` |
| 7 | `example` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantfa607f1aa3ef71ddd94829ac3fa5c6ba6fd88d29d1cfdd7bb1e306056cb77a7e.lean/declarations/example--0ee49bb57f5d286a6bf2186d.md) | 22 | `declaration-track:0ee49bb57f5d286a6bf2186dfc9abdf0a3c588f4fa3df845720fa012b369522b` |
| 8 | `example` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantfa607f1aa3ef71ddd94829ac3fa5c6ba6fd88d29d1cfdd7bb1e306056cb77a7e.lean/declarations/example--f8894d2fc193c4c0f57bdf28.md) | 23 | `declaration-track:f8894d2fc193c4c0f57bdf283b44ae88679fb2a4a702b2b981582ff189ab5ae8` |
| 9 | `example` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantfa607f1aa3ef71ddd94829ac3fa5c6ba6fd88d29d1cfdd7bb1e306056cb77a7e.lean/declarations/example--75d8df6845e5b344025d3f5b.md) | 25 | `declaration-track:75d8df6845e5b344025d3f5bc85c2385accf3f9385dd1908ec81f66afff92c21` |
| 10 | `example` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantfa607f1aa3ef71ddd94829ac3fa5c6ba6fd88d29d1cfdd7bb1e306056cb77a7e.lean/declarations/example--984eab48568c8871b62729c9.md) | 27 | `declaration-track:984eab48568c8871b62729c9b6d38bf096783691451858bbe460ef710f430472` |
| 11 | `example` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantfa607f1aa3ef71ddd94829ac3fa5c6ba6fd88d29d1cfdd7bb1e306056cb77a7e.lean/declarations/example--ddae5f19f75132e75f1c657a.md) | 30 | `declaration-track:ddae5f19f75132e75f1c657a93119101e453651a5d1d67bd1292891fa536ea87` |
| 12 | `example` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantfa607f1aa3ef71ddd94829ac3fa5c6ba6fd88d29d1cfdd7bb1e306056cb77a7e.lean/declarations/example--3c6d38e4e083a30b8e3cb9f8.md) | 31 | `declaration-track:3c6d38e4e083a30b8e3cb9f891661dbd336cf3b619196d9de4da7ead74b06a52` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
