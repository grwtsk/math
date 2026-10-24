# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Basic.Variantb2f3df0f6bf6d09a4d8b4100d5ae69b4cfb9de80dbe7472fe61f62c89093228a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "742b5fee4cf9a769f54dfefdeb1fc93017a07cf2",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantb2f3df0f6bf6d09a4d8b4100d5ae69b4cfb9de80dbe7472fe61f62c89093228a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantb2f3df0f6bf6d09a4d8b4100d5ae69b4cfb9de80dbe7472fe61f62c89093228a.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantb2f3df0f6bf6d09a4d8b4100d5ae69b4cfb9de80dbe7472fe61f62c89093228a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `742b5fee4cf9a769f54dfefdeb1fc93017a07cf2`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantb2f3df0f6bf6d09a4d8b4100d5ae69b4cfb9de80dbe7472fe61f62c89093228a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantb2f3df0f6bf6d09a4d8b4100d5ae69b4cfb9de80dbe7472fe61f62c89093228a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Engine.IntervalEval` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [DualInterval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantb2f3df0f6bf6d09a4d8b4100d5ae69b4cfb9de80dbe7472fe61f62c89093228a.lean/declarations/dualinterval--e942fe0cb7f772cf160a1f01.md) | 30 | `declaration-track:e942fe0cb7f772cf160a1f01433127e8aa4735232279f097134926f82b34bb74` |
| 2 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantb2f3df0f6bf6d09a4d8b4100d5ae69b4cfb9de80dbe7472fe61f62c89093228a.lean/declarations/instance--e38df11706488751d6ac927f.md) | 36 | `declaration-track:e38df11706488751d6ac927f9a04464c077fea86bdb7839ff1f55e4c7669e4cb` |
| 3 | `def` | [const](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantb2f3df0f6bf6d09a4d8b4100d5ae69b4cfb9de80dbe7472fe61f62c89093228a.lean/declarations/const--11c5820372036fb3ee1885e4.md) | 42 | `declaration-track:11c5820372036fb3ee1885e4ff7b5f533c16424a766ae0968821591803efba35` |
| 4 | `def` | [piConst](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantb2f3df0f6bf6d09a4d8b4100d5ae69b4cfb9de80dbe7472fe61f62c89093228a.lean/declarations/piconst--850c25bb0f8b4567445b8820.md) | 47 | `declaration-track:850c25bb0f8b4567445b88206857956348b7cfd705064865c4900f75394dd1e3` |
| 5 | `def` | [eulerMascheroniConst](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantb2f3df0f6bf6d09a4d8b4100d5ae69b4cfb9de80dbe7472fe61f62c89093228a.lean/declarations/eulermascheroniconst--141f45546e07ca786ea21823.md) | 52 | `declaration-track:141f45546e07ca786ea218236359c57fc70b6c8533dc23e2f16d9cf520f7bf35` |
| 6 | `def` | [ofMathConst](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantb2f3df0f6bf6d09a4d8b4100d5ae69b4cfb9de80dbe7472fe61f62c89093228a.lean/declarations/ofmathconst--bc292c12ca58831e0524428a.md) | 57 | `declaration-track:bc292c12ca58831e0524428a42c57e990cc0afa2ed3c9b8632445426d0f22622` |
| 7 | `def` | [varActive](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantb2f3df0f6bf6d09a4d8b4100d5ae69b4cfb9de80dbe7472fe61f62c89093228a.lean/declarations/varactive--3404e276242d8b2ca520176f.md) | 62 | `declaration-track:3404e276242d8b2ca520176fbccadd8caa18e37c7d15d85ff56bb4fda51579d2` |
| 8 | `def` | [varPassive](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantb2f3df0f6bf6d09a4d8b4100d5ae69b4cfb9de80dbe7472fe61f62c89093228a.lean/declarations/varpassive--f6a8fa323af50b868e02c614.md) | 67 | `declaration-track:f6a8fa323af50b868e02c6148aeba742af5344debb9de7277db9cbe6dfe39610` |
| 9 | `def` | [add](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantb2f3df0f6bf6d09a4d8b4100d5ae69b4cfb9de80dbe7472fe61f62c89093228a.lean/declarations/add--51be5cdeb5c7dd7c00d0c81d.md) | 72 | `declaration-track:51be5cdeb5c7dd7c00d0c81d3fd742bcc05e3d8fe49caf4e056e48d6b554b625` |
| 10 | `def` | [mul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantb2f3df0f6bf6d09a4d8b4100d5ae69b4cfb9de80dbe7472fe61f62c89093228a.lean/declarations/mul--ffd8a1d9127413ec2a60bf42.md) | 77 | `declaration-track:ffd8a1d9127413ec2a60bf42c6667abc174f30fbec43ba8ffa653fd8b56fb2ac` |
| 11 | `def` | [neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantb2f3df0f6bf6d09a4d8b4100d5ae69b4cfb9de80dbe7472fe61f62c89093228a.lean/declarations/neg--7d988537fdff2db6f2a1302f.md) | 85 | `declaration-track:7d988537fdff2db6f2a1302f7e9910597b2fa7c4e5abceebf34e467faa2224e8` |
| 12 | `def` | [inv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantb2f3df0f6bf6d09a4d8b4100d5ae69b4cfb9de80dbe7472fe61f62c89093228a.lean/declarations/inv--cce1ac10a4bffb91019b9797.md) | 92 | `declaration-track:cce1ac10a4bffb91019b97976fd9d6a9eb5b4bca6bda4b2942a0662356d0484f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
