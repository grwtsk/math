# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Rolle.Varianta66f488b4f00e379ff974a2fec9da37f0fcf690b21dad9431079d6b662e4ee6d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ef3e8f191d3804f3ac7292db6f6a61fb021aaffa",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Rolle/Varianta66f488b4f00e379ff974a2fec9da37f0fcf690b21dad9431079d6b662e4ee6d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rolle/Varianta66f488b4f00e379ff974a2fec9da37f0fcf690b21dad9431079d6b662e4ee6d.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rolle/Varianta66f488b4f00e379ff974a2fec9da37f0fcf690b21dad9431079d6b662e4ee6d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ef3e8f191d3804f3ac7292db6f6a61fb021aaffa`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Rolle/Varianta66f488b4f00e379ff974a2fec9da37f0fcf690b21dad9431079d6b662e4ee6d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Rolle/Varianta66f488b4f00e379ff974a2fec9da37f0fcf690b21dad9431079d6b662e4ee6d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.LocalExtr.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.Rolle` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_hasDerivAt_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rolle/Varianta66f488b4f00e379ff974a2fec9da37f0fcf690b21dad9431079d6b662e4ee6d.lean/declarations/exists-hasderivat-eq-zero--93a60adce8faf900cd606aab.md) | 48 | `result-track:93a60adce8faf900cd606aabfa5a5f272fa333b72b7c3bf0b3658e699ec7b42a` |
| 2 | `theorem` | [exists_deriv_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rolle/Varianta66f488b4f00e379ff974a2fec9da37f0fcf690b21dad9431079d6b662e4ee6d.lean/declarations/exists-deriv-eq-zero--ba0f1412767f40daffa367a1.md) | 54 | `result-track:ba0f1412767f40daffa367a112188885f89e19f61d51d61a9f8b562bab8038c1` |
| 3 | `theorem` | [exists_hasDerivAt_eq_zero'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rolle/Varianta66f488b4f00e379ff974a2fec9da37f0fcf690b21dad9431079d6b662e4ee6d.lean/declarations/exists-hasderivat-eq-zero--fd00393cb6d86fe993c51b81.md) | 62 | `result-track:fd00393cb6d86fe993c51b81fd10b06b3b55145fc22f51d88e64aa8f9c0b8e6c` |
| 4 | `theorem` | [exists_deriv_eq_zero'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rolle/Varianta66f488b4f00e379ff974a2fec9da37f0fcf690b21dad9431079d6b662e4ee6d.lean/declarations/exists-deriv-eq-zero--51d68af035f8939f04f7b6bd.md) | 73 | `result-track:51d68af035f8939f04f7b6bd59add86146f93eb522ecc5a22a6fd3507469792b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
