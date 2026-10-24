# Verification target: GRWTSK.Algebra.UniversalAlgebra.TerminatedStable.Variantbf96210dae39eaad9850564389317e2fcfcbe6f69f9797c3add59d441b078415

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "20d2cb0145f7b28cff75fef32c1b3a073120ba20",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/TerminatedStable/Variantbf96210dae39eaad9850564389317e2fcfcbe6f69f9797c3add59d441b078415.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatedStable/Variantbf96210dae39eaad9850564389317e2fcfcbe6f69f9797c3add59d441b078415.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatedStable/Variantbf96210dae39eaad9850564389317e2fcfcbe6f69f9797c3add59d441b078415.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `20d2cb0145f7b28cff75fef32c1b3a073120ba20`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/TerminatedStable/Variantbf96210dae39eaad9850564389317e2fcfcbe6f69f9797c3add59d441b078415.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/TerminatedStable/Variantbf96210dae39eaad9850564389317e2fcfcbe6f69f9797c3add59d441b078415.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.ContinuedFractions.Translations` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [terminated_stable](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatedStable/Variantbf96210dae39eaad9850564389317e2fcfcbe6f69f9797c3add59d441b078415.lean/declarations/terminated-stable--4e72f265774fbd81674279b3.md) | 30 | `result-track:4e72f265774fbd81674279b3d3afbf1b70c433151ea10f7d7b9bf3d0e2a9190a` |
| 2 | `theorem` | [contsAux_stable_step_of_terminated](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatedStable/Variantbf96210dae39eaad9850564389317e2fcfcbe6f69f9797c3add59d441b078415.lean/declarations/contsaux-stable-step-of-terminated--df522f548656d1de369aa2de.md) | 36 | `result-track:df522f548656d1de369aa2de7c412705c27d8fe273324d33f3b6e38d7a0d485c` |
| 3 | `theorem` | [contsAux_stable_of_terminated](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatedStable/Variantbf96210dae39eaad9850564389317e2fcfcbe6f69f9797c3add59d441b078415.lean/declarations/contsaux-stable-of-terminated--901b21e8942f3dceb94b9f5c.md) | 41 | `result-track:901b21e8942f3dceb94b9f5cea2257c5638ce0fc4b72f5bb5c40e277800c5a8d` |
| 4 | `theorem` | [convs'Aux_stable_step_of_terminated](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatedStable/Variantbf96210dae39eaad9850564389317e2fcfcbe6f69f9797c3add59d441b078415.lean/declarations/convs-aux-stable-step-of-terminated--acffd2e7f8fea3e397b1bccb.md) | 48 | `result-track:acffd2e7f8fea3e397b1bccb0df441564f548d63665b7d7f14edc9947f089464` |
| 5 | `theorem` | [convs'Aux_stable_of_terminated](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatedStable/Variantbf96210dae39eaad9850564389317e2fcfcbe6f69f9797c3add59d441b078415.lean/declarations/convs-aux-stable-of-terminated--1c4aef13ab46606e312bc9f7.md) | 63 | `result-track:1c4aef13ab46606e312bc9f7c7cb2f82e0c65e2271de3b6b6ed0e0fc3820bef2` |
| 6 | `theorem` | [conts_stable_of_terminated](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatedStable/Variantbf96210dae39eaad9850564389317e2fcfcbe6f69f9797c3add59d441b078415.lean/declarations/conts-stable-of-terminated--6944a75433b3df540e6e85c0.md) | 71 | `result-track:6944a75433b3df540e6e85c0d467e0375ed452f9ae2ec92bf2864736d7076ef6` |
| 7 | `theorem` | [nums_stable_of_terminated](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatedStable/Variantbf96210dae39eaad9850564389317e2fcfcbe6f69f9797c3add59d441b078415.lean/declarations/nums-stable-of-terminated--3af957e0268bad3761927ae3.md) | 76 | `result-track:3af957e0268bad3761927ae309c8ba33c1c494a0741eb70a6607e854feac9190` |
| 8 | `theorem` | [dens_stable_of_terminated](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatedStable/Variantbf96210dae39eaad9850564389317e2fcfcbe6f69f9797c3add59d441b078415.lean/declarations/dens-stable-of-terminated--b8350aac07c5dcaa3ea47cf1.md) | 80 | `result-track:b8350aac07c5dcaa3ea47cf1017b665e18dfe97045508e126755af7b809639ad` |
| 9 | `theorem` | [convs_stable_of_terminated](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatedStable/Variantbf96210dae39eaad9850564389317e2fcfcbe6f69f9797c3add59d441b078415.lean/declarations/convs-stable-of-terminated--cae5a10748c96ff04966660e.md) | 84 | `result-track:cae5a10748c96ff04966660e900358312ceffde0012aff00ed49126fad6f24d7` |
| 10 | `theorem` | [convs'_stable_of_terminated](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatedStable/Variantbf96210dae39eaad9850564389317e2fcfcbe6f69f9797c3add59d441b078415.lean/declarations/convs-stable-of-terminated--c1bb06e908db5484e5609ec2.md) | 89 | `result-track:c1bb06e908db5484e5609ec2976431c8f1ad5cbbf5a2418a5b59cab90158f62f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
