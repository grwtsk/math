# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Core.Variant6bbfd7ce4b5dab626effc2e9fd0ebd83d14e31fe35afdd562b6573b6ed16e9e5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7aef78ea7460aa8e747f7e738aaf859ef88d99b8",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Core/Variant6bbfd7ce4b5dab626effc2e9fd0ebd83d14e31fe35afdd562b6573b6ed16e9e5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variant6bbfd7ce4b5dab626effc2e9fd0ebd83d14e31fe35afdd562b6573b6ed16e9e5.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variant6bbfd7ce4b5dab626effc2e9fd0ebd83d14e31fe35afdd562b6573b6ed16e9e5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7aef78ea7460aa8e747f7e738aaf859ef88d99b8`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Core/Variant6bbfd7ce4b5dab626effc2e9fd0ebd83d14e31fe35afdd562b6573b6ed16e9e5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Core/Variant6bbfd7ce4b5dab626effc2e9fd0ebd83d14e31fe35afdd562b6573b6ed16e9e5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Basic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Terrain](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variant6bbfd7ce4b5dab626effc2e9fd0ebd83d14e31fe35afdd562b6573b6ed16e9e5.lean/declarations/terrain--7e1d0610f6becb8f13cf0a7f.md) | 20 | `declaration-track:7e1d0610f6becb8f13cf0a7f1b4a40b56368654677783d929e08cfcbd45a0fb0` |
| 2 | `def` | [Adjacent](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variant6bbfd7ce4b5dab626effc2e9fd0ebd83d14e31fe35afdd562b6573b6ed16e9e5.lean/declarations/adjacent--3066fdbd45e4ec29b1ec9f30.md) | 28 | `declaration-track:3066fdbd45e4ec29b1ec9f30a2a3adf4f986c5013817b36520e04a879e61973a` |
| 3 | `theorem` | [adjacent_comm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variant6bbfd7ce4b5dab626effc2e9fd0ebd83d14e31fe35afdd562b6573b6ed16e9e5.lean/declarations/adjacent-comm--528c4e71e3e0d11581a2fab5.md) | 32 | `result-track:528c4e71e3e0d11581a2fab58560b7b9353c1a02f28a0da2e6ad0c2e470fcfd8` |
| 4 | `theorem` | [not_adjacent_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variant6bbfd7ce4b5dab626effc2e9fd0ebd83d14e31fe35afdd562b6573b6ed16e9e5.lean/declarations/not-adjacent-self--7818cdd62ca7d39b5fea0e6a.md) | 37 | `result-track:7818cdd62ca7d39b5fea0e6a31ed945e6c347cd2b03cf5643209a7ec30c89625` |
| 5 | `structure` | [TerrainSection](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variant6bbfd7ce4b5dab626effc2e9fd0ebd83d14e31fe35afdd562b6573b6ed16e9e5.lean/declarations/terrainsection--25dc55dc2e1fa184aec23785.md) | 45 | `declaration-track:25dc55dc2e1fa184aec237851bf3ba01bf856c1208a87f14c3a8bf54b0d63893` |
| 6 | `structure` | [Obstruction](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variant6bbfd7ce4b5dab626effc2e9fd0ebd83d14e31fe35afdd562b6573b6ed16e9e5.lean/declarations/obstruction--d68898e481ca1088ce6bbe36.md) | 50 | `declaration-track:d68898e481ca1088ce6bbe369a1564bf3d63ed941f1b7e80385c0634467e1c77` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
