# Verification target: GRWTSK.Topology.GeneralTopology.Jacobson.Variant8bc41666e195ba26901dacab944e86fc0258233f49c7bcecac26ad0034204022

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "31db5992ef94532287e99a8dba689484fef71b06",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Jacobson/Variant8bc41666e195ba26901dacab944e86fc0258233f49c7bcecac26ad0034204022.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Jacobson/Variant8bc41666e195ba26901dacab944e86fc0258233f49c7bcecac26ad0034204022.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Jacobson/Variant8bc41666e195ba26901dacab944e86fc0258233f49c7bcecac26ad0034204022.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `31db5992ef94532287e99a8dba689484fef71b06`.

Source path: `GRWTSK/Topology/GeneralTopology/Jacobson/Variant8bc41666e195ba26901dacab944e86fc0258233f49c7bcecac26ad0034204022.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Jacobson/Variant8bc41666e195ba26901dacab944e86fc0258233f49c7bcecac26ad0034204022.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Jacobson.Ring` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Spectrum.Prime.Noetherian` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.JacobsonSpace` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [exists_isClosed_singleton_of_isJacobsonRing](../../../../../mathematics/Topology/GeneralTopology/Jacobson/Variant8bc41666e195ba26901dacab944e86fc0258233f49c7bcecac26ad0034204022.lean/declarations/exists-isclosed-singleton-of-isjacobsonring--d76f9676d18a7377a8b140f7.md) | 30 | `result-track:d76f9676d18a7377a8b140f74f89d805226838218edf8cb310f1d583585fcec7` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Jacobson/Variant8bc41666e195ba26901dacab944e86fc0258233f49c7bcecac26ad0034204022.lean/declarations/instance--a666911d721bdd799b300545.md) | 45 | `declaration-track:a666911d721bdd799b3005454cb6c0ea0926989e82c053b2e1f47cdd5725a6c9` |
| 3 | `lemma` | [isJacobsonRing_iff_jacobsonSpace](../../../../../mathematics/Topology/GeneralTopology/Jacobson/Variant8bc41666e195ba26901dacab944e86fc0258233f49c7bcecac26ad0034204022.lean/declarations/isjacobsonring-iff-jacobsonspace--e2926ecf3abb127a41cdd004.md) | 57 | `result-track:e2926ecf3abb127a41cdd004729b4e2f1378f3505f4d0a5704c968bc2b143e46` |
| 4 | `lemma` | [isOpen_singleton_tfae_of_isNoetherian_of_isJacobsonRing](../../../../../mathematics/Topology/GeneralTopology/Jacobson/Variant8bc41666e195ba26901dacab944e86fc0258233f49c7bcecac26ad0034204022.lean/declarations/isopen-singleton-tfae-of-isnoetherian-of-isjacobsonring--1de6af2ce30f5a03f7991ccf.md) | 76 | `result-track:1de6af2ce30f5a03f7991ccf7b6c42f278241b2194027550b0357275cb523121` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
