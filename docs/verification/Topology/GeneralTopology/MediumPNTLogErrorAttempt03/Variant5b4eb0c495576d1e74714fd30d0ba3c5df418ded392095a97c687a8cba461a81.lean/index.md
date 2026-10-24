# Verification target: GRWTSK.Topology.GeneralTopology.MediumPNTLogErrorAttempt03.Variant5b4eb0c495576d1e74714fd30d0ba3c5df418ded392095a97c687a8cba461a81

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7e96017a8321ade96012729a5eecdb4c2e9338b4",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/MediumPNTLogErrorAttempt03/Variant5b4eb0c495576d1e74714fd30d0ba3c5df418ded392095a97c687a8cba461a81.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/MediumPNTLogErrorAttempt03/Variant5b4eb0c495576d1e74714fd30d0ba3c5df418ded392095a97c687a8cba461a81.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/MediumPNTLogErrorAttempt03/Variant5b4eb0c495576d1e74714fd30d0ba3c5df418ded392095a97c687a8cba461a81.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7e96017a8321ade96012729a5eecdb4c2e9338b4`.

Source path: `GRWTSK/Topology/GeneralTopology/MediumPNTLogErrorAttempt03/Variant5b4eb0c495576d1e74714fd30d0ba3c5df418ded392095a97c687a8cba461a81.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/MediumPNTLogErrorAttempt03/Variant5b4eb0c495576d1e74714fd30d0ba3c5df418ded392095a97c687a8cba461a81.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.FromPNTPlus.MediumPNT` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [psiRelativeError](../../../../../mathematics/Topology/GeneralTopology/MediumPNTLogErrorAttempt03/Variant5b4eb0c495576d1e74714fd30d0ba3c5df418ded392095a97c687a8cba461a81.lean/declarations/psirelativeerror--9a4c3d45082a2c01adf1fb63.md) | 11 | `declaration-track:9a4c3d45082a2c01adf1fb6303c1d76e824ec1ca80990bceb7d5cd7fadc5cb48` |
| 2 | `theorem` | [psiRelativeError_eq](../../../../../mathematics/Topology/GeneralTopology/MediumPNTLogErrorAttempt03/Variant5b4eb0c495576d1e74714fd30d0ba3c5df418ded392095a97c687a8cba461a81.lean/declarations/psirelativeerror-eq--0489c8c052a43d6fd1d60516.md) | 13 | `result-track:0489c8c052a43d6fd1d60516e21d24f8a344be830766514f8a2a863bdf1e32ed` |
| 3 | `theorem` | [psiRelativeError_medium_bound](../../../../../mathematics/Topology/GeneralTopology/MediumPNTLogErrorAttempt03/Variant5b4eb0c495576d1e74714fd30d0ba3c5df418ded392095a97c687a8cba461a81.lean/declarations/psirelativeerror-medium-bound--f47ed048d5cf0bc8f2841630.md) | 20 | `result-track:f47ed048d5cf0bc8f2841630052830c2752079b1c7a1fc447948557d422870a1` |
| 4 | `theorem` | [power_stretched_exp_tendsto_zero](../../../../../mathematics/Topology/GeneralTopology/MediumPNTLogErrorAttempt03/Variant5b4eb0c495576d1e74714fd30d0ba3c5df418ded392095a97c687a8cba461a81.lean/declarations/power-stretched-exp-tendsto-zero--cd5a03a0bd0df8999ee61354.md) | 40 | `result-track:cd5a03a0bd0df8999ee61354fa2c72a825cfa2d78937f783213fbfce8720c55d` |
| 5 | `theorem` | [psiRelativeError_mul_pow_tendsto_zero](../../../../../mathematics/Topology/GeneralTopology/MediumPNTLogErrorAttempt03/Variant5b4eb0c495576d1e74714fd30d0ba3c5df418ded392095a97c687a8cba461a81.lean/declarations/psirelativeerror-mul-pow-tendsto-zero--d77c52d49d9913ab90bf40fc.md) | 51 | `result-track:d77c52d49d9913ab90bf40fcc1c97226ae8435619cb6f01f500f700507927fb9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
