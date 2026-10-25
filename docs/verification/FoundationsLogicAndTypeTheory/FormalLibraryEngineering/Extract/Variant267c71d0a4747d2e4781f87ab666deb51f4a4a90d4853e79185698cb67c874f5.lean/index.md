# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Extract.Variant267c71d0a4747d2e4781f87ab666deb51f4a4a90d4853e79185698cb67c874f5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d21e93c90768f1adf83ad53219f606f3c0d513e",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extract/Variant267c71d0a4747d2e4781f87ab666deb51f4a4a90d4853e79185698cb67c874f5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extract/Variant267c71d0a4747d2e4781f87ab666deb51f4a4a90d4853e79185698cb67c874f5.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extract/Variant267c71d0a4747d2e4781f87ab666deb51f4a4a90d4853e79185698cb67c874f5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d21e93c90768f1adf83ad53219f606f3c0d513e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extract/Variant267c71d0a4747d2e4781f87ab666deb51f4a4a90d4853e79185698cb67c874f5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extract/Variant267c71d0a4747d2e4781f87ab666deb51f4a4a90d4853e79185698cb67c874f5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean` — import line 6; external provider; requires a separately pinned dependency.
- `LeanCert.Core.IntervalRat.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `LeanCert.Meta.Numeral` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [extractNatLit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extract/Variant267c71d0a4747d2e4781f87ab666deb51f4a4a90d4853e79185698cb67c874f5.lean/declarations/extractnatlit--943c4f034fdf21f2495654ec.md) | 24 | `declaration-track:943c4f034fdf21f2495654ec078af5e6066b2dd4217483163c9e9ef2ca1d79b4` |
| 2 | `def` | [extractIntLit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extract/Variant267c71d0a4747d2e4781f87ab666deb51f4a4a90d4853e79185698cb67c874f5.lean/declarations/extractintlit--dfebbc131ed9bceb9e77471c.md) | 35 | `declaration-track:dfebbc131ed9bceb9e77471cf4057d405fdeebbc0282f7a847c85ba74b14102a` |
| 3 | `def` | [extractRatFromRat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extract/Variant267c71d0a4747d2e4781f87ab666deb51f4a4a90d4853e79185698cb67c874f5.lean/declarations/extractratfromrat--6d5f4c5ac3e2814bb08b10bf.md) | 54 | `declaration-track:6d5f4c5ac3e2814bb08b10bf93f0adad74d76d477b5c3cb5d2ebb9ffcd4d9b69` |
| 4 | `def` | [extractRatFromReal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extract/Variant267c71d0a4747d2e4781f87ab666deb51f4a4a90d4853e79185698cb67c874f5.lean/declarations/extractratfromreal--d981cb2e24cf62f6f95669ee.md) | 112 | `declaration-track:d981cb2e24cf62f6f95669eefbc67d43706ab976e3f222e4a49c1e9c91710076` |
| 5 | `def` | [mkIntervalRat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extract/Variant267c71d0a4747d2e4781f87ab666deb51f4a4a90d4853e79185698cb67c874f5.lean/declarations/mkintervalrat--7ae60aa77f7f7e4fd1402c0d.md) | 202 | `declaration-track:7ae60aa77f7f7e4fd1402c0d3501ce2d2d6e1a07e42a1202b0b1fe109ae84761` |
| 6 | `def` | [toRat?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extract/Variant267c71d0a4747d2e4781f87ab666deb51f4a4a90d4853e79185698cb67c874f5.lean/declarations/torat--991d2cf249f9a0976bd4fbd0.md) | 215 | `declaration-track:991d2cf249f9a0976bd4fbd0ddab68078693a7a518bc4b6f3ebe29b7fcf170b4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
