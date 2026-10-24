# Verification target: GRWTSK.Topology.GeneralTopology.FiberwiseLinear.Variantf6d08d351f3e8ac477ff1a038ec66422e398f435aa68ab721de68dad68f54a55

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2e209f150f17bcfa39c3566993fc2859041e84e0",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/FiberwiseLinear/Variantf6d08d351f3e8ac477ff1a038ec66422e398f435aa68ab721de68dad68f54a55.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/FiberwiseLinear/Variantf6d08d351f3e8ac477ff1a038ec66422e398f435aa68ab721de68dad68f54a55.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/FiberwiseLinear/Variantf6d08d351f3e8ac477ff1a038ec66422e398f435aa68ab721de68dad68f54a55.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2e209f150f17bcfa39c3566993fc2859041e84e0`.

Source path: `GRWTSK/Topology/GeneralTopology/FiberwiseLinear/Variantf6d08d351f3e8ac477ff1a038ec66422e398f435aa68ab721de68dad68f54a55.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/FiberwiseLinear/Variantf6d08d351f3e8ac477ff1a038ec66422e398f435aa68ab721de68dad68f54a55.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.ContMDiff` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [localHomeomorph](../../../../../mathematics/Topology/GeneralTopology/FiberwiseLinear/Variantf6d08d351f3e8ac477ff1a038ec66422e398f435aa68ab721de68dad68f54a55.lean/declarations/localhomeomorph--3a96ba8a5dab325d70a7f00a.md) | 43 | `declaration-track:3a96ba8a5dab325d70a7f00afc298b0e91b232256b1a98cb7a7d4ec72bcc0358` |
| 2 | `theorem` | [trans_localHomeomorph_apply](../../../../../mathematics/Topology/GeneralTopology/FiberwiseLinear/Variantf6d08d351f3e8ac477ff1a038ec66422e398f435aa68ab721de68dad68f54a55.lean/declarations/trans-localhomeomorph-apply--ae067a0a28994d42da368c85.md) | 69 | `result-track:ae067a0a28994d42da368c85e54e81e8b86f2f32bb376e84747e3c0a37b9a849` |
| 3 | `theorem` | [source_trans_localHomeomorph](../../../../../mathematics/Topology/GeneralTopology/FiberwiseLinear/Variantf6d08d351f3e8ac477ff1a038ec66422e398f435aa68ab721de68dad68f54a55.lean/declarations/source-trans-localhomeomorph--c97fc21a74e34a2e755b07b8.md) | 82 | `result-track:c97fc21a74e34a2e755b07b8d7bfa8cf29e918c1d394994a0aa236a8aab659e0` |
| 4 | `theorem` | [target_trans_localHomeomorph](../../../../../mathematics/Topology/GeneralTopology/FiberwiseLinear/Variantf6d08d351f3e8ac477ff1a038ec66422e398f435aa68ab721de68dad68f54a55.lean/declarations/target-trans-localhomeomorph--b4a5bf4906041b7b5a1723b0.md) | 95 | `result-track:b4a5bf4906041b7b5a1723b0f15a606e7866fe4fde41ca518d38d3c7b6e68562` |
| 5 | `theorem` | [SmoothFiberwiseLinear.locality_aux₁](../../../../../mathematics/Topology/GeneralTopology/FiberwiseLinear/Variantf6d08d351f3e8ac477ff1a038ec66422e398f435aa68ab721de68dad68f54a55.lean/declarations/smoothfiberwiselinear-locality-aux--c5441294fa19d5dc1f52d8ee.md) | 117 | `result-track:c5441294fa19d5dc1f52d8eefd0a264dd862a44ab996abf0a84586f786be4aec` |
| 6 | `theorem` | [SmoothFiberwiseLinear.locality_aux₂](../../../../../mathematics/Topology/GeneralTopology/FiberwiseLinear/Variantf6d08d351f3e8ac477ff1a038ec66422e398f435aa68ab721de68dad68f54a55.lean/declarations/smoothfiberwiselinear-locality-aux--8b00138607ea748a6104b0bd.md) | 169 | `result-track:8b00138607ea748a6104b0bd40d84bc32825d762c034fb6080df8b328a0e5160` |
| 7 | `theorem` | [mem_aux](../../../../../mathematics/Topology/GeneralTopology/FiberwiseLinear/Variantf6d08d351f3e8ac477ff1a038ec66422e398f435aa68ab721de68dad68f54a55.lean/declarations/mem-aux--a79e6bb52191f21f59102b08.md) | 234 | `result-track:a79e6bb52191f21f59102b084c141acc0c67de2ed5971ae677f9cce8757034bf` |
| 8 | `def` | [smoothFiberwiseLinear](../../../../../mathematics/Topology/GeneralTopology/FiberwiseLinear/Variantf6d08d351f3e8ac477ff1a038ec66422e398f435aa68ab721de68dad68f54a55.lean/declarations/smoothfiberwiselinear--d5ecf7e8199e9a13c169f7d9.md) | 252 | `declaration-track:d5ecf7e8199e9a13c169f7d9103933edbc461c6232de2ef602b43aa66c24ae5f` |
| 9 | `theorem` | [mem_smoothFiberwiseLinear_iff](../../../../../mathematics/Topology/GeneralTopology/FiberwiseLinear/Variantf6d08d351f3e8ac477ff1a038ec66422e398f435aa68ab721de68dad68f54a55.lean/declarations/mem-smoothfiberwiselinear-iff--96314c0a04196d18b375ac85.md) | 304 | `result-track:96314c0a04196d18b375ac85dd525b9a6389184f3059418acc4e97254acba64a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
