# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Mobius.Variantd6f6808f99e89fd58e7f11e4f22796d35db1f34e8699b03fcf4d3b2db3deee2e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6613a02fef85fd9410d9ea491bc469cabb36c4b0",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Mobius/Variantd6f6808f99e89fd58e7f11e4f22796d35db1f34e8699b03fcf4d3b2db3deee2e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Mobius/Variantd6f6808f99e89fd58e7f11e4f22796d35db1f34e8699b03fcf4d3b2db3deee2e.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Mobius/Variantd6f6808f99e89fd58e7f11e4f22796d35db1f34e8699b03fcf4d3b2db3deee2e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6613a02fef85fd9410d9ea491bc469cabb36c4b0`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Mobius/Variantd6f6808f99e89fd58e7f11e4f22796d35db1f34e8699b03fcf4d3b2db3deee2e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Mobius/Variantd6f6808f99e89fd58e7f11e4f22796d35db1f34e8699b03fcf4d3b2db3deee2e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `AnalyticNumber.EulerProduct` — import line 6; external provider; requires a separately pinned dependency.
- `Number.Mobius` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [MobiusDirichletIdentityAuthority](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Mobius/Variantd6f6808f99e89fd58e7f11e4f22796d35db1f34e8699b03fcf4d3b2db3deee2e.lean/declarations/mobiusdirichletidentityauthority--4f47995de0733abeea303d60.md) | 24 | `declaration-track:4f47995de0733abeea303d6074606aca631c4d234f4e4e1965de6d9b9fd8537e` |
| 2 | `theorem` | [mobius_dirichlet_identity_sound](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Mobius/Variantd6f6808f99e89fd58e7f11e4f22796d35db1f34e8699b03fcf4d3b2db3deee2e.lean/declarations/mobius-dirichlet-identity-sound--2f26bd7c8eb36e3aef07e125.md) | 35 | `result-track:2f26bd7c8eb36e3aef07e12516d3a926dc1e68ff60a198d079750f5d0c3e8240` |
| 3 | `theorem` | [finite_mobius_window_not_analytic_identity](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Mobius/Variantd6f6808f99e89fd58e7f11e4f22796d35db1f34e8699b03fcf4d3b2db3deee2e.lean/declarations/finite-mobius-window-not-analytic-identity--26e6b53c8a26e36d58e38c09.md) | 44 | `result-track:26e6b53c8a26e36d58e38c09ea86e1d22ce0f1e0dbedf6ef5ef5da0781cbcecd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
