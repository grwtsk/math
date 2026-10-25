# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cert.Varianta5e8e372717654a0ec8844b0f07d43a282bdd77977ea266beb19b1f30e26ddd9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1be17726a69fac34b37f4ffc3b3f341de3e8e38d",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cert/Varianta5e8e372717654a0ec8844b0f07d43a282bdd77977ea266beb19b1f30e26ddd9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cert/Varianta5e8e372717654a0ec8844b0f07d43a282bdd77977ea266beb19b1f30e26ddd9.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cert/Varianta5e8e372717654a0ec8844b0f07d43a282bdd77977ea266beb19b1f30e26ddd9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1be17726a69fac34b37f4ffc3b3f341de3e8e38d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cert/Varianta5e8e372717654a0ec8844b0f07d43a282bdd77977ea266beb19b1f30e26ddd9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cert/Varianta5e8e372717654a0ec8844b0f07d43a282bdd77977ea266beb19b1f30e26ddd9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.BVDecide.LRAT.Trim` — import line 17; external provider; requires a separately pinned dependency.
- `Std.Tactic.BVDecide.LRAT.Parser` — import line 18; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.BVDecide.External` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cert/Varianta5e8e372717654a0ec8844b0f07d43a282bdd77977ea266beb19b1f30e26ddd9.lean/declarations/instance--7182750326cd7ecb5bf3a3b7.md) | 33 | `declaration-track:7182750326cd7ecb5bf3a3b76a7b4283742888ebd3bc7c6ace06c1f488b2fa57` |
| 2 | `abbrev` | [LratCert](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cert/Varianta5e8e372717654a0ec8844b0f07d43a282bdd77977ea266beb19b1f30e26ddd9.lean/declarations/lratcert--9e73515ff3706796d3aae851.md) | 63 | `declaration-track:9e73515ff3706796d3aae851d63b73a8fa43615af2a2ab237a2f3a49c9eec95a` |
| 3 | `def` | [load](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cert/Varianta5e8e372717654a0ec8844b0f07d43a282bdd77977ea266beb19b1f30e26ddd9.lean/declarations/load--c3cf3477f5c0040a787ed5dc.md) | 67 | `declaration-track:c3cf3477f5c0040a787ed5dc4eec320a1673916a0e685abcda0b37adf58fa8ae` |
| 4 | `def` | [ofFile](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cert/Varianta5e8e372717654a0ec8844b0f07d43a282bdd77977ea266beb19b1f30e26ddd9.lean/declarations/offile--7be8134df56c6ba9927189ae.md) | 91 | `declaration-track:7be8134df56c6ba9927189ae0dc40f1288787775b7a3feb204ff80b083091a3b` |
| 5 | `def` | [runExternal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cert/Varianta5e8e372717654a0ec8844b0f07d43a282bdd77977ea266beb19b1f30e26ddd9.lean/declarations/runexternal--26f4c4ec4d69a2688de21428.md) | 106 | `declaration-track:26f4c4ec4d69a2688de21428e22e608906705f1e33145797813696a37d0d42a7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
