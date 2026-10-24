# Verification target: GRWTSK.Analysis.SpecialFunctions.GammaRBracket.Variant1880d4945cdb80b384da161d915ef6f2517fd28645b589983cdf25d6cb2d999c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c20dea055a424677c5dc5552eb2c37eaf86bec60",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/GammaRBracket/Variant1880d4945cdb80b384da161d915ef6f2517fd28645b589983cdf25d6cb2d999c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/SpecialFunctions/GammaRBracket/Variant1880d4945cdb80b384da161d915ef6f2517fd28645b589983cdf25d6cb2d999c.lean/index.md) · [Full source](../../../../../mathematics/Analysis/SpecialFunctions/GammaRBracket/Variant1880d4945cdb80b384da161d915ef6f2517fd28645b589983cdf25d6cb2d999c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c20dea055a424677c5dc5552eb2c37eaf86bec60`.

Source path: `GRWTSK/Analysis/SpecialFunctions/GammaRBracket/Variant1880d4945cdb80b384da161d915ef6f2517fd28645b589983cdf25d6cb2d999c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/GammaRBracket/Variant1880d4945cdb80b384da161d915ef6f2517fd28645b589983cdf25d6cb2d999c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Gamma.Deligne` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Digamma` — import line 22; external provider; requires a separately pinned dependency.
- `Zeta23.GammaFacts.Series` — import line 23; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [digamma_conj](../../../../../mathematics/Analysis/SpecialFunctions/GammaRBracket/Variant1880d4945cdb80b384da161d915ef6f2517fd28645b589983cdf25d6cb2d999c.lean/declarations/digamma-conj--0b0565993e58ce48f92338e8.md) | 36 | `result-track:0b0565993e58ce48f92338e8a981582f225c9d699bd99a543d54b6ea41400a59` |
| 2 | `theorem` | [logDeriv_Gammaℝ](../../../../../mathematics/Analysis/SpecialFunctions/GammaRBracket/Variant1880d4945cdb80b384da161d915ef6f2517fd28645b589983cdf25d6cb2d999c.lean/declarations/logderiv-gamma--ffc3b1bb56dbed67bb208230.md) | 61 | `result-track:ffc3b1bb56dbed67bb2082309097b29cd57ff683b61960578e9708d38d53bebb` |
| 3 | `theorem` | [gammaR_bracket](../../../../../mathematics/Analysis/SpecialFunctions/GammaRBracket/Variant1880d4945cdb80b384da161d915ef6f2517fd28645b589983cdf25d6cb2d999c.lean/declarations/gammar-bracket--bf01cb996b55d622079f2948.md) | 106 | `result-track:bf01cb996b55d622079f29482f98dd112eac77b24ce2a1ecf616d571c9fb34c6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
