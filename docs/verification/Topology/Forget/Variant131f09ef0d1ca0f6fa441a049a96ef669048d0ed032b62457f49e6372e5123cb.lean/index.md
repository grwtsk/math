# Verification target: GRWTSK.Topology.Forget.Variant131f09ef0d1ca0f6fa441a049a96ef669048d0ed032b62457f49e6372e5123cb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b53aa965f7b6e9c7e5caf4032a2245cef47d67ae",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/Forget/Variant131f09ef0d1ca0f6fa441a049a96ef669048d0ed032b62457f49e6372e5123cb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/Forget/Variant131f09ef0d1ca0f6fa441a049a96ef669048d0ed032b62457f49e6372e5123cb.lean/index.md) · [Full source](../../../../mathematics/Topology/Forget/Variant131f09ef0d1ca0f6fa441a049a96ef669048d0ed032b62457f49e6372e5123cb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b53aa965f7b6e9c7e5caf4032a2245cef47d67ae`.

Source path: `GRWTSK/Topology/Forget/Variant131f09ef0d1ca0f6fa441a049a96ef669048d0ed032b62457f49e6372e5123cb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/Forget/Variant131f09ef0d1ca0f6fa441a049a96ef669048d0ed032b62457f49e6372e5123cb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Sheaves.Sheaf` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isSheaf_iff_isSheaf_comp'](../../../../mathematics/Topology/Forget/Variant131f09ef0d1ca0f6fa441a049a96ef669048d0ed032b62457f49e6372e5123cb.lean/declarations/issheaf-iff-issheaf-comp--aff5f223b3a900d2d61de928.md) | 54 | `result-track:aff5f223b3a900d2d61de928874d139296282aed6c891f090a99527630c9cc32` |
| 2 | `theorem` | [isSheaf_iff_isSheaf_comp](../../../../mathematics/Topology/Forget/Variant131f09ef0d1ca0f6fa441a049a96ef669048d0ed032b62457f49e6372e5123cb.lean/declarations/issheaf-iff-issheaf-comp--a329dd333759d7527748b71e.md) | 59 | `result-track:a329dd333759d7527748b71e44103924f0beb2338b702eba6b93aece8b3506af` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
