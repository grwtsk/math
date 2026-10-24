# Verification target: GRWTSK.Analysis.SpecialFunctions.Monotone.Variant7227ac4625eae15dbab8c2129a0c560b93f01e83a4e2871b890d1d240d34927a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "68132866c2c245cbcfd9a02d4efcc7f08ddb3cf5",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/Monotone/Variant7227ac4625eae15dbab8c2129a0c560b93f01e83a4e2871b890d1d240d34927a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/SpecialFunctions/Monotone/Variant7227ac4625eae15dbab8c2129a0c560b93f01e83a4e2871b890d1d240d34927a.lean/index.md) · [Full source](../../../../../mathematics/Analysis/SpecialFunctions/Monotone/Variant7227ac4625eae15dbab8c2129a0c560b93f01e83a4e2871b890d1d240d34927a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `68132866c2c245cbcfd9a02d4efcc7f08ddb3cf5`.

Source path: `GRWTSK/Analysis/SpecialFunctions/Monotone/Variant7227ac4625eae15dbab8c2129a0c560b93f01e83a4e2871b890d1d240d34927a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/Monotone/Variant7227ac4625eae15dbab8c2129a0c560b93f01e83a4e2871b890d1d240d34927a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [log_mul_self_monotoneOn](../../../../../mathematics/Analysis/SpecialFunctions/Monotone/Variant7227ac4625eae15dbab8c2129a0c560b93f01e83a4e2871b890d1d240d34927a.lean/declarations/log-mul-self-monotoneon--dbec18bb4fca5ce9a16224ad.md) | 32 | `result-track:dbec18bb4fca5ce9a16224ad65cf1037f3d32cc89c546b9b5a3096d17345ed13` |
| 2 | `theorem` | [log_div_self_antitoneOn](../../../../../mathematics/Analysis/SpecialFunctions/Monotone/Variant7227ac4625eae15dbab8c2129a0c560b93f01e83a4e2871b890d1d240d34927a.lean/declarations/log-div-self-antitoneon--4d52729deb4368cad8d0745f.md) | 42 | `result-track:4d52729deb4368cad8d0745f06c0256f77acab6821f0a6bdaf61eb5e5ada46e8` |
| 3 | `theorem` | [log_div_self_rpow_antitoneOn](../../../../../mathematics/Analysis/SpecialFunctions/Monotone/Variant7227ac4625eae15dbab8c2129a0c560b93f01e83a4e2871b890d1d240d34927a.lean/declarations/log-div-self-rpow-antitoneon--33dd69ac01463d8cef6d0549.md) | 57 | `result-track:33dd69ac01463d8cef6d05490195ea16c9e783803383c3473a5dfcdea2d63581` |
| 4 | `theorem` | [log_div_sqrt_antitoneOn](../../../../../mathematics/Analysis/SpecialFunctions/Monotone/Variant7227ac4625eae15dbab8c2129a0c560b93f01e83a4e2871b890d1d240d34927a.lean/declarations/log-div-sqrt-antitoneon--7707f056b85b9024649d62c1.md) | 86 | `result-track:7707f056b85b9024649d62c1ce22afe08bff02e914d3cf70e91df00d2c02fb16` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
