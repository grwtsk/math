# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Machine.Variant07a927be976d60ff33ccc8083281265dcc7fb384d275ec3748dd786996a31145

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8e46c6d453d375a4648472477e884aa233bbe19e",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Machine/Variant07a927be976d60ff33ccc8083281265dcc7fb384d275ec3748dd786996a31145.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Machine/Variant07a927be976d60ff33ccc8083281265dcc7fb384d275ec3748dd786996a31145.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Machine/Variant07a927be976d60ff33ccc8083281265dcc7fb384d275ec3748dd786996a31145.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8e46c6d453d375a4648472477e884aa233bbe19e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Machine/Variant07a927be976d60ff33ccc8083281265dcc7fb384d275ec3748dd786996a31145.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Machine/Variant07a927be976d60ff33ccc8083281265dcc7fb384d275ec3748dd786996a31145.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.GraphAccess.Output` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [MachineStep](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Machine/Variant07a927be976d60ff33ccc8083281265dcc7fb384d275ec3748dd786996a31145.lean/declarations/machinestep--c7c819830a9e698eda304bca.md) | 21 | `declaration-track:c7c819830a9e698eda304bca9fbc0886f0296f2bc4230c2bd786ff0ee47bf133` |
| 2 | `structure` | [AccessMachine](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Machine/Variant07a927be976d60ff33ccc8083281265dcc7fb384d275ec3748dd786996a31145.lean/declarations/accessmachine--8efdefe2a0174bb974e3cacd.md) | 34 | `declaration-track:8efdefe2a0174bb974e3cacd4872f003553f79626a4d0467659f044dc3e3af85` |
| 3 | `theorem` | [encode_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Machine/Variant07a927be976d60ff33ccc8083281265dcc7fb384d275ec3748dd786996a31145.lean/declarations/encode-injective--8e0d6b15d53b60a3d42b415f.md) | 96 | `result-track:8e0d6b15d53b60a3d42b415f6a22be416bc047b66217f78a8643885905f99a26` |
| 4 | `theorem` | [step_preserves_invariant](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Machine/Variant07a927be976d60ff33ccc8083281265dcc7fb384d275ec3748dd786996a31145.lean/declarations/step-preserves-invariant--261af0cd40abe41178b18344.md) | 109 | `result-track:261af0cd40abe41178b18344ee1c6e0cf74fc2abb61db7dad0bc5fbf94a5c147` |
| 5 | `theorem` | [continue_advances_one_step](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Machine/Variant07a927be976d60ff33ccc8083281265dcc7fb384d275ec3748dd786996a31145.lean/declarations/continue-advances-one-step--568bc403cca3beec1abd135d.md) | 123 | `result-track:568bc403cca3beec1abd135d7bc755ac8efa5c6bc6994e121c882f8fdb9e87e3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
