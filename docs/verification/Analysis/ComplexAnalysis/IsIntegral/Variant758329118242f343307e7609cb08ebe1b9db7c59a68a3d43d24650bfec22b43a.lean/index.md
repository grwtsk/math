# Verification target: GRWTSK.Analysis.ComplexAnalysis.IsIntegral.Variant758329118242f343307e7609cb08ebe1b9db7c59a68a3d43d24650bfec22b43a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fb2cfd96db912e5d329d505b4ec39304dd7ab0cd",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/IsIntegral/Variant758329118242f343307e7609cb08ebe1b9db7c59a68a3d43d24650bfec22b43a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/IsIntegral/Variant758329118242f343307e7609cb08ebe1b9db7c59a68a3d43d24650bfec22b43a.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/IsIntegral/Variant758329118242f343307e7609cb08ebe1b9db7c59a68a3d43d24650bfec22b43a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fb2cfd96db912e5d329d505b4ec39304dd7ab0cd`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/IsIntegral/Variant758329118242f343307e7609cb08ebe1b9db7c59a68a3d43d24650bfec22b43a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/IsIntegral/Variant758329118242f343307e7609cb08ebe1b9db7c59a68a3d43d24650bfec22b43a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.IntegralClosure.IsIntegral.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isIntegral_int_I](../../../../../mathematics/Analysis/ComplexAnalysis/IsIntegral/Variant758329118242f343307e7609cb08ebe1b9db7c59a68a3d43d24650bfec22b43a.lean/declarations/isintegral-int-i--c089c77cad2b6ed8aa080732.md) | 28 | `result-track:c089c77cad2b6ed8aa080732e556deb57be0a15b7c3d3f7dc01a3418cb31c761` |
| 2 | `theorem` | [isIntegral_rat_I](../../../../../mathematics/Analysis/ComplexAnalysis/IsIntegral/Variant758329118242f343307e7609cb08ebe1b9db7c59a68a3d43d24650bfec22b43a.lean/declarations/isintegral-rat-i--5a3cef6bacc818f5cca8d2e9.md) | 32 | `result-track:5a3cef6bacc818f5cca8d2e92db11ceae6044e3d1647a621287f0cc99c7b8fe3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
