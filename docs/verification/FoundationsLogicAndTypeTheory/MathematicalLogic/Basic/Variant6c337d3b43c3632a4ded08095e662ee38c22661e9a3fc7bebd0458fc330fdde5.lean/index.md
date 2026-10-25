# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Basic.Variant6c337d3b43c3632a4ded08095e662ee38c22661e9a3fc7bebd0458fc330fdde5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4250720ec91b7ffa5b1fa9389439fed2845ea0b8",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant6c337d3b43c3632a4ded08095e662ee38c22661e9a3fc7bebd0458fc330fdde5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant6c337d3b43c3632a4ded08095e662ee38c22661e9a3fc7bebd0458fc330fdde5.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant6c337d3b43c3632a4ded08095e662ee38c22661e9a3fc7bebd0458fc330fdde5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4250720ec91b7ffa5b1fa9389439fed2845ea0b8`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant6c337d3b43c3632a4ded08095e662ee38c22661e9a3fc7bebd0458fc330fdde5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant6c337d3b43c3632a4ded08095e662ee38c22661e9a3fc7bebd0458fc330fdde5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.SimpleRing.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Opposite` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TwoSidedIdeal.Kernel` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant6c337d3b43c3632a4ded08095e662ee38c22661e9a3fc7bebd0458fc330fdde5.lean/declarations/instance--687b23ea0ec4129222e4aaae.md) | 41 | `declaration-track:687b23ea0ec4129222e4aaae1d7efe97bff7e1d67e23900ede5fdae7258d3fad` |
| 2 | `lemma` | [one_mem_of_ne_bot](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant6c337d3b43c3632a4ded08095e662ee38c22661e9a3fc7bebd0458fc330fdde5.lean/declarations/one-mem-of-ne-bot--790c778f1f68dcc0088591f8.md) | 45 | `result-track:790c778f1f68dcc0088591f8771c6ae1d246018db3293fbda27a0c5b3851fb04` |
| 3 | `lemma` | [one_mem_of_ne_zero_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant6c337d3b43c3632a4ded08095e662ee38c22661e9a3fc7bebd0458fc330fdde5.lean/declarations/one-mem-of-ne-zero-mem--c246069dd3291cf74c2a7188.md) | 49 | `result-track:c246069dd3291cf74c2a71889aa41cfe5eb14821466963cb2e54204fc0ea9318` |
| 4 | `lemma` | [of_eq_bot_or_eq_top](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant6c337d3b43c3632a4ded08095e662ee38c22661e9a3fc7bebd0458fc330fdde5.lean/declarations/of-eq-bot-or-eq-top--747e435d31d9f819ff49ce66.md) | 53 | `result-track:747e435d31d9f819ff49ce669f09a48bb9103dcc574819c15000d43706fcf41a` |
| 5 | `instance` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.OneMemOfNeBot.Variant865a8caa40562ac99921803fcf16615c4143a8a85a15dbb95bd93d4b3d24dda7.DivisionRing.isSimpleRing](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant6c337d3b43c3632a4ded08095e662ee38c22661e9a3fc7bebd0458fc330fdde5.lean/declarations/root-grwtsk-foundationslogicandtypetheory-mathematicallogic-onememofnebo--ad53cb22373cd1787b42c16a.md) | 57 | `declaration-track:ad53cb22373cd1787b42c16a6bebfac4d52348d2edb6e78be14918a5b4692c61` |
| 6 | `lemma` | [injective_ringHom_or_subsingleton_codomain](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant6c337d3b43c3632a4ded08095e662ee38c22661e9a3fc7bebd0458fc330fdde5.lean/declarations/injective-ringhom-or-subsingleton-codomain--35afee7f24ff30e30e90a45d.md) | 64 | `result-track:35afee7f24ff30e30e90a45df004cbe97ac31e293a25d46e75f188105a8e4eb3` |
| 7 | `theorem` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.OneMemOfNeBot.Variant865a8caa40562ac99921803fcf16615c4143a8a85a15dbb95bd93d4b3d24dda7.RingHom.injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant6c337d3b43c3632a4ded08095e662ee38c22661e9a3fc7bebd0458fc330fdde5.lean/declarations/root-grwtsk-foundationslogicandtypetheory-mathematicallogic-onememofnebo--64bcee4243dd62ca846dcc18.md) | 72 | `result-track:64bcee4243dd62ca846dcc1840e100dea071a344d5014c35477ebd33ccfab63d` |
| 8 | `lemma` | [iff_injective_ringHom_or_subsingleton_codomain](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant6c337d3b43c3632a4ded08095e662ee38c22661e9a3fc7bebd0458fc330fdde5.lean/declarations/iff-injective-ringhom-or-subsingleton-codomain--44a89d55819c79341b0bd332.md) | 78 | `result-track:44a89d55819c79341b0bd332be01adb5207dbc76760123c4dff1040af3735984` |
| 9 | `lemma` | [iff_injective_ringHom](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant6c337d3b43c3632a4ded08095e662ee38c22661e9a3fc7bebd0458fc330fdde5.lean/declarations/iff-injective-ringhom--dda69090b768fda34967c634.md) | 88 | `result-track:dda69090b768fda34967c634a50eac0a9cf8aea3624c7098b8267c2d317bb1fe` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant6c337d3b43c3632a4ded08095e662ee38c22661e9a3fc7bebd0458fc330fdde5.lean/declarations/instance--da8b28763402996f8c9927e4.md) | 95 | `declaration-track:da8b28763402996f8c9927e4f209531be2648da6f0f2ca1ce9f78d0a3e128a7e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
