# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ExplicitFormula.Variant9cd6f4fc076ebe1865a2dd92ab160a248e54b2f5347d40782f60ec281542f46e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cb5a81596aaaf61b8f150c07b4d86770dce13623",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ExplicitFormula/Variant9cd6f4fc076ebe1865a2dd92ab160a248e54b2f5347d40782f60ec281542f46e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ExplicitFormula/Variant9cd6f4fc076ebe1865a2dd92ab160a248e54b2f5347d40782f60ec281542f46e.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ExplicitFormula/Variant9cd6f4fc076ebe1865a2dd92ab160a248e54b2f5347d40782f60ec281542f46e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cb5a81596aaaf61b8f150c07b4d86770dce13623`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ExplicitFormula/Variant9cd6f4fc076ebe1865a2dd92ab160a248e54b2f5347d40782f60ec281542f46e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ExplicitFormula/Variant9cd6f4fc076ebe1865a2dd92ab160a248e54b2f5347d40782f60ec281542f46e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.Seam` — import line 42; external provider; requires a separately pinned dependency.
- `Zeta23.WeilEF.Main` — import line 43; external provider; requires a separately pinned dependency.
- `Zeta23.WeilEF.Effective` — import line 44; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [xi_eq_weilXi](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ExplicitFormula/Variant9cd6f4fc076ebe1865a2dd92ab160a248e54b2f5347d40782f60ec281542f46e.lean/declarations/xi-eq-weilxi--163fda6c1c14841985ce1713.md) | 62 | `result-track:163fda6c1c14841985ce1713bb1f5a2822ffd82cbaea467b608ec899d5ef260f` |
| 2 | `def` | [kfun](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ExplicitFormula/Variant9cd6f4fc076ebe1865a2dd92ab160a248e54b2f5347d40782f60ec281542f46e.lean/declarations/kfun--71e9b2c162f4f2c4a5516c6a.md) | 151 | `declaration-track:71e9b2c162f4f2c4a5516c6acf34bf9cf788c18266f2ad895d7420f5b305d30d` |
| 3 | `structure` | [FamilyHyps](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ExplicitFormula/Variant9cd6f4fc076ebe1865a2dd92ab160a248e54b2f5347d40782f60ec281542f46e.lean/declarations/familyhyps--990232953653da26f6d6b9da.md) | 154 | `declaration-track:990232953653da26f6d6b9dab61b34947947d046337a6ee9bc0df939e1823b57` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
