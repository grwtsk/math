# Verification target: GRWTSK.Topology.GeneralTopology.HalfPlane.Variant3cc62577a61bdcf7d06a79915f71ddf0d080a62f27d644e427751cd81dda747e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e6c5ca6a015a30323a83663406dc3f9e343b92e4",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/HalfPlane/Variant3cc62577a61bdcf7d06a79915f71ddf0d080a62f27d644e427751cd81dda747e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/HalfPlane/Variant3cc62577a61bdcf7d06a79915f71ddf0d080a62f27d644e427751cd81dda747e.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/HalfPlane/Variant3cc62577a61bdcf7d06a79915f71ddf0d080a62f27d644e427751cd81dda747e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e6c5ca6a015a30323a83663406dc3f9e343b92e4`.

Source path: `GRWTSK/Topology/GeneralTopology/HalfPlane/Variant3cc62577a61bdcf7d06a79915f71ddf0d080a62f27d644e427751cd81dda747e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/HalfPlane/Variant3cc62577a61bdcf7d06a79915f71ddf0d080a62f27d644e427751cd81dda747e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.EReal.Lemmas` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [isOpen_re_lt_EReal](../../../../../mathematics/Topology/GeneralTopology/HalfPlane/Variant3cc62577a61bdcf7d06a79915f71ddf0d080a62f27d644e427751cd81dda747e.lean/declarations/isopen-re-lt-ereal--c7f59bcabb138ba362d7f660.md) | 29 | `result-track:c7f59bcabb138ba362d7f6609affb8ef33ca2062bea4c378b94fa0eb6deeeb9e` |
| 2 | `lemma` | [isOpen_re_gt_EReal](../../../../../mathematics/Topology/GeneralTopology/HalfPlane/Variant3cc62577a61bdcf7d06a79915f71ddf0d080a62f27d644e427751cd81dda747e.lean/declarations/isopen-re-gt-ereal--4c6219cb8962cc1e4cef81b5.md) | 34 | `result-track:4c6219cb8962cc1e4cef81b5c89a4a6dcfbbb57e983c5115c42c8c48f31c69ed` |
| 3 | `lemma` | [isOpen_im_lt_EReal](../../../../../mathematics/Topology/GeneralTopology/HalfPlane/Variant3cc62577a61bdcf7d06a79915f71ddf0d080a62f27d644e427751cd81dda747e.lean/declarations/isopen-im-lt-ereal--c0cc27992118f24fabe266d0.md) | 39 | `result-track:c0cc27992118f24fabe266d07460edebd3d9efedac61b704596c90ae0a692eaa` |
| 4 | `lemma` | [isOpen_im_gt_EReal](../../../../../mathematics/Topology/GeneralTopology/HalfPlane/Variant3cc62577a61bdcf7d06a79915f71ddf0d080a62f27d644e427751cd81dda747e.lean/declarations/isopen-im-gt-ereal--95cad5529ed5622adecb85d1.md) | 44 | `result-track:95cad5529ed5622adecb85d1569c7aef57d2c1ef541e5ac9f9e555c02058666e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
