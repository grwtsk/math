# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Session.Variant97edddc7e747cf8b7b9913bdf4a4822214f5f3bcd485ef9b27bd77daf76a2d40

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c850b41f2a699764fbc3e95577b56ed1955a3308",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Session/Variant97edddc7e747cf8b7b9913bdf4a4822214f5f3bcd485ef9b27bd77daf76a2d40.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Session/Variant97edddc7e747cf8b7b9913bdf4a4822214f5f3bcd485ef9b27bd77daf76a2d40.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Session/Variant97edddc7e747cf8b7b9913bdf4a4822214f5f3bcd485ef9b27bd77daf76a2d40.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c850b41f2a699764fbc3e95577b56ed1955a3308`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Session/Variant97edddc7e747cf8b7b9913bdf4a4822214f5f3bcd485ef9b27bd77daf76a2d40.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Session/Variant97edddc7e747cf8b7b9913bdf4a4822214f5f3bcd485ef9b27bd77daf76a2d40.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Capability.ClientChart` — import line 6; external provider; requires a separately pinned dependency.
- `NetworkElements.Cursor` — import line 7; external provider; requires a separately pinned dependency.
- `NetworkElements.Kind` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SessionIdentity](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Session/Variant97edddc7e747cf8b7b9913bdf4a4822214f5f3bcd485ef9b27bd77daf76a2d40.lean/declarations/sessionidentity--64c09f33a9a55e15b98917d8.md) | 20 | `declaration-track:64c09f33a9a55e15b98917d8236f6f6031adb68597f45111c173ddd88f952302` |
| 2 | `structure` | [SessionState](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Session/Variant97edddc7e747cf8b7b9913bdf4a4822214f5f3bcd485ef9b27bd77daf76a2d40.lean/declarations/sessionstate--e269b0f751edcdb49c40c0ba.md) | 28 | `declaration-track:e269b0f751edcdb49c40c0ba39063f7f75c3f9b2007d5e207703932f120f5e26` |
| 3 | `inductive` | [SessionEvent](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Session/Variant97edddc7e747cf8b7b9913bdf4a4822214f5f3bcd485ef9b27bd77daf76a2d40.lean/declarations/sessionevent--9c8ed36deb80560689bbc469.md) | 34 | `declaration-track:9c8ed36deb80560689bbc4699c0e9429ee5e9e53c9bcf1ed6de685468e590ebd` |
| 4 | `inductive` | [SessionStep](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Session/Variant97edddc7e747cf8b7b9913bdf4a4822214f5f3bcd485ef9b27bd77daf76a2d40.lean/declarations/sessionstep--eef799ac9b47aaa2cd9c6f00.md) | 39 | `declaration-track:eef799ac9b47aaa2cd9c6f0049446fc9c38a177a24e8143ebfcd81e14d1e2a31` |
| 5 | `theorem` | [disconnect_preserves_logical_session](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Session/Variant97edddc7e747cf8b7b9913bdf4a4822214f5f3bcd485ef9b27bd77daf76a2d40.lean/declarations/disconnect-preserves-logical-session--22ad61b59676ef66c756bafb.md) | 61 | `result-track:22ad61b59676ef66c756bafb963a79f4e9cd25d0c18d856dfba23e8d5ed83ae0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
