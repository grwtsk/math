# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Stabilization.Variant154309d191abb305c98966702408589f32e946cddbb5f377c70376ee57a3a5c5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c25fa41ed8e09166fb93350cb462126e35d45a86",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Stabilization/Variant154309d191abb305c98966702408589f32e946cddbb5f377c70376ee57a3a5c5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Stabilization/Variant154309d191abb305c98966702408589f32e946cddbb5f377c70376ee57a3a5c5.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Stabilization/Variant154309d191abb305c98966702408589f32e946cddbb5f377c70376ee57a3a5c5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c25fa41ed8e09166fb93350cb462126e35d45a86`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Stabilization/Variant154309d191abb305c98966702408589f32e946cddbb5f377c70376ee57a3a5c5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Stabilization/Variant154309d191abb305c98966702408589f32e946cddbb5f377c70376ee57a3a5c5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.AbelReynolds.Percolation` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Basic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LocalityCertificate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Stabilization/Variant154309d191abb305c98966702408589f32e946cddbb5f377c70376ee57a3a5c5.lean/declarations/localitycertificate--4b86f136205bef8a5883d222.md) | 15 | `declaration-track:4b86f136205bef8a5883d2226cef50cf215c472eaee427922109dfa502b2d1f1` |
| 2 | `structure` | [PersistentTerminalProfile](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Stabilization/Variant154309d191abb305c98966702408589f32e946cddbb5f377c70376ee57a3a5c5.lean/declarations/persistentterminalprofile--452a70403572e34cf4fbc071.md) | 27 | `declaration-track:452a70403572e34cf4fbc071203fb833cfa2d28045500c6eb1c7a3e273131a57` |
| 3 | `def` | [terminalStratum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Stabilization/Variant154309d191abb305c98966702408589f32e946cddbb5f377c70376ee57a3a5c5.lean/declarations/terminalstratum--d12839a432b41830d2dc5b50.md) | 42 | `declaration-track:d12839a432b41830d2dc5b50c983ee8bd8ed9104a18c109ad532b4a115f7fc7d` |
| 4 | `theorem` | [mem_terminalStratum_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Stabilization/Variant154309d191abb305c98966702408589f32e946cddbb5f377c70376ee57a3a5c5.lean/declarations/mem-terminalstratum-iff--9f05faacab8bde34ab8b63b6.md) | 50 | `result-track:9f05faacab8bde34ab8b63b67ef82b23a86056cf7761e5b58bfb14ac862c79a7` |
| 5 | `theorem` | [terminalStrata_partition](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Stabilization/Variant154309d191abb305c98966702408589f32e946cddbb5f377c70376ee57a3a5c5.lean/declarations/terminalstrata-partition--e603866a2156747b5cbf3b55.md) | 60 | `result-track:e603866a2156747b5cbf3b555d6b4cdbc919465160023a3d39571e8d390119d1` |
| 6 | `theorem` | [active_support_nesting](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Stabilization/Variant154309d191abb305c98966702408589f32e946cddbb5f377c70376ee57a3a5c5.lean/declarations/active-support-nesting--02ae4640689d519a515d4a9c.md) | 71 | `result-track:02ae4640689d519a515d4a9c2a7d95d2829acca11913f329eb7ed9834ed26198` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
