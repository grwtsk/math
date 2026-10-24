# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.IntMu.Variant1a5e17a5e2482f5119a8e0b0f00b738fe4eece35edba818094c4f92c35d0c5a7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4e74f60e72515bed2145c42853ff667980b03105",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/IntMu/Variant1a5e17a5e2482f5119a8e0b0f00b738fe4eece35edba818094c4f92c35d0c5a7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntMu/Variant1a5e17a5e2482f5119a8e0b0f00b738fe4eece35edba818094c4f92c35d0c5a7.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntMu/Variant1a5e17a5e2482f5119a8e0b0f00b738fe4eece35edba818094c4f92c35d0c5a7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4e74f60e72515bed2145c42853ff667980b03105`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/IntMu/Variant1a5e17a5e2482f5119a8e0b0f00b738fe4eece35edba818094c4f92c35d0c5a7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/IntMu/Variant1a5e17a5e2482f5119a8e0b0f00b738fe4eece35edba818094c4f92c35d0c5a7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.GammaFacts.Mu` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [StirlingHyp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntMu/Variant1a5e17a5e2482f5119a8e0b0f00b738fe4eece35edba818094c4f92c35d0c5a7.lean/declarations/stirlinghyp--cb6ae3f311a6f92729b52ecb.md) | 24 | `declaration-track:cb6ae3f311a6f92729b52ecbb184b1c71ff3a4fd30fe33074c07074b00ec1a47` |
| 2 | `lemma` | [integral_main_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntMu/Variant1a5e17a5e2482f5119a8e0b0f00b738fe4eece35edba818094c4f92c35d0c5a7.lean/declarations/integral-main-eq--3f08ebb466b6a14d0754d8c1.md) | 28 | `result-track:3f08ebb466b6a14d0754d8c16222e1d7f15625e909586c932a623306487e6ae2` |
| 3 | `theorem` | [int_mu_of_stirling](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntMu/Variant1a5e17a5e2482f5119a8e0b0f00b738fe4eece35edba818094c4f92c35d0c5a7.lean/declarations/int-mu-of-stirling--304e11a06becde43233cd68c.md) | 85 | `result-track:304e11a06becde43233cd68c686b6b294fcdafdeddfa257d8903b40137de8581` |
| 4 | `lemma` | [integral_main_sq_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntMu/Variant1a5e17a5e2482f5119a8e0b0f00b738fe4eece35edba818094c4f92c35d0c5a7.lean/declarations/integral-main-sq-eq--6b7e32505d652ae0e9ae1d79.md) | 169 | `result-track:6b7e32505d652ae0e9ae1d79cfd151bfc9a6b14dd915851b13d54f0105ca14db` |
| 5 | `theorem` | [int_mu_sq_of_stirling](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntMu/Variant1a5e17a5e2482f5119a8e0b0f00b738fe4eece35edba818094c4f92c35d0c5a7.lean/declarations/int-mu-sq-of-stirling--8a84e5acfc3ceba99138e51b.md) | 227 | `result-track:8a84e5acfc3ceba99138e51ba52453f3a4f9995d1ab34efc026630daf63e2727` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
