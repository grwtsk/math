# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.TransformProbe.Variant8255add931bb79bc44ed13854e92dbd12d01b3fadc8bcb4f683413d01adf2c5c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "95ff9871cf987ffec8769f0f47b45b1768bfa6ee",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/TransformProbe/Variant8255add931bb79bc44ed13854e92dbd12d01b3fadc8bcb4f683413d01adf2c5c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TransformProbe/Variant8255add931bb79bc44ed13854e92dbd12d01b3fadc8bcb4f683413d01adf2c5c.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TransformProbe/Variant8255add931bb79bc44ed13854e92dbd12d01b3fadc8bcb4f683413d01adf2c5c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `95ff9871cf987ffec8769f0f47b45b1768bfa6ee`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/TransformProbe/Variant8255add931bb79bc44ed13854e92dbd12d01b3fadc8bcb4f683413d01adf2c5c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/TransformProbe/Variant8255add931bb79bc44ed13854e92dbd12d01b3fadc8bcb4f683413d01adf2c5c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Polynomial` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primitivePolynomial](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TransformProbe/Variant8255add931bb79bc44ed13854e92dbd12d01b3fadc8bcb4f683413d01adf2c5c.lean/declarations/primitivepolynomial--aef5035e500befad3e497093.md) | 8 | `declaration-track:aef5035e500befad3e497093266e7a7979a4dd54d3136978da2315ac158d8318` |
| 2 | `def` | [sourcePolynomial](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TransformProbe/Variant8255add931bb79bc44ed13854e92dbd12d01b3fadc8bcb4f683413d01adf2c5c.lean/declarations/sourcepolynomial--0a3033dbde13dc9bbbdee52c.md) | 19 | `declaration-track:0a3033dbde13dc9bbbdee52c0ff20ddd05dd193edc63a3f7e3016da4450e757f` |
| 3 | `theorem` | [primitive_derivative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TransformProbe/Variant8255add931bb79bc44ed13854e92dbd12d01b3fadc8bcb4f683413d01adf2c5c.lean/declarations/primitive-derivative--21a2b556335d4abff1cfc505.md) | 21 | `result-track:21a2b556335d4abff1cfc505e6578a76ef04d157dfc1939ea5016b0a83d2a9dd` |
| 4 | `theorem` | [primitive_endpoint_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TransformProbe/Variant8255add931bb79bc44ed13854e92dbd12d01b3fadc8bcb4f683413d01adf2c5c.lean/declarations/primitive-endpoint-pos--06e91d415d8c535b61196b76.md) | 29 | `result-track:06e91d415d8c535b61196b76e7f6d05e7efd582fa7d5e93e78a2465200916638` |
| 5 | `theorem` | [primitive_endpoint_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TransformProbe/Variant8255add931bb79bc44ed13854e92dbd12d01b3fadc8bcb4f683413d01adf2c5c.lean/declarations/primitive-endpoint-neg--ae3793b31aafb6d888e802b1.md) | 34 | `result-track:ae3793b31aafb6d888e802b17f0bdffcd76259991aae3a7b1d40cd7b432ff26a` |
| 6 | `theorem` | [exponential_primitive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TransformProbe/Variant8255add931bb79bc44ed13854e92dbd12d01b3fadc8bcb4f683413d01adf2c5c.lean/declarations/exponential-primitive--382e6d922d4822f0c0124243.md) | 39 | `result-track:382e6d922d4822f0c01242430b88f92c1004feaa4840deedd8c8b12313db6318` |
| 7 | `theorem` | [unit_transform_cleared](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TransformProbe/Variant8255add931bb79bc44ed13854e92dbd12d01b3fadc8bcb4f683413d01adf2c5c.lean/declarations/unit-transform-cleared--17db913b778db2299c18f608.md) | 50 | `result-track:17db913b778db2299c18f608b79dcb1606d8cc1d977a83ade68de4157ae3871b` |
| 8 | `theorem` | [unit_transform](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TransformProbe/Variant8255add931bb79bc44ed13854e92dbd12d01b3fadc8bcb4f683413d01adf2c5c.lean/declarations/unit-transform--99b956baaa5ac5fb0dce428f.md) | 62 | `result-track:99b956baaa5ac5fb0dce428f5f680eb4a51479948ef56048ad6eddf9b8457d5e` |
| 9 | `theorem` | [unit_mass](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TransformProbe/Variant8255add931bb79bc44ed13854e92dbd12d01b3fadc8bcb4f683413d01adf2c5c.lean/declarations/unit-mass--4e947ea8da2857ff5c920ba3.md) | 69 | `result-track:4e947ea8da2857ff5c920ba397d88edd223bbb3d258e9511825739619070fd28` |
| 10 | `theorem` | [unit_transform_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TransformProbe/Variant8255add931bb79bc44ed13854e92dbd12d01b3fadc8bcb4f683413d01adf2c5c.lean/declarations/unit-transform-zero--afae825fb81d4d257be29f66.md) | 78 | `result-track:afae825fb81d4d257be29f66e52c4e8c82756e9876456bdd07a7dcbeaddade31` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
