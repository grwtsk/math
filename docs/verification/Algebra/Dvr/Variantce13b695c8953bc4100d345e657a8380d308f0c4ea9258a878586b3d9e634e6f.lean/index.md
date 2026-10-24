# Verification target: GRWTSK.Algebra.Dvr.Variantce13b695c8953bc4100d345e657a8380d308f0c4ea9258a878586b3d9e634e6f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b50a2c39215ac6df3a17afc1bf84d4927596b638",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Dvr/Variantce13b695c8953bc4100d345e657a8380d308f0c4ea9258a878586b3d9e634e6f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Dvr/Variantce13b695c8953bc4100d345e657a8380d308f0c4ea9258a878586b3d9e634e6f.lean/index.md) · [Full source](../../../../mathematics/Algebra/Dvr/Variantce13b695c8953bc4100d345e657a8380d308f0c4ea9258a878586b3d9e634e6f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b50a2c39215ac6df3a17afc1bf84d4927596b638`.

Source path: `GRWTSK/Algebra/Dvr/Variantce13b695c8953bc4100d345e657a8380d308f0c4ea9258a878586b3d9e634e6f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Dvr/Variantce13b695c8953bc4100d345e657a8380d308f0c4ea9258a878586b3d9e634e6f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Ring.DimensionLEOne.localization](../../../../mathematics/Algebra/Dvr/Variantce13b695c8953bc4100d345e657a8380d308f0c4ea9258a878586b3d9e634e6f.lean/declarations/ring-dimensionleone-localization--3af5dc037899be0b83213969.md) | 61 | `result-track:3af5dc037899be0b83213969ef9d641bcc87033c3e10cee01fae36aa2e57185f` |
| 2 | `theorem` | [IsLocalization.isDedekindDomain](../../../../mathematics/Algebra/Dvr/Variantce13b695c8953bc4100d345e657a8380d308f0c4ea9258a878586b3d9e634e6f.lean/declarations/islocalization-isdedekinddomain--7422c4552dd0cc3640f742a5.md) | 72 | `result-track:7422c4552dd0cc3640f742a5c0347b22f14f5c9de75ab9c36c85e06421fdfa21` |
| 3 | `theorem` | [IsLocalization.AtPrime.isDedekindDomain](../../../../mathematics/Algebra/Dvr/Variantce13b695c8953bc4100d345e657a8380d308f0c4ea9258a878586b3d9e634e6f.lean/declarations/islocalization-atprime-isdedekinddomain--dda3c7a0367e739abee1c29b.md) | 95 | `result-track:dda3c7a0367e739abee1c29b8adf5fb8494d9513ad18e0af32a8122f9cc0c04d` |
| 4 | `instance` | [Localization.AtPrime.isDedekindDomain](../../../../mathematics/Algebra/Dvr/Variantce13b695c8953bc4100d345e657a8380d308f0c4ea9258a878586b3d9e634e6f.lean/declarations/localization-atprime-isdedekinddomain--d89ae9132113233af27110d0.md) | 100 | `declaration-track:d89ae9132113233af27110d048598b63df52dbe4d57abc717d2889a134b549e6` |
| 5 | `theorem` | [IsLocalization.AtPrime.not_isField](../../../../mathematics/Algebra/Dvr/Variantce13b695c8953bc4100d345e657a8380d308f0c4ea9258a878586b3d9e634e6f.lean/declarations/islocalization-atprime-not-isfield--be9109a08ce3eb20e1770a43.md) | 104 | `result-track:be9109a08ce3eb20e1770a43d05940f87a683e19f22ac458edbc7134d74b0c20` |
| 6 | `theorem` | [IsLocalization.AtPrime.isDiscreteValuationRing_of_dedekind_domain](../../../../mathematics/Algebra/Dvr/Variantce13b695c8953bc4100d345e657a8380d308f0c4ea9258a878586b3d9e634e6f.lean/declarations/islocalization-atprime-isdiscretevaluationring-of-dedekind-domain--f793e197bec98a23591d0a70.md) | 120 | `result-track:f793e197bec98a23591d0a7055554a12c5fc3e8d4002846c7d543afd0464dca6` |
| 7 | `theorem` | [isDedekindDomain_iff_isDiscreteValuationRing_atPrime](../../../../mathematics/Algebra/Dvr/Variantce13b695c8953bc4100d345e657a8380d308f0c4ea9258a878586b3d9e634e6f.lean/declarations/isdedekinddomain-iff-isdiscretevaluationring-atprime--8c7533d0fca780b6ac03035f.md) | 137 | `result-track:8c7533d0fca780b6ac03035fd444177ea45a626c3fd51891a1e2c7db922618be` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
