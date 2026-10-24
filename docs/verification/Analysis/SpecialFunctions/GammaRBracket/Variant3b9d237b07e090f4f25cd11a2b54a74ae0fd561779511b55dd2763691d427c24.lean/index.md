# Verification target: GRWTSK.Analysis.SpecialFunctions.GammaRBracket.Variant3b9d237b07e090f4f25cd11a2b54a74ae0fd561779511b55dd2763691d427c24

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "48eba58762cccfc47ac06b7af5c386b68fdba20c",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/GammaRBracket/Variant3b9d237b07e090f4f25cd11a2b54a74ae0fd561779511b55dd2763691d427c24.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/SpecialFunctions/GammaRBracket/Variant3b9d237b07e090f4f25cd11a2b54a74ae0fd561779511b55dd2763691d427c24.lean/index.md) · [Full source](../../../../../mathematics/Analysis/SpecialFunctions/GammaRBracket/Variant3b9d237b07e090f4f25cd11a2b54a74ae0fd561779511b55dd2763691d427c24.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `48eba58762cccfc47ac06b7af5c386b68fdba20c`.

Source path: `GRWTSK/Analysis/SpecialFunctions/GammaRBracket/Variant3b9d237b07e090f4f25cd11a2b54a74ae0fd561779511b55dd2763691d427c24.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/GammaRBracket/Variant3b9d237b07e090f4f25cd11a2b54a74ae0fd561779511b55dd2763691d427c24.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Gamma.Deligne` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Digamma` — import line 17; external provider; requires a separately pinned dependency.
- `Zeta23.GammaFacts.Series` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [digamma_conj](../../../../../mathematics/Analysis/SpecialFunctions/GammaRBracket/Variant3b9d237b07e090f4f25cd11a2b54a74ae0fd561779511b55dd2763691d427c24.lean/declarations/digamma-conj--3544ee3d7ae4beae01a40983.md) | 28 | `result-track:3544ee3d7ae4beae01a40983aa6b45862e5391b64e51b1f8256cef9518ab6219` |
| 2 | `theorem` | [logDeriv_Gammaℝ](../../../../../mathematics/Analysis/SpecialFunctions/GammaRBracket/Variant3b9d237b07e090f4f25cd11a2b54a74ae0fd561779511b55dd2763691d427c24.lean/declarations/logderiv-gamma--8ef581a14cf67b838f141582.md) | 53 | `result-track:8ef581a14cf67b838f141582263db5fe75232549320b2f0f7560a7315ed30265` |
| 3 | `theorem` | [gammaR_bracket](../../../../../mathematics/Analysis/SpecialFunctions/GammaRBracket/Variant3b9d237b07e090f4f25cd11a2b54a74ae0fd561779511b55dd2763691d427c24.lean/declarations/gammar-bracket--8f34bf572507e46de646047f.md) | 98 | `result-track:8f34bf572507e46de646047f29f1f606e18e27ec85a3348c243b2714762c05b5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
