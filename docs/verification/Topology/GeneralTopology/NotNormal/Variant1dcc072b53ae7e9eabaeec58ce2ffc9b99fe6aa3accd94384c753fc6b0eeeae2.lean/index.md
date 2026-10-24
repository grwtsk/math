# Verification target: GRWTSK.Topology.GeneralTopology.NotNormal.Variant1dcc072b53ae7e9eabaeec58ce2ffc9b99fe6aa3accd94384c753fc6b0eeeae2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b47878b8ca2e12127d4b212487bc862b2d17d8c4",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/NotNormal/Variant1dcc072b53ae7e9eabaeec58ce2ffc9b99fe6aa3accd94384c753fc6b0eeeae2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/NotNormal/Variant1dcc072b53ae7e9eabaeec58ce2ffc9b99fe6aa3accd94384c753fc6b0eeeae2.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/NotNormal/Variant1dcc072b53ae7e9eabaeec58ce2ffc9b99fe6aa3accd94384c753fc6b0eeeae2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b47878b8ca2e12127d4b212487bc862b2d17d8c4`.

Source path: `GRWTSK/Topology/GeneralTopology/NotNormal/Variant1dcc072b53ae7e9eabaeec58ce2ffc9b99fe6aa3accd94384c753fc6b0eeeae2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/NotNormal/Variant1dcc072b53ae7e9eabaeec58ce2ffc9b99fe6aa3accd94384c753fc6b0eeeae2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Real.Cardinality` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.TietzeExtension` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsClosed.mk_lt_continuum](../../../../../mathematics/Topology/GeneralTopology/NotNormal/Variant1dcc072b53ae7e9eabaeec58ce2ffc9b99fe6aa3accd94384c753fc6b0eeeae2.lean/declarations/isclosed-mk-lt-continuum--a46d7d845c6a855d6f0b02c8.md) | 33 | `result-track:a46d7d845c6a855d6f0b02c8142de59f2986b2702f9212a05abd9a58c8ae1e58` |
| 2 | `theorem` | [IsClosed.not_normal_of_continuum_le_mk](../../../../../mathematics/Topology/GeneralTopology/NotNormal/Variant1dcc072b53ae7e9eabaeec58ce2ffc9b99fe6aa3accd94384c753fc6b0eeeae2.lean/declarations/isclosed-not-normal-of-continuum-le-mk--6efbc62440067f4873e0a7a1.md) | 64 | `result-track:6efbc62440067f4873e0a7a12337c5af2e8d4aeba98dcd34df5c8a6aed0fba07` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
