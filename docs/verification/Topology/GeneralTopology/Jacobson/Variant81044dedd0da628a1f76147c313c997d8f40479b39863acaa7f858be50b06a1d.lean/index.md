# Verification target: GRWTSK.Topology.GeneralTopology.Jacobson.Variant81044dedd0da628a1f76147c313c997d8f40479b39863acaa7f858be50b06a1d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bcc6bc98725d49cb45ee281e81790e345d84cdcb",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Jacobson/Variant81044dedd0da628a1f76147c313c997d8f40479b39863acaa7f858be50b06a1d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Jacobson/Variant81044dedd0da628a1f76147c313c997d8f40479b39863acaa7f858be50b06a1d.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Jacobson/Variant81044dedd0da628a1f76147c313c997d8f40479b39863acaa7f858be50b06a1d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bcc6bc98725d49cb45ee281e81790e345d84cdcb`.

Source path: `GRWTSK/Topology/GeneralTopology/Jacobson/Variant81044dedd0da628a1f76147c313c997d8f40479b39863acaa7f858be50b06a1d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Jacobson/Variant81044dedd0da628a1f76147c313c997d8f40479b39863acaa7f858be50b06a1d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Jacobson.Ring` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Spectrum.Prime.Noetherian` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.JacobsonSpace` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [exists_isClosed_singleton_of_isJacobsonRing](../../../../../mathematics/Topology/GeneralTopology/Jacobson/Variant81044dedd0da628a1f76147c313c997d8f40479b39863acaa7f858be50b06a1d.lean/declarations/exists-isclosed-singleton-of-isjacobsonring--a81165dd83152a208e570a18.md) | 38 | `result-track:a81165dd83152a208e570a181840515eab37735513b12ffccf70f91073652915` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Jacobson/Variant81044dedd0da628a1f76147c313c997d8f40479b39863acaa7f858be50b06a1d.lean/declarations/instance--023639215acf441598596701.md) | 53 | `declaration-track:023639215acf441598596701d602855b2f8d3421c041c238792c8c60e4ae6f98` |
| 3 | `lemma` | [isJacobsonRing_iff_jacobsonSpace](../../../../../mathematics/Topology/GeneralTopology/Jacobson/Variant81044dedd0da628a1f76147c313c997d8f40479b39863acaa7f858be50b06a1d.lean/declarations/isjacobsonring-iff-jacobsonspace--14dce59a2a4a26f3596dee9b.md) | 65 | `result-track:14dce59a2a4a26f3596dee9bb53234c05200bce12b5d36b56b99c8fe2a00e1ae` |
| 4 | `lemma` | [isOpen_singleton_tfae_of_isNoetherian_of_isJacobsonRing](../../../../../mathematics/Topology/GeneralTopology/Jacobson/Variant81044dedd0da628a1f76147c313c997d8f40479b39863acaa7f858be50b06a1d.lean/declarations/isopen-singleton-tfae-of-isnoetherian-of-isjacobsonring--1a11ccb1c04e12df980e6409.md) | 84 | `result-track:1a11ccb1c04e12df980e6409c06e14d48325ac593f4ae7aae3873d3d06116ad3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
