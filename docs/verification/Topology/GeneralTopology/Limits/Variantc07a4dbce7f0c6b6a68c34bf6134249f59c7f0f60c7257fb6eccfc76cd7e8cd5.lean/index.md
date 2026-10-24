# Verification target: GRWTSK.Topology.GeneralTopology.Limits.Variantc07a4dbce7f0c6b6a68c34bf6134249f59c7f0f60c7257fb6eccfc76cd7e8cd5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a4546d137cd1f848f34d0834973847749d16021a",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Limits/Variantc07a4dbce7f0c6b6a68c34bf6134249f59c7f0f60c7257fb6eccfc76cd7e8cd5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Limits/Variantc07a4dbce7f0c6b6a68c34bf6134249f59c7f0f60c7257fb6eccfc76cd7e8cd5.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Limits/Variantc07a4dbce7f0c6b6a68c34bf6134249f59c7f0f60c7257fb6eccfc76cd7e8cd5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a4546d137cd1f848f34d0834973847749d16021a`.

Source path: `GRWTSK/Topology/GeneralTopology/Limits/Variantc07a4dbce7f0c6b6a68c34bf6134249f59c7f0f60c7257fb6eccfc76cd7e8cd5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Limits/Variantc07a4dbce7f0c6b6a68c34bf6134249f59c7f0f60c7257fb6eccfc76cd7e8cd5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Category.CompHaus.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.CompHausLike.Limits` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Limits/Variantc07a4dbce7f0c6b6a68c34bf6134249f59c7f0f60c7257fb6eccfc76cd7e8cd5.lean/declarations/instance--9a37d0505a95480a3b84a3e5.md) | 30 | `declaration-track:9a37d0505a95480a3b84a3e5c9705625c670526937e6ca2d40c44f614ade3fb3` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Limits/Variantc07a4dbce7f0c6b6a68c34bf6134249f59c7f0f60c7257fb6eccfc76cd7e8cd5.lean/declarations/instance--b49e38f11ef210915baa0a24.md) | 33 | `declaration-track:b49e38f11ef210915baa0a24e81a2f3eb8cec4d33cbfcc238361e94444230982` |
| 3 | `example` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Limits/Variantc07a4dbce7f0c6b6a68c34bf6134249f59c7f0f60c7257fb6eccfc76cd7e8cd5.lean/declarations/example--919a4ce1f4052537f18524e6.md) | 36 | `declaration-track:919a4ce1f4052537f18524e6a740dcdbb47fbbb9eb24cdaf7774df6ecf8848eb` |
| 4 | `abbrev` | [isTerminalPUnit](../../../../../mathematics/Topology/GeneralTopology/Limits/Variantc07a4dbce7f0c6b6a68c34bf6134249f59c7f0f60c7257fb6eccfc76cd7e8cd5.lean/declarations/isterminalpunit--e1a16ddbc4e18dcf701120d6.md) | 39 | `declaration-track:e1a16ddbc4e18dcf701120d6b2a0fb7f122ba063d3656af58697aafbe3af0d69` |
| 5 | `def` | [terminalIsoPUnit](../../../../../mathematics/Topology/GeneralTopology/Limits/Variantc07a4dbce7f0c6b6a68c34bf6134249f59c7f0f60c7257fb6eccfc76cd7e8cd5.lean/declarations/terminalisopunit--9650e38ef196504dc46ad992.md) | 42 | `declaration-track:9650e38ef196504dc46ad992bf0b0ec35fb5a147ef0733c313997df59237e258` |
| 6 | `example` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Limits/Variantc07a4dbce7f0c6b6a68c34bf6134249f59c7f0f60c7257fb6eccfc76cd7e8cd5.lean/declarations/example--24051a5949edf4a7b12fb376.md) | 45 | `declaration-track:24051a5949edf4a7b12fb376bd69bb7d7b455ac51a28c8754930b2cc01d53602` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
