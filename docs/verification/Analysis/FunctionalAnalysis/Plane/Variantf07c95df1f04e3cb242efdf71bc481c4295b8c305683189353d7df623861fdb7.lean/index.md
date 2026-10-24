# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Plane.Variantf07c95df1f04e3cb242efdf71bc481c4295b8c305683189353d7df623861fdb7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fa8d29c938075dc071252a6abb40338165344f3e",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Plane/Variantf07c95df1f04e3cb242efdf71bc481c4295b8c305683189353d7df623861fdb7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Plane/Variantf07c95df1f04e3cb242efdf71bc481c4295b8c305683189353d7df623861fdb7.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Plane/Variantf07c95df1f04e3cb242efdf71bc481c4295b8c305683189353d7df623861fdb7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fa8d29c938075dc071252a6abb40338165344f3e`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Plane/Variantf07c95df1f04e3cb242efdf71bc481c4295b8c305683189353d7df623861fdb7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Plane/Variantf07c95df1f04e3cb242efdf71bc481c4295b8c305683189353d7df623861fdb7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.PiL2` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [PlanePoint](../../../../../mathematics/Analysis/FunctionalAnalysis/Plane/Variantf07c95df1f04e3cb242efdf71bc481c4295b8c305683189353d7df623861fdb7.lean/declarations/planepoint--7735ac31dcbdb5520a8149dc.md) | 22 | `declaration-track:7735ac31dcbdb5520a8149dcd1f4287b322c4c9bf703a1e961419b48394131a7` |
| 2 | `def` | [cartesian](../../../../../mathematics/Analysis/FunctionalAnalysis/Plane/Variantf07c95df1f04e3cb242efdf71bc481c4295b8c305683189353d7df623861fdb7.lean/declarations/cartesian--98e1ec876859615e4b0761a0.md) | 27 | `declaration-track:98e1ec876859615e4b0761a0229386915eb5a9c0381c5807db027d682b74d670` |
| 3 | `theorem` | [cartesian_horizontal](../../../../../mathematics/Analysis/FunctionalAnalysis/Plane/Variantf07c95df1f04e3cb242efdf71bc481c4295b8c305683189353d7df623861fdb7.lean/declarations/cartesian-horizontal--5dd8e10611f8c7773172387e.md) | 30 | `result-track:5dd8e10611f8c7773172387e7683566dcea97c0d0647f14272275576834bcfdd` |
| 4 | `theorem` | [cartesian_vertical](../../../../../mathematics/Analysis/FunctionalAnalysis/Plane/Variantf07c95df1f04e3cb242efdf71bc481c4295b8c305683189353d7df623861fdb7.lean/declarations/cartesian-vertical--4c7ea43bb82dcaeaea511626.md) | 34 | `result-track:4c7ea43bb82dcaeaea5116262b83c99cb6a1fe714a3f65d152b573369d4f40ca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
