# Verification target: GRWTSK.Topology.GeneralTopology.ExtrClosure.Variant4b607e73e75a9ce1d94cd896bf74a73193baf7309ce361535807d833af8316dc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a712901da78c7d687361460bd85c33e066a62290",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ExtrClosure/Variant4b607e73e75a9ce1d94cd896bf74a73193baf7309ce361535807d833af8316dc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ExtrClosure/Variant4b607e73e75a9ce1d94cd896bf74a73193baf7309ce361535807d833af8316dc.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ExtrClosure/Variant4b607e73e75a9ce1d94cd896bf74a73193baf7309ce361535807d833af8316dc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a712901da78c7d687361460bd85c33e066a62290`.

Source path: `GRWTSK/Topology/GeneralTopology/ExtrClosure/Variant4b607e73e75a9ce1d94cd896bf74a73193baf7309ce361535807d833af8316dc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ExtrClosure/Variant4b607e73e75a9ce1d94cd896bf74a73193baf7309ce361535807d833af8316dc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsMaxOn.closure](../../../../../mathematics/Topology/GeneralTopology/ExtrClosure/Variant4b607e73e75a9ce1d94cd896bf74a73193baf7309ce361535807d833af8316dc.lean/declarations/ismaxon-closure--cf69b2424e42c059b7e5b11e.md) | 35 | `result-track:cf69b2424e42c059b7e5b11e5404ced9a71eabc8202ff8167d4e55ea71e44eed` |
| 2 | `theorem` | [IsMinOn.closure](../../../../../mathematics/Topology/GeneralTopology/ExtrClosure/Variant4b607e73e75a9ce1d94cd896bf74a73193baf7309ce361535807d833af8316dc.lean/declarations/isminon-closure--d8f87da72c43bc68e3fd5613.md) | 39 | `result-track:d8f87da72c43bc68e3fd5613153e22a1366a05f0f58d1e559bf3dd81b6896bcd` |
| 3 | `theorem` | [IsExtrOn.closure](../../../../../mathematics/Topology/GeneralTopology/ExtrClosure/Variant4b607e73e75a9ce1d94cd896bf74a73193baf7309ce361535807d833af8316dc.lean/declarations/isextron-closure--3df554100c36addd52463993.md) | 43 | `result-track:3df554100c36addd52463993f0aee2c59e340f3647f500aaf0d63321d7f2ce68` |
| 4 | `theorem` | [IsLocalMaxOn.closure](../../../../../mathematics/Topology/GeneralTopology/ExtrClosure/Variant4b607e73e75a9ce1d94cd896bf74a73193baf7309ce361535807d833af8316dc.lean/declarations/islocalmaxon-closure--d89938001ebe32fc7c610b9b.md) | 47 | `result-track:d89938001ebe32fc7c610b9b2eb86c0f413b81b6cd86f1e99fa9b10df715e024` |
| 5 | `theorem` | [IsLocalMinOn.closure](../../../../../mathematics/Topology/GeneralTopology/ExtrClosure/Variant4b607e73e75a9ce1d94cd896bf74a73193baf7309ce361535807d833af8316dc.lean/declarations/islocalminon-closure--c1bd2f09ceef658afc085cee.md) | 58 | `result-track:c1bd2f09ceef658afc085cee7d0a002a9a08c85ecc17dba8da442dd754564f28` |
| 6 | `theorem` | [IsLocalExtrOn.closure](../../../../../mathematics/Topology/GeneralTopology/ExtrClosure/Variant4b607e73e75a9ce1d94cd896bf74a73193baf7309ce361535807d833af8316dc.lean/declarations/islocalextron-closure--7d355fc1fe96f6200e9997fd.md) | 62 | `result-track:7d355fc1fe96f6200e9997fd05495e422fc00c34352b56a1b7805185d6abe4f6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
