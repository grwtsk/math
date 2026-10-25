# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Imo1982Q1.Variant9796bf9a9cf0e21004d001c1db8b5749664f757ae72a1127b0867bd8e059f4c2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d4baf65af3a2ae4a9ef1f34a3a9dbfa60cf25a4",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1982Q1/Variant9796bf9a9cf0e21004d001c1db8b5749664f757ae72a1127b0867bd8e059f4c2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1982Q1/Variant9796bf9a9cf0e21004d001c1db8b5749664f757ae72a1127b0867bd8e059f4c2.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1982Q1/Variant9796bf9a9cf0e21004d001c1db8b5749664f757ae72a1127b0867bd8e059f4c2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d4baf65af3a2ae4a9ef1f34a3a9dbfa60cf25a4`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1982Q1/Variant9796bf9a9cf0e21004d001c1db8b5749664f757ae72a1127b0867bd8e059f4c2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1982Q1/Variant9796bf9a9cf0e21004d001c1db8b5749664f757ae72a1127b0867bd8e059f4c2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.NormNum` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.PNat.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsGood](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1982Q1/Variant9796bf9a9cf0e21004d001c1db8b5749664f757ae72a1127b0867bd8e059f4c2.lean/declarations/isgood--0852c679ecdb24a03a83bf28.md) | 54 | `declaration-track:0852c679ecdb24a03a83bf2877419f593b86a9d5f1cec64582c5a8170a883de6` |
| 2 | `lemma` | [f₁](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1982Q1/Variant9796bf9a9cf0e21004d001c1db8b5749664f757ae72a1127b0867bd8e059f4c2.lean/declarations/f--8fc68eb2f70e37ba82633b48.md) | 66 | `result-track:8fc68eb2f70e37ba82633b480845fb391aa42e48b91b44553a17c4153b7821fd` |
| 3 | `lemma` | [f₃](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1982Q1/Variant9796bf9a9cf0e21004d001c1db8b5749664f757ae72a1127b0867bd8e059f4c2.lean/declarations/f--f27c0abbc1fcf1e01537396b.md) | 74 | `result-track:f27c0abbc1fcf1e01537396ba3ef43af2a4d15babe33f4b94658cba4f61cd33e` |
| 4 | `lemma` | [superadditive](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1982Q1/Variant9796bf9a9cf0e21004d001c1db8b5749664f757ae72a1127b0867bd8e059f4c2.lean/declarations/superadditive--f37099dc04877de6c9903191.md) | 79 | `result-track:f37099dc04877de6c9903191c16b8996bc4faf924c91d11147b87fcc993a4598` |
| 5 | `lemma` | [superhomogeneous](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1982Q1/Variant9796bf9a9cf0e21004d001c1db8b5749664f757ae72a1127b0867bd8e059f4c2.lean/declarations/superhomogeneous--9fba1edc3a6eb0eba00453b8.md) | 85 | `result-track:9fba1edc3a6eb0eba00453b87562a9fb317f24992caa4106149e0230bedf0384` |
| 6 | `lemma` | [superlinear](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1982Q1/Variant9796bf9a9cf0e21004d001c1db8b5749664f757ae72a1127b0867bd8e059f4c2.lean/declarations/superlinear--90b17acf7ea09764e20c8de7.md) | 95 | `result-track:90b17acf7ea09764e20c8de770ed95df2bb993c2a8a2350cf0d7da63379db20a` |
| 7 | `lemma` | [le_mul_three_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1982Q1/Variant9796bf9a9cf0e21004d001c1db8b5749664f757ae72a1127b0867bd8e059f4c2.lean/declarations/le-mul-three-apply--d53fd2a4283277c3d2bd1f60.md) | 98 | `result-track:d53fd2a4283277c3d2bd1f602c154266751f987e371352c89b662a35ab2e5f19` |
| 8 | `lemma` | [part_1](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1982Q1/Variant9796bf9a9cf0e21004d001c1db8b5749664f757ae72a1127b0867bd8e059f4c2.lean/declarations/part-1--7f76909b023c5b763ba07df5.md) | 102 | `result-track:7f76909b023c5b763ba07df55463b98d926fa50e877ebc616b07b9b4cccafb7c` |
| 9 | `lemma` | [part_2](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1982Q1/Variant9796bf9a9cf0e21004d001c1db8b5749664f757ae72a1127b0867bd8e059f4c2.lean/declarations/part-2--cc7928f5ff7d0f3663eb1d93.md) | 105 | `result-track:cc7928f5ff7d0f3663eb1d934762670002ecebe3d3726e0abb347647244bc80f` |
| 10 | `lemma` | [imo1982_q1](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1982Q1/Variant9796bf9a9cf0e21004d001c1db8b5749664f757ae72a1127b0867bd8e059f4c2.lean/declarations/imo1982-q1--faf7f23a5717a081388561d9.md) | 120 | `result-track:faf7f23a5717a081388561d9ce5964d074d541ae67eacba6ba98d2e5fec47401` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
