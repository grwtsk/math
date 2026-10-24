# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Coverage.Variant8a5bc78388d5d7895fb45688d72d6800f0a33d11e769aab67d8a11783a19e4ec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6fbb6cfae32bd81ac6e047c43f3921e1bb957acc",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Coverage/Variant8a5bc78388d5d7895fb45688d72d6800f0a33d11e769aab67d8a11783a19e4ec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Coverage/Variant8a5bc78388d5d7895fb45688d72d6800f0a33d11e769aab67d8a11783a19e4ec.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Coverage/Variant8a5bc78388d5d7895fb45688d72d6800f0a33d11e769aab67d8a11783a19e4ec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6fbb6cfae32bd81ac6e047c43f3921e1bb957acc`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Coverage/Variant8a5bc78388d5d7895fb45688d72d6800f0a33d11e769aab67d8a11783a19e4ec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Coverage/Variant8a5bc78388d5d7895fb45688d72d6800f0a33d11e769aab67d8a11783a19e4ec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Mutation.Event` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SystemManifest](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Coverage/Variant8a5bc78388d5d7895fb45688d72d6800f0a33d11e769aab67d8a11783a19e4ec.lean/declarations/systemmanifest--0f1bdefe7146330854335830.md) | 12 | `declaration-track:0f1bdefe71463308543358308c4dbaa03e9cc51acdca4296d44c6ecb644656ed` |
| 2 | `inductive` | [CoverageDisposition](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Coverage/Variant8a5bc78388d5d7895fb45688d72d6800f0a33d11e769aab67d8a11783a19e4ec.lean/declarations/coveragedisposition--674bec08b18c2bf70ac8f43e.md) | 18 | `declaration-track:674bec08b18c2bf70ac8f43ed7d8994ba72b02b0ef7005efda84255b6e9c1992` |
| 3 | `structure` | [CoverageCertificate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Coverage/Variant8a5bc78388d5d7895fb45688d72d6800f0a33d11e769aab67d8a11783a19e4ec.lean/declarations/coveragecertificate--f25886e803132352bece264a.md) | 23 | `declaration-track:f25886e803132352bece264ac73562e1f541b09fd3af0837b22e45195297066a` |
| 4 | `def` | [wholeSystemCovered](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Coverage/Variant8a5bc78388d5d7895fb45688d72d6800f0a33d11e769aab67d8a11783a19e4ec.lean/declarations/wholesystemcovered--c06b315db074dca4a0fde205.md) | 33 | `declaration-track:c06b315db074dca4a0fde20524216fc340e3fbf9d4689e9954daf2d18a28dcec` |
| 5 | `structure` | [WholeSystemClaim](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Coverage/Variant8a5bc78388d5d7895fb45688d72d6800f0a33d11e769aab67d8a11783a19e4ec.lean/declarations/wholesystemclaim--a18fd8bcb4b4b08ef80ff88f.md) | 37 | `declaration-track:a18fd8bcb4b4b08ef80ff88f593dd46ef019595c2cedad98a880110d366ac7d5` |
| 6 | `theorem` | [whole_system_claim_requires_coverage](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Coverage/Variant8a5bc78388d5d7895fb45688d72d6800f0a33d11e769aab67d8a11783a19e4ec.lean/declarations/whole-system-claim-requires-coverage--3d073bc7666d18694f2538da.md) | 41 | `result-track:3d073bc7666d18694f2538dae4ca3a6923781d744628903fc4306d360ab2b790` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
